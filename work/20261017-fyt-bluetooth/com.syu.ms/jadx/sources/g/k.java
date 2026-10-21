package g;

import android.media.AudioSystem;
import android.net.ProxyProperties;
import android.os.Handler;
import android.util.Log;
import f1.q;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import k0.rt;
import o1.s0;
import o1.z;

/* JADX INFO: loaded from: classes.dex */
public class k extends o implements f1.o.e {
    public int[] A0;
    public int[] B0;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public int f2287n0 = -1;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public boolean f2288o0 = true;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public HashMap<String, String> f2289p0 = new HashMap<>();

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public final Runnable f2290q0 = new c();

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public final Runnable f2291r0 = new d();

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public final Runnable f2292s0 = new e();

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    public int[] f2293t0 = {64, 8, 0, 68, 37, 8, 38, 1, 39, 12, 16, 136, 16, 8, 64, 0};

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    public int[] f2294u0 = {64, 8, 0, 68, 37, 8, 38, 1, 39, 12, 64, 0};

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    public int[] f2295v0 = {64, 8, 0, 68, 37, 17, 38, 4, 39, 26, 64, 0};

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    public int[] f2296w0 = {64, 8, 0, 68, 37, 17, 38, 4, 39, 26, 64, 0};

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    public q.b f2297x0 = new f();

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    public final o1.p f2298y0 = new g();

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    public final Runnable f2299z0 = new h();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = h0.c.E;
            int i3 = 3;
            if (i2 == 3 || i2 == 4) {
                i3 = 1;
            } else if (i2 == 5) {
                i3 = 2;
            }
            s0.F("zj.zsender.phone.state", i3 + ProxyProperties.LOCAL_EXCL_LIST);
        }
    }

    public class b implements o1.p {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Runnable f2301a;

        public b(Runnable runnable) {
            this.f2301a = runnable;
        }

        @Override // o1.p
        public void d(Object obj) {
            int size = k.this.f2289p0.size();
            try {
                String[] strArr = (String[]) obj;
                if (s0.i(strArr, 1) && strArr[0] != null && strArr[1] != null) {
                    Log.e("Qin", "------------->>>fix audio play status:  " + Arrays.toString(strArr));
                    String str = strArr[0];
                    if (str.contains(":")) {
                        str = str.split(":")[0];
                    }
                    if (!a.i.q(a.b.f11c.c(str), str) && !e.f.n(str)) {
                        if ("play".equals(strArr[1])) {
                            k.this.f2289p0.put(str, strArr[1]);
                        } else {
                            k.this.f2289p0.remove(str);
                        }
                        k.this.f613s.removeCallbacks(this.f2301a);
                        if (!"mediaOn".equals(str)) {
                            k.this.f613s.postDelayed(this.f2301a, 300L);
                        }
                    }
                    return;
                }
            } catch (Exception unused) {
            }
            if ((k.this.f2289p0.size() != 0 || size <= 0) && (k.this.f2289p0.size() <= 0 || size != 0)) {
                return;
            }
            y0.g.f18112v.c();
        }
    }

    public class c implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f2303a = -1;

        public c() {
        }

        @Override // java.lang.Runnable
        public void run() throws Throwable {
            int iM = s0.m("zj.zsender.link.status", -1);
            if (this.f2303a != iM) {
                this.f2303a = iM;
                k.this.f2287n0 = iM;
                Log.e("Qin", "------------->>> 000 reverseCarplayState : " + k.this.f2287n0);
                k kVar = k.this;
                if (kVar.f2287n0 != 1) {
                    kVar.a0(" ", "0    100   0 200      0     100   0 1000", " ");
                } else {
                    kVar.a0("0 5000  0 0        0     5000  0 0", "0    5300  0 0        0     5300  0 0", "0    5600  0 0        0     5600  0 0");
                }
                u0.i.l3().p4(this.f2303a);
                if (this.f2303a != 1 && u0.b.D != 0) {
                    u0.b.f17311c.c(0);
                    a.i.D();
                }
                k.this.Z();
            }
            Handler handler = k.this.f613s;
            if (handler != null) {
                handler.removeCallbacks(this);
                k.this.f613s.postDelayed(this, 1000L);
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z2 = s0.m("zj.zsender.focus.video", -1) == 1;
            k kVar = k.this;
            if (kVar.f2288o0 != z2) {
                kVar.f2288o0 = z2;
                y0.g.f18112v.c();
            }
            Handler handler = k.this.f613s;
            if (handler != null) {
                handler.removeCallbacks(this);
                k.this.f613s.postDelayed(this, 300L);
            }
        }
    }

    public class e implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f2306a = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public FileWriter f2307b = null;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f2308c = "/dev/zsender-fifo";

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public boolean f2309d = false;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f2310e = true;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f2311f = true;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public boolean f2312g = false;

        public e() {
        }

        public final synchronized void a(String str) {
            b(str);
        }

        public final void b(String str) {
            boolean z2;
            Log.e("Qin", "------------->>>fix audio writeValue: " + str);
            File file = new File("/dev/zsender-fifo");
            if (file.exists()) {
                try {
                    this.f2307b = new FileWriter(file);
                } catch (IOException e2) {
                    e2.printStackTrace();
                }
            }
            FileWriter fileWriter = this.f2307b;
            try {
                if (fileWriter == null) {
                    Log.e("Qin", "------------->>>fix audio writeValueToFile open: /dev/zsender-fifo send " + str + " error!!");
                    return;
                }
                try {
                    fileWriter.write(str);
                    this.f2307b.flush();
                    FileWriter fileWriter2 = this.f2307b;
                    if (fileWriter2 != null) {
                        try {
                            fileWriter2.close();
                        } catch (IOException e3) {
                            e3.printStackTrace();
                        }
                    }
                    z2 = true;
                } catch (Exception e4) {
                    e4.printStackTrace();
                    Log.e("Qin", "------------->>>fix audio writeValueToFile: " + str + " error!!  " + e4.getClass().getName());
                    z2 = false;
                    FileWriter fileWriter3 = this.f2307b;
                    if (fileWriter3 != null) {
                        try {
                            fileWriter3.close();
                        } catch (IOException e5) {
                            e5.printStackTrace();
                        }
                    }
                }
                if (z2) {
                    Log.e("Qin", "------------->>> fix audio writeValueToFile: " + str + " success!!");
                    return;
                }
                Log.e("Qin", "------------->>>fix audio writeValueToFile: " + str + " error!!");
                s0.C(2L);
                b(str);
            } catch (Throwable th) {
                FileWriter fileWriter4 = this.f2307b;
                if (fileWriter4 != null) {
                    try {
                        fileWriter4.close();
                    } catch (IOException e6) {
                        e6.printStackTrace();
                    }
                }
                throw th;
            }
        }

        public void finalize() throws Throwable {
            FileWriter fileWriter = this.f2307b;
            if (fileWriter != null) {
                fileWriter.close();
            }
            super.finalize();
        }

        @Override // java.lang.Runnable
        public synchronized void run() {
            boolean z2 = false;
            boolean z3 = true;
            boolean z4 = h0.c.G == 1;
            boolean z5 = y0.f.T0 == 1;
            boolean z6 = y0.f.Q0 == 1;
            k.this.f2289p0.remove(a.f.B() + "/bin/blink");
            if (z4 != this.f2312g) {
                this.f2312g = z4;
                a(z4 ? "phone call on" : "phone call off");
            }
            boolean z7 = k.this.f2289p0.size() > 0 || (h0.c.N == 1 && u0.b.D == 3);
            if (z5 != this.f2311f) {
                this.f2311f = z5;
                z2 = true;
            }
            if (z6 != this.f2310e) {
                this.f2310e = z6;
            } else {
                z3 = z2;
            }
            if (z3) {
                a((this.f2311f || this.f2310e) ? "navi on" : "navi off");
            }
            if (z7 != this.f2309d) {
                this.f2309d = z7;
                a(z7 ? "media on" : "media off");
            }
        }
    }

    public class f implements q.b {
        public f() {
        }

        @Override // f1.q.b
        public void a(q qVar, int i2) {
            int[] iArr;
            Log.e("Chip2850", "flushParams =============>> lisenter onFlush ntcsPal : " + i2 + " dev : " + qVar);
            if (i2 == 0 || i2 == 1) {
                iArr = k.this.f2293t0;
            } else if (i2 == 2 || i2 == 3) {
                iArr = k.this.f2295v0;
            } else {
                iArr = (i2 == 6 || i2 == 7) ? k.this.f2296w0 : null;
            }
            Log.e("Chip2850", "00000 flushParams =============>> lisenter onFlush ntcsPal : " + i2 + " dev : " + qVar);
            if (iArr != null) {
                qVar.q(iArr);
            }
        }
    }

    public class g implements o1.p {
        public g() {
        }

        @Override // o1.p
        public void d(Object obj) {
            if (obj == null) {
                return;
            }
            try {
                int[] iArr = null;
                int iIntValue = ((Integer) obj).intValue();
                if (iIntValue == 0 || iIntValue == 1) {
                    iArr = k.this.f2293t0;
                } else if (iIntValue == 2 || iIntValue == 3) {
                    iArr = k.this.f2294u0;
                } else if (iIntValue == 6 || iIntValue == 7) {
                    iArr = k.this.f2296w0;
                }
                e1.c cVarN = e1.c.n();
                if (iArr == null || !(cVarN instanceof e1.e)) {
                    return;
                }
                ((e1.e) cVarN).K(iArr);
            } catch (Exception unused) {
            }
        }
    }

    public class h implements Runnable {
        public h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (h0.c.E == 2) {
                h0.c.f2425b.m();
            }
        }
    }

    public class i implements Runnable {
        public i() {
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
        @Override // java.lang.Runnable
        public void run() {
            boolean zIsStreamActive = AudioSystem.isStreamActive(3, 0);
            z zVar = y0.g.f18102l;
            String[] strArr = new String[2];
            strArr[0] = "mediaOn";
            strArr[1] = zIsStreamActive ? "play" : "stop";
            zVar.c(strArr);
        }
    }

    public class j implements Runnable {
        public j() {
        }

        @Override // java.lang.Runnable
        public void run() throws Throwable {
            Log.e("Qin", "==================>> DataMain.sScreenOn: " + u0.b.f17323g + "  DataApp.sBootAnimOver: " + a.b.f16e0);
            if (u0.b.f17323g == 1 && a.b.f16e0 == 1) {
                u0.d.T1(1);
                u0.d.i(1);
                u0.d.v(1);
                Log.e("Qin", "------------->>> 000 reverseCarplayState : " + k.this.f2287n0);
                k kVar = k.this;
                if (kVar.f2287n0 == 1) {
                    kVar.a0("0 5000  0 0        0     5000  0 0", "0    5300  0 0        0     5300  0 0", "0    5600  0 0        0     5600  0 0");
                } else {
                    kVar.a0(" ", "0    100   0 200      0     100   0 1000", " ");
                }
                k kVar2 = k.this;
                Handler handler = kVar2.f613s;
                if (handler != null) {
                    handler.removeCallbacks(kVar2.f2290q0);
                    k kVar3 = k.this;
                    kVar3.f613s.postDelayed(kVar3.f2290q0, 500L);
                    k kVar4 = k.this;
                    kVar4.f613s.removeCallbacks(kVar4.f2291r0);
                    k kVar5 = k.this;
                    kVar5.f613s.postDelayed(kVar5.f2291r0, 300L);
                }
            } else {
                k kVar6 = k.this;
                Handler handler2 = kVar6.f613s;
                if (handler2 != null) {
                    handler2.removeCallbacks(kVar6.f2290q0);
                    k kVar7 = k.this;
                    kVar7.f613s.removeCallbacks(kVar7.f2291r0);
                }
            }
            k.this.Z();
        }
    }

    /* JADX INFO: renamed from: g.k$k, reason: collision with other inner class name */
    public class C0046k implements o1.p {
        public C0046k() {
        }

        @Override // o1.p
        public void d(Object obj) {
            y0.g.f18112v.c();
        }
    }

    public k() {
        int[] iArr = {64, 8, 16, 136, 35, 66, 64, 0, 2, 71, 5, 0, 6, 50, 7, 192, 8, 0, 9, 36, 10, 72, 11, 192, 12, 19, 13, 80, 14, 0, 15, 0, 16, 248, 17, 80, 18, 96, 19, 0, 20, 0, 21, 19, 22, 93, 23, 188, 24, 18, 25, 240, 26, 7, 27, 0, 28, 9, 29, 56, 30, 128, 31, 128, 32, 64, 33, 132, 34, 54, 35, 60, 36, 4, 37, 255, 38, 5, 39, 45, 40, 2, 41, 72, 42, 48, 43, 112, 44, 58, 45, 104, 46, 87, 47, 0, 48, 98, 49, 187, 50, 150, 51, 192, 52, 0, 53, 101, 54, 220, 55, 0, 56, 0, 57, 4, 58, 50, 59, 38, 60, 0, 61, 96, 62, 0, 63, 0, 64, 0, 65, 0, 66, 0, 67, 0, 68, 0, 69, 0, 70, 0, 71, 0, 72, 0, 73, 0, 74, 0, 75, 0, 76, 64, 77, 0, 78, 0, 79, 0, 80, 0, 81, 0, 82, 0, 83, 0, 84, 0, 179, 250, 180, 0, 181, 0, 182, 0, 183, 0, 184, 0, 185, 0, 186, 0, 187, 0, 188, 0, 189, 0, 190, 0, 191, 0, 192, 0, 193, 0, 194, 11, 195, 12, 196, 0, 197, 0, 198, 31, 199, 120, 200, 39, 201, 0, 202, 0, 203, 7, 204, 8, 205, 0, 206, 0, 207, 4, 208, 0, 209, 0, 210, 96, 211, 16, 212, 6, 213, 190, 214, 57, 215, 39, 216, 0, 217, 0, 218, 0, 219, 0, 220, 0, 221, 0, 222, 0, 223, 0, 224, 0, 225, 0, 226, 0, 227, 0, 228, 0, 229, 0, 230, 0, 231, 19, 232, 3, 233, 0, 234, 0, 235, 0, 236, 0, 237, 0, 238, 0, 239, 0, 240, 0, i.a.Theme_actionModeShareDrawable, 0, i.a.Theme_actionModeFindDrawable, 0, i.a.Theme_actionModeWebSearchDrawable, 0, i.a.Theme_actionModePopupWindowStyle, 32, i.a.Theme_preferenceFragmentStyle, 16, i.a.Theme_preferencePanelStyle, 0, i.a.Theme_preferenceHeaderPanelStyle, 0, 248, 0, 249, 0, 250, 136, 251, 0, 252, 0, 64, 8, 0, 68, 1, 56, 2, 1, 8, 15, 19, 36, 20, 87, 21, 12, 32, 18, 37, 8, 38, 1, 39, 12, 52, 27, 35, 66, 16, 8, 64, 0};
        this.A0 = iArr;
        int[] iArr2 = {64, 8, 16, 136, 35, 66, 64, 0, 2, 71, 5, 0, 6, 50, 7, 192, 8, 0, 9, 36, 10, 72, 11, 192, 12, 19, 13, 81, 14, 0, 15, 0, 16, 248, 17, 80, 18, 96, 19, 0, 20, 0, 21, 19, 22, 118, 23, 188, 24, 23, 25, 32, 26, 23, 27, 0, 28, 9, 29, 72, 30, 128, 31, 128, 32, 72, 33, 132, 34, 55, 35, 63, 36, 4, 37, 255, 38, 5, 39, 45, 40, 2, 41, 72, 42, 48, 43, 112, 44, 42, 45, 100, 46, 86, 47, 0, 48, 122, 49, 74, 50, 77, 51, 240, 52, 0, 53, 101, 54, 220, 55, 0, 56, 0, 57, 4, 58, 50, 59, 38, 60, 0, 61, 96, 62, 0, 63, 0, 64, 0, 65, 0, 66, 0, 67, 0, 68, 0, 69, 0, 70, 0, 71, 0, 72, 0, 73, 0, 74, 0, 75, 0, 76, 64, 77, 0, 78, 0, 79, 0, 80, 0, 81, 0, 82, 0, 83, 0, 84, 0, 179, 250, 180, 0, 181, 0, 182, 0, 183, 0, 184, 0, 185, 0, 186, 0, 187, 0, 188, 0, 189, 0, 190, 0, 191, 0, 192, 0, 193, 0, 194, 11, 195, 12, 196, 0, 197, 0, 198, 31, 199, 120, 200, 39, 201, 0, 202, 0, 203, 7, 204, 8, 205, 0, 206, 0, 207, 4, 208, 0, 209, 0, 210, 96, 211, 16, 212, 6, 213, 190, 214, 57, 215, 39, 216, 0, 217, 0, 218, 0, 219, 0, 220, 0, 221, 0, 222, 0, 223, 0, 224, 0, 225, 0, 226, 0, 227, 0, 228, 0, 229, 0, 230, 0, 231, 19, 232, 3, 233, 0, 234, 0, 235, 0, 236, 0, 237, 0, 238, 0, 239, 0, 240, 0, i.a.Theme_actionModeShareDrawable, 0, i.a.Theme_actionModeFindDrawable, 0, i.a.Theme_actionModeWebSearchDrawable, 0, i.a.Theme_actionModePopupWindowStyle, 32, i.a.Theme_preferenceFragmentStyle, 16, i.a.Theme_preferencePanelStyle, 0, i.a.Theme_preferenceHeaderPanelStyle, 0, 248, 0, 249, 0, 250, 136, 251, 0, 252, 0, 64, 8, 0, 68, 1, 56, 2, 1, 8, 15, 19, 36, 20, 87, 21, 12, 32, 18, 37, 8, 38, 1, 39, 12, 52, 27, 35, 66, 16, 8, 64, 0};
        this.B0 = iArr2;
        e1.e.Y = iArr;
        e1.e.Z = iArr2;
        if (this.E && !g.f.h()) {
            this.E = false;
            s0.F("persist.syu.camera360", "0");
            Log.e("Qin", "-----------------------360 0201");
        }
        Log.e("Qin", "-----------------------finally isCamera360: " + this.E + " HandlerChip.isReverseCarplay() : " + g.f.r());
        this.f608n = true;
        m1.c.i(210);
        if (!g.f.r()) {
            if (g.e.l()) {
                U(false);
                m1.c.i(197);
                m1.c.i(198);
                m1.c.i(199);
                m1.c.i(206);
                m1.c.i(207);
                m1.c.i(209);
                rt.a3().i3(g.e.k());
                u0.b.w4 = 1;
                u0.b.x4 = 1;
                y0.f.f18048f1 = 1;
                y0.f.f18054h1 = 1;
                u0.b.A4 = 1;
                u0.b.P3 = 1;
                return;
            }
            return;
        }
        Log.e("Qin", "-----------------------init Reverse  Carplay ");
        h0.c.f2442j0 = 2;
        m1.a.f13516e = true;
        u0.b.D1 = false;
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
        this.f605k = ProxyProperties.LOCAL_EXCL_LIST;
        i iVar = new i();
        j jVar = new j();
        a.d.f45a.a(jVar, 0);
        u0.c.f17378e.a(jVar, 1);
        y0.g.f18101k.a(new C0046k());
        h0.d.f2462a.a(new a(), 1);
        y0.g.f18102l.a(new b(iVar));
    }

    @Override // g.o, chip.Chip
    public String C() {
        return this.E ? "2815" : super.C();
    }

    public final void Z() {
        if (u0.b.f17323g == 1 && a.b.f16e0 == 1 && this.f2287n0 == 1) {
            u0.c.f17374a.a(this.f2292s0, 0);
            h0.d.f2474m.a(this.f2292s0, 0);
            y0.g.f18110t.a(this.f2292s0, 0);
            h0.d.f2463b.a(this.f2292s0, 0);
            y0.g.f18112v.a(this.f2292s0, 1);
            return;
        }
        u0.c.f17374a.d(this.f2292s0);
        h0.d.f2474m.d(this.f2292s0);
        y0.g.f18110t.d(this.f2292s0);
        h0.d.f2463b.d(this.f2292s0);
        y0.g.f18112v.d(this.f2292s0);
    }

    @Override // g.o, chip.Chip, g.g
    public void a() {
        super.a();
        u0.c.P.d(this.f2298y0);
        h0.d.f2462a.d(this.f2299z0);
        if (g.e.l()) {
            u0.c.f17376c.d(this.f597c0);
        }
    }

    public final void a0(String str, String str2, String str3) throws Throwable {
        Log.e("Qin", "------------->>> reverseCarplayLeds \nR : " + str3 + " \nG: " + str2 + " \nB : " + str);
        if (!s0.t(str3)) {
            q1.a.f("/sys/class/leds/sc27xx:red/hw_pattern", str3);
        }
        if (!s0.t(str2)) {
            q1.a.f("/sys/class/leds/sc27xx:green/hw_pattern", str2);
        }
        if (s0.t(str)) {
            return;
        }
        q1.a.f("/sys/class/leds/sc27xx:blue/hw_pattern", str);
    }

    @Override // g.o, chip.Chip, g.g
    public void b() {
        super.b();
        h0.d.f2462a.a(this.f2299z0, 1);
        if (g.e.l()) {
            u0.c.f17376c.a(this.f597c0, 1);
        }
    }

    /* JADX WARN: Code duplicated, block: B:34:0x00f7  */
    @Override // f1.o.e
    public void c(boolean z2, f1.o.b[] bVarArr) {
        boolean z3;
        Log.e("Qin", "========== Chip onVideoChipsInited() mulit: " + z2 + " cameraids: " + Arrays.toString(bVarArr) + " isCamera360: " + this.E);
        if (!this.f620z.m() || bVarArr == null) {
            return;
        }
        for (f1.o.b bVar : bVarArr) {
            int i2 = 10;
            if (bVar.b() == 13 || bVar.b() == 9 || bVar.b() == 16 || bVar.b() == 15) {
                this.f620z.w(11, bVar.a());
                this.f620z.w(12, bVar.a());
                this.f620z.w(13, bVar.a());
                this.f620z.w(14, bVar.a());
                if (g.f.g() != 3 || bVar.b() != 9) {
                }
                i2 = 1;
            } else {
                if (bVar.b() == 8) {
                    this.f620z.y(bVar.a(), this.f2297x0);
                    if (bVar.a() == 1) {
                        this.f620z.w(2, bVar.a());
                        this.f620z.w(3, bVar.a());
                        this.f620z.w(4, bVar.a());
                        this.f620z.w(5, bVar.a());
                        this.f620z.w(6, bVar.a());
                        this.f620z.w(7, bVar.a());
                        this.f620z.w(8, bVar.a());
                        this.f620z.w(9, bVar.a());
                        boolean z4 = g.f.g() == 4;
                        boolean z5 = g.f.g() == 2;
                        if (z5) {
                            this.f620z.w(15, bVar.a());
                        }
                        z3 = g.f.g() == 0 || z4 || z5;
                    } else {
                        boolean z6 = g.f.g() == 4;
                        boolean z7 = g.f.g() == 2;
                        if (z6 || z7) {
                            this.f620z.w(16, bVar.a());
                        } else if (s0.o("ro.fyt.realplatform", ProxyProperties.LOCAL_EXCL_LIST).equals("6316N")) {
                            this.f620z.w(2, bVar.a());
                            this.f620z.w(3, bVar.a());
                            this.f620z.w(4, bVar.a());
                            this.f620z.w(5, bVar.a());
                            this.f620z.w(6, bVar.a());
                            this.f620z.w(7, bVar.a());
                            this.f620z.w(8, bVar.a());
                            this.f620z.w(9, bVar.a());
                            this.f620z.w(15, bVar.a());
                        }
                    }
                    i2 = 1;
                } else if (bVar.b() == 12 || bVar.b() == 10) {
                    this.f620z.w(10, bVar.a());
                    z3 = this.E;
                }
                i2 = 1;
            }
            if (z3) {
                this.f620z.C(bVar.a(), i2);
            }
        }
    }

    @Override // f1.o.e
    public f1.o.d d(int i2, String str) {
        f1.o.d dVarI = f1.o.i(i2, str);
        if (dVarI != null) {
            dVarI.a(this.K);
        }
        return dVarI;
    }

    @Override // chip.Chip
    public void i() {
        boolean zM = g.f.m();
        this.E = zM;
        g.f.d(zM);
        boolean z2 = g.f.o() || g.f.p();
        if (s0.l("persist.fyt.ui.txz", false)) {
            return;
        }
        u0.d.m0("com.syu.doublecamera", z2);
    }

    @Override // chip.Chip
    public void k(f1.o.c cVar) {
        super.k(cVar);
        Log.e("Qin", "========== Chip configVideoChip() run: ");
        f1.o oVarG = f1.o.g();
        this.f620z = oVarG;
        oVarG.v(cVar);
        Log.e("Qin", "========== Chip configVideoChip() manager.platformHasMulitVideoChip() : " + this.f620z.s() + " manager.platformIndexVideoChip(\"TP2850\"):" + this.f620z.t("TP2850"));
        if (this.f620z.s()) {
            this.f620z.x(true);
            if (this.f620z.t("TP2850") >= 0) {
                f1.b.f1928v0 = this.A0;
                f1.b.f1929w0 = this.B0;
            }
            Log.e("Qin", "========== Chip configVideoChip() run: " + this + " manager enable: " + this.f620z.m());
            this.f620z.l(this);
        }
        f1.o oVar = this.f620z;
        if (oVar == null || !oVar.m()) {
            u0.c.P.a(this.f2298y0);
        }
    }

    @Override // g.o, chip.Chip
    public String w() {
        if (this.E) {
            if (!"/dev/i2c-0".equals(this.f596c)) {
                this.f596c = "/dev/i2c-0";
            }
        } else if (!"/dev/i2c-1".equals(this.f596c)) {
            this.f596c = "/dev/i2c-1";
        }
        return super.w();
    }
}
