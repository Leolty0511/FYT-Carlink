package u0;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.graphics.Paint;
import android.net.ProxyProperties;
import android.net.wifi.WifiEnterpriseConfig;
import android.os.Process;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import app.App;
import base.Configure;
import chip.Chip;
import com.syu.jni.ToolsJni;
import com.syu.ms.R;
import e1.q;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import k0.nt;
import k0.qt;
import k0.rt;
import module.sound.AudioDevice;
import n0.c4;
import n0.j4;
import o1.b0;
import o1.j0;
import o1.k0;
import o1.m;
import o1.n0;
import o1.o;
import o1.o0;
import o1.p0;
import o1.q0;
import o1.s0;
import o1.u;
import o1.w;
import o1.x;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static int f17401a = 60;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Runnable f17402b = new RunnableC0114d();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static e.e.a f17403c = new e.e.a(0, 0, 0);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static Runnable f17404d = new f();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static int f17405e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final k0 f17406f = new k0();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final Runnable f17407g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static boolean f17408h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static int f17409i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static int f17410j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static Runnable f17411k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static boolean f17412l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static boolean f17413m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final k0 f17414n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final k0 f17415o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final Runnable f17416p;

    public class a implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17372z == 0 || u0.b.F3) {
                return;
            }
            u.t0();
        }
    }

    public class b implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            e1.l lVar = e1.a.f1657b;
            if (lVar instanceof e1.c) {
                ((e1.c) lVar).m();
            }
        }
    }

    public class c implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ String f17417a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ String f17418b;

        public c(String str, String str2) {
            this.f17417a = str;
            this.f17418b = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            o1.l.a().removeCallbacks(this);
            if (s0.o("syu.imageic.inited", "0").equals("1")) {
                u.C0(this.f17417a, this.f17418b);
            } else {
                o1.l.a().postDelayed(this, 200L);
            }
        }
    }

    /* JADX INFO: renamed from: u0.d$d, reason: collision with other inner class name */
    public class RunnableC0114d implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            Log.e("sleep", "0x01, 0x00, 0xBD");
            z.k.t(1, 0, 189);
            Log.e("sleep", "enterSleepWakeup work + time: = " + SystemClock.uptimeMillis());
            d.k();
            if (d.f17401a == 0) {
                d.n0(0);
            }
        }
    }

    public class e implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            z.k.s(1, 170, 144);
        }
    }

    public class f implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            if (a.b.f16e0 == 1) {
                a.d.f45a.d(this);
                d.u0();
            }
        }
    }

    public class g implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            u.u();
            u.f("com.syu.screen.cali");
            b0.f("跳到校准界面 ");
        }
    }

    public class h implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            u.g("com.autonavi.amapauto");
        }
    }

    public class i implements Runnable {
        @Override // java.lang.Runnable
        public synchronized void run() {
            int i2 = u0.b.H3;
            if (i2 > 0) {
                int i3 = i2 - 1;
                u0.b.H3 = i3;
                if (i3 == 0) {
                    y0.h.Y(32, i3 > 0);
                }
            }
            int i4 = u0.b.i4;
            if (i4 > 0) {
                int i5 = i4 - 1;
                u0.b.i4 = i5;
                if (i5 == 2) {
                    d.I3(57, 0);
                } else if (i5 == 0) {
                    d.P3(0);
                }
            }
        }
    }

    public class j implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            o1.l.a().removeCallbacks(d.f17411k);
            d.I3(12, u0.b.f17347o);
        }
    }

    public class k implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            a.f.z().h();
        }
    }

    public class l implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            a.f.z().k();
        }
    }

    static {
        i iVar = new i();
        f17407g = iVar;
        m(iVar);
        f17408h = false;
        f17409i = -1;
        f17410j = -1;
        f17411k = new j();
        f17412l = true;
        f17413m = true;
        f17414n = new k0();
        f17415o = new k0();
        f17416p = new a();
    }

    public static void A(int i2) {
        if (i2 == 0) {
            if (u0.b.F0 != 0) {
                z(0);
            }
        } else if (i2 != 1) {
            if (i2 != 2) {
                return;
            }
            z((u0.b.F0 + 1) & 1);
        } else if (u0.b.F0 == 0) {
            z(1);
        }
    }

    public static void A0(int i2) {
        int i3 = i2 == 1 ? 1 : 0;
        u0.b.s1 = i3;
        m1.c.e(384, i3);
        I3(121, i3);
        ToolsJni.callSystemCtrl(38, i3);
        m.a().post(new b());
    }

    public static void A1() {
        c.e.d().c(3);
    }

    public static void A2(int i2, int i3) {
        if (i2 > i3) {
            return;
        }
        if (u0.b.t3 == i2 && u0.b.u3 == i3) {
            return;
        }
        u0.b.t3 = i2;
        u0.b.u3 = i3;
        u0.c.f17393t.c();
        I3(74, u0.b.D, 5, i2, i3);
        int i4 = u0.b.D;
        if (i4 == 8 || i4 == 9) {
            z.k.s(116, 1, (i2 & 65280) >> 8, i2 & 255);
            z.k.s(116, 2, (i3 & 65280) >> 8, i3 & 255);
        }
    }

    public static void A3(int i2) {
        if (SystemProperties.getBoolean("persist.syu.isshowouttemp", true)) {
            u0.b.H2 = (i2 & 32767 & 65535) | (((i2 >> 15) & 1) << 28);
        } else {
            u0.b.H2 = 0;
        }
        I3(40, u0.b.H2);
    }

    public static void B(int i2) {
        if (u0.b.Q0 != i2) {
            u0.b.Q0 = i2;
            if (i2 == 0) {
                I0(1);
            }
            I3(83, i2);
            m1.c.g(156, i2);
        }
    }

    public static void B0(int i2) {
        if (u0.b.f17355q1 == i2) {
            return;
        }
        if (i2 == 0) {
            z.k.s(1, 0, 202);
        } else {
            if (i2 != 1) {
                return;
            }
            z.k.s(1, 0, 203);
        }
    }

    public static void B1() {
        o oVar = u0.b.c3;
        a.i.C("system/bin/pekallfmrserver");
        if (oVar != null) {
            oVar.a(0, null, null, null, null);
            return;
        }
        int i2 = u0.b.D;
        if (i2 != 1) {
            if (i2 == 3) {
                h0.c.f2425b.i();
                return;
            } else {
                if (i2 == 4) {
                    o0.e.f16766b.r();
                    return;
                }
                switch (i2) {
                    case 8:
                    case 9:
                    case 10:
                        c.e.d().c(88);
                        break;
                }
                return;
            }
        }
        int i3 = w0.d.S;
        if (i3 == 1) {
            w0.d.f17790b.g();
        } else if (i3 == 4) {
            w0.d.f17790b.d();
        } else {
            if (i3 != 6) {
                return;
            }
            w0.d.f17790b.B();
        }
    }

    public static void B2(int i2, int i3) {
        int i4 = i2 + 1;
        if (i4 > i3) {
            return;
        }
        u0.b.r3 = i4;
        u0.b.s3 = i3;
        u0.c.f17392s.c();
        I3(74, u0.b.D, 4, i4, i3);
        int i5 = u0.b.D;
        if (i5 == 8 || i5 == 9) {
            z.k.s(116, 3, (i4 & 65280) >> 8, i4 & 255);
            z.k.s(116, 4, (i3 & 65280) >> 8, i3 & 255);
        }
    }

    public static void B3(int i2) {
        if (SystemProperties.getBoolean("persist.syu.isshowouttemp", true)) {
            u0.b.H2 = i2;
        } else {
            u0.b.H2 = 0;
        }
        I3(40, u0.b.H2);
    }

    public static void C(int i2) {
        if (f17409i != i2) {
            u0.b.f17347o = i2;
            f17409i = i2;
            if (e1.a.f1656a == 3 && i2 == 1 && u0.b.p2) {
                o1.l.a().postDelayed(f17411k, 700L);
            } else {
                if (i2 == 0) {
                    o1.l.a().removeCallbacks(f17411k);
                }
                Log.e("Signal", "   ==========>>>    backcar : " + i2);
                I3(12, i2);
            }
            y0.h.M();
            if (f17409i == 0) {
                u0();
                if (qt.k0()) {
                    R2(10);
                    S2(10);
                    T2(10);
                    U2(10);
                }
            }
            u0.c.f17379f.c();
        }
    }

    public static synchronized void C0(int i2, int i3) {
        int i4 = u0.b.H3;
        AudioDevice audioDeviceW = AudioDevice.W();
        if (audioDeviceW != null) {
            boolean z2 = audioDeviceW.j0(i2) == 1;
            if (audioDeviceW.j0(i3) == 1) {
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                long j2 = jElapsedRealtime - u0.b.J3;
                u0.b.J3 = jElapsedRealtime;
                boolean z3 = j2 > 0 && j2 <= ((long) u0.b.H3) * 1000;
                boolean z4 = !z2 || (i2 == 2 || i3 == 2);
                if (!z3 && !z4) {
                    u0.b.H3 = 0;
                }
                if (z3 && !z4) {
                    u0.b.H3 = (int) ((u0.b.I3 - (j2 / 1000.0f)) + 0.5f);
                }
            }
            if (i2 == 2) {
                u0.b.H3 = 3;
            }
        }
        y0.h.Y(32, u0.b.H3 > 0);
    }

    public static void C1() {
        c.e.d().c(82);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$ArrayArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public static void C2(int i2) {
        u0.b.f17350p = i2;
        if (u0.b.G == 0 || u.i0() || !SystemProperties.getBoolean("persist.fyt.radar_click", true) || SystemProperties.getBoolean("persist.fyt.showfloatradar", false)) {
            I3(13, 0);
            u0.c.R.c(new int[]{13, 0});
        } else if (qt.k0() && (u.S("com.syu.fourcamera2") || u0.b.v1 == 1)) {
            I3(13, 0);
            u0.c.R.c(new int[]{13, 0});
        } else {
            I3(13, i2);
            u0.c.R.c(new int[]{13, i2});
        }
    }

    public static void C3(int i2) {
        I3(45, i2);
    }

    public static void D(int i2) {
        if (u0.b.f17356r != i2) {
            u0.b.f17356r = i2;
            s0.F("persist.syu.back.mirror", ProxyProperties.LOCAL_EXCL_LIST + i2);
            I3(24, i2);
            m1.c.g(132, i2);
            u0.c.f17398y.c();
            q0.j(i2);
        }
    }

    public static void D0(int[] iArr) {
        if (M0(iArr, 2) && iArr[0] == 255) {
            if (ToolsJni.getUsbIndex() != iArr[1]) {
                ToolsJni.setUsbIndex(0, iArr[1]);
            }
            E0(iArr[1]);
        }
    }

    public static synchronized void D1() {
        if (f17414n.c(800)) {
            if (c.g.g(App.c()).i()) {
                return;
            }
            int i2 = u0.b.D;
            u0.b.g3 = i2;
            int i3 = (i2 + 1) % 20;
            int i4 = ((i2 - 1) + 20) % 20;
            while (i3 != i4 && (u.b(u0.b.h3[i3]) != 2 || u0.b.h3[i3] == -1)) {
                i3 = (i3 + 1) % 20;
            }
            u0.b.g3 = i3;
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$ArrayArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public static void D2(int i2) {
        if (u0.b.G == 0 && !qt.k0() && u0.b.P0 == 0) {
            I3(14, 10);
            u0.c.R.c(new int[]{14, 10});
        } else if (u0.b.r2 != i2) {
            u0.b.r2 = i2;
            I3(14, i2);
            u0.c.R.c(new int[]{14, i2});
        }
    }

    public static void D3(int i2, int i3, int i4) {
        a.f.p().t(LogType.DVR, String.format("Touch action: %d, x: %d, y: %d", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4)));
        f17403c.a(i2, i3, i4);
        u0.c.O.c(f17403c);
        if (i2 == 0 || i2 == 2) {
            z.k.s(230, (i3 >> 8) & 255, i3 & 255, (i4 >> 8) & 255, i4 & 255);
        }
    }

    public static void E(int i2) {
        if (i2 == 0) {
            D(0);
        } else if (i2 == 1) {
            D(1);
        } else {
            if (i2 != 2) {
                return;
            }
            D((u0.b.f17356r + 1) & 1);
        }
    }

    public static void E0(int i2) {
        if (i2 < 0) {
            i2 = ToolsJni.getUsbIndex();
        }
        I3(118, i2);
    }

    public static void E1() {
        if (f17415o.c(500)) {
            if (q0.v()) {
                u.u0();
            } else {
                u.U0();
            }
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$ArrayArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public static void E2(int i2) {
        if (u0.b.G == 0 && !qt.k0() && u0.b.P0 == 0) {
            I3(15, 10);
            u0.c.R.c(new int[]{15, 10});
        } else if (u0.b.s2 != i2) {
            u0.b.s2 = i2;
            I3(15, i2);
            u0.c.R.c(new int[]{15, i2});
        }
    }

    public static void E3(int i2) {
        if (m1.c.k(207)) {
            if (i2 == 2) {
                int i3 = u0.b.f17316d1;
            }
            F3(i2);
        } else {
            if (i2 == 0) {
                z.k.s(12, 12, 0);
                return;
            }
            if (i2 == 1) {
                z.k.s(12, 12, 1);
                return;
            }
            if (i2 != 2) {
                return;
            }
            int[] iArr = new int[3];
            iArr[0] = 12;
            iArr[1] = 11;
            iArr[2] = u0.b.f17316d1 != 0 ? 0 : 1;
            z.k.s(iArr);
        }
    }

    public static void F(int i2) {
        if (u0.b.G != i2) {
            u0.b.G = i2;
            I3(27, i2);
            if (u0.b.z4 == 1) {
                m1.c.g(168, i2);
            }
        }
    }

    public static void F0(String str, String str2) {
        String str3;
        if (str == null || str.equals(u0.b.P1)) {
            return;
        }
        if (!str.equals("com.syu.us") && ((str3 = u0.b.P1) == null || str3.isEmpty())) {
            u0.b.P1 = "com.syu.us";
        }
        String str4 = u0.b.P1;
        if (str4 != null && !str4.isEmpty()) {
            if (!"com.syu.us".equals(u0.b.P1)) {
                m0(u0.b.P1, false);
            }
            a.b.f13d.i(u0.b.P1);
        }
        u0.b.P1 = str;
        m0(str, true);
        if (!"com.syu.us".equals(str)) {
            o1.l.a().postDelayed(new c(str2, str), 500L);
        }
        m1.c.f(385, u0.b.P1);
        m1.c.f(386, str2);
        a.b.f13d.h(u0.b.P1, c0.b.f403b);
        K3(122, u0.b.P1);
    }

    public static void F1() {
        o oVar = u0.b.f3;
        if (oVar != null) {
            oVar.a(0, null, null, null, null);
            return;
        }
        int i2 = u0.b.D;
        if (i2 == 3) {
            h0.c.f2425b.E();
            return;
        }
        if (i2 == 4) {
            o0.e.f16766b.n();
        } else if (i2 == 8) {
            I3(37, 8, 2);
        } else {
            if (i2 != 9) {
                return;
            }
            I3(37, 9, 2);
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$ArrayArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public static void F2(int i2) {
        if (u0.b.G == 0 && !qt.k0() && u0.b.P0 == 0) {
            I3(16, 10);
            u0.c.R.c(new int[]{16, 10});
        } else if (u0.b.t2 != i2) {
            u0.b.t2 = i2;
            I3(16, i2);
            u0.c.R.c(new int[]{16, i2});
        }
    }

    public static void F3(int i2) {
        if (u0.b.f17316d1 != i2) {
            u0.b.f17316d1 = i2;
            if (m1.c.k(207)) {
                m1.c.e(207, i2);
            }
            I3(102, i2);
        }
    }

    public static void G(int i2) {
        int i3 = u0.b.z4;
        if (i3 == 0) {
            if (i2 == 0) {
                z.k.s(1, 12, 4);
                return;
            }
            if (i2 == 1) {
                z.k.s(1, 12, 5);
                return;
            } else {
                if (i2 != 2) {
                    return;
                }
                if (u0.b.G == 0) {
                    G(1);
                    return;
                } else {
                    G(0);
                    return;
                }
            }
        }
        if (i3 == 1) {
            if (i2 == 0) {
                F(0);
                return;
            }
            if (i2 == 1) {
                F(1);
            } else {
                if (i2 != 2) {
                    return;
                }
                if (u0.b.G == 0) {
                    G(1);
                } else {
                    G(0);
                }
            }
        }
    }

    public static void G0(int i2) {
        if (u0.b.r1 == i2) {
            return;
        }
        if (i2 == 0) {
            z.k.s(1, 0, 206);
        } else {
            if (i2 != 1) {
                return;
            }
            z.k.s(1, 0, 207);
        }
    }

    public static void G1() {
        o oVar = u0.b.e3;
        if (oVar != null) {
            oVar.a(0, null, null, null, null);
            return;
        }
        int i2 = u0.b.D;
        if (i2 == 3) {
            h0.c.f2425b.w();
            return;
        }
        if (i2 == 4) {
            o0.e.f16766b.o();
        } else if (i2 == 8) {
            I3(37, 8, 0);
        } else {
            if (i2 != 9) {
                return;
            }
            I3(37, 9, 0);
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$ArrayArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public static void G2(int i2) {
        if (u0.b.G == 0 && !qt.k0() && u0.b.P0 == 0) {
            I3(17, 10);
            u0.c.R.c(new int[]{17, 10});
        } else if (u0.b.u2 != i2) {
            u0.b.u2 = i2;
            I3(17, i2);
            u0.c.R.c(new int[]{17, i2});
        }
    }

    public static void G3() {
        z.k.s(1, 118, 0);
    }

    public static void H(int i2) {
        if (u0.b.I != i2) {
            u0.b.I = i2;
            I3(23, i2);
            if (u0.b.A4 == 1) {
                m1.c.g(169, i2);
            }
        }
    }

    public static void H0(int i2) {
        if (u0.b.f17357r0 != i2) {
            u0.b.f17357r0 = i2;
            if (m1.c.k(210)) {
                m1.c.e(210, i2);
            }
            I3(65, i2);
        }
    }

    public static void H1() {
        if (c.f.b().c(10)) {
            return;
        }
        int i2 = u0.b.D;
        if (i2 == 9) {
            u.c1();
        } else if (i2 != 10) {
            u.i();
        } else {
            u.V0();
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$ArrayArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public static void H2(int i2) {
        if (u0.b.G2 != i2) {
            u0.b.G2 = i2;
            I3(97, i2);
            u0.c.R.c(new int[]{97, i2});
        }
    }

    public static void H3(int i2) {
        if (u0.b.T0 != i2) {
            u0.b.T0 = i2;
            I3(87, i2);
        }
    }

    public static void I(int i2) {
        int i3 = u0.b.A4;
        if (i3 == 0) {
            if (i2 == 0) {
                z.k.s(12, 1, 1);
                return;
            }
            if (i2 == 1) {
                z.k.s(12, 1, 0);
                return;
            } else {
                if (i2 != 2) {
                    return;
                }
                if (u0.b.I == 0) {
                    I(1);
                    return;
                } else {
                    I(0);
                    return;
                }
            }
        }
        if (i3 == 1) {
            if (i2 == 0) {
                H(0);
                return;
            }
            if (i2 == 1) {
                H(1);
            } else {
                if (i2 != 2) {
                    return;
                }
                if (u0.b.I == 0) {
                    I(1);
                } else {
                    I(0);
                }
            }
        }
    }

    public static void I0(int i2) {
        if (m1.c.k(210)) {
            H0(i2);
            return;
        }
        if (i2 == 0) {
            z.k.s(12, 0, 1);
            return;
        }
        if (i2 == 1) {
            z.k.s(12, 0, 0);
        } else {
            if (i2 != 2) {
                return;
            }
            if (u0.b.f17357r0 == 0) {
                I0(1);
            } else {
                I0(0);
            }
        }
    }

    public static void I1() {
        o oVar = u0.b.d3;
        if (oVar != null) {
            oVar.a(0, null, null, null, null);
            return;
        }
        int i2 = u0.b.D;
        if (i2 != 1) {
            if (i2 == 3) {
                h0.c.f2425b.V();
                return;
            } else {
                if (i2 == 4) {
                    o0.e.f16766b.l();
                    return;
                }
                switch (i2) {
                    case 8:
                    case 9:
                    case 10:
                        c.e.d().c(87);
                        break;
                }
                return;
            }
        }
        int i3 = w0.d.R;
        if (i3 == 0) {
            w0.d.f17790b.c();
        } else if (i3 == 3) {
            w0.d.f17790b.i();
        } else {
            if (i3 != 5) {
                return;
            }
            w0.d.f17790b.h();
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$ArrayArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public static void I2(int i2) {
        if (u0.b.D2 != i2) {
            u0.b.D2 = i2;
            I3(94, i2);
            u0.c.R.c(new int[]{94, i2});
        }
    }

    public static void I3(int i2, int... iArr) {
        J3(i2, iArr, null, null);
    }

    public static void J(int i2) {
        if (u0.b.Y != i2) {
            u0.b.Y = i2;
            I3(47, i2);
        }
    }

    public static void J0(String str, String str2) {
        u0.b.k3 = str;
        u0.c.f17390q.c();
        J3(74, new int[]{u0.b.D, 2}, null, new String[]{str, str2});
    }

    public static void J1() {
        int i2 = u0.b.D;
        if (i2 == 1) {
            int i3 = w0.d.P;
            if (i3 == 1) {
                w0.d.f17790b.g();
            } else {
                if (i3 != 4) {
                    return;
                }
                w0.d.f17790b.d();
                return;
            }
        }
        if (i2 == 3) {
            h0.c.f2425b.i();
            return;
        }
        if (i2 == 4) {
            int i4 = o0.e.f16787l0;
            if (i4 == 6) {
                o0.e.f16766b.r();
                return;
            } else {
                if (i4 != 8) {
                    return;
                }
                o0.e.f16766b.i();
                return;
            }
        }
        switch (i2) {
            case 8:
                int i5 = u0.b.Q3;
                if (i5 == 0) {
                    c.e.d().c(88);
                    break;
                } else if (i5 == 1) {
                    I3(60, 5);
                    break;
                }
                break;
            case 9:
            case 10:
                c.e.d().c(88);
                break;
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$ArrayArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public static void J2(int i2) {
        if (u0.b.F2 != i2) {
            u0.b.F2 = i2;
            I3(96, i2);
            u0.c.R.c(new int[]{96, i2});
        }
    }

    public static void J3(int i2, int[] iArr, float[] fArr, String[] strArr) {
        u0.i iVarL3 = u0.i.l3();
        if (iVarL3 != null) {
            iVarL3.H0(i2, iArr, fArr, strArr);
        }
    }

    public static void K(int i2) {
        if (i2 == 0) {
            z.k.s(12, 6, 0);
        } else {
            if (i2 != 1) {
                return;
            }
            z.k.s(12, 6, 1);
        }
    }

    public static void K0(String str) {
        u0.b.j3 = str;
        u0.c.f17389p.c();
        J3(74, new int[]{u0.b.D, 1}, null, new String[]{str});
    }

    public static void K1() {
        int i2 = u0.b.D;
        if (i2 == 1) {
            int i3 = w0.d.Q;
            if (i3 == 0) {
                w0.d.f17790b.c();
            } else {
                if (i3 != 3) {
                    return;
                }
                w0.d.f17790b.i();
                return;
            }
        }
        if (i2 == 3) {
            h0.c.f2425b.V();
            return;
        }
        if (i2 == 4) {
            int i4 = o0.e.f16789m0;
            if (i4 == 7) {
                o0.e.f16766b.l();
                return;
            } else {
                if (i4 != 9) {
                    return;
                }
                o0.e.f16766b.j();
                return;
            }
        }
        switch (i2) {
            case 8:
                int i5 = u0.b.R3;
                if (i5 == 0) {
                    c.e.d().c(87);
                    break;
                } else if (i5 == 1) {
                    I3(60, 6);
                    break;
                }
                break;
            case 9:
            case 10:
                c.e.d().c(87);
                break;
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$ArrayArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public static void K2(int i2) {
        if (u0.b.E2 != i2) {
            u0.b.E2 = i2;
            I3(95, i2);
            u0.c.R.c(new int[]{95, i2});
        }
    }

    public static void K3(int i2, String... strArr) {
        J3(i2, null, null, strArr);
    }

    public static void L(int i2) {
        if (u0.b.P0 != i2) {
            u0.b.P0 = i2;
            I3(81, i2);
            u0.c.J.c();
            m1.c.g(155, i2);
            N3(39, u0.b.P0, a.b.Z);
        }
        if (i2 == 0) {
            q0.F(0);
        } else if (i2 == 1) {
            q0.F(2);
        }
    }

    public static void L0(String str) {
        u0.b.i3 = str;
        u0.c.f17388o.c();
        K3(49, str);
        J3(74, new int[]{u0.b.D, 0}, null, new String[]{str});
    }

    public static void L1() {
        o oVar = u0.b.a3;
        if (oVar != null) {
            oVar.a(0, null, null, null, null);
        }
        int i2 = u0.b.D;
        if (i2 == 1) {
            w0.d.f17790b.d();
            return;
        }
        if (i2 == 3) {
            h0.c.f2425b.i();
        } else {
            if (i2 == 4) {
                o0.e.f16766b.r();
                return;
            }
            switch (i2) {
                case 8:
                case 9:
                case 10:
                    a.i.N(i2);
                    break;
            }
        }
    }

    public static void L2(int i2) {
        if (u0.b.f17318e0 != i2) {
            u0.b.f17318e0 = i2;
            I3(86, i2);
        }
    }

    public static void L3(int i2, float... fArr) {
        J3(i2, null, fArr, null);
    }

    public static void M(int i2) {
        if (u0.b.f17332j != i2) {
            u0.b.f17332j = i2;
            I3(3, i2);
            u0.c.f17387n.c();
        }
    }

    public static boolean M0(int[] iArr, int i2) {
        return iArr != null && iArr.length >= i2;
    }

    public static void M1() {
        switch (nt.f8633a) {
            case 328128:
            case 2687424:
            case 2884032:
                if (!u.S(a.b.Q)) {
                    y0.h.i0();
                    y0.h.u0(-2);
                } else {
                    z.k.s(227, 0, 168, 2, 1, 1);
                    z.k.s(227, 0, 168, 2, 0, 1);
                }
                break;
            case 983488:
            case 1180096:
            case 1245632:
            case 1311168:
            case 1376704:
            case 1442240:
            case 1704384:
            case 1769920:
            case 1835456:
            case 1900992:
            case 1966528:
            case 2032064:
            case 2097600:
            case 2163136:
            case 2294208:
            case 2359744:
            case 2425280:
            case 2949568:
            case 3015104:
            case 3080640:
            case 3146176:
            case 3211712:
            case 3277248:
            case 3342784:
            case 3408320:
            case 3473856:
            case 3539392:
            case 3604928:
                if (SystemProperties.getInt("persist.fyt.androictrldvoice", 0) != 1) {
                    z.k.s(227, 0, 148, 2, 7, 1);
                    z.k.s(227, 0, 148, 2, 7, 0);
                } else {
                    y0.h.i0();
                    y0.h.u0(-2);
                }
                break;
            case 4587975:
            case 4719047:
                if (SystemProperties.getInt("persist.fyt.androictrldvoice", 0) != 1) {
                    z.k.s(227, 131, 2, 41, 11);
                } else {
                    y0.h.i0();
                    y0.h.u0(-2);
                }
                break;
            case 6291912:
            case 6357448:
            case 6422984:
            case 6488520:
            case 11993542:
                if (!u.a0()) {
                    y0.h.i0();
                    y0.h.u0(-2);
                } else {
                    z.k.s(227, 198, 2, 2, 4);
                    z.k.s(227, 198, 2, 2, 0);
                }
                break;
            default:
                y0.h.i0();
                y0.h.u0(-2);
                break;
        }
    }

    public static void M2(int i2) {
        if (i2 == 0) {
            z.k.s(12, 4, 0);
            return;
        }
        if (i2 == 1) {
            z.k.s(12, 4, 1);
            return;
        }
        if (i2 != 2) {
            return;
        }
        int[] iArr = new int[3];
        iArr[0] = 12;
        iArr[1] = 4;
        iArr[2] = u0.b.f17318e0 != 0 ? 0 : 1;
        z.k.s(iArr);
    }

    public static void M3(y.b bVar) {
        SparseIntArray sparseIntArray = u0.b.O2;
        synchronized (sparseIntArray) {
            int size = sparseIntArray.size();
            x xVarL2 = u0.i.l3().L2();
            if (size != 0) {
                int[] iArr = new int[size];
                for (int i2 = 0; i2 < size; i2++) {
                    iArr[i2] = u0.b.O2.keyAt(i2);
                }
                if (bVar == null) {
                    J3(46, iArr, null, null);
                } else if (xVarL2 != null) {
                    xVarL2.H(bVar, 46, iArr, null, null);
                }
            } else if (bVar == null) {
                J3(46, null, null, null);
            } else if (xVarL2 != null) {
                xVarL2.H(bVar, 46, null, null, null);
            }
        }
    }

    public static void N(int i2) {
        if (i2 == 0) {
            if (u0.b.f17332j == 1) {
                z.k.s(1, 0, 6);
            }
        } else if (i2 == 1) {
            if (u0.b.f17332j == 0) {
                z.k.s(1, 0, 5);
            }
        } else {
            if (i2 != 2) {
                return;
            }
            if (u0.b.f17332j == 0) {
                N(1);
            } else {
                N(0);
            }
        }
    }

    public static void N0(int i2) {
        if (i2 != 0) {
            if (i2 != 1) {
                return;
            }
            u.z0();
        } else if (q0.v()) {
            u.u0();
        } else {
            u.t0();
        }
    }

    public static void N1() {
        switch (nt.f8633a) {
            case 983488:
            case 1180096:
            case 1245632:
            case 1311168:
            case 1376704:
            case 1442240:
            case 1704384:
            case 1769920:
            case 1835456:
            case 1900992:
            case 1966528:
            case 2032064:
            case 2097600:
            case 2163136:
            case 2294208:
            case 2359744:
            case 2425280:
            case 2949568:
            case 3015104:
            case 3080640:
            case 3146176:
            case 3211712:
            case 3277248:
            case 3342784:
            case 3408320:
            case 3473856:
            case 3539392:
            case 3604928:
                if (SystemProperties.getInt("persist.fyt.androictrldvoice", 0) != 1) {
                    z.k.s(227, 0, 148, 2, 11, 1);
                    z.k.s(227, 0, 148, 2, 11, 0);
                } else {
                    y0.h.i0();
                    y0.h.u0(-5);
                }
                break;
            default:
                y0.h.i0();
                y0.h.u0(-5);
                break;
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$ArrayArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public static void N2(int i2) {
        if (u0.b.C2 != i2) {
            u0.b.C2 = i2;
            I3(93, i2);
            u0.c.R.c(new int[]{93, i2});
        }
    }

    public static void N3(int i2, int i3, String... strArr) {
        J3(i2, new int[]{i3}, null, strArr);
    }

    public static void O(int i2) {
        if (u0.b.f17334j1 != i2) {
            u0.b.f17334j1 = i2;
            I3(110, i2);
        }
    }

    public static void O0(int i2) {
        a.i.Q(i2);
    }

    public static void O1() {
        switch (nt.f8633a) {
            case 328128:
            case 2687424:
            case 2884032:
                if (!u.S(a.b.Q)) {
                    y0.h.i0();
                    y0.h.u0(-1);
                } else {
                    z.k.s(227, 0, 168, 2, 1, 2);
                    z.k.s(227, 0, 168, 2, 0, 2);
                }
                break;
            case 983488:
            case 1180096:
            case 1245632:
            case 1311168:
            case 1376704:
            case 1442240:
            case 1704384:
            case 1769920:
            case 1835456:
            case 1900992:
            case 1966528:
            case 2032064:
            case 2097600:
            case 2163136:
            case 2294208:
            case 2359744:
            case 2425280:
            case 2949568:
            case 3015104:
            case 3080640:
            case 3146176:
            case 3211712:
            case 3277248:
            case 3342784:
            case 3408320:
            case 3473856:
            case 3539392:
            case 3604928:
                if (SystemProperties.getInt("persist.fyt.androictrldvoice", 0) != 1) {
                    z.k.s(227, 0, 148, 2, 6, 1);
                    z.k.s(227, 0, 148, 2, 6, 0);
                } else {
                    y0.h.i0();
                    y0.h.u0(-1);
                }
                break;
            case 4587975:
            case 4719047:
                if (SystemProperties.getInt("persist.fyt.androictrldvoice", 0) != 1) {
                    z.k.s(227, 131, 2, 41, 10);
                } else {
                    y0.h.i0();
                    y0.h.u0(-1);
                }
                break;
            case 6291912:
            case 6357448:
            case 6422984:
            case 6488520:
            case 11993542:
                if (!u.a0()) {
                    y0.h.i0();
                    y0.h.u0(-1);
                } else {
                    z.k.s(227, 198, 2, 2, 3);
                    z.k.s(227, 198, 2, 2, 0);
                }
                break;
            default:
                y0.h.i0();
                y0.h.u0(-1);
                break;
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$ArrayArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public static void O2(int i2) {
        if (u0.b.z2 != i2) {
            u0.b.z2 = i2;
            I3(90, i2);
            u0.c.R.c(new int[]{90, i2});
        }
    }

    public static void O3(int i2) {
        if (u0.b.f17310b1 != i2) {
            u0.b.f17310b1 = i2;
            I3(100, i2);
            m1.c.g(172, i2);
        }
    }

    public static void P(int i2) {
        int iA = o0.a(i2, 0, u0.b.Q);
        if (u0.b.K != iA) {
            u0.b.K = iA;
            u0.c.L.c();
            I3(31, iA);
        }
    }

    public static void P0() {
        int i2 = u0.b.D;
        if (i2 == 2) {
            h0.c.f2425b.h(2);
        }
        switch (i2) {
            case 8:
            case 9:
            case 10:
                a.i.I(i2, 0);
                break;
        }
    }

    public static void P1(int i2) {
        u0.b.f2 = i2;
        z.c.f18184d.c();
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$ArrayArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public static void P2(int i2) {
        if (u0.b.B2 != i2) {
            u0.b.B2 = i2;
            I3(92, i2);
            u0.c.R.c(new int[]{92, i2});
        }
    }

    public static void P3(int i2) {
        a.f.p().s("语音是否独占声音 = " + i2);
        if (u0.b.j4 != i2) {
            u0.b.j4 = i2;
            u0.c.G.c();
            if (i2 != 0) {
                I3(57, 1);
            }
            y0.h.M();
            I3(104, i2);
        }
    }

    public static void Q(int i2) {
        int length;
        if (i2 == -5) {
            V(u0.b.K - 1);
            return;
        }
        if (i2 == -4) {
            V(u0.b.K + 1);
            return;
        }
        if (i2 == -3) {
            o oVar = u0.b.Y2;
            if (oVar == null || !oVar.a(i2, null, null, null, null)) {
                int[] iArr = u0.b.f17366w == 0 ? u0.b.V2 : u0.b.W2;
                if (iArr == null || (length = iArr.length) == 0) {
                    return;
                }
                V(o0.a(iArr[((n0.c(iArr, u0.b.K) + length) - 1) % length], 0, u0.b.Q));
                return;
            }
            return;
        }
        if (i2 == -2) {
            o oVar2 = u0.b.Y2;
            if (oVar2 == null || !oVar2.a(i2, null, null, null, null)) {
                V(o0.a(u0.b.K - u0.b.N, 0, u0.b.Q));
                return;
            }
            return;
        }
        if (i2 != -1) {
            V(i2);
            return;
        }
        o oVar3 = u0.b.Y2;
        if (oVar3 == null || !oVar3.a(i2, null, null, null, null)) {
            V(u0.b.K + u0.b.N);
        }
    }

    public static void Q0() {
        int i2 = u0.b.D;
        if (i2 == 1) {
            w0.f.B(1);
        }
        if (i2 == 2) {
            h0.c.f2425b.h(3);
        } else {
            if (i2 == 4) {
                o0.e.f16766b.D(0);
                return;
            }
            switch (i2) {
                case 8:
                case 9:
                case 10:
                    a.i.I(i2, 1);
                    break;
            }
        }
    }

    public static void Q1(int i2) {
        u0.b.e2 = 1;
        z.c.f18183c.c();
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$ArrayArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public static void Q2(int i2) {
        if (u0.b.A2 != i2) {
            u0.b.A2 = i2;
            I3(91, i2);
            u0.c.R.c(new int[]{91, i2});
        }
    }

    public static void Q3(int i2) {
        if (u0.b.f17322f1 != i2) {
            u0.b.f17322f1 = i2;
            I3(108, i2);
            m1.c.g(174, i2);
        }
    }

    public static void R(int i2) {
        int iA = o0.a(i2, 0, u0.b.Q);
        if (u0.b.L != iA) {
            u0.b.L = iA;
            I3(32, iA);
            if (u0.b.f17366w == 0) {
                n0.b();
            }
            m1.c.g(138, iA);
        }
    }

    public static void R0() {
        int i2 = u0.b.D;
        if (i2 == 1) {
            w0.f.B(2);
        }
        if (i2 == 2) {
            h0.c.f2425b.h(4);
        } else {
            if (i2 == 4) {
                o0.e.f16766b.D(1);
                return;
            }
            switch (i2) {
                case 8:
                case 9:
                case 10:
                    a.i.I(i2, 2);
                    break;
            }
        }
    }

    public static void R1(int[] iArr) {
        int i2 = iArr[0];
        if (i2 == 0) {
            z.k.s(9, 2, 0, 0);
            return;
        }
        if (i2 == 1) {
            if (M0(iArr, 3)) {
                z.k.s(9, 0, (iArr[1] >> 8) & 255, iArr[1] & 255, (iArr[2] >> 8) & 255, iArr[2] & 255);
            }
        } else if (i2 == 2 && M0(iArr, 3)) {
            int length = iArr.length + 3;
            int[] iArr2 = new int[length];
            iArr2[0] = 9;
            iArr2[1] = 1;
            iArr2[2] = (iArr[1] >> 8) & 255;
            iArr2[3] = iArr[1] & 255;
            iArr2[4] = (iArr[2] >> 8) & 255;
            iArr2[5] = iArr[2] & 255;
            System.arraycopy(iArr, 3, iArr2, 6, length - 6);
            z.k.s(iArr2);
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$ArrayArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public static void R2(int i2) {
        if (u0.b.G == 0 && !qt.k0() && u0.b.P0 == 0) {
            I3(18, 10);
            u0.c.R.c(new int[]{18, 10});
        } else if (u0.b.v2 != i2) {
            u0.b.v2 = i2;
            I3(18, i2);
            u0.c.R.c(new int[]{18, i2});
        }
    }

    public static void R3(int i2) {
        if (i2 == 0) {
            Q3(0);
            return;
        }
        if (i2 == 1) {
            Q3(1);
        } else {
            if (i2 != 2) {
                return;
            }
            if (u0.b.f17322f1 == 0) {
                R3(1);
            } else {
                R3(0);
            }
        }
    }

    public static void S(int i2) {
        R(i2);
    }

    public static void S0() {
        int i2 = u0.b.D;
        if (i2 == 1) {
            w0.f.B(3);
        }
        if (i2 == 2) {
            h0.c.f2425b.h(5);
        } else {
            if (i2 == 4) {
                o0.e.f16766b.D(2);
                return;
            }
            switch (i2) {
                case 8:
                case 9:
                case 10:
                    a.i.I(i2, 3);
                    break;
            }
        }
    }

    public static void S1(int i2) {
        if (u0.b.S0 != i2) {
            u0.b.S0 = i2;
            I3(45, 5, i2);
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$ArrayArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public static void S2(int i2) {
        if (u0.b.G == 0 && !qt.k0() && u0.b.P0 == 0) {
            I3(19, 10);
            u0.c.R.c(new int[]{19, 10});
        } else if (u0.b.w2 != i2) {
            u0.b.w2 = i2;
            I3(19, i2);
            u0.c.R.c(new int[]{19, i2});
        }
    }

    public static void S3(int i2, int i3) {
        Log.e("chip", "     videoChannel :  " + i2 + "  open: " + i3);
        I3(68, i2, i3);
    }

    public static void T(int i2) {
        int iA = o0.a(i2, 0, u0.b.Q);
        if (u0.b.M != iA) {
            u0.b.M = iA;
            I3(33, iA);
            if (u0.b.f17366w != 0) {
                n0.b();
            }
            m1.c.g(139, iA);
        }
    }

    public static void T0() {
        int i2 = u0.b.D;
        if (i2 == 1) {
            w0.f.B(4);
        }
        if (i2 == 2) {
            h0.c.f2425b.h(6);
        } else {
            if (i2 == 4) {
                o0.e.f16766b.D(3);
                return;
            }
            switch (i2) {
                case 8:
                case 9:
                case 10:
                    a.i.I(i2, 4);
                    break;
            }
        }
    }

    public static void T1(int i2) {
        boolean z2 = false;
        if (u0.b.f17314d != i2) {
            u0.b.f17314d = i2;
            if (i2 >= 0) {
                I3(1, i2);
            }
        }
        if (m1.a.f13514c) {
            if (u0.b.f17320f != i2) {
                u0.b.f17320f = i2;
                Log.e("Qin", "======================>> 000 mcuOn  DataMain.sMcuOn : " + u0.b.f17320f + "  DataMain.sAccOn : " + u0.b.f17306a0);
                if (i2 != 0) {
                    int[] iArrE = s0.e(g.f.e().getBytes());
                    int[] iArr = new int[iArrE.length + 1];
                    iArr[0] = 17;
                    System.arraycopy(iArrE, 0, iArr, 1, iArrE.length);
                    z.k.s(iArr);
                    c3();
                    y0.h.P();
                    u0.b.C3 = true;
                    App.c().h(true);
                    X();
                } else {
                    u.l("com.syu.video.hidepip");
                    String strY0 = u.Y0();
                    if (!g.e.j(62) || !g.e.j(24) || !s0.j(strY0, "com.android.launcher3")) {
                        if (s0.j(strY0, "com.android.tv")) {
                            strY0 = "com.sstar.customizedmenu";
                        }
                        u0.b.A3 = strY0;
                    }
                    if (u.S("com.syu.carlink") && "Car Link".equals(s0.k("com.syu.carlink"))) {
                        z2 = true;
                    }
                    if (u.j0(u0.b.A3) || z2) {
                        ((u0.a) u0.b.f17311c).i(null);
                    }
                    if (u0.b.v4 == 1) {
                        f17405e = u0.b.D;
                    }
                    if ((!z2 || !u.S("com.syu.carlink")) && !u.S("com.autonavi.amapauto")) {
                        a.i.Q(3);
                    }
                    if (a.i.s(u0.b.A3) || u.j0(u0.b.A3)) {
                        u0.b.A3 = ProxyProperties.LOCAL_EXCL_LIST;
                    }
                    b0.f("MCU关机,记录最上面的应用" + u0.b.A3 + " 并跳到主页");
                    Log.e("Qin", "MCU OFF sTopAppWhenMcuOff: " + u0.b.A3 + " mJumpAppId: " + f17405e + "  oldCarlink : " + z2);
                }
                u0.c.f17376c.c();
                int i3 = u0.b.f17306a0;
                if (i3 != -1) {
                    u.n("com.syu.ms", "cmd.acc", i3);
                }
            }
            if ((g.e.e() == 1 || g.e.e() == 3 || g.e.e() == 4 || g.e.e() == 6 || g.e.e() == 0) && u0.b.f17320f != 0) {
                q0.x();
            }
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$ArrayArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public static void T2(int i2) {
        if (u0.b.G == 0 && !qt.k0() && u0.b.P0 == 0) {
            I3(20, 10);
            u0.c.R.c(new int[]{20, 10});
        } else if (u0.b.x2 != i2) {
            u0.b.x2 = i2;
            I3(20, i2);
            u0.c.R.c(new int[]{20, i2});
        }
    }

    public static void T3(int i2, int i3) {
        a.f.p().s("UI请求切到的视频通道 what = " + i2 + " request = " + i3 + " time:" + SystemClock.uptimeMillis());
        u0.b.p4 = i2;
        if (i2 == 1) {
            u0.c.f17383j.c();
            return;
        }
        if (f1.o.g().m()) {
            if (f1.o.g().d(f1.o.g().c(i2)) != null) {
                if (i2 == i3 || i3 == 0) {
                    u0.b.o4 = i3;
                    u0.c.f17383j.c();
                    return;
                }
                return;
            }
            return;
        }
        if (i2 == i3 || (i3 == 0 && i2 == u0.b.o4)) {
            Log.d("image", "DataMain.sVideoId = " + u0.b.o4 + "   request = " + i3);
            if (u0.b.o4 != i3) {
                u0.b.o4 = i3;
                u0.c.f17383j.c();
            }
        }
    }

    public static void U(int i2) {
        T(i2);
    }

    public static void U0() {
        int i2 = u0.b.D;
        if (i2 == 1) {
            w0.f.B(5);
        }
        if (i2 == 2) {
            h0.c.f2425b.h(7);
        } else {
            if (i2 == 4) {
                o0.e.f16766b.D(4);
                return;
            }
            switch (i2) {
                case 8:
                case 9:
                case 10:
                    a.i.I(i2, 5);
                    break;
            }
        }
    }

    public static void U1(int i2) {
        if (i2 == 0) {
            if (u0.b.f17320f != 0) {
                U1(2);
            }
        } else if (i2 != 1) {
            if (i2 != 2) {
                return;
            }
            z.k.s(1, 0, 1);
        } else if (u0.b.f17320f == 0) {
            U1(2);
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$ArrayArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public static void U2(int i2) {
        if (u0.b.G == 0 && !qt.k0() && u0.b.P0 == 0) {
            I3(21, 10);
            u0.c.R.c(new int[]{21, 10});
        } else if (u0.b.y2 != i2) {
            u0.b.y2 = i2;
            I3(21, i2);
            u0.c.R.c(new int[]{21, i2});
        }
    }

    public static void U3(int i2, int i3, int i4, int i5) {
        if (g.e.e() != 6 || o0.e.f16764a != 1) {
            if (g.f.f(4)) {
                e1.a.f1657b.h(i2, i3, i4, i5);
            }
        } else {
            if (i2 != 0) {
                z.k.o(0, 176, o0.a(i3, 0, 12), o0.a(i4, 0, 12), o0.a(i5, 0, 12));
                return;
            }
            int iA = o0.a(i3, 0, 20);
            int iA2 = o0.a(i4, 0, 20);
            int iA3 = o0.a(i5, 0, 20);
            z.k.o(0, 176, 6, 0, 6);
            z.k.o(0, 177, iA, iA2, iA3);
        }
    }

    public static void V(int i2) {
        if (!u0.i.l3().q3()) {
            S(i2);
            U(i2);
        } else if (u0.b.f17366w == 0) {
            S(i2);
        } else {
            U(i2);
        }
    }

    public static void V0() {
        int i2 = u0.b.D;
        if (i2 == 1) {
            w0.f.B(6);
        }
        if (i2 == 2) {
            h0.c.f2425b.h(8);
        } else {
            if (i2 == 4) {
                o0.e.f16766b.D(5);
                return;
            }
            switch (i2) {
                case 8:
                case 9:
                case 10:
                    a.i.I(i2, 6);
                    break;
            }
        }
    }

    public static void V1(int i2) {
        if (u0.b.X != i2) {
            u0.b.X = i2;
            I3(38, i2);
        }
    }

    public static void V2(int i2) {
        if (i2 == 0) {
            z.k.s(1, 0, 120);
        } else if (i2 == 1) {
            z.k.s(1, 0, 121);
        }
        u0.b.X0 = i2;
        qt.y0(1017, i2);
        rt.a3().Y2(Process.VPN_UID, new int[]{i2}, null, null);
    }

    public static void V3(int i2) {
        int[] iArr = new int[3];
        iArr[0] = 1;
        iArr[1] = 0;
        iArr[2] = i2 == 0 ? 192 : 193;
        z.k.s(iArr);
    }

    public static void W(int i2) {
        if (u0.b.Z != i2) {
            u0.b.Z = i2;
            y0.h.M();
            u0.c.f17382i.c();
        }
    }

    public static void W0() {
        int i2 = u0.b.D;
        if (i2 == 2) {
            h0.c.f2425b.h(9);
        } else {
            if (i2 == 4) {
                o0.e.f16766b.D(6);
                return;
            }
            switch (i2) {
                case 8:
                case 9:
                case 10:
                    a.i.I(i2, 7);
                    break;
            }
        }
    }

    public static void W1(int i2) {
        int i3 = u0.b.y3;
        if (i2 == 0) {
            z.k.s(10, i3 & (-65), 0, 0);
            return;
        }
        if (i2 == 1) {
            z.k.s(10, i3 | 64, 0, 0);
        } else {
            if (i2 != 2) {
                return;
            }
            if (u0.b.X != 1) {
                W1(1);
            } else {
                W1(0);
            }
        }
    }

    public static void W2(int i2) {
        if (u0.b.o3 != i2) {
            u0.b.o3 = i2;
            u0.c.f17395v.c();
            I3(74, u0.b.D, 7, i2);
            int i3 = u0.b.D;
            if (i3 == 8 || i3 == 9) {
                z.k.s(116, 6, u0.b.n3, i2);
            }
        }
    }

    public static void W3(int i2, int i3) {
        if (i2 == 0) {
            if (u0.b.x1 != i3) {
                u0.b.x1 = i3;
                I3(105, 0, i3);
                return;
            }
            return;
        }
        if (i2 == 1) {
            if (u0.b.y1 != i3) {
                u0.b.y1 = i3;
                I3(105, 1, i3);
                return;
            }
            return;
        }
        if (i2 == 2) {
            if (u0.b.z1 != i3) {
                u0.b.z1 = i3;
                I3(105, 2, i3);
                return;
            }
            return;
        }
        if (i2 == 3) {
            if (u0.b.A1 != i3) {
                u0.b.A1 = i3;
                I3(105, 3, i3);
                return;
            }
            return;
        }
        if (i2 == 4 && u0.b.B1 != i3) {
            u0.b.B1 = i3;
            I3(105, 4, i3);
        }
    }

    public static void X() {
        if (a.f.w() == 800 && a.f.i() == 480) {
            W3(0, 0);
            X3(0, 0);
        } else {
            W3(0, 1);
            X3(0, 1);
        }
    }

    public static void X0() {
        int i2 = u0.b.D;
        if (i2 == 2) {
            h0.c.f2425b.h(10);
        } else {
            if (i2 == 4) {
                o0.e.f16766b.D(7);
                return;
            }
            switch (i2) {
                case 8:
                case 9:
                case 10:
                    a.i.I(i2, 8);
                    break;
            }
        }
    }

    public static void X1(String str) {
        if (str == null) {
            if (u0.b.I1 != null) {
                u0.b.I1 = str;
                K3(35, str);
                return;
            }
            return;
        }
        if (str.equals(u0.b.I1)) {
            return;
        }
        u0.b.I1 = str;
        K3(35, str);
    }

    public static void X2() {
        z.a.f18151b.i(new byte[]{-86, 90, -1, -86, 91, -1, -86, 92, -1});
    }

    public static void X3(int i2, int i3) {
        boolean zExists = new File("/dev/ch7026").exists();
        if (i2 == 0) {
            z.k.s(14, 1, i3, 0);
            return;
        }
        if (i2 == 1) {
            if (!zExists) {
                z.k.s(14, 2, (i3 >> 8) & 255, i3 & 255);
                return;
            }
            ToolsJni.cmd_147_7026_control_write(5, i3);
            ToolsJni.cmd_147_7026_control_write(6, 255);
            u0.b.y1 = i3;
            return;
        }
        if (i2 == 2) {
            if (!zExists) {
                z.k.s(14, 3, (i3 >> 8) & 255, i3 & 255);
                return;
            }
            ToolsJni.cmd_147_7026_control_write(4, i3);
            ToolsJni.cmd_147_7026_control_write(6, 255);
            u0.b.z1 = i3;
            return;
        }
        if (i2 == 3) {
            if (!zExists) {
                z.k.s(14, 4, (i3 >> 8) & 255, i3 & 255);
                return;
            }
            ToolsJni.cmd_147_7026_control_write(3, i3);
            ToolsJni.cmd_147_7026_control_write(6, 255);
            u0.b.A1 = i3;
            return;
        }
        if (i2 == 4) {
            if (!zExists) {
                z.k.s(14, 5, (i3 >> 8) & 255, i3 & 255);
                return;
            }
            ToolsJni.cmd_147_7026_control_write(2, i3);
            ToolsJni.cmd_147_7026_control_write(6, 255);
            u0.b.B1 = i3;
            return;
        }
        if (i2 != 5) {
            return;
        }
        if (!zExists) {
            z.k.s(14, 16, 0, 0);
            return;
        }
        ToolsJni.cmd_147_7026_control_write(9, 255);
        int[] iArrCmd_147_7026_control_read = ToolsJni.cmd_147_7026_control_read();
        if (iArrCmd_147_7026_control_read != null) {
            try {
                if (iArrCmd_147_7026_control_read.length == 4) {
                    u0.b.y1 = iArrCmd_147_7026_control_read[2];
                    u0.b.z1 = iArrCmd_147_7026_control_read[3];
                    u0.b.A1 = iArrCmd_147_7026_control_read[0];
                    u0.b.B1 = iArrCmd_147_7026_control_read[1];
                }
            } catch (Exception unused) {
            }
        }
        I3(105, 1, u0.b.y1);
        I3(105, 2, u0.b.z1);
        I3(105, 3, u0.b.A1);
        I3(105, 4, u0.b.B1);
    }

    public static boolean Y(String str, int i2, int i3, int i4) {
        if (str == null || str.equals(ProxyProperties.LOCAL_EXCL_LIST)) {
            return true;
        }
        try {
            String[] strArrSplit = str.substring(0, 10).split("-");
            if (strArrSplit == null || strArrSplit.length <= 2) {
                return true;
            }
            int i5 = Integer.parseInt(strArrSplit[0].trim());
            int i6 = Integer.parseInt(strArrSplit[1].trim());
            int i7 = Integer.parseInt(strArrSplit[2].trim());
            if (i5 >= i2) {
                if (i5 != i2) {
                    return true;
                }
                if (i6 >= i3 && i7 >= i4) {
                    return true;
                }
            }
            return false;
        } catch (Exception unused) {
            return true;
        }
    }

    public static void Y0() {
        int i2 = u0.b.D;
        if (i2 == 2) {
            h0.c.f2425b.h(11);
        } else {
            if (i2 == 4) {
                o0.e.f16766b.D(8);
                return;
            }
            switch (i2) {
                case 8:
                case 9:
                case 10:
                    a.i.I(i2, 9);
                    break;
            }
        }
    }

    public static void Y1(String str) {
        if (str == null || str.length() <= 0) {
            return;
        }
        int length = str.length();
        int[] iArr = new int[length + 3];
        iArr[0] = 7;
        iArr[1] = 1;
        iArr[2] = length;
        for (int i2 = 0; i2 < length; i2++) {
            iArr[i2 + 3] = str.charAt(i2);
        }
        z.k.s(iArr);
        z.k.s(7, 0);
    }

    public static void Y2() {
        z.a.f18151b.i(z.k.b(1, -86, 112));
    }

    public static void Y3(int[] iArr) {
        if (q0.v()) {
            u0.b.f17371y0 = iArr[0];
            u0.b.f17373z0 = iArr[1];
            u0.b.A0 = iArr[2];
            u0.b.B0 = iArr[3];
            u0.b.C0 = iArr[4];
        }
    }

    public static void Z(int i2, int i3) {
        if (u0.b.Y0 == i2 && u0.b.Z0 == i3) {
            return;
        }
        u0.b.Y0 = i2;
        u0.b.Z0 = i3;
        I3(98, i2, i3);
    }

    public static void Z0() {
        if (u0.b.D != 2) {
            return;
        }
        h0.c.f2425b.h(14);
    }

    public static void Z1(int i2) {
        Log.e("Qin", String.format(" HandleMain lase Mcu STATE: %2X  mcuState App ID =  %2X  DataMain.sTopAppWhenMcuOff: ", Integer.valueOf(u0.b.O), Integer.valueOf(i2)) + u0.b.A3);
        if (u0.b.O != i2) {
            u0.b.O = i2;
            u0.b.N2.d(i2);
            int i3 = u0.b.D;
            boolean z2 = i3 <= 0 || i3 >= 20 || u0.a.f17293h[i3] != i2;
            if (z2) {
                w wVar = u0.b.M2;
                int iE = wVar.e();
                int[] iArrA = wVar.a();
                for (int i4 = iE - 1; i4 >= 0; i4--) {
                    i3 = iArrA[i4];
                    if (i3 >= 0 && i3 < 20 && u0.a.f17293h[i3] == i2) {
                        u0.b.F = i3;
                        if (!q0.v()) {
                            s(i3);
                            y0.f.f18034b.a(i3);
                        }
                        z2 = false;
                        break;
                    }
                }
            }
            if (z2) {
                i3 = 0;
                while (i3 < 20) {
                    if (u0.a.f17293h[i3] == i2) {
                        u0.b.F = i3;
                        if (!q0.v()) {
                            s(i3);
                            y0.f.f18034b.a(i3);
                            break;
                        }
                        break;
                    }
                    i3++;
                }
            }
            f17405e = i3;
        }
        if (a.b.f16e0 != 1) {
            a.d.f45a.a(f17404d, 0);
        } else {
            a.d.f45a.d(f17404d);
            u0();
        }
    }

    public static void Z2() {
        int i2 = u0.i.l3().J;
        boolean z2 = s0.j("com.syu.carlink", u0.b.A3) && "Car Link".equals(s0.k("com.syu.carlink"));
        Log.e("Qin", "rememberLastApp goto DataMain.sTopAppWhenMcuOff: " + u0.b.A3 + " mJumpAppId: " + f17405e + " type : " + i2);
        boolean zD0 = u.d0(u0.b.A3);
        boolean zJ = s0.j(u0.b.B3, u0.b.A3);
        if (i2 != 1) {
            if (i2 == 2) {
                int i3 = f17405e;
                if (i3 == 0) {
                    f17405e = m1.c.c(2, i3);
                }
                u.b(f17405e);
            } else if (i2 == 3) {
                m mVarA = m.a();
                Runnable runnable = f17416p;
                mVarA.removeCallbacks(runnable);
                m.a().postDelayed(runnable, 2000L);
            } else if (i2 == 4) {
                u.J0(u0.i.l3().i3());
            }
        } else if (s0.t(u0.b.A3) || z2) {
            if (u0.b.G3 && s0.t(u0.b.A3)) {
                int i4 = f17405e;
                if (i4 == 0) {
                    f17405e = m1.c.c(2, i4);
                    Log.e("Qin", "rememberLastApp restore mJumpAppId: " + f17405e + " remember type : " + i2);
                }
                int i5 = f17405e;
                if (i5 != 10 || !zD0 || !zJ) {
                    u.b(i5);
                }
            }
        } else if (!zD0) {
            if (s0.j("com.autonavi.amapauto", u0.b.A3)) {
                m.a().postDelayed(new h(), InputMethodManager.INPUT_METHOD_NOT_RESPONDING_TIMEOUT);
            } else {
                u.g(u0.b.A3);
            }
        }
        m1.c.f(1, ProxyProperties.LOCAL_EXCL_LIST);
    }

    @SuppressLint({"SdCardPath"})
    public static void Z3(String str) {
        try {
            FileOutputStream fileOutputStream = new FileOutputStream("/mnt/sdcard/MainServerLog.txt", true);
            fileOutputStream.write((t0() + "--->" + str).getBytes());
            fileOutputStream.write("\n".getBytes());
            fileOutputStream.close();
        } catch (FileNotFoundException e2) {
            e2.printStackTrace();
        } catch (IOException e3) {
            e3.printStackTrace();
        }
    }

    public static void a(int i2) {
        if (i2 == 0) {
            w(0);
            return;
        }
        if (i2 == 1) {
            w(1);
        } else {
            if (i2 != 2) {
                return;
            }
            if (u0.b.f17322f1 == 0) {
                w(1);
            } else {
                w(0);
            }
        }
    }

    public static void a0(int i2) {
        z.k.s(1, 9, i2);
        c.f.b().a(14, 0);
    }

    public static void a1() {
        if (u0.b.D != 2) {
            return;
        }
        h0.c.f2425b.h(12);
    }

    public static void a2(int[] iArr, float[] fArr, String[] strArr) {
        if (iArr == null || iArr.length < 1) {
            return;
        }
        switch (iArr[0]) {
            case 0:
                if (strArr != null && strArr.length >= 1) {
                    u0.f.A(strArr[0]);
                    break;
                }
                break;
            case 1:
                X2();
                break;
            case 2:
                if (strArr != null && strArr.length >= 1 && iArr.length >= 3) {
                    u0.f.B(strArr[0], iArr[1], iArr[2]);
                    break;
                }
                break;
            case 3:
                if (strArr != null && strArr.length >= 1 && iArr.length >= 3) {
                    u0.f.z(strArr[0], iArr[1], iArr[2]);
                    break;
                }
                break;
            case 4:
                if (strArr != null && strArr.length >= 1) {
                    u0.e.i(strArr[0], 0);
                    break;
                }
                break;
            case 5:
                if (strArr != null && strArr.length >= 1) {
                    u0.e.i(strArr[0], 1);
                    break;
                }
                break;
            case 6:
                Y2();
                break;
            case 7:
                if (s0.i(strArr, 0)) {
                    d.a.c().d(strArr[0]);
                }
                break;
        }
    }

    public static void a3(Runnable runnable) {
        j0.f16915j.d(runnable);
    }

    public static void b() {
        u0.b.f17343m1 = 1;
        z.k.s(1, 170, 86);
    }

    public static void b0(int i2) {
        c.f.b().a(13, Integer.valueOf(i2));
        z.k.s(1, 9, (i2 & 15) | 16);
    }

    public static void b1() {
        if (u0.b.D != 2) {
            return;
        }
        h0.c.f2425b.h(13);
    }

    public static void b2(String str) {
        int i2;
        int i3;
        c4 c4Var;
        String strReplace = str;
        if (!s0.t(str)) {
            Log.e("boot", "===============>> Mcu Version Name:" + strReplace);
            u0.i.l3().b4();
        }
        boolean z2 = !s0.t(str) && (strReplace.contains("?TestOnly") || ((c4Var = j4.f16466d) != null && c4Var.R3(strReplace)));
        if (p0.g(u0.b.F1, strReplace)) {
            return;
        }
        u0.b.F1 = strReplace;
        K3(34, strReplace);
        if (z2) {
            a.f.k().l(0, "mcu match error", App.c().getResources().getString(R.string.ui_and_mcu_match_error) + "(" + j4.f16465c + ")", Paint.Align.CENTER, 35, -65536, 60, 2147483392);
        }
        boolean zM = g.f.m();
        if (!(g.f.f(12) || g.e.j(71)) && zM && !strReplace.contains("E60")) {
            a.f.k().l(1, "mcu match error", App.c().getResources().getString(R.string.ui_and_mcu_match_error) + "( NOT 360 MCU )", Paint.Align.CENTER, 35, -65536, 60, 2147483392);
        }
        if (Y(strReplace, WindowManager.LayoutParams.TYPE_SECURE_SYSTEM_OVERLAY, 12, 9)) {
            int[] iArr = u0.a.f17293h;
            iArr[9] = 40;
            iArr[10] = 41;
        } else {
            int[] iArr2 = u0.a.f17293h;
            iArr2[9] = 26;
            iArr2[10] = 26;
        }
        if (strReplace.contains("_92_")) {
            strReplace = strReplace.replace("_92_", "_90_");
        }
        if (g.e.a() != 1 && g.e.a() != 0 && g.e.a() != 3 && (i3 = j4.f16464b) != 3 && i3 != 41 && !g.e.c().equals("_00_") && !strReplace.contains(g.e.c())) {
            a.f.k().l(0, "mcu match error", App.c().getResources().getString(R.string.platform_and_mcu_match_error) + "(BSP:" + g.e.f() + "-MCU:" + g.e.d(strReplace) + ")", Paint.Align.CENTER, 30, -65536, 60, 2147483392);
        }
        if (g.e.a() == 5 && SystemProperties.getBoolean("ro.fyt.openfw", false)) {
            if ("ob_04".equals(SystemProperties.get("ro.fyt.openbom", WifiEnterpriseConfig.EMPTY_VALUE))) {
                int i4 = j4.f16464b;
                i2 = (i4 == 90 || i4 == 92 || i4 == 93) ? 1 : 0;
                Log.d("LG", "奥尼 ");
            } else if ("ob_03".equals(SystemProperties.get("ro.fyt.openbom", WifiEnterpriseConfig.EMPTY_VALUE))) {
                int i5 = j4.f16464b;
                i2 = (i5 == 90 || i5 == 92) ? 1 : 0;
                Log.d("LG", "鼎鸿 ");
            } else if ("ob_01".equals(SystemProperties.get("ro.fyt.openbom", WifiEnterpriseConfig.EMPTY_VALUE))) {
                i2 = j4.f16464b != 90 ? 1 : 0;
                Log.d("LG", "康大 ");
            } else {
                if ("ob_00".equals(SystemProperties.get("ro.fyt.openbom", WifiEnterpriseConfig.EMPTY_VALUE))) {
                    Log.d("LG", "方易通 ");
                } else if ("ob_02".equals(SystemProperties.get("ro.fyt.openbom", WifiEnterpriseConfig.EMPTY_VALUE))) {
                    i2 = j4.f16464b != 92 ? 1 : 0;
                    Log.d("LG", "车连连 ");
                }
                i2 = 0;
            }
            Log.d("LG", "show= " + i2 + " sCustomerId=" + j4.f16464b);
            if (i2 == 1) {
                a.f.k().l(0, "match error", App.c().getResources().getString(R.string.platform_and_mcu_match_error) + "(BSP:" + g.e.f() + "-MCU:" + g.e.d(strReplace) + ")", Paint.Align.CENTER, 30, -65536, 60, 2147483392);
            }
        }
        if ((g.e.e() == 29 || g.e.e() == 37) && SystemProperties.getBoolean("ro.sys.768m", false) && !Y(strReplace, WindowManager.LayoutParams.TYPE_STATUS_BAR_SUB_PANEL, 11, 1)) {
            a.f.k().l(0, "mcu match old", App.c().getResources().getString(R.string.mcu_match_old), Paint.Align.CENTER, 30, -65536, 60, 2147483392);
        }
        if (s0.t(strReplace) || !strReplace.contains("Fact")) {
            return;
        }
        a.f.k().l(0, "upgrade mcu", App.c().getResources().getString(R.string.upgrade_mcu), Paint.Align.CENTER, 30, -65536, 60, 2147483392);
    }

    public static void b3(int i2) {
        if (u0.b.n3 != i2) {
            u0.b.n3 = i2;
            u0.c.f17394u.c();
            I3(74, u0.b.D, 6, i2);
            int i3 = u0.b.D;
            if (i3 == 8 || i3 == 9) {
                z.k.s(116, 6, i2, u0.b.o3);
            }
        }
    }

    public static void c() {
        if (c.f.b().c(11)) {
            return;
        }
        z.k.s(1, 0, 119);
    }

    public static void c0(int i2) {
        I3(146, i2);
        z.k.s(1, 125, i2);
    }

    public static void c1(int i2) {
        if (u0.b.f17315d0 != i2) {
            u0.b.f17315d0 = i2;
            I3(53, i2);
        }
    }

    public static void c2(int i2) {
        if (u0.b.q3 != i2) {
            u0.b.q3 = i2;
            I3(74, u0.b.D, 10, i2);
        }
        int i3 = u0.b.D;
        if (i3 == 8 || i3 == 9) {
            z.k.s(116, 8, i2, 0);
        }
    }

    public static void c3() {
        z.k.s(1, 170, 96);
        u0.i.l3().v3();
    }

    public static void d() {
        if (c.f.b().c(12)) {
            return;
        }
        z.k.s(1, 0, 118);
    }

    public static void d0(int i2) {
        if (u0.b.D0 != i2) {
            u0.b.D0 = i2;
            I3(71, i2);
        }
    }

    public static void d1(int i2) {
        Log.e("Qin", "------------------ lamplet value : " + i2);
        if (u0.b.f17366w != i2) {
            u0.b.f17366w = i2;
            I3(4, i2);
            if (g.e.j(61)) {
                I3(181, i2);
            }
            if (u0.i.l3().q3()) {
                n0.b();
            }
            u0.i iVarL3 = u0.i.l3();
            iVarL3.Z3(i2 == 1 ? iVarL3.U : iVarL3.T);
            u0.c.f17399z.c();
            try {
                if (Settings.System.getInt(App.c().getContentResolver(), "car_mode", 0) != i2) {
                    Settings.System.putInt(App.c().getContentResolver(), "car_mode", i2);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        if (u0.b.g2) {
            q0.G(i2);
        }
    }

    public static void d2(int i2) {
        if (u0.b.f17319e1 != i2) {
            u0.b.f17319e1 = i2;
            I3(107, i2);
        }
    }

    public static void d3(int i2) {
        if (u0.b.H0 != i2) {
            u0.b.H0 = i2;
            u0.c.E.c();
        }
    }

    public static void e(int i2) {
        a.f.p().u(" MCU Vavdd === " + i2);
        if (u0.b.f17331i1 != i2) {
            u0.b.f17331i1 = i2;
            u0.i.l3().f17448a0.c(Integer.valueOf(i2));
            I3(116, i2);
        }
    }

    public static void e0(int i2) {
        if (u0.b.f17363u0 != i2) {
            u0.b.f17363u0 = i2;
            I3(66, i2);
            m1.c.g(148, i2);
        }
    }

    public static void e1(int i2) {
        if (u0.b.P != i2) {
            u0.b.P = i2;
            I3(29, i2);
            if (m1.c.k(197)) {
                m1.c.e(197, i2);
            }
        }
    }

    public static void e2(int i2) {
        z.k.s(1, 12, i2 + 240);
    }

    public static void e3(int i2) {
        if (u0.b.I0 != i2) {
            u0.b.I0 = i2;
            u0.c.F.c();
        }
    }

    public static void f(int i2) {
        if (u0.b.f17331i1 != i2) {
            if (m1.c.k(208)) {
                e(i2);
            } else {
                z.k.s(11, 5, i2);
            }
        }
    }

    public static void f0(int i2) {
        if (i2 == 0) {
            if (u0.b.f17363u0 != 0) {
                e0(0);
            }
        } else if (i2 != 1) {
            if (i2 != 2) {
                return;
            }
            e0((u0.b.f17363u0 + 1) & 1);
        } else if (u0.b.f17363u0 == 0) {
            e0(1);
        }
    }

    public static void f1(int i2) {
        if (i2 == 0) {
            z.k.s(1, 0, 150);
            return;
        }
        if (i2 == 1) {
            z.k.s(1, 0, 151);
        } else {
            if (i2 != 2) {
                return;
            }
            if (u0.b.P == 0) {
                f1(1);
            } else {
                f1(0);
            }
        }
    }

    public static void f2(int i2, int i3) {
        if (i2 == 0) {
            int[] iArr = new int[5];
            iArr[0] = 122;
            iArr[1] = 3;
            iArr[2] = i3 != 0 ? 1 : 0;
            iArr[3] = u0.b.f17336k0;
            iArr[4] = u0.b.f17339l0;
            z.k.s(iArr);
            return;
        }
        if (i2 == 1) {
            int[] iArr2 = new int[5];
            iArr2[0] = 122;
            iArr2[1] = 3;
            iArr2[2] = u0.b.f17333j0;
            iArr2[3] = i3 != 0 ? 1 : 0;
            iArr2[4] = u0.b.f17339l0;
            z.k.s(iArr2);
            return;
        }
        if (i2 != 2) {
            return;
        }
        int[] iArr3 = new int[5];
        iArr3[0] = 122;
        iArr3[1] = 3;
        iArr3[2] = u0.b.f17333j0;
        iArr3[3] = u0.b.f17336k0;
        iArr3[4] = i3 != 0 ? 1 : 0;
        z.k.s(iArr3);
    }

    public static void f3(int i2) {
        if (i2 < 0) {
            i2 = 0;
        }
        I3(61, i2);
        u0.b.z3 = 1;
        y0.h.Y(2, true);
        s0.C(100L);
        f0.a aVarY2 = f0.c.X2().Y2();
        if (aVarY2 != null) {
            aVarY2.f(true);
        }
        if (u0.b.b4 >= 0 && g.f.f(7)) {
            u0.b.f17311c.c(u0.b.b4);
        }
        if (!u0.b.D1) {
            Log.d("main", " ===> None Mcu Reset action ==>>");
            a.i.U();
        } else {
            z.k.s(6, 32, i2);
            a.i.a0(10L);
            z.k.s(6, 32, i2);
        }
    }

    public static void g(int i2) {
        if (u0.b.f17331i1 != i2) {
            z.k.s(11, 3, i2);
        }
    }

    public static void g0() {
        int[] iArr = u0.b.t4;
        iArr[0] = 0;
        iArr[1] = 1;
        iArr[2] = 2;
        iArr[3] = 3;
        iArr[4] = 20;
        iArr[5] = 6;
        iArr[6] = 2;
        iArr[7] = 21;
        iArr[8] = 23;
        iArr[9] = 0;
    }

    public static void g1(int i2) {
        if (u0.b.L0 != i2) {
            u0.b.L0 = i2;
            I3(78, i2);
        }
    }

    public static void g2(int i2) {
        if (u0.b.f17308b == i2) {
            return;
        }
        u0.b.f17308b = i2;
        u0.b.f17311c.b();
        if (i2 != 1) {
            u0.b.f17311c = new u0.h.a();
        } else {
            u0.b.f17311c = new u0.a();
        }
        u0.b.f17311c.a();
    }

    public static void g3() {
        o0();
        Intent intent = new Intent("android.intent.action.FACTORY_RESET");
        intent.setPackage("android");
        intent.addFlags(268435456);
        intent.putExtra("android.intent.extra.REASON", "MasterClearConfirm");
        intent.putExtra("android.intent.extra.WIPE_EXTERNAL_STORAGE", false);
        intent.putExtra("com.android.internal.intent.extra.WIPE_ESIMS", false);
        intent.putExtra(Intent.ACTION_REBOOT, true);
        App.c().sendBroadcast(intent);
    }

    public static void h(int i2) {
        if (u0.b.f17328h1 != i2) {
            u0.b.f17328h1 = i2;
            u0.i.l3().Z.c(Integer.valueOf(i2));
            I3(109, i2);
        }
    }

    public static void h0() {
        int[] iArr = u0.b.u4;
        iArr[0] = 0;
        iArr[1] = 1;
        iArr[2] = 2;
        iArr[3] = 2;
        iArr[4] = 3;
        iArr[5] = 2;
        iArr[6] = 2;
        iArr[7] = 3;
        iArr[8] = 2;
        iArr[9] = 1;
    }

    public static void h1(int i2) {
        if (i2 == 0) {
            z.k.s(122, 3, 0);
            return;
        }
        if (i2 == 1) {
            z.k.s(122, 3, 1);
            return;
        }
        if (i2 != 2) {
            return;
        }
        int[] iArr = new int[3];
        iArr[0] = 122;
        iArr[1] = 3;
        iArr[2] = u0.b.L0 != 0 ? 0 : 1;
        z.k.s(iArr);
    }

    public static void h2(int i2) {
        if (i2 == 0) {
            z.k.s(1, 0, 10);
        } else {
            if (i2 != 1) {
                return;
            }
            z.k.s(1, 0, 11);
        }
    }

    public static void h3(int i2, int i3) {
        if (u0.b.W0 != i3) {
            u0.b.W0 = i3;
            I3(89, i2, i3);
        }
    }

    public static void i(int i2) {
        if (u0.b.f17306a0 != i2) {
            u0.b.f17306a0 = i2;
            I3(50, i2);
            Log.e("Qin", "======================>>000 accOn  DataMain.sMcuOn : " + u0.b.f17320f + "  DataMain.sAccOn : " + u0.b.f17306a0 + " DataMain.sScreenOn : " + u0.b.f17323g);
            u0.c.f17386m.c();
            int i3 = u0.b.f17306a0;
            if (i3 != -1) {
                u.n("com.syu.ms", "cmd.acc", i3);
            }
            q0.a(i2 == 0 ? 0 : 1);
            if (u0.b.n4 == 0 && u0.b.f17306a0 == 1) {
                a.e.g();
                z.i.p();
            }
            if (i2 != 0) {
                y0.h.P();
                Log.e("Qin", "======================>> closeDoor  DataMain.sMcuOn : " + u0.b.f17320f + "  DataMain.sCutAccTurnOffLcdc : " + u0.b.f17363u0);
                if (u0.b.f17363u0 != 0) {
                    q0.m(0);
                    y0.e eVar = y0.f.f18034b;
                    if (eVar == null || !(eVar instanceof AudioDevice)) {
                        q0.y(0);
                    }
                }
            } else if (u0.b.f17363u0 != 0) {
                y0.e eVar2 = y0.f.f18034b;
                if (eVar2 == null || !(eVar2 instanceof AudioDevice)) {
                    q0.y(1);
                }
                q0.m(1);
            }
            q0.b(i2);
        }
    }

    public static void i0() {
        int[] iArr = u0.b.t4;
        iArr[0] = 0;
        iArr[1] = 1;
        iArr[2] = 2;
        iArr[3] = 5;
        iArr[4] = 3;
        iArr[5] = 4;
        iArr[6] = 2;
        iArr[7] = 3;
        iArr[8] = 4;
        iArr[9] = 1;
    }

    public static void i1(int i2) {
        if (i2 == 0) {
            z.k.s(122, 0, 0);
            return;
        }
        if (i2 == 1) {
            z.k.s(122, 0, 1);
            return;
        }
        if (i2 != 2) {
            return;
        }
        int[] iArr = new int[3];
        iArr[0] = 122;
        iArr[1] = 0;
        iArr[2] = u0.b.f17327h0 != 0 ? 0 : 1;
        z.k.s(iArr);
    }

    public static void i2(int i2) {
        if (u0.b.f17372z != i2) {
            u0.b.f17372z = i2;
            I3(6, i2);
            m1.c.g(133, i2);
        }
    }

    public static void i3(int i2) {
        if (i2 == 0) {
            z.k.s(1, 92, 0);
        } else {
            if (i2 != 1) {
                return;
            }
            z.k.s(1, 92, 1);
        }
    }

    public static void j0(int i2) {
        if (u0.b.p3 != i2) {
            u0.b.p3 = i2;
            I3(74, u0.b.D, 9, i2);
        }
        int i3 = u0.b.D;
        if (i3 == 8 || i3 == 9) {
            z.k.s(116, 7, i2, 0);
        }
    }

    public static void j1(int i2) {
        if (u0.b.f17327h0 != i2) {
            u0.b.f17327h0 = i2;
            I3(54, i2);
        }
    }

    public static void j2(int i2) {
        if (i2 == 0) {
            if (u0.b.f17372z != 0) {
                i2(0);
            }
        } else if (i2 != 1) {
            if (i2 != 2) {
                return;
            }
            i2((u0.b.f17372z + 1) & 1);
        } else if (u0.b.f17372z == 0) {
            i2(1);
        }
    }

    public static void j3(int i2) {
        if (u0.b.P3 == 1) {
            if (i2 == 0) {
                if (u0.b.f17326h != 0) {
                    O(0);
                    return;
                }
                return;
            } else if (i2 == 1) {
                if (u0.b.f17326h == 0) {
                    O(1);
                    return;
                }
                return;
            } else {
                if (i2 != 2) {
                    return;
                }
                if (u0.b.f17326h != 0) {
                    O(0);
                    return;
                } else {
                    O(1);
                    return;
                }
            }
        }
        if (i2 == 0) {
            if (u0.b.f17334j1 != 0) {
                O(0);
            }
        } else if (i2 == 1) {
            if (u0.b.f17334j1 == 0) {
                O(1);
            }
        } else {
            if (i2 != 2) {
                return;
            }
            if (u0.b.f17334j1 != 0) {
                O(0);
            } else {
                O(1);
            }
        }
    }

    public static /* synthetic */ int k() {
        int i2 = f17401a;
        f17401a = i2 - 1;
        return i2;
    }

    public static void k0(int i2) {
        if (u0.b.f17367w0 != i2) {
            u0.b.f17367w0 = i2;
            I3(67, i2);
            m1.c.g(149, i2);
            m0("net.easyconn", u0.b.f17367w0 == 1);
        }
    }

    public static void k1(int i2) {
        if (i2 == 0) {
            z.k.s(12, 3, 0);
            return;
        }
        if (i2 == 1) {
            z.k.s(12, 3, 1);
            return;
        }
        if (i2 != 2) {
            return;
        }
        int[] iArr = new int[3];
        iArr[0] = 12;
        iArr[1] = 3;
        iArr[2] = u0.b.f17315d0 != 0 ? 0 : 1;
        z.k.s(iArr);
    }

    public static void k2(String str) {
        boolean zEquals = "null".equals(str);
        String str2 = ProxyProperties.LOCAL_EXCL_LIST;
        if (zEquals) {
            str = ProxyProperties.LOCAL_EXCL_LIST;
        }
        if (!p0.g(u0.b.J1, str)) {
            u0.b.J1 = str;
            m1.c.h(130, str);
            K3(28, str);
        }
        if (str != null) {
            str2 = str;
        }
        if (p0.g(SystemProperties.get("persist.sys.navi.packagename", null), str2)) {
            return;
        }
        SystemProperties.set("persist.sys.navi.packagename", str2);
        SystemProperties.set("sys.navi.packagename", str2);
    }

    public static void k3(int i2) {
        if (u0.b.f17323g != i2) {
            u0.b.f17323g = i2 == 1 ? 1 : 0;
            Log.e("Qin", "==========>>>  screenOn  on: " + i2);
            I3(168, u0.b.f17323g);
            u0.c.f17378e.c();
            if (u0.b.f17323g == 1 && u0.b.n4 == 0) {
                a.e.g();
                z.i.p();
            }
        }
    }

    public static void l0(int i2) {
        if (i2 == 0) {
            if (u0.b.f17367w0 != 0) {
                k0(0);
            }
        } else if (i2 != 1) {
            if (i2 != 2) {
                return;
            }
            k0((u0.b.f17367w0 + 1) & 1);
        } else if (u0.b.f17367w0 == 0) {
            k0(1);
        }
    }

    public static void l1(int i2) {
        if (u0.b.f17312c0 != i2) {
            u0.b.f17312c0 = i2;
            I3(52, i2);
        }
    }

    public static void l2(String str) {
        k2(str);
    }

    public static void l3(int i2) {
        if (u0.b.O0 != i2) {
            u0.b.O0 = i2;
            I3(80, i2);
            m1.c.g(157, i2);
            if (g.f.f(4)) {
                if (i2 != 0) {
                    m.a().postDelayed(new k(), 100L);
                } else {
                    m.a().postDelayed(new l(), 0L);
                }
            }
        }
    }

    public static void m(Runnable runnable) {
        j0.f16915j.c(runnable);
    }

    public static void m0(String str, boolean z2) {
        u0.i iVarL3 = u0.i.l3();
        if (iVarL3 != null) {
            iVarL3.d3(str, z2);
        }
    }

    public static void m1(int i2) {
        if (i2 == 0) {
            z.k.s(12, 2, 0);
            return;
        }
        if (i2 == 1) {
            z.k.s(12, 2, 1);
            return;
        }
        if (i2 != 2) {
            return;
        }
        int[] iArr = new int[3];
        iArr[0] = 12;
        iArr[1] = 2;
        iArr[2] = u0.b.f17312c0 != 0 ? 0 : 1;
        z.k.s(iArr);
    }

    public static void m2(int i2) {
        if (u0.b.V != i2) {
            u0.b.V = i2;
            I3(26, i2);
            if (u0.b.y4 == 1) {
                m1.c.g(160, i2);
            }
        }
    }

    public static void m3(int i2) {
        if (i2 == 0) {
            l3(0);
        } else if (i2 == 1) {
            l3(1);
        } else {
            if (i2 != 2) {
                return;
            }
            l3(u0.b.O0 == 0 ? 1 : 0);
        }
    }

    public static void n(int i2, int i3) {
        if (i2 != 0) {
            if (i2 != 1) {
                if (i2 != 2) {
                    return;
                }
                z.k.s(123, 0, 2, i3);
                return;
            } else if (i3 != 0) {
                z.k.s(123, 0, 1, 1);
                return;
            } else {
                z.k.s(123, 0, 1, 0);
                return;
            }
        }
        if (i3 == 0) {
            z.k.s(123, 0, 0, 0);
            return;
        }
        if (i3 == 1) {
            z.k.s(123, 0, 0, 1);
            return;
        }
        if (i3 != 2) {
            return;
        }
        int[] iArr = new int[4];
        iArr[0] = 123;
        iArr[1] = 0;
        iArr[2] = 0;
        iArr[3] = u0.b.M0 != 0 ? 0 : 1;
        z.k.s(iArr);
    }

    public static void n0(int i2) {
        Log.e("sleep", "enterSleepWakeup DataMain.sAccOn: " + u0.b.f17306a0 + "  on : " + i2);
        if (u0.b.f17306a0 == 0 && i2 != 0) {
            f17401a = 60;
            q0.w(1);
            z.k.t(1, 0, 189);
            m(f17402b);
            return;
        }
        q0.w(0);
        a3(f17402b);
        z.k.t(1, 0, 190);
        Log.e("sleep", "0x01, 0x00, 0xBE");
        Log.e("sleep", "enterSleepWakeup over + time: = " + SystemClock.uptimeMillis());
    }

    public static void n1(int i2) {
        if (u0.b.K3 != i2) {
            u0.b.K3 = i2;
            u0.c.f17397x.c();
        }
    }

    public static void n2(int i2) {
        int i3 = u0.b.y4;
        if (i3 != 0) {
            if (i3 == 1) {
                if (i2 == 0) {
                    m2(0);
                    return;
                } else if (i2 == 1) {
                    m2(1);
                    return;
                } else {
                    if (i2 != 2) {
                        return;
                    }
                    n2(u0.b.V == 0 ? 1 : 0);
                    return;
                }
            }
            return;
        }
        if (i2 == 0) {
            z.k.s(1, 0, 80);
            return;
        }
        if (i2 == 1) {
            z.k.s(1, 0, 81);
        } else {
            if (i2 != 2) {
                return;
            }
            if (u0.b.V == 0) {
                n2(1);
            } else {
                n2(0);
            }
        }
    }

    public static synchronized void n3(int i2) {
        if (u0.b.s4 != i2) {
            u0.b.s4 = i2;
            q0.H(i2);
            Log.e("image", "signalNtscPalToUI = " + u0.b.s4);
            I3(70, u0.b.s4);
            u0.c.D.c();
            a.f.p().s("signalNtscPal = " + u0.b.s4);
        }
    }

    public static void o(int i2) {
        if (u0.b.N0 != i2) {
            u0.b.N0 = i2;
            I3(79, 2, i2);
        }
    }

    public static void o0() {
        if (g.e.a() == 4 || g.e.a() == 5 || g.e.a() == 6) {
            q0.y(1);
            z.k.s(118, 250);
        }
        u0.b.z3 = 1;
        y0.h.Y(2, true);
        g.g gVar = g.e.f2254a;
        if (gVar != null && (gVar instanceof Chip)) {
            ((Chip) gVar).N();
        }
        y0.i.j(1);
        o1.l.a().postDelayed(new e(), 1000L);
    }

    public static void o1(int i2) {
        if (u0.b.f17307a1 != i2) {
            u0.b.f17307a1 = i2;
            I3(99, i2);
        }
    }

    public static void o2(int i2) {
        if (i2 == 0) {
            z.k.s(1, 0, 126);
        } else {
            if (i2 != 1) {
                return;
            }
            z.k.s(1, 0, 125);
        }
    }

    public static synchronized void o3(int i2) {
        if (u0.b.r4 != i2) {
            u0.b.r4 = i2;
            a.f.p().s("信号状态 " + i2);
            Log.e("image", "======= >>> signalOn = " + i2 + " DataMain.sSignalNtscPal: " + u0.b.s4);
            I3(69, i2);
            I3(70, u0.b.s4);
        }
    }

    public static void p(int i2) {
        if (u0.b.M0 != i2) {
            u0.b.M0 = i2;
            I3(79, 0, i2);
        }
    }

    public static void p0(int i2) {
        if (g.f.f(7)) {
            i2 = i2 > 0 ? 1 : 0;
        }
        if (u0.b.f17330i0 != i2) {
            u0.b.f17330i0 = i2;
            I3(56, i2);
        }
    }

    public static void p1(int i2) {
        if (i2 == 240) {
            z.k.s(1, 91, 240);
        }
        switch (i2) {
            case 0:
                z.k.s(1, 91, 160);
                break;
            case 1:
                z.k.s(1, 91, 192);
                break;
            case 2:
                z.k.s(1, 91, 48);
                break;
            case 3:
                z.k.s(1, 91, 128);
                break;
            case 4:
                z.k.s(1, 91, 80);
                break;
            case 5:
                z.k.s(1, 91, 16);
                break;
            case 6:
                z.k.s(1, 91, 112);
                break;
        }
    }

    public static void p2(int i2, int i3) {
        boolean z2;
        u0.i iVarL3 = u0.i.l3();
        if (iVarL3.f17456h != i2) {
            iVarL3.f17456h = i2;
            z2 = true;
        } else {
            z2 = false;
        }
        if (i3 >= 0 && iVarL3.f17458i != i3) {
            iVarL3.f17458i = i3;
            z2 = true;
        }
        if (z2) {
            I3(123, iVarL3.f17456h, iVarL3.f17458i);
        }
    }

    public static void p3(int i2) {
        if (u0.b.J0 != i2) {
            u0.b.J0 = i2;
            I3(76, i2);
            m1.c.g(152, i2);
        }
    }

    public static void q(int i2) {
        if (u0.b.f17368x != i2) {
            u0.b.f17368x = i2;
            I3(5, i2);
            if (u0.b.w4 == 1) {
                m1.c.g(158, i2);
            }
        }
    }

    public static void q0(int i2) {
        if (g.f.f(7)) {
            j4.f16466d.f3(i2 > 0);
            return;
        }
        if (i2 < 0) {
            i2 = 0;
        } else if (i2 > 255) {
            i2 = 255;
        }
        z.k.s(124, i2);
    }

    public static void q1() {
        u.h();
    }

    public static void q2(int i2, int i3) {
        u0.i iVarL3 = u0.i.l3();
        boolean z2 = iVarL3.f17456h != i2;
        if (i3 < 0) {
            i3 = iVarL3.f17458i;
        } else if (i3 != iVarL3.f17458i) {
            z2 = true;
        }
        if (z2) {
            z.k.s(182, i2, s0.c(i3, 2), s0.c(i3, 1), s0.c(i3, 0));
        }
    }

    public static void q3(int i2) {
        if (i2 == 0) {
            p3(0);
        } else if (i2 == 1) {
            p3(1);
        } else {
            if (i2 != 2) {
                return;
            }
            p3((u0.b.J0 + 1) & 1);
        }
    }

    public static void r(int i2) {
        int i3 = u0.b.w4;
        if (i3 != 0) {
            if (i3 == 1) {
                if (i2 == 0) {
                    q(0);
                    return;
                } else if (i2 == 1) {
                    q(1);
                    return;
                } else {
                    if (i2 != 2) {
                        return;
                    }
                    r(u0.b.f17368x != 0 ? 0 : 1);
                    return;
                }
            }
            return;
        }
        if (i2 == 0) {
            if (u0.b.f17368x != 0) {
                z.k.s(1, 0, 50);
            }
        } else if (i2 != 1) {
            if (i2 != 2) {
                return;
            }
            z.k.s(1, 0, 50);
        } else if (u0.b.f17368x == 0) {
            z.k.s(1, 0, 50);
        }
    }

    public static void r0(String str) {
        if (p0.g(u0.b.l3, str)) {
            return;
        }
        u0.b.l3 = str;
        u0.c.f17396w.c();
        J3(74, new int[]{u0.b.D, 8}, null, new String[]{str});
    }

    public static void r1(int i2) {
        if (u0.b.f17351p0 != i2) {
            u0.b.f17351p0 = i2;
            u0.c.M.c();
            I3(62, i2);
            if (i2 == 1) {
                if (!g.e.m() && (y0.f.f18089z != 0 || y0.f.C0 > y0.f.B)) {
                    y0.f.f18046f = y0.f.B;
                    int i3 = u0.b.D;
                    boolean z2 = i3 == 15;
                    boolean z3 = i3 != 2;
                    int i4 = y0.f.f18046f;
                    if (z2) {
                        i4 = y0.f.f18043e;
                    } else if (!z3) {
                        i4 = y0.f.f18040d;
                    }
                    y0.h.t0(i4);
                }
                o1.i.f16878o = false;
            }
        }
    }

    public static void r2(int i2) {
        if (u0.b.R0 != i2) {
            u0.b.R0 = i2;
            I3(82, i2);
            if (m1.c.k(199)) {
                m1.c.e(199, i2);
            }
        }
    }

    public static void r3(String str) {
        if (p0.g(u0.b.H1, str)) {
            return;
        }
        u0.b.H1 = str;
        K3(85, str);
    }

    public static void s(int i2) {
        if (u0.b.f17320f != 1) {
            return;
        }
        if (h0.c.G == 1) {
            i2 = 2;
        } else if (u0.i.l3().f17484x) {
            i2 = 15;
        } else if (!u0.b.D1 && s0.m("zj.zsender.link.state", -1) == 0) {
            i2 = 0;
        }
        if (u0.b.D != i2) {
            SystemProperties.set("sys.app_id", ProxyProperties.LOCAL_EXCL_LIST + i2);
            u0.b.C = u0.b.D;
            u0.b.D = i2;
            m1.c.e(2, i2);
            m1.a.f13517f.f16860a.edit().apply();
            y0.h.M();
            if (u0.b.C == 4 && h0.c.G != 1 && g.f.f(7)) {
                o0.e.f16766b.h();
            }
            I3(0, i2);
            u0.b.M2.d(i2);
            u0.c.f17374a.c();
            if (i2 == 1 && w0.d.f17789a == 3 && u0.b.D3) {
                a.i.K(10);
                a.i.C(u0.b.B3);
                u0.b.D3 = false;
                u0.h hVar = u0.b.f17311c;
                if (hVar instanceof u0.a) {
                    ((u0.a) hVar).i(null);
                }
            }
            synchronized (f17407g) {
                if (u0.b.g4 == 0 || y0.f.f18031a == 2) {
                    u0.b.H3 = 0;
                } else if (g.f.f(5)) {
                    int i3 = u0.b.H3;
                    int i4 = u0.b.I3;
                    if (i3 < i4) {
                        u0.b.H3 = i4;
                    }
                } else if (i2 == 12 || i2 == 16) {
                    u0.b.H3 = 0;
                } else {
                    u0.b.H3 = u0.b.I3;
                }
                C0(u0.b.C, u0.b.D);
                if (f17406f.c(1000)) {
                    a.i.a0(200L);
                }
            }
        }
    }

    public static int s0() {
        String country = App.c().getResources().getConfiguration().locale.getCountry();
        if (TextUtils.isEmpty(country) || country.endsWith("US")) {
            return 0;
        }
        if (country.endsWith("CN")) {
            return 1;
        }
        if (country.endsWith("TW")) {
            return 2;
        }
        if (country.endsWith("TR")) {
            return 3;
        }
        if (country.endsWith("IT")) {
            return 4;
        }
        if (country.endsWith("FR")) {
            return 5;
        }
        if (country.endsWith("DE")) {
            return 6;
        }
        if (country.endsWith("ES")) {
            return 7;
        }
        if (country.endsWith("JP")) {
            return 8;
        }
        if (country.endsWith("KR")) {
            return 9;
        }
        if (country.endsWith("PL")) {
            return 10;
        }
        if (country.endsWith("RU") || country.endsWith("KG") || country.endsWith("BY") || country.endsWith("KZ") || country.endsWith("MD") || country.endsWith("UA")) {
            return 11;
        }
        if (country.endsWith("SE")) {
            return 12;
        }
        if (country.endsWith("PT")) {
            return 13;
        }
        if (country.endsWith("NO")) {
            return 14;
        }
        if (country.endsWith("FI")) {
            return 15;
        }
        if (country.endsWith("DK")) {
            return 16;
        }
        if (country.endsWith("AR")) {
            return 17;
        }
        return country.endsWith("NL") ? 18 : 0;
    }

    public static void s1(int i2) {
        if (i2 != 0) {
            if (i2 != 1) {
                return;
            }
            z.k.s(117, 1);
        } else {
            SparseIntArray sparseIntArray = u0.b.O2;
            synchronized (sparseIntArray) {
                sparseIntArray.clear();
            }
            J3(46, null, null, null);
            z.k.s(117, 2);
        }
    }

    public static void s2(int i2) {
        if (i2 == 0) {
            z.k.s(12, 9, 1);
            return;
        }
        if (i2 == 1) {
            z.k.s(12, 9, 0);
        } else {
            if (i2 != 2) {
                return;
            }
            s2(u0.b.R0 != 0 ? 0 : 1);
        }
    }

    public static void s3(String str) {
        if (p0.g(u0.b.G1, str)) {
            return;
        }
        u0.b.G1 = str;
        K3(84, str);
    }

    public static void t(y.b bVar) {
        x xVarL2;
        if (bVar == null) {
            return;
        }
        if (u0.b.P0 == 1 && (xVarL2 = u0.i.l3().L2()) != null) {
            xVarL2.E(bVar, 39, 1, a.b.Z);
        }
        d1.f.i(bVar);
        o0.g.W(bVar);
        qt.E(bVar);
    }

    public static String t0() {
        return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
    }

    public static void t1() {
        if (!u.f0() && !u.R()) {
            u.J();
            return;
        }
        int i2 = y0.f.f18032a0 + 1;
        if (i2 > 8) {
            i2 = 0;
        }
        Log.e("c32107", "    notify   101  >>>>>>>>>>>>>>>>>>>>>>>>>>>  mode: " + i2);
        y0.i.j(i2);
    }

    public static void t2(int i2) {
        if (u0.b.f17309b0 != i2) {
            u0.b.f17309b0 = i2;
            I3(51, i2);
        }
    }

    public static void t3(int i2) {
        if (u0.b.f17326h != i2) {
            u0.b.f17326h = i2;
            u0.b.f17329i = -1;
            Log.e("Qin", "MCU TO UI --------->>>>  DataMain.sStandby = " + u0.b.f17326h + "  DataMain.requestStandby = " + u0.b.f17329i + " DataMain.sStandbyAndMute: " + u0.b.W3);
            I3(2, i2);
            u0.c.f17384k.c();
            if (u0.b.W3) {
                if (y0.f.f18055i != 1) {
                    y0.h.Y(64, u0.b.f17326h == 1);
                    f17408h = true;
                    return;
                }
                int i3 = u0.b.f17326h;
                if (i3 == 0 && f17408h) {
                    y0.h.Y(64, i3 == 1);
                    f17408h = false;
                }
            }
        }
    }

    public static void u() {
        z.k.s(1, 170, 113);
    }

    public static void u0() {
        int i2 = u0.b.d2;
        if ((i2 & 1) != 0) {
            u0.b.d2 = i2 | 2;
            return;
        }
        if (!u0.b.C3 || u0.b.f17347o == 1) {
            return;
        }
        boolean z2 = false;
        u0.b.C3 = false;
        if (s0.j("com.syu.carlink", u0.b.A3) && "Car Link".equals(s0.k("com.syu.carlink"))) {
            z2 = true;
        }
        Log.e("Qin", "goto DataMain.sTopAppWhenMcuOff: " + u0.b.A3 + " mJumpAppId: " + f17405e + "  oldCarlink : " + z2);
        if (q0.u() != 0) {
            if (g.e.a() == 4) {
                m.a().postDelayed(new g(), u0.b.v3);
                return;
            } else {
                u.u();
                b0.f("跳到校准界面 ");
                return;
            }
        }
        if (SystemProperties.getBoolean("ro.build.go_lasttop", true) && u0.b.E3 && !u0.b.F3) {
            Z2();
        }
        if (u0.b.A == 0) {
            u0.b.A = 1;
            m mVarA = m.a();
            Runnable runnable = f17416p;
            mVarA.removeCallbacks(runnable);
            m.a().postDelayed(runnable, 2000L);
        }
        u0.b.E3 = true;
    }

    public static void u1() {
        c.e.d().c(4);
    }

    public static void u2(int i2) {
        z.k.s(8, i2);
    }

    public static synchronized void u3(int i2) {
        if (h0.c.G == 0 || u0.b.f17326h != 0) {
            if (u0.b.f17347o == 1) {
                return;
            }
            int i3 = -1;
            if (i2 == 2) {
                i3 = u0.b.f17326h == 1 ? 0 : 1;
            } else if (u0.b.f17326h != i2) {
                if (i2 != 1) {
                    i2 = 0;
                }
                i3 = i2;
            }
            if (i3 == u0.b.f17329i) {
                return;
            }
            u0.b.f17329i = i3;
            Log.e("Qin", "UI TO MCU --------->>>>  DataMain.sStandby = " + u0.b.f17326h + "  DataMain.requestStandby = " + u0.b.f17329i + "  DataMain.sBlackstanby : " + u0.b.f17334j1);
            if (u0.b.P3 == 1) {
                t3(i3);
            } else if (u0.b.f17334j1 == 1) {
                j3(0);
            } else {
                z.k.s(1, 0, 28);
            }
        }
    }

    public static void v(int i2) {
        Log.e("Qin", "==========>>> armSleepWakeup : " + i2);
        if (u0.b.n4 != i2) {
            u0.b.n4 = i2;
            if (i2 != 0) {
                if (g.e.a() == 5 && e1.a.f1656a == 5 && SystemProperties.get("sys.car.reverse", "0").equals("2") && ToolsJni.cmd_32_get_boot_reverse_status() == 0) {
                    ToolsJni.cmd_33_reset_videoIc(1);
                    q.f1823n = true;
                    q.f1820k = false;
                }
                if (g.e.a() == 5 && e1.a.f1656a == 8) {
                    e1.o.j();
                }
                y0.h.y();
                u.l("android.intent.action.ACTION_MT_COMMAND_SLEEP_OUT");
            } else {
                u0.b.A = 0;
                m1.c.f(1, u0.b.A3);
                m1.c.e(2, u0.b.D);
                u.l("android.intent.action.ACTION_MT_COMMAND_SLEEP_IN");
            }
            I3(43, i2);
            u0.c.f17381h.c();
        }
        a.i.Z("sys.sleep", i2 == 0 ? "1" : "0");
    }

    public static void v0(int i2) {
        if (u0.b.X1 != i2) {
            u0.b.X1 = i2;
            o1.h.f16866b.c();
            I3(101, i2);
        }
    }

    public static void v1() {
        if (u.n0()) {
            w0.d.f17790b.x(-1);
        } else {
            u.x0();
        }
    }

    public static void v2(int i2) {
        if (u0.b.f17354q0 != i2) {
            u0.b.f17354q0 = i2;
            I3(63, i2);
        }
    }

    public static void v3(int i2) {
        Log.e("MCU", "startStopEnable value: " + i2);
        if (u0.b.U0 != i2) {
            u0.b.U0 = i2;
            I3(88, i2);
            u0.i.l3().T2(88, Integer.valueOf(i2));
        }
    }

    public static void w(int i2) {
        if (u0.b.f17340l1 != i2) {
            u0.b.f17340l1 = i2;
            if (i2 == 0) {
                int[] iArr = y0.b.f17952b;
                iArr[12] = iArr[5];
                iArr[13] = iArr[5];
                iArr[11] = iArr[5];
            } else {
                int[] iArr2 = y0.b.f17952b;
                iArr2[12] = iArr2[7];
                iArr2[13] = iArr2[7];
                iArr2[11] = iArr2[7];
            }
            I3(112, i2);
            m1.c.g(196, i2);
            u0.c.H.c();
        }
    }

    public static void w0(int i2, int i3) {
        if (i2 < 0 || i2 >= 34) {
            return;
        }
        int[] iArr = e.d.f1621a;
        if (iArr[i2] != i3) {
            iArr[i2] = i3;
            I3(64, i2, i3);
            m1.a.f13517f.g(i2 + 339, i3);
        }
        if (i2 == 33) {
            e.d.a();
        }
    }

    public static void w1() {
        c.e.d().c(5);
    }

    public static void w2(int i2) {
        if (u0.b.f17324g0 != i2) {
            u0.b.f17324g0 = i2;
            I3(55, i2);
        }
    }

    public static void w3(int i2) {
        if (i2 == 0) {
            z.k.s(12, 11, 0);
            return;
        }
        if (i2 == 1) {
            z.k.s(12, 11, 1);
            return;
        }
        if (i2 != 2) {
            return;
        }
        int[] iArr = new int[3];
        iArr[0] = 12;
        iArr[1] = 11;
        iArr[2] = u0.b.U0 != 0 ? 0 : 1;
        z.k.s(iArr);
    }

    public static void x(int i2) {
        if (u0.b.R != i2) {
            u0.b.T = i2;
            u0.b.R = i2;
            I3(36, i2);
            m1.c.g(140, i2);
        }
    }

    public static void x0(int i2) {
        if (u0.b.f17338l == 1) {
            i2 = 1;
        }
        if (u0.b.f17335k != i2) {
            u0.b.f17335k = i2;
            I3(7, i2);
            u0.c.B.c();
            if (Configure.Property.HAND_BREAK_CTL_THIRD_VIDEO.b(false)) {
                Intent intent = new Intent("com.android.handbrake");
                intent.putExtra("status", i2);
                App.c().sendBroadcast(intent);
            }
        }
        try {
            if (Settings.System.getInt(App.c().getContentResolver(), "handbrake_status", 1) != i2) {
                Settings.System.putInt(App.c().getContentResolver(), "handbrake_status", i2);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static void x1() {
        o oVar = u0.b.b3;
        if (oVar != null) {
            oVar.a(0, null, null, null, null);
        }
        int i2 = u0.b.D;
        if (i2 == 1) {
            w0.d.f17790b.i();
            return;
        }
        if (i2 == 3) {
            h0.c.f2425b.V();
        } else {
            if (i2 == 4) {
                o0.e.f16766b.l();
                return;
            }
            switch (i2) {
                case 8:
                case 9:
                case 10:
                    c.e.d().c(87);
                    break;
            }
        }
    }

    public static void x2(int i2) {
        if (i2 == 0) {
            z.k.s(12, 5, 0);
            return;
        }
        if (i2 == 1) {
            z.k.s(12, 5, 1);
            return;
        }
        if (i2 != 2) {
            return;
        }
        int[] iArr = new int[3];
        iArr[0] = 12;
        iArr[1] = 5;
        iArr[2] = u0.b.f17324g0 != 0 ? 0 : 1;
        z.k.s(iArr);
    }

    public static void x3(int i2) {
        if (u0.b.f17352p1 != i2) {
            int i3 = i2 > 0 ? 1 : 0;
            u0.b.f17352p1 = i3;
            I3(117, i3);
            m1.c.e(383, u0.b.f17352p1);
        }
    }

    public static void y(int i2) {
        x(i2);
    }

    public static void y0(int i2) {
        if (u0.b.f17341m != i2) {
            u0.b.f17341m = i2;
            I3(8, i2);
            if (u0.b.x4 == 1) {
                m1.c.g(159, i2);
            }
            u0.c.C.c();
            if (!Configure.Property.HAND_BREAK_CTL_THIRD_VIDEO.b(false)) {
                i2 = 0;
            }
            Intent intent = new Intent("com.android.handbrake_enable");
            intent.putExtra("status", i2);
            App.c().sendBroadcast(intent);
        }
        try {
            if (Settings.System.getInt(App.c().getContentResolver(), "handbrake_enable_status", 0) != i2) {
                Settings.System.putInt(App.c().getContentResolver(), "handbrake_enable_status", i2);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static void y1() {
        o oVar = u0.b.Z2;
        if (oVar != null) {
            oVar.a(0, null, null, null, null);
        }
        int i2 = u0.b.D;
        if (i2 == 3) {
            h0.c.f2425b.p();
            return;
        }
        if (i2 == 4) {
            o0.e.f16766b.p();
            return;
        }
        switch (i2) {
            case 8:
                int i3 = u0.b.S3;
                if (i3 == 0) {
                    I3(37, 8, 1);
                    break;
                } else if (i3 == 1) {
                    I3(60, 0);
                    break;
                }
                break;
            case 9:
                I3(37, 9, 1);
                break;
            case 10:
                a.i.M(i2);
                break;
        }
    }

    public static void y2(int[] iArr, float[] fArr, String[] strArr) {
        if (iArr == null || iArr.length < 1) {
            return;
        }
        if (iArr[1] == 3 && iArr.length >= 3) {
            int i2 = iArr[0];
            if (i2 != 8) {
                if (i2 == 9 && u0.b.V1 != iArr[2]) {
                    u0.b.V1 = iArr[2];
                    I3(74, iArr[0], iArr[2]);
                }
            } else if (u0.b.U1 != iArr[2]) {
                u0.b.U1 = iArr[2];
                I3(74, iArr[0], iArr[2]);
            }
        }
        if (iArr[0] != u0.b.D) {
        }
        int i3 = iArr[1];
        String str = ProxyProperties.LOCAL_EXCL_LIST;
        switch (i3) {
            case 0:
                if (strArr != null && strArr.length >= 1) {
                    L0(strArr[0]);
                } else {
                    L0(ProxyProperties.LOCAL_EXCL_LIST);
                }
                break;
            case 1:
                if (strArr != null && strArr.length >= 1) {
                    K0(strArr[0]);
                } else {
                    K0(ProxyProperties.LOCAL_EXCL_LIST);
                }
                break;
            case 2:
                if (strArr != null && strArr.length >= 1) {
                    String str2 = strArr[0];
                    if (strArr.length >= 2) {
                        str = strArr[1];
                    }
                    J0(str2, str);
                } else {
                    J0(ProxyProperties.LOCAL_EXCL_LIST, ProxyProperties.LOCAL_EXCL_LIST);
                }
                break;
            case 3:
                if (iArr.length >= 3) {
                    z2(iArr[2]);
                }
                break;
            case 4:
                if (iArr.length >= 4) {
                    B2(iArr[2], iArr[3]);
                }
                break;
            case 5:
                if (iArr.length >= 4) {
                    A2(iArr[2], iArr[3]);
                }
                break;
            case 6:
                if (iArr.length >= 3) {
                    b3(iArr[2]);
                }
                break;
            case 7:
                if (iArr.length >= 3) {
                    W2(iArr[2]);
                }
                break;
            case 8:
                if (strArr != null && strArr.length >= 1) {
                    r0(strArr[0]);
                    break;
                }
                break;
            case 9:
                if (iArr.length >= 3) {
                    j0(iArr[2]);
                }
                break;
            case 10:
                if (iArr.length >= 3) {
                    c2(iArr[2]);
                }
                break;
            case 11:
                J3(74, iArr, null, strArr);
                break;
        }
    }

    public static void y3(int i2) {
        if (u0.b.I2 != i2) {
            u0.b.I2 = i2;
            I3(41, i2);
            u0.c.I.c();
        }
    }

    public static void z(int i2) {
        if (u0.b.F0 != i2) {
            u0.b.F0 = i2;
            m0(a.b.f31s, i2 == 1);
            I3(73, i2);
            m1.c.g(150, i2);
        }
    }

    public static void z0(int i2) {
        Log.e("handbrake", "---------->>>  value : " + i2 + " DataMain.sHandbrakeEnableType:" + u0.b.x4);
        int i3 = u0.b.x4;
        if (i3 == 0) {
            if (i2 == 0) {
                z.k.s(1, 0, 66);
                return;
            }
            if (i2 == 1) {
                z.k.s(1, 0, 67);
                return;
            } else {
                if (i2 != 2) {
                    return;
                }
                if (u0.b.f17341m == 0) {
                    z0(1);
                    return;
                } else {
                    z0(0);
                    return;
                }
            }
        }
        if (i3 == 1) {
            if (i2 == 0) {
                z.k.s(1, 0, 66);
                y0(0);
            } else if (i2 == 1) {
                y0(1);
                z.k.s(1, 0, 67);
            } else {
                if (i2 != 2) {
                    return;
                }
                z0(u0.b.f17341m == 0 ? 1 : 0);
            }
        }
    }

    public static void z1() {
    }

    public static void z2(int i2) {
        if (u0.b.m3 != i2) {
            u0.b.m3 = i2;
            u0.c.f17391r.c();
            I3(74, u0.b.D, 3, i2);
            int i3 = u0.b.D;
        }
    }

    public static void z3(String str, String str2) {
        if (str == null || str2 == null || !str.startsWith("sys.")) {
            return;
        }
        SystemProperties.set(str, str2);
    }
}
