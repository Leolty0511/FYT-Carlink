package u0;

import android.app.UiModeManager;
import android.bluetooth.BluetoothClass;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.media.AudioFormat;
import android.net.ProxyProperties;
import android.net.wifi.WifiEnterpriseConfig;
import android.os.Build;
import android.os.Process;
import android.os.SystemProperties;
import android.util.Log;
import android.util.MathUtils;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.WindowManager;
import app.App;
import app.Receiver;
import base.Configure;
import chip.Chip;
import com.syu.jni.ToolsJni;
import f1.o;
import i1.s;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import k0.nt;
import k0.qt;
import module.sound.AudioDevice;
import n0.c4;
import n0.j4;
import o1.h0;
import o1.j;
import o1.l;
import o1.m;
import o1.q0;
import o1.s0;
import o1.u;
import o1.x;
import o1.y;
import o1.z;
import util.SunshineTimeObserver;
import util.log.LogType;
import z.k;

/* JADX INFO: loaded from: classes2.dex */
public class i extends base.b {

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    public static i f17446t0;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    public static final z f17447u0 = new z();

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public CopyOnWriteArrayList<String> f17455g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public CopyOnWriteArrayList<String> f17457h0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f17458i;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f17476r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f17478s;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public SparseIntArray f17454g = new SparseIntArray();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f17456h = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f17460j = -1;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f17462k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f17464l = -1;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f17466m = -1;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public z f17468n = new z();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public String f17470o = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f17472p = null;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public String f17474q = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f17480t = -1;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f17481u = 65536;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f17482v = 0;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f17483w = 0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f17484x = false;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public boolean f17485y = false;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public boolean f17486z = false;
    public int A = -1;
    public int B = 3;
    public int C = 0;
    public int D = -1;
    public int E = 0;
    public String F = ProxyProperties.LOCAL_EXCL_LIST;
    public String G = WifiEnterpriseConfig.EMPTY_VALUE;
    public int H = 0;
    public int I = 0;
    public int J = 1;
    public int K = 0;
    public int L = 0;
    public int M = 0;
    public int N = -1;
    public int O = -1;
    public int P = -1;
    public int Q = -1;
    public boolean R = true;
    public int S = 50;
    public int T = -1;
    public int U = -1;
    public boolean V = false;
    public boolean W = false;
    public boolean X = false;
    public int Y = -1;
    public z Z = new z();

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public z f17448a0 = new z();

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public y f17449b0 = new y();

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public y f17450c0 = new y();

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public y f17451d0 = new y();

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public y f17452e0 = new y();

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public final Object f17453f0 = new Object();

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public String f17459i0 = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public final int[] f17461j0 = {0, 0};

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public int f17463k0 = -1;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public int f17465l0 = 0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public String f17467m0 = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public final Runnable f17469n0 = new a();

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public Runnable f17471o0 = new b();

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public final Runnable f17473p0 = new c();

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public final q1.b f17475q0 = new q1.b(0, 6);

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public final Runnable f17477r0 = new d();

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public final Runnable f17479s0 = new g();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            y0.h.Y(8192, false);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            m mVarA = m.a();
            if (mVarA != null) {
                mVarA.removeCallbacks(this);
            }
            Log.e("boot", "===============>> request mcu enter System!!");
            k.s(1, 0, 0);
            if (s0.t(u0.b.F1) && mVarA != null) {
                mVarA.postDelayed(this, 1000L);
            }
        }
    }

    public class c implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f17489a = -1;

        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = this.f17489a;
            int i3 = u0.b.f17347o;
            if (i2 != i3) {
                this.f17489a = i3;
                i.this.g4(131072, i3 == 1);
                i.this.g4(65536, this.f17489a != 1);
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            i.this.f17475q0.g(u0.b.X1 > 0 ? 1 : 0);
            if (i.this.f17475q0.e()) {
                i.this.w3();
            }
        }
    }

    public class e implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ n1.b f17492a;

        public e(n1.b bVar) {
            this.f17492a = bVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f17492a.getParent() == null) {
                WindowManager windowManagerY = a.f.y();
                n1.b bVar = this.f17492a;
                windowManagerY.addView(bVar, bVar.getWindowLayoutParams());
            }
        }
    }

    public class f implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ int f17494a;

        public f(int i2) {
            this.f17494a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = this.f17494a;
            if (i2 > 1) {
                ToolsJni.cmd_149_write_data(new byte[]{-86, 85, (byte) (i2 - 2)}, BluetoothClass.Device.AUDIO_VIDEO_SET_TOP_BOX);
                return;
            }
            byte[] bArrCmd_148_read_data = ToolsJni.cmd_148_read_data(3, BluetoothClass.Device.AUDIO_VIDEO_SET_TOP_BOX);
            Log.e("MCU", "rotateScreen =====>>> " + Arrays.toString(s0.d(bArrCmd_148_read_data)));
            if (s0.f(bArrCmd_148_read_data, 2) && bArrCmd_148_read_data[0] == -86 && bArrCmd_148_read_data[1] == 85) {
                bArrCmd_148_read_data[2] = (byte) ((((bArrCmd_148_read_data[2] & 255) + (this.f17494a != 1 ? 1 : -1)) + 4) % 4);
            } else {
                bArrCmd_148_read_data = new byte[]{-86, 85, (byte) (((((SystemProperties.getInt("ro.sf.swrotation", 0) / 90) % 4) + (this.f17494a != 1 ? 1 : -1)) + 4) % 4)};
            }
            Log.e("MCU", String.format("================>>> rotateScreen %d ", Byte.valueOf(bArrCmd_148_read_data[2])));
            ToolsJni.cmd_149_write_data(bArrCmd_148_read_data, BluetoothClass.Device.AUDIO_VIDEO_SET_TOP_BOX);
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            u0.d.I3(134, i.this.f17481u);
            i.this.f17452e0.c();
        }
    }

    public class h implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ int f17497a;

        public h(int i2) {
            this.f17497a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            a.i.g(this.f17497a);
        }
    }

    public i() {
        this.f17455g0 = null;
        this.f17457h0 = null;
        this.f17457h0 = new CopyOnWriteArrayList<>();
        this.f17455g0 = new CopyOnWriteArrayList<>();
        X2(a.b.f25m);
        X2(a.b.f29q);
        for (String str : nt.f8642e0) {
            X2(str);
        }
        P2("main");
        this.f331f.n("Main-TRAN");
        this.f331f.f17001d = Configure.Property.MODULE_DEBUG_PREFIX.c("main", false);
        u0.c.f17379f.a(this.f17473p0, 0);
        o1.h.f16866b.a(this.f17477r0, 1);
    }

    public static synchronized i l3() {
        if (f17446t0 == null) {
            f17446t0 = new i();
        }
        return f17446t0;
    }

    public void A3(int i2) {
        if (this.S != i2) {
            this.S = i2;
            u0.d.I3(187, 0, i2);
        }
    }

    public void B3(String str) {
        if (s0.j(this.F, str)) {
            return;
        }
        Log.e("focus", " activeMedia: " + str);
        this.F = str;
        T2(195, str);
        u0.d.K3(195, str);
    }

    public void C3(int i2) {
        if (i2 == 1) {
            k.s(1, 0, 198);
        } else {
            k.s(1, 0, 199);
        }
    }

    public void D3(int i2) {
        int i3 = i2 == 1 ? 1 : 0;
        Log.e("Qin", "==>> Curr :" + this.f17463k0 + " ==>>  ambientSwitchArm :" + i2 + " value :" + i3);
        if (i3 != this.f17463k0) {
            this.f17463k0 = i3;
            int[] iArr = new int[3];
            iArr[0] = 1;
            iArr[1] = 0;
            iArr[2] = i3 == 1 ? 222 : 221;
            k.s(iArr);
            int[] iArr2 = {0, this.f17463k0};
            T2(196, iArr2);
            u0.d.I3(196, iArr2);
        }
    }

    public void E3(boolean z2) {
        this.R = z2;
    }

    public void F3(int i2) {
        if (this.K != i2) {
            int[] iArr = new int[3];
            iArr[0] = 1;
            iArr[1] = 0;
            iArr[2] = i2 == 2 ? 219 : 220;
            k.s(iArr);
        }
    }

    public void G3(boolean z2) {
        if (this.X != z2) {
            this.X = z2;
            u0.d.I3(189, z2 ? 1 : 0);
            int[] iArr = new int[3];
            iArr[0] = 1;
            iArr[1] = 0;
            iArr[2] = this.X ? 146 : 147;
            k.s(iArr);
            T2(189, Boolean.valueOf(this.X));
        }
    }

    public void H3(String str) {
        if (s0.j(this.f17459i0, str)) {
            return;
        }
        this.f17459i0 = str;
        m1.c.f(1018, str);
        u0.d.K3(190, this.f17459i0);
    }

    public void I3(String str) {
        if (s0.j(this.f17474q, str) || !u.l0(str)) {
            return;
        }
        this.f17474q = str;
        m1.c.f(Process.VPN_UID, str);
        u0.d.K3(185, this.f17474q);
    }

    public void J3(int i2) {
        if (i2 < 0 || i2 > 2000 || this.f17465l0 == i2) {
            return;
        }
        this.f17465l0 = i2;
        m1.c.e(Process.MEDIA_RW_GID, i2);
        T2(204, Integer.valueOf(i2));
        u0.d.I3(204, i2);
    }

    public void K3(int i2) {
        if (i2 != this.Q) {
            int i3 = i2 == 1 ? 1 : 0;
            this.Q = i3;
            m1.c.e(1003, i3);
            u0.d.I3(180, this.Q);
        }
    }

    public void L3(int i2, int i3, int i4) {
        int iMax = Math.max(0, Math.min(i3, 23));
        int iMax2 = Math.max(0, Math.min(i4, 59));
        boolean z2 = i2 == 0;
        int[] iArr = new int[3];
        iArr[0] = 6;
        iArr[1] = z2 ? 35 : 37;
        iArr[2] = iMax;
        k.s(iArr);
        int[] iArr2 = new int[3];
        iArr2[0] = 6;
        iArr2[1] = z2 ? 36 : 38;
        iArr2[2] = iMax2;
        k.s(iArr2);
    }

    @Override // y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 != 0) {
            return null;
        }
        return new y.f(u0.b.D);
    }

    public void M3(int i2) {
        if (i2 < 0) {
            return;
        }
        k.s(126, 0, s0.c(i2, 1), s0.c(i2, 0));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v42 */
    /* JADX WARN: Type inference failed for: r10v43, types: [boolean] */
    /* JADX WARN: Type inference failed for: r10v45 */
    /* JADX WARN: Type inference failed for: r10v47 */
    /* JADX WARN: Type inference failed for: r10v48, types: [boolean] */
    /* JADX WARN: Type inference failed for: r10v50 */
    /* JADX WARN: Type inference failed for: r11v53 */
    /* JADX WARN: Type inference failed for: r11v54, types: [boolean] */
    /* JADX WARN: Type inference failed for: r11v55 */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // base.b
    public void N2(int i2, int[] iArr, float[] fArr, String[] strArr) {
        c4 c4Var;
        c4 c4Var2;
        g.g gVar;
        g.g gVar2;
        c4 c4Var3;
        Log.e("main", "  cmd     cmdid =  " + i2 + " " + Arrays.toString(iArr) + " " + Arrays.toString(fArr) + " " + Arrays.toString(strArr));
        switch (i2) {
            case 0:
                if (p3(iArr, 1)) {
                    a.f.p().s("UI切的通道 = " + iArr[0]);
                    Log.e("Qin", "  cmd     App ID =  " + iArr[0]);
                    u0.b.f17311c.c(iArr[0]);
                }
                break;
            case 1:
                if (p3(iArr, 1)) {
                    u0.d.f1(iArr[0]);
                }
                break;
            case 2:
                if (p3(iArr, 1)) {
                    u0.d.r(iArr[0]);
                }
                break;
            case 3:
                if (p3(iArr, 1)) {
                    u0.d.j2(iArr[0]);
                }
                break;
            case 4:
                if (p3(iArr, 1)) {
                    u0.d.z0(iArr[0]);
                }
                break;
            case 5:
                if (p3(iArr, 1)) {
                    u0.d.G(iArr[0]);
                }
                break;
            case 6:
                if (p3(iArr, 1)) {
                    u0.d.I(iArr[0]);
                }
                break;
            case 7:
                if (p3(iArr, 1)) {
                    u0.d.E(iArr[0]);
                }
                break;
            case 8:
                if (p3(iArr, 1)) {
                    u0.d.n2(iArr[0]);
                }
                break;
            case 9:
                if (c4(strArr, 1)) {
                    u0.d.l2(strArr[0]);
                }
                break;
            case 10:
                if (p3(iArr, 1)) {
                    u0.d.Q(iArr[0]);
                }
                break;
            case 11:
                if (p3(iArr, 1)) {
                    u0.d.S(iArr[0]);
                }
                break;
            case 12:
                if (p3(iArr, 1)) {
                    u0.d.U(iArr[0]);
                }
                break;
            case 13:
                if (p3(iArr, 1)) {
                    u0.d.y(iArr[0]);
                }
                break;
            case 14:
                if (c4(strArr, 1)) {
                    u0.d.Y1(strArr[0]);
                }
                break;
            case 15:
                if (p3(iArr, 1)) {
                    u0.d.W1(iArr[0]);
                }
                break;
            case 16:
                if (p3(iArr, 1)) {
                    u0.d.N(iArr[0]);
                }
                break;
            case 17:
                if (p3(iArr, 1)) {
                    if (nt.f8633a != 65978) {
                        u0.d.U1(iArr[0]);
                    } else {
                        u0.d.N(iArr[0]);
                    }
                }
                break;
            case 18:
                if (p3(iArr, 1)) {
                    u0.d.u3(iArr[0]);
                }
                break;
            case 19:
                if (p3(iArr, 1)) {
                    if (iArr[0] == 1) {
                        u0.c.f17377d.c();
                    }
                    u0.d.f3(iArr[0]);
                }
                break;
            case 20:
                if (p3(iArr, 1)) {
                    u0.g.b(iArr, fArr, strArr);
                }
                break;
            case 21:
                if (p3(iArr, 1)) {
                    u0.d.s1(iArr[0]);
                }
                break;
            case 22:
                if (p3(iArr, 2)) {
                    Log.d("image", "C_VIDEO_IDints[0] = " + iArr[0] + " ints[1] =" + iArr[1]);
                    u0.d.T3(iArr[0], iArr[1]);
                }
                break;
            case 23:
                u0.d.y2(iArr, fArr, strArr);
                break;
            case 24:
                if (p3(iArr, 1)) {
                    u0.d.N0(iArr[0]);
                }
                break;
            case 25:
                if (p3(iArr, 1)) {
                    u0.d.O0(iArr[0]);
                }
                break;
            case 26:
                if (p3(iArr, 1)) {
                    u0.d.n1(iArr[0]);
                }
                break;
            case 27:
                u0.d.a2(iArr, fArr, strArr);
                break;
            case 28:
                if (p3(iArr, 1)) {
                    u0.d.K(iArr[0]);
                }
                break;
            case 29:
                if (p3(iArr, 1)) {
                    u0.d.u2(iArr[0]);
                }
                break;
            case 30:
                if (p3(iArr, 1)) {
                    u0.d.m1(iArr[0]);
                }
                break;
            case 31:
                if (p3(iArr, 1)) {
                    u0.d.k1(iArr[0]);
                }
                break;
            case 32:
                if (p3(iArr, 1)) {
                    u0.d.i1(iArr[0]);
                }
                break;
            case 33:
                if (p3(iArr, 1)) {
                    u0.d.x2(iArr[0]);
                }
                break;
            case 34:
                if (p3(iArr, 1)) {
                    u0.d.q0(iArr[0]);
                }
                break;
            case 35:
                if (p3(iArr, 2)) {
                    u0.d.f2(iArr[0], iArr[1]);
                }
                break;
            case 36:
                o oVarG = o.g();
                if (!p3(iArr, 5)) {
                    if (p3(iArr, 4)) {
                        if (oVarG != null && oVarG.m()) {
                            oVarG.j(iArr[0], -1, iArr[1], iArr[2], iArr[3]);
                        } else {
                            u0.d.U3(iArr[0], iArr[1], iArr[2], iArr[3]);
                        }
                    }
                    break;
                } else if (oVarG != null && oVarG.m()) {
                    oVarG.j(iArr[0], iArr[1], iArr[2], iArr[3], iArr[4]);
                    break;
                }
                break;
            case 37:
                if (p3(iArr, 1)) {
                    u0.d.o2(iArr[0]);
                }
                break;
            case 38:
                u0.d.o0();
                break;
            case 39:
                if (p3(iArr, 2)) {
                    u0.d.w0(iArr[0], iArr[1]);
                }
                break;
            case 40:
                if (p3(iArr, 1)) {
                    u0.d.I0(iArr[0]);
                }
                break;
            case 41:
                if (c4(strArr, 2)) {
                    u0.d.z3(strArr[0], strArr[1]);
                }
                break;
            case 42:
                if (p3(iArr, 1)) {
                    u0.d.f0(iArr[0]);
                }
                break;
            case 43:
                if (p3(iArr, 1)) {
                    u0.d.l0(iArr[0]);
                }
                break;
            case 44:
                if (p3(iArr, 5)) {
                    u0.d.Y3(iArr);
                }
                break;
            case 46:
                if (p3(iArr, 1)) {
                    u0.d.n0(iArr[0]);
                }
                break;
            case 47:
                if (p3(iArr, 1)) {
                    u0.d.A(iArr[0]);
                }
                break;
            case 48:
                if (p3(iArr, 1)) {
                    u0.d.q3(iArr[0]);
                }
                break;
            case 49:
                if (p3(iArr, 1)) {
                    u0.d.h1(iArr[0]);
                }
                break;
            case 50:
                if (p3(iArr, 2)) {
                    u0.d.n(iArr[0], iArr[1]);
                }
                break;
            case 51:
                if (p3(iArr, 1)) {
                    u0.d.V3(iArr[0]);
                }
                break;
            case 52:
                if (p3(iArr, 1)) {
                    u0.d.m3(iArr[0]);
                }
                break;
            case 53:
                u0.d.u();
                break;
            case 54:
                if (p3(iArr, 1)) {
                    u0.d.L(iArr[0]);
                }
                break;
            case 55:
                if (p3(iArr, 1)) {
                    u0.d.s2(iArr[0]);
                }
                break;
            case 56:
                if (p3(iArr, 3)) {
                    u0.d.D3(iArr[0], iArr[1], iArr[2]);
                }
                break;
            case 57:
                if (p3(iArr, 1)) {
                    u0.d.B(iArr[0]);
                }
                break;
            case 58:
                u0.d.G3();
                break;
            case 59:
                if (p3(iArr, 1)) {
                    u0.d.M2(iArr[0]);
                }
                break;
            case 60:
                if (p3(iArr, 1)) {
                    u0.d.V2(iArr[0]);
                }
                break;
            case 61:
                if (p3(iArr, 1)) {
                    u0.d.w3(iArr[0]);
                }
                break;
            case 62:
                if (p3(iArr, 1)) {
                    u0.d.h2(iArr[0]);
                }
                break;
            case 63:
                if (p3(iArr, 1)) {
                    u0.d.i3(iArr[0]);
                }
                break;
            case 64:
                if (p3(iArr, 1)) {
                    u0.d.p1(iArr[0]);
                }
                break;
            case 65:
                if (p3(iArr, 1)) {
                    u0.d.O3(iArr[0]);
                }
                break;
            case 66:
                if (p3(iArr, 2)) {
                    q0.z(iArr[0], iArr[1]);
                }
                break;
            case 67:
                if (p3(iArr, 1)) {
                    u0.d.a0(iArr[0]);
                }
                break;
            case 68:
                if (p3(iArr, 1)) {
                    u0.d.E3(iArr[0]);
                }
                break;
            case 69:
                if (p3(iArr, 2)) {
                    u0.d.X3(iArr[0], iArr[1]);
                }
                break;
            case 70:
                if (p3(iArr, 1)) {
                    u0.d.R1(iArr);
                }
                break;
            case 71:
                if (p3(iArr, 1)) {
                    u0.d.e2(iArr[0]);
                }
                break;
            case 72:
                if (p3(iArr, 1)) {
                    u0.d.R3(iArr[0]);
                }
                break;
            case 73:
                if (p3(iArr, 1)) {
                    u0.d.g(iArr[0]);
                }
                break;
            case 74:
                if (p3(iArr, 1)) {
                    u0.d.c();
                }
                break;
            case 75:
                if (p3(iArr, 1)) {
                    g.c.c(iArr[0]);
                }
                break;
            case 76:
                u0.d.d();
                break;
            case 77:
                if (p3(iArr, 1)) {
                    u0.d.a(iArr[0]);
                }
                break;
            case 78:
                u0.d.b();
                break;
            case 79:
                if (p3(iArr, 1)) {
                    u0.d.f(iArr[0]);
                }
                break;
            case 80:
                y0.e eVar = y0.f.f18034b;
                if (eVar != null && (eVar instanceof AudioDevice)) {
                    ((AudioDevice) eVar).z(false);
                    break;
                }
                break;
            case 81:
                if (c4(strArr, 1)) {
                    a.i.C(strArr[0]);
                }
                break;
            case 82:
                if (p3(iArr, 1)) {
                    u0.d.x3(iArr[0]);
                }
                break;
            case 83:
                if (p3(iArr, 1) && u0.b.f17347o != 1) {
                    x3(iArr[0]);
                    break;
                }
                break;
            case 84:
                u0.d.D0(iArr);
                break;
            case 85:
                if (p3(iArr, 1)) {
                    u0.d.B0(iArr[0] & 255);
                }
                break;
            case 86:
                if (p3(iArr, 1)) {
                    u0.d.G0(iArr[0] & 255);
                }
                break;
            case 87:
                if (p3(iArr, 1) && iArr[0] != u0.b.s1) {
                    u0.d.A0(iArr[0]);
                    break;
                }
                break;
            case 88:
                if (c4(strArr, 2)) {
                    u0.d.F0(strArr[0], strArr[1]);
                }
                break;
            case 123:
                if (p3(iArr, 2)) {
                    u0.d.q2(iArr[0], iArr[1]);
                }
                break;
            case 124:
                if (c4(strArr, 1) && !this.f17470o.equals(strArr[0])) {
                    f4(strArr[0]);
                    break;
                }
                break;
            case 125:
                if (s0.h(iArr, 0)) {
                    X3(iArr[0]);
                }
                break;
            case 126:
                if (s0.h(iArr, 0)) {
                    f3(iArr[0]);
                }
                break;
            case 127:
                if (s0.h(iArr, 0) && s0.i(strArr, 0)) {
                    if (iArr[0] == 0) {
                        b.a.e().o(strArr[0]);
                    } else if (iArr[0] == 1) {
                        b.a.e().m(strArr[0]);
                    }
                    break;
                }
                break;
            case 128:
                if (s0.h(iArr, 0)) {
                    if (iArr[0] == 0) {
                        b.a.e().d();
                        break;
                    } else if (iArr[0] == -1 && s0.i(strArr, 0)) {
                        b.a.e().k(strArr[0]);
                        break;
                    } else if (iArr[0] == 1 && s0.i(strArr, 0)) {
                        b.a.e().a(strArr[0]);
                        break;
                    }
                }
                break;
            case 129:
                if (s0.h(iArr, 0)) {
                    b.a.e().j(iArr[0]);
                }
                break;
            case 130:
                if (s0.h(iArr, 0)) {
                    a4(iArr[0]);
                }
                break;
            case 131:
                if (s0.h(iArr, 0)) {
                    b.a.e().l(iArr[0] == 1);
                }
                break;
            case 133:
                if (s0.h(iArr, 0)) {
                    c.e.d().c(iArr[0]);
                }
                break;
            case 135:
                if (s0.h(iArr, 0)) {
                    a.f.p().t(LogType.MAIN, " UI TO ------------------>>> " + iArr[0]);
                    i1.g gVarH = s.h();
                    if (gVarH == null) {
                        u0.d.I3(i2, iArr[0]);
                    } else {
                        gVarH.e(iArr[0]);
                    }
                }
                break;
            case 136:
                if (s0.h(iArr, 1)) {
                    L3(iArr[0], iArr[1], iArr[2]);
                }
                break;
            case 140:
                if (s0.h(iArr, 0) && s0.i(strArr, 0)) {
                    e1.a.f1657b.g(iArr[0], strArr[0]);
                    break;
                }
                break;
            case 142:
                if (s0.h(iArr, 0)) {
                    M3(iArr[0]);
                }
                break;
            case 144:
                if (s0.h(iArr, 0) && (c4Var = j4.f16466d) != null) {
                    c4Var.e3(iArr[0] == 1);
                    break;
                }
                break;
            case 145:
                if (s0.h(iArr, 1) && (c4Var2 = j4.f16466d) != null) {
                    c4Var2.M3(iArr[0], iArr[1]);
                    break;
                }
                break;
            case 147:
                if (s0.h(iArr, 0)) {
                    boolean z2 = iArr[0] == 1;
                    if (u0.b.F3 != z2) {
                        u0.b.F3 = z2;
                        u0.d.I3(147, iArr[0]);
                    }
                }
                break;
            case 148:
                k.s(1, 0, 162);
                break;
            case 149:
                if (s0.h(iArr, 0)) {
                    C3(iArr[0]);
                }
                break;
            case 156:
                if (s0.h(iArr, 0)) {
                    e.f.k(iArr[0]);
                }
                break;
            case 157:
                if (s0.h(iArr, 0)) {
                    e.f.i(iArr[0]);
                }
                break;
            case 158:
                if (s0.h(iArr, 0)) {
                    e.f.j(iArr[0]);
                }
                break;
            case 159:
                if (s0.h(iArr, 0)) {
                    boolean z3 = iArr[0] == 1;
                    if (this.f17484x != z3) {
                        Log.e("Qin", " ------- isExtraCalling : " + this.f17484x + " to new : " + z3);
                        this.f17484x = z3;
                        this.f17450c0.c();
                        u0.d.I3(159, this.f17484x ? 1 : 0);
                        j.f(this.f17469n0);
                        if (this.f17484x) {
                            if (y0.h.x(8192)) {
                                y0.h.Y(8192, false);
                            }
                            u0.d.N(0);
                            h0.d.f2463b.c();
                            h0.c.X = u0.b.f17326h;
                            if (u0.b.f17326h != 0) {
                                u0.d.u3(0);
                            }
                            u0.b.f17311c.c(15);
                        } else if (u0.b.D == 15) {
                            y0.h.Y(8192, true);
                            u0.b.f17311c.c(-1);
                            if (h0.c.X != 0) {
                                u0.d.u3(1);
                            }
                            j.c(this.f17469n0, 2000L);
                        }
                        y0.h.M();
                    }
                }
                break;
            case 160:
                if (s0.h(iArr, 1)) {
                    a3(iArr[0], iArr[1]);
                }
                break;
            case 161:
                if (s0.i(strArr, 1) && !s0.t(strArr[0]) && !s0.t(strArr[1])) {
                    s0.F(strArr[0], strArr[1]);
                    break;
                }
                break;
            case 162:
                if (s0.h(iArr, 0) && (gVar = g.e.f2254a) != null && (gVar instanceof g.j)) {
                    ((g.j) gVar).f2269v0.R(iArr[0] == 1);
                    break;
                }
                break;
            case 163:
                if (s0.i(strArr, 0) && !s0.j(strArr[0], this.G) && (gVar2 = g.e.f2254a) != null && (gVar2 instanceof Chip) && (c4Var3 = j4.f16466d) != null) {
                    c4Var3.N2(((Chip) g.e.f2254a).x(), strArr[0]);
                    break;
                }
                break;
            case 164:
                if (s0.i(strArr, 0)) {
                    s4(strArr[0]);
                }
                break;
            case 165:
                if (s0.h(iArr, 0)) {
                    o4(iArr[0]);
                }
                break;
            case 166:
                if (s0.h(iArr, 0)) {
                    ?? r10 = iArr[0] == 1 ? 1 : 0;
                    if (r10 != this.f17486z) {
                        this.f17486z = r10;
                        u0.d.I3(i2, r10);
                        m1.c.e(225, this.f17486z ? 1 : 0);
                    }
                }
                break;
            case 167:
                if (s0.h(iArr, 0)) {
                    ?? r11 = iArr[0] == 1 ? 1 : 0;
                    if (r11 != this.f17485y) {
                        this.f17485y = r11;
                        u0.d.I3(i2, r11);
                        m1.c.e(224, this.f17485y ? 1 : 0);
                    }
                }
                break;
            case 170:
                if (s0.h(iArr, 0) && this.f17483w != iArr[0]) {
                    this.f17483w = iArr[0];
                    this.f17451d0.c();
                    break;
                }
                break;
            case 171:
                if (s0.h(iArr, 0) && this.K != iArr[0]) {
                    F3(iArr[0]);
                    break;
                }
                break;
            case 172:
                if (s0.h(iArr, 0)) {
                    e3(iArr[0]);
                }
                break;
            case 175:
                if (s0.h(iArr, 0) && iArr[0] >= 0) {
                    k.s(127, s0.c(iArr[0], 0), s0.c(iArr[0], 1));
                    break;
                }
                break;
            case 177:
                if (s0.h(iArr, 1)) {
                    if (iArr[0] == 0) {
                        P3(iArr[1]);
                    } else if (iArr[0] == 1) {
                        Q3(iArr[1]);
                    } else if (iArr[0] == 2) {
                        O3(iArr[1]);
                    }
                }
                break;
            case 178:
                if (s0.h(iArr, 0)) {
                    W3(iArr[0]);
                }
                break;
            case 180:
                if (s0.h(iArr, 0)) {
                    K3(iArr[0]);
                }
                break;
            case 181:
                if (s0.h(iArr, 0)) {
                    u0.d.d1(iArr[0] != 1 ? 0 : 1);
                }
                break;
            case 182:
                if (s0.h(iArr, 1)) {
                    Configure.Property property = Configure.Property.PHONE_LINK_TYPE;
                    String strH = property.h(ProxyProperties.LOCAL_EXCL_LIST);
                    if (this.A != iArr[0] || this.B != iArr[1]) {
                        this.A = iArr[0];
                        this.B = iArr[1];
                        Log.e("HDL", "=======>>>  mLinkMode: " + this.A + " mLinkState: " + this.B);
                        u0.c.N.c();
                        u0.d.I3(i2, this.A, this.B);
                        if (this.B == 5) {
                            int i3 = this.A;
                            if (i3 == 1) {
                                property.g("carplay_wireless");
                            } else if (i3 == 3) {
                                property.g("auto_wireless");
                            }
                        } else if ((strH.equals("carplay_wireless") || strH.equals("auto_wireless")) && this.B == 3) {
                            property.g(ProxyProperties.LOCAL_EXCL_LIST);
                        }
                    }
                }
                break;
            case 185:
                if (s0.i(strArr, 0)) {
                    I3(strArr[0]);
                }
                break;
            case 186:
                if (s0.i(strArr, 0)) {
                    u0.d.K3(i2, strArr);
                    String str = strArr[0];
                    if (str != null) {
                        j.b(l.a(), new Receiver.b(str), 1000L);
                    }
                }
                break;
            case 187:
                if (s0.h(iArr, 1)) {
                    Y3(iArr[0], iArr[1]);
                }
                break;
            case 188:
                if (s0.h(iArr, 0)) {
                    S3(iArr[0] == 1);
                }
                break;
            case 189:
                if (s0.h(iArr, 0)) {
                    G3(iArr[0] == 1);
                }
                break;
            case 191:
                if (s0.h(iArr, 0)) {
                    R3(iArr[0] == 1);
                }
                break;
            case 192:
                if (s0.h(iArr, 1)) {
                    k.s(18, iArr[0], iArr[1]);
                }
                break;
            case 193:
                if (s0.h(iArr, 1) && !Arrays.equals(iArr, this.f17461j0)) {
                    int[] iArr2 = this.f17461j0;
                    iArr2[0] = iArr[0];
                    iArr2[1] = iArr[1];
                    H0(i2, iArr2, null, null);
                    break;
                }
                break;
            case 194:
                if (s0.h(iArr, 0)) {
                    H0(i2, iArr, null, null);
                }
                break;
            case 196:
                if (s0.h(iArr, 1)) {
                    int i4 = iArr[0];
                    int i5 = iArr[1];
                    if (i4 == 0) {
                        D3(i5);
                    }
                }
                break;
            case 197:
                if (s0.h(iArr, 0)) {
                    i4(iArr[0]);
                }
                break;
            case 201:
                if (p3(iArr, 2)) {
                    n1.b bVarP = a.f.p();
                    ?? r12 = iArr[1] == 1 ? 1 : 0;
                    bVarP.z(iArr[0], r12);
                    if (r12 != 0 && !bVarP.r()) {
                        bVarP.setDbg(true);
                        m.a().post(new e(bVarP));
                    }
                    u0.d.I3(201, iArr[0], r12);
                }
                break;
            case 202:
                if (s0.h(iArr, 0)) {
                    N3(iArr[0]);
                }
                break;
            case 203:
                if (s0.i(strArr, 0) && s0.h(iArr, 0)) {
                    d3(strArr[0], iArr[0] == 1);
                    break;
                }
                break;
            case 204:
                if (s0.h(iArr, 0)) {
                    J3(iArr[0]);
                }
                break;
        }
    }

    public final void N3(int i2) {
        int i3 = this.E;
        if (i3 == i2) {
            return;
        }
        if (i2 == 0) {
            k.s(1, 0, 152);
            return;
        }
        if (i2 == 1) {
            k.s(1, 0, 153);
        } else if (i2 == 2) {
            N3(i3 != 0 ? 0 : 1);
        }
    }

    @Override // base.b
    public void O2(int i2, int[] iArr, float[] fArr, String[] strArr) {
    }

    public void O3(int i2) {
        int i3 = i2 > 0 ? 1 : 0;
        if (this.L != i3) {
            this.L = i3;
            m1.c.e(1004, i3);
            u0.d.I3(177, 2, i3);
            w3();
        }
    }

    @Override // y.c
    public void P0(y.b bVar, int i2) {
        if (bVar == null) {
            return;
        }
        this.f331f.p(bVar, i2);
    }

    public void P3(int i2) {
        int i3 = i2 > 0 ? 1 : 0;
        if (this.M != i3) {
            this.M = i3;
            u0.d.I3(177, 0, i3);
            w3();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v12 */
    /* JADX WARN: Type inference failed for: r7v13, types: [boolean] */
    /* JADX WARN: Type inference failed for: r7v16 */
    /* JADX WARN: Type inference failed for: r7v17, types: [boolean] */
    /* JADX WARN: Type inference failed for: r7v58 */
    /* JADX WARN: Type inference failed for: r7v59 */
    @Override // base.b
    public void Q2(h0 h0Var) {
        this.f17464l = m1.c.c(204, this.f17464l);
        J3(m1.c.c(Process.MEDIA_RW_GID, Chip.f591d0));
        if (m1.c.k(207)) {
            u0.d.F3(m1.c.c(207, 0));
        }
        if (m1.c.k(1021)) {
            N3(m1.c.c(1021, Configure.Property.PANEL_LIGHT_ALWAYS_ON.d(0)));
        }
        if (m1.c.k(209)) {
            int iC = m1.c.c(209, 0);
            this.f17480t = iC;
            M3(iC);
        }
        H3(m1.c.d(1018, Configure.Property.CUSTOM_BOOT_APP.h(ProxyProperties.LOCAL_EXCL_LIST)));
        ?? r7 = m1.c.c(225, s0.l("sys.carlink.auto_connect", false) ? 1 : 0) == 1 ? 1 : 0;
        this.f17486z = r7;
        u0.d.I3(166, r7);
        ?? r8 = m1.c.c(224, s0.l("sys.carlink.auto_connect", false) ? 1 : 0) == 1 ? 1 : 0;
        this.f17485y = r8;
        u0.d.I3(167, r8);
        O3(m1.c.c(1004, 0));
        Q3(m1.c.c(1001, 60));
        W3(m1.c.c(1002, s0.m("sys.syu.ui_mode", 0)));
        K3(m1.c.c(1003, s0.m("sys.syu.reverse_anti_shaking", 0)));
        String strH = Configure.Property.CUSTOM_APP.h(this.f17474q);
        this.f17474q = strH;
        I3(m1.c.d(Process.VPN_UID, strH));
        if (g.e.j(51) || g.f.n(10) || g.f.n(11) || g.f.n(13) || g.f.n(14)) {
            int iC2 = m1.c.c(229, s0.m("sys.syu.extra_mic", 1));
            this.I = iC2;
            ToolsJni.cmd_251_Normal_Io_Set(15, iC2 > 0 ? 1 : 0);
        }
        Object[] objArr = g.f.g() == 4;
        Object[] objArr2 = g.f.g() == 2;
        if (g.f.m() || objArr != false || objArr2 != false || g.f.n(12)) {
            X3(1);
        }
        int[] iArrE = s0.E(Configure.Property.SECONDARY_DISPLAY_BRIGHTNESS.h(ProxyProperties.LOCAL_EXCL_LIST));
        if (!s0.h(iArrE, 1)) {
            iArrE = new int[]{50, 50};
        }
        int iC3 = m1.c.c(Process.DRM_UID, MathUtils.constrain(iArrE[0], 30, 100));
        int iC4 = m1.c.c(AudioFormat.CHANNEL_OUT_7POINT1, MathUtils.constrain(iArrE[1], 30, 100));
        Y3(1, iC3);
        Y3(2, iC4);
        w3();
    }

    public void Q3(int i2) {
        if (this.O != i2) {
            this.O = i2;
            if (i2 < 30) {
                this.O = 30;
            }
            u0.d.I3(177, 1, this.O);
            m1.c.e(1001, this.O);
            if (this.O <= 0) {
                this.N = -1;
            } else {
                w3();
            }
        }
    }

    public void R3(boolean z2) {
        if (this.W != z2) {
            int[] iArr = new int[3];
            iArr[0] = 1;
            iArr[1] = 0;
            iArr[2] = z2 ? 148 : 149;
            k.s(iArr);
        }
    }

    public void S3(boolean z2) {
        if (this.V != z2) {
            int[] iArr = new int[3];
            iArr[0] = 1;
            iArr[1] = 0;
            iArr[2] = z2 ? 53 : 54;
            k.s(iArr);
        }
    }

    public void T3(boolean z2) {
        V3(z2);
        U3(z2);
    }

    public final void U3(boolean z2) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 31 || i2 < 28) {
            return;
        }
        ((UiModeManager) App.c().getSystemService(Context.UI_MODE_SERVICE)).setNightMode(z2 ? 2 : 1);
    }

    public final void V3(boolean z2) {
        if (Build.VERSION.SDK_INT < 31) {
            return;
        }
        new j1.c("setNightModeActivated").g((UiModeManager) App.c().getSystemService(Context.UI_MODE_SERVICE)).d(Boolean.valueOf(z2)).a();
    }

    public void W3(int i2) {
        if (i2 < 0 || i2 > 2 || this.P == i2) {
            return;
        }
        this.P = i2;
        u0.d.I3(178, i2);
        m1.c.e(1002, i2);
        if (App.c().g()) {
            int i3 = this.P;
            if (i3 == 0) {
                i3 = u0.b.f17366w == 1 ? 2 : 1;
            }
            T3(i3 == 2);
            j.c(new h(i3 != 2 ? 0 : 1), 600L);
        }
    }

    public final void X2(String str) {
        synchronized (this.f17453f0) {
            if (!s0.t(str) && !this.f17455g0.contains(str)) {
                this.f17455g0.add(str);
            }
        }
    }

    public void X3(int i2) {
        if (i2 != this.f17462k) {
            k.s(12, 13, i2);
            if (m1.c.k(200)) {
                Z2(i2);
            }
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // base.b, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        int i4;
        String[] strArr;
        SparseArray<Boolean> flags;
        int size;
        if (bVar == null) {
            return;
        }
        super.Y1(bVar, i2, i3);
        this.f331f.m(bVar, i2);
        if (i3 == 0) {
            return;
        }
        int i5 = 1;
        switch (i2) {
            case 0:
                this.f331f.G(bVar, i2, u0.b.D);
                return;
            case 1:
                int i6 = u0.b.f17314d;
                if (i6 >= 0) {
                    this.f331f.G(bVar, i2, i6);
                    return;
                }
                return;
            case 2:
                this.f331f.G(bVar, i2, u0.b.f17326h);
                return;
            case 3:
                this.f331f.G(bVar, i2, u0.b.f17332j);
                return;
            case 4:
            case 181:
                this.f331f.G(bVar, i2, u0.b.f17366w);
                return;
            case 5:
                this.f331f.G(bVar, i2, u0.b.f17368x);
                return;
            case 6:
                this.f331f.G(bVar, i2, u0.b.f17372z);
                return;
            case 7:
                this.f331f.G(bVar, i2, u0.b.f17335k);
                return;
            case 8:
                this.f331f.G(bVar, i2, u0.b.f17341m);
                return;
            case 9:
                this.f331f.G(bVar, i2, u0.b.f17360t);
                return;
            case 10:
                this.f331f.G(bVar, i2, u0.b.f17362u);
                return;
            case 11:
                this.f331f.G(bVar, i2, u0.b.f17364v);
                return;
            case 12:
                this.f331f.G(bVar, i2, u0.b.f17347o);
                return;
            case 13:
                this.f331f.G(bVar, i2, u0.b.f17350p);
                return;
            case 14:
                this.f331f.G(bVar, i2, u0.b.r2);
                return;
            case 15:
                this.f331f.G(bVar, i2, u0.b.s2);
                return;
            case 16:
                this.f331f.G(bVar, i2, u0.b.t2);
                return;
            case 17:
                this.f331f.G(bVar, i2, u0.b.u2);
                return;
            case 18:
                this.f331f.G(bVar, i2, u0.b.v2);
                return;
            case 19:
                this.f331f.G(bVar, i2, u0.b.w2);
                return;
            case 20:
                this.f331f.G(bVar, i2, u0.b.x2);
                return;
            case 21:
                this.f331f.G(bVar, i2, u0.b.y2);
                return;
            case 22:
                this.f331f.G(bVar, i2, u0.b.f17353q);
                return;
            case 23:
                this.f331f.G(bVar, i2, u0.b.I);
                return;
            case 24:
                this.f331f.G(bVar, i2, u0.b.f17356r);
                return;
            case 25:
                this.f331f.G(bVar, i2, u0.b.U);
                return;
            case 26:
                this.f331f.G(bVar, i2, u0.b.V);
                return;
            case 27:
                this.f331f.G(bVar, i2, u0.b.G);
                return;
            case 28:
                this.f331f.F(bVar, i2, u0.b.J1);
                return;
            case 29:
                this.f331f.G(bVar, i2, u0.b.P);
                return;
            case 30:
            case 37:
            case 42:
            case 44:
            case 48:
            case 60:
            case 61:
            case 74:
            case 75:
            case 77:
            case 103:
            case 104:
            case 106:
            case 110:
            case 113:
            case 132:
            case 133:
            case 135:
            case 139:
            case 140:
            case 141:
            case 143:
            case 146:
            case 147:
            case 148:
            case 150:
            case 151:
            case 152:
            case 153:
            case 154:
            case 155:
            case 156:
            case 157:
            case 158:
            case 160:
            case 161:
            case 169:
            case 170:
            case 173:
            case 175:
            case 179:
            case 184:
            case 186:
            case 192:
            case 194:
            case 198:
            default:
                return;
            case 31:
                this.f331f.G(bVar, i2, u0.b.K);
                return;
            case 32:
                this.f331f.G(bVar, i2, u0.b.L);
                return;
            case 33:
                this.f331f.G(bVar, i2, u0.b.M);
                return;
            case 34:
                this.f331f.F(bVar, i2, u0.b.F1);
                return;
            case 35:
                this.f331f.F(bVar, i2, u0.b.I1);
                return;
            case 36:
                this.f331f.G(bVar, i2, u0.b.R);
                return;
            case 38:
                this.f331f.G(bVar, i2, u0.b.X);
                return;
            case 39:
                synchronized (this.f17453f0) {
                    for (int i7 = 0; i7 < this.f17455g0.size(); i7++) {
                        this.f331f.E(bVar, i2, 0, this.f17455g0.get(i7));
                        break;
                    }
                    break;
                }
                u0.d.t(bVar);
                return;
            case 40:
                this.f331f.G(bVar, i2, u0.b.H2);
                return;
            case 41:
                this.f331f.G(bVar, i2, u0.b.I2);
                return;
            case 43:
                this.f331f.G(bVar, i2, u0.b.n4);
                return;
            case 45:
                u0.d.I3(45, 5, u0.b.S0);
                return;
            case 46:
                u0.d.M3(bVar);
                return;
            case 47:
                this.f331f.G(bVar, i2, u0.b.Y);
                return;
            case 49:
                this.f331f.F(bVar, i2, u0.b.i3);
                return;
            case 50:
                this.f331f.G(bVar, i2, u0.b.f17306a0);
                return;
            case 51:
                this.f331f.G(bVar, i2, u0.b.f17309b0);
                return;
            case 52:
                this.f331f.G(bVar, i2, u0.b.f17312c0);
                return;
            case 53:
                this.f331f.G(bVar, i2, u0.b.f17315d0);
                return;
            case 54:
                this.f331f.G(bVar, i2, u0.b.f17327h0);
                return;
            case 55:
                this.f331f.G(bVar, i2, u0.b.f17324g0);
                return;
            case 56:
                this.f331f.G(bVar, i2, u0.b.f17330i0);
                return;
            case 57:
                synchronized (u0.d.f17407g) {
                    x xVar = this.f331f;
                    int[] iArr = new int[1];
                    if (u0.b.i4 <= 2) {
                        i5 = 0;
                    }
                    iArr[0] = i5;
                    xVar.G(bVar, i2, iArr);
                    break;
                }
                return;
            case 58:
                this.f331f.G(bVar, i2, u0.b.f17333j0, u0.b.f17336k0, u0.b.f17339l0);
                return;
            case 59:
                this.f331f.G(bVar, i2, u0.b.f17342m0, u0.b.f17345n0, u0.b.f17348o0);
                return;
            case 62:
                this.f331f.G(bVar, i2, u0.b.f17351p0);
                return;
            case 63:
                this.f331f.G(bVar, i2, u0.b.f17354q0);
                return;
            case 64:
                for (int i8 = 0; i8 < 34; i8++) {
                    this.f331f.G(bVar, 64, i8, e.d.f1621a[i8]);
                }
                return;
            case 65:
                this.f331f.G(bVar, i2, u0.b.f17357r0);
                return;
            case 66:
                this.f331f.G(bVar, i2, u0.b.f17363u0);
                return;
            case 67:
                this.f331f.G(bVar, i2, u0.b.f17367w0);
                return;
            case 68:
                if (o.g().m()) {
                    o.g().u(bVar, i2);
                    return;
                }
                return;
            case 69:
                if (o.g().m()) {
                    o.g().u(bVar, i2);
                    return;
                }
                Log.e("image", "22 DataMain.sSignalOn = " + u0.b.r4);
                this.f331f.G(bVar, i2, u0.b.r4);
                return;
            case 70:
                if (o.g().m()) {
                    o.g().u(bVar, i2);
                    return;
                } else {
                    Log.e("image", String.format("register ------------>>>> DataMain.sSignalNtscPal : %d", Integer.valueOf(u0.b.s4)));
                    this.f331f.G(bVar, i2, u0.b.s4);
                    return;
                }
            case 71:
                this.f331f.G(bVar, i2, u0.b.D0);
                return;
            case 72:
                qt.A();
                return;
            case 73:
                this.f331f.G(bVar, i2, u0.b.F0);
                return;
            case 76:
                this.f331f.G(bVar, i2, u0.b.J0);
                return;
            case 78:
                this.f331f.G(bVar, i2, u0.b.L0);
                return;
            case 79:
                this.f331f.G(bVar, i2, 0, u0.b.M0);
                this.f331f.G(bVar, i2, 2, u0.b.N0);
                return;
            case 80:
                this.f331f.G(bVar, i2, u0.b.O0);
                return;
            case 81:
                this.f331f.G(bVar, i2, u0.b.P0);
                return;
            case 82:
                this.f331f.G(bVar, i2, u0.b.R0);
                return;
            case 83:
                this.f331f.G(bVar, i2, u0.b.Q0);
                return;
            case 84:
                this.f331f.F(bVar, i2, u0.b.G1);
                return;
            case 85:
                this.f331f.F(bVar, i2, u0.b.H1);
                return;
            case 86:
                this.f331f.G(bVar, i2, u0.b.f17318e0);
                return;
            case 87:
                this.f331f.G(bVar, i2, u0.b.T0);
                return;
            case 88:
                this.f331f.G(bVar, i2, u0.b.U0);
                return;
            case 89:
                this.f331f.G(bVar, i2, u0.b.V0, u0.b.W0);
                return;
            case 90:
                this.f331f.G(bVar, i2, u0.b.z2);
                return;
            case 91:
                this.f331f.G(bVar, i2, u0.b.A2);
                return;
            case 92:
                this.f331f.G(bVar, i2, u0.b.B2);
                return;
            case 93:
                this.f331f.G(bVar, i2, u0.b.C2);
                return;
            case 94:
                this.f331f.G(bVar, i2, u0.b.D2);
                return;
            case 95:
                this.f331f.G(bVar, i2, u0.b.E2);
                return;
            case 96:
                this.f331f.G(bVar, i2, u0.b.F2);
                return;
            case 97:
                this.f331f.G(bVar, i2, u0.b.G2);
                return;
            case 98:
                this.f331f.G(bVar, i2, u0.b.Y0, u0.b.Z0);
                return;
            case 99:
                this.f331f.G(bVar, i2, u0.b.f17307a1);
                return;
            case 100:
                this.f331f.G(bVar, i2, u0.b.f17310b1);
                return;
            case 101:
                this.f331f.G(bVar, i2, u0.b.X1);
                return;
            case 102:
                this.f331f.G(bVar, i2, u0.b.f17316d1);
                return;
            case 105:
                this.f331f.G(bVar, i2, 0, u0.b.x1);
                this.f331f.G(bVar, i2, 1, u0.b.y1);
                this.f331f.G(bVar, i2, 2, u0.b.z1);
                this.f331f.G(bVar, i2, 3, u0.b.A1);
                this.f331f.G(bVar, i2, 4, u0.b.B1);
                return;
            case 107:
                this.f331f.G(bVar, i2, u0.b.f17319e1);
                return;
            case 108:
                this.f331f.G(bVar, i2, u0.b.f17322f1);
                return;
            case 109:
                this.f331f.G(bVar, i2, u0.b.f17328h1);
                return;
            case 111:
                this.f331f.G(bVar, i2, y0.f.Q0);
                return;
            case 112:
                this.f331f.G(bVar, i2, u0.b.f17340l1);
                return;
            case 114:
                this.f331f.G(bVar, i2, u0.b.f17346n1);
                return;
            case 115:
                this.f331f.G(bVar, i2, u0.b.f17349o1);
                return;
            case 116:
                this.f331f.G(bVar, i2, u0.b.f17331i1);
                return;
            case 117:
                this.f331f.G(bVar, i2, u0.b.f17352p1);
                return;
            case 118:
                u0.d.E0(-1);
                return;
            case 119:
                this.f331f.G(bVar, i2, u0.b.f17355q1);
                return;
            case 120:
                this.f331f.G(bVar, i2, u0.b.r1);
                return;
            case 121:
                this.f331f.G(bVar, i2, u0.b.s1);
                return;
            case 122:
                this.f331f.F(bVar, i2, u0.b.P1);
                return;
            case 123:
                int i9 = this.f17456h;
                if (i9 < 0 || (i4 = this.f17458i) < 0) {
                    return;
                }
                this.f331f.G(bVar, i2, i9, i4);
                return;
            case 124:
                this.f331f.F(bVar, i2, this.f17470o);
                return;
            case 125:
                this.f331f.G(bVar, i2, this.f17462k);
                return;
            case 126:
                this.f331f.G(bVar, i2, this.f17466m);
                return;
            case 127:
                this.f331f.F(bVar, i2, b.a.e().g());
                return;
            case 128:
                List<String> listF = b.a.e().f();
                int size2 = listF.size();
                if (size2 > 0) {
                    String[] strArr2 = new String[size2];
                    listF.toArray(strArr2);
                    strArr = strArr2;
                } else {
                    strArr = null;
                }
                this.f331f.H(bVar, i2, null, null, strArr);
                return;
            case 129:
                this.f331f.G(bVar, i2, b.a.e().i() ? 1 : 0);
                return;
            case 130:
                this.f331f.G(bVar, i2, this.f17464l);
                return;
            case 131:
                this.f331f.G(bVar, i2, b.a.e().h() ? 1 : 0);
                return;
            case 134:
                this.f331f.G(bVar, i2, this.f17481u);
                return;
            case 136:
                this.f331f.G(bVar, i2, 0, s0.c(this.f17476r, 1), s0.c(this.f17476r, 0));
                this.f331f.G(bVar, i2, 1, s0.c(this.f17478s, 1), s0.c(this.f17478s, 0));
                return;
            case 137:
                this.f331f.G(bVar, i2, s0.m("syu.imageic.inited", s0.m("syu.imageic.inited", 0)));
                return;
            case 138:
                ComponentName componentNameX0 = u.X0();
                if (componentNameX0 == null) {
                    this.f331f.H(bVar, i2, null, null, new String[]{ProxyProperties.LOCAL_EXCL_LIST, ProxyProperties.LOCAL_EXCL_LIST});
                    return;
                } else {
                    this.f331f.H(bVar, i2, null, null, new String[]{componentNameX0.getPackageName(), componentNameX0.getClassName()});
                    return;
                }
            case 142:
                this.f331f.G(bVar, i2, this.f17480t);
                return;
            case 144:
                c4 c4Var = j4.f16466d;
                if (c4Var != null) {
                    this.f331f.G(bVar, i2, c4Var.f16346k ? 1 : 0);
                    return;
                }
                return;
            case 145:
                c4 c4Var2 = j4.f16466d;
                if (c4Var2 != null) {
                    this.f331f.G(bVar, i2, c4Var2.f16345j);
                    return;
                }
                return;
            case 149:
                this.f331f.G(bVar, i2, this.f17460j);
                return;
            case 159:
                this.f331f.G(bVar, i2, this.f17484x ? 1 : 0);
                return;
            case 162:
                this.f331f.G(bVar, i2, ToolsJni.getUsbIndex());
                return;
            case 163:
                this.f331f.F(bVar, i2, this.G);
                return;
            case 164:
                this.f331f.F(bVar, i2, u0.b.L1);
                return;
            case 165:
                this.f331f.G(bVar, i2, this.J);
                return;
            case 166:
                this.f331f.G(bVar, i2, this.f17486z ? 1 : 0);
                return;
            case 167:
                this.f331f.G(bVar, i2, this.f17485y ? 1 : 0);
                return;
            case 168:
                x xVar2 = this.f331f;
                if (xVar2.f17001d) {
                    Log.e(xVar2.g(), "update SCREEN_ON DataMain.sScreenOn:" + u0.b.f17323g);
                }
                this.f331f.G(bVar, i2, u0.b.f17323g);
                return;
            case 171:
                this.f331f.G(bVar, i2, this.K);
                return;
            case 172:
                this.f331f.G(bVar, i2, this.I);
                return;
            case 174:
                o.g().u(bVar, i2);
                return;
            case 176:
                this.f331f.G(bVar, i2, this.f17482v);
                return;
            case 177:
                this.f331f.G(bVar, i2, 0, this.M);
                this.f331f.G(bVar, i2, 1, this.O);
                this.f331f.G(bVar, i2, 2, this.L);
                return;
            case 178:
                this.f331f.G(bVar, i2, this.P);
                return;
            case 180:
                this.f331f.G(bVar, i2, this.Q);
                return;
            case 182:
                this.f331f.G(bVar, i2, this.A, this.B);
                return;
            case 183:
                this.f331f.H(bVar, i2, null, new float[]{o1.a.f16810h.c()}, null);
                return;
            case 185:
                this.f331f.F(bVar, i2, this.f17474q);
                return;
            case 187:
                this.f331f.G(bVar, i2, 0, this.S);
                this.f331f.G(bVar, i2, 1, this.T);
                this.f331f.G(bVar, i2, 2, this.U);
                return;
            case 188:
                this.f331f.G(bVar, i2, this.V ? 1 : 0);
                return;
            case 189:
                this.f331f.G(bVar, i2, this.X ? 1 : 0);
                return;
            case 190:
                this.f331f.F(bVar, i2, this.f17459i0);
                return;
            case 191:
                this.f331f.G(bVar, i2, this.W ? 1 : 0);
                return;
            case 193:
                this.f331f.G(bVar, i2, this.f17461j0);
                return;
            case 195:
                this.f331f.F(bVar, i2, this.F);
                return;
            case 196:
                x xVar3 = this.f331f;
                int[] iArr2 = new int[2];
                iArr2[0] = 0;
                iArr2[1] = this.f17463k0 == 1 ? 1 : 0;
                xVar3.G(bVar, i2, iArr2);
                return;
            case 197:
                this.f331f.G(bVar, i2, this.C);
                return;
            case 199:
                this.f331f.G(bVar, i2, u0.b.f17321f0);
                return;
            case 200:
                this.f331f.G(bVar, i2, 0, this.D);
                return;
            case 201:
                n1.b bVarP = a.f.p();
                if (bVarP == null || (size = (flags = bVarP.getFlags()).size()) == 0) {
                    return;
                }
                for (int i10 = 0; i10 < size; i10++) {
                    int iKeyAt = flags.keyAt(i10);
                    this.f331f.G(bVar, i2, iKeyAt, flags.get(iKeyAt).booleanValue() ? 1 : 0);
                }
                return;
            case 202:
                this.f331f.G(bVar, i2, this.E);
                return;
            case 203:
                Iterator<String> it = this.f17457h0.iterator();
                while (it.hasNext()) {
                    this.f331f.E(bVar, i2, 0, it.next());
                }
                return;
            case 204:
                this.f331f.G(bVar, i2, this.f17465l0);
                return;
            case 205:
                this.f331f.F(bVar, i2, this.f17467m0);
                return;
        }
    }

    public void Y2(int i2) {
        int i3 = i2 == 1 ? 1 : 0;
        if (this.f17460j != i3) {
            this.f17460j = i3;
            u0.d.I3(149, i3);
        }
    }

    public void Y3(int i2, int i3) {
        if (i2 == 0) {
            if (u0.b.f17366w == 1) {
                Y3(2, i3);
                return;
            } else {
                Y3(1, i3);
                return;
            }
        }
        if (i2 == 1) {
            if (this.T != i3) {
                this.T = i3;
                u0.d.I3(187, i2, i3);
                m1.c.e(Process.DRM_UID, i3);
                if (u0.b.f17366w == 0) {
                    Z3(i3);
                    return;
                }
                return;
            }
            return;
        }
        if (i2 != 2 || this.U == i3) {
            return;
        }
        this.U = i3;
        u0.d.I3(187, i2, i3);
        m1.c.e(AudioFormat.CHANNEL_OUT_7POINT1, i3);
        if (u0.b.f17366w == 1) {
            Z3(i3);
        }
    }

    public void Z2(int i2) {
        if (i2 != this.f17462k) {
            this.f17462k = i2;
            y yVar = this.f17449b0;
            if (yVar != null) {
                yVar.c();
            }
            u0.d.I3(125, i2);
        }
    }

    public void Z3(int i2) {
        if (this.S != i2) {
            A3(i2);
            k.s(11, 7, MathUtils.constrain(i2, 1, 100));
        }
    }

    public void a3(int i2, int i3) {
        if (i2 == 1 || i2 == 2 || i2 == 3 || i2 == 4 || i2 != 5) {
            return;
        }
        if (i3 != 1) {
            i3 = 0;
        }
        int[] iArr = new int[3];
        iArr[0] = 1;
        iArr[1] = 0;
        iArr[2] = i3 == 1 ? 164 : 163;
        k.s(iArr);
    }

    public void a4(int i2) {
        if (this.f17464l != i2) {
            this.f17464l = i2;
            m1.c.e(204, i2);
            u0.d.I3(130, i2);
            if (i2 == 1) {
                qt.i(0, 0, true, 540);
            }
        }
    }

    public boolean b3() {
        return this.L == 1 && this.f17475q0.d() == 0;
    }

    public void b4() {
        if (u0.b.D1) {
            m.a().removeCallbacks(this.f17471o0);
        }
    }

    public void c3() {
        String[] strArrM = this.f327b.m(1022);
        d3("com.google.android.apps.maps", (Configure.Property.BLOCK_GOOGLE_MAP.b(false) || Configure.Property.BLOCK_VIDEO_APPS.b(false)) ? false : true);
        d3("com.google.android.youtube", !Configure.Property.BLOCK_YOUTUBE.b(false));
        Log.e("Qin", "======>> loaded disabledApps: " + Arrays.toString(strArrM));
        if (strArrM != null && strArrM.length > 0) {
            for (String str : strArrM) {
                if (!this.f17457h0.contains(str)) {
                    this.f17457h0.add(str);
                }
            }
            for (String str2 : strArrM) {
                d3(str2, false);
            }
            return;
        }
        ArrayList<String> arrayListU = s0.u(Configure.Property.DISABLE_APPS.h(ProxyProperties.LOCAL_EXCL_LIST));
        Log.e("Qin", "==>> def disabledApps: " + Arrays.toString(arrayListU.toArray()));
        if (arrayListU.isEmpty()) {
            return;
        }
        for (String str3 : arrayListU) {
            if (!this.f17457h0.contains(str3)) {
                this.f17457h0.add(str3);
            }
        }
        Iterator<String> it = arrayListU.iterator();
        while (it.hasNext()) {
            d3(it.next(), false);
        }
    }

    public final boolean c4(String[] strArr, int i2) {
        return strArr != null && strArr.length >= i2;
    }

    public synchronized void d3(String str, boolean z2) {
        boolean z3;
        boolean z4;
        if (s0.t(str)) {
            return;
        }
        boolean zRemove = false;
        try {
            App.c().getPackageManager().getApplicationInfo(str, 512);
            z3 = true;
        } catch (PackageManager.NameNotFoundException unused) {
            z3 = false;
        }
        if (z3) {
            if (s0.j(str, "com.google.android.youtube")) {
                z4 = z2 && !Configure.Property.BLOCK_YOUTUBE.b(false);
            } else {
                z4 = z2;
            }
            boolean zN = a.i.n(str);
            Log.e("Qin", "===============>> enableApp pkg: " + str + " enable: " + z2 + " isEnable : " + zN);
            if (!z4) {
                if (zN) {
                    a.i.a(str, 0);
                }
                u0.d.N3(203, 0, str);
                if (!this.f17457h0.contains(str)) {
                    zRemove = this.f17457h0.add(str);
                }
            } else if (!zN) {
                a.i.a(str, 1);
                u0.d.N3(203, 1, str);
                zRemove = this.f17457h0.remove(str);
            }
            if (zRemove) {
                String[] strArr = new String[this.f17457h0.size()];
                this.f17457h0.toArray(strArr);
                Log.e("Qin", "===============>> disabledApps : " + Arrays.toString(strArr));
                this.f327b.u(1022, strArr);
                this.f327b.e(1022);
            }
        }
    }

    public void d4() {
        u.S0(this.f17474q);
    }

    public void e3(int i2) {
        if ((g.e.j(51) || g.f.n(10) || g.f.n(11) || g.f.n(13) || g.f.n(14)) && i2 != this.I) {
            int i3 = i2 > 0 ? 1 : 0;
            this.I = i3;
            m1.c.e(229, i3);
            u0.d.I3(172, this.I);
            ToolsJni.cmd_251_Normal_Io_Set(15, this.I <= 0 ? 0 : 1);
        }
    }

    public void e4() {
        if (this.M == 0) {
            P3(1);
        } else {
            P3(0);
        }
    }

    public void f3(int i2) {
        if (g.f.s()) {
            i2 = 0;
        }
        if (this.f17466m != i2) {
            this.f17466m = i2;
            u0.d.m0(a.b.X, i2 == 1);
            u0.d.I3(126, i2);
        }
    }

    public void f4(String str) {
        if (str == null || str.isEmpty() || this.f17470o.equals(str)) {
            return;
        }
        this.f17470o = str;
        m1.c.f(387, str);
        u0.d.K3(124, this.f17470o);
        this.f17468n.c(this.f17470o);
    }

    public String g3() {
        return this.F;
    }

    public void g4(int i2, boolean z2) {
        int i3 = this.f17481u;
        if (z2) {
            this.f17481u = i2 | i3;
        } else {
            this.f17481u = (~i2) & i3;
        }
        if (i3 == this.f17481u || this.f329d == null) {
            return;
        }
        Log.e("Qin", "  ==============>>>  turnOptions: " + Integer.toBinaryString(this.f17481u & (-1)));
        this.f329d.removeCallbacks(this.f17479s0);
        this.f329d.postDelayed(this.f17479s0, 100L);
    }

    public int h3() {
        return this.K;
    }

    public void h4(int i2) {
        if (this.K != i2) {
            this.K = i2;
            SunshineTimeObserver.f17683g.d0();
            u0.d.I3(171, this.K);
        }
    }

    public String i3() {
        return this.f17459i0;
    }

    public void i4(int i2) {
        if (this.C != i2) {
            this.C = i2;
            T2(197, Integer.valueOf(i2));
            u0.d.I3(197, this.C);
        }
    }

    public int j3() {
        return this.f17483w;
    }

    public void j4(String str) {
        if (s0.j(this.f17467m0, str)) {
            return;
        }
        this.f17467m0 = str;
        T2(205, str);
        u0.d.K3(205, str);
    }

    public int k3() {
        return this.f17465l0;
    }

    public void k4(int i2) {
        if (this.D != i2) {
            this.D = i2;
            T2(200, Integer.valueOf(i2));
            u0.d.I3(200, i2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0040 A[PHI: r6
  0x0040: PHI (r6v14 int) = (r6v13 int), (r6v20 int) binds: [B:9:0x003e, B:6:0x002f] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:11:0x0042 A[PHI: r6
  0x0042: PHI (r6v17 int) = (r6v13 int), (r6v20 int) binds: [B:9:0x003e, B:6:0x002f] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:18:0x0064 A[PHI: r6
  0x0064: PHI (r6v4 int) = (r6v3 int), (r6v10 int) binds: [B:17:0x0062, B:14:0x0053] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:19:0x0066 A[PHI: r6
  0x0066: PHI (r6v7 int) = (r6v3 int), (r6v10 int) binds: [B:17:0x0062, B:14:0x0053] A[DONT_GENERATE, DONT_INLINE]] */
    public void l4(int i2, int i3) {
        int iX;
        boolean z2;
        boolean z3;
        int i4;
        int i5;
        int iX2;
        boolean z4;
        Log.e("main", String.format("lamplet type: %2X, value: %2X", Integer.valueOf(i2), Integer.valueOf(i3)));
        switch (i2) {
            case 35:
                iX = s0.x(i3, s0.c(this.f17476r, 0));
                if (iX != this.f17476r) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                z3 = z2;
                i4 = iX;
                i5 = 0;
                break;
            case 36:
                iX = s0.x(s0.c(this.f17476r, 1), i3);
                if (iX != this.f17476r) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                z3 = z2;
                i4 = iX;
                i5 = 0;
                break;
            case 37:
                iX2 = s0.x(i3, s0.c(this.f17478s, 0));
                if (iX2 != this.f17478s) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                z3 = z4;
                i4 = iX2;
                i5 = 1;
                break;
            case 38:
                iX2 = s0.x(s0.c(this.f17478s, 1), i3);
                if (iX2 != this.f17478s) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                z3 = z4;
                i4 = iX2;
                i5 = 1;
                break;
            default:
                i5 = -1;
                i4 = 0;
                z3 = false;
                break;
        }
        if (z3) {
            if (i5 == 0) {
                this.f17476r = i4;
            } else {
                this.f17478s = i4;
            }
            int[] iArr = {i5, s0.c(i4, 1), s0.c(i4, 0)};
            T2(136, iArr);
            u0.d.I3(136, iArr);
        }
    }

    public int m3() {
        return this.P;
    }

    public void m4(int i2, boolean z2) {
        int i3 = this.f17482v;
        if (z2) {
            this.f17482v = i2 | i3;
        } else {
            this.f17482v = (~i2) & i3;
        }
        if (i3 == this.f17482v || this.f329d == null) {
            return;
        }
        Log.e("Qin", "  ==============>>>  updateObstacleFlag: " + Integer.toBinaryString(this.f17482v & (-1)));
        u0.d.I3(176, this.f17482v);
    }

    public void n3(String str, boolean z2) {
        o3(str, z2, null);
    }

    public void n4(int i2) {
        if (this.E != i2) {
            this.E = i2;
            m1.c.e(1021, i2);
            T2(202, Integer.valueOf(i2));
            u0.d.I3(202, i2);
        }
    }

    public void o3(String str, boolean z2, y.b bVar) {
        synchronized (this.f17453f0) {
            if (!s0.t(str)) {
                if (z2 && !this.f17455g0.contains(str)) {
                    this.f17455g0.add(str);
                    if (bVar == null) {
                        u0.d.N3(39, 0, str);
                    } else {
                        this.f331f.E(bVar, 39, 0, str);
                    }
                } else if (!z2 && this.f17455g0.contains(str)) {
                    this.f17455g0.remove(str);
                    if (bVar == null) {
                        u0.d.N3(39, 1, str);
                    } else {
                        this.f331f.E(bVar, 39, 1, str);
                    }
                }
            }
        }
    }

    public void o4(int i2) {
        if (this.J != i2 && i2 >= 0 && i2 <= 4) {
            this.J = i2;
            u0.d.I3(165, i2);
            m1.c.e(223, this.J);
        }
    }

    public final boolean p3(int[] iArr, int i2) {
        return iArr != null && iArr.length >= i2;
    }

    public void p4(int i2) {
        int i3 = i2 != 1 ? 0 : 1;
        if (this.H != i3) {
            this.H = i3;
            u0.d.I3(169, i3);
        }
    }

    public boolean q3() {
        return this.R;
    }

    public void q4(boolean z2) {
        if (this.W != z2) {
            this.W = z2;
            u0.d.I3(191, z2 ? 1 : 0);
            T2(191, Boolean.valueOf(this.W));
        }
    }

    public boolean r3() {
        return this.f17484x;
    }

    public void r4(String str) {
        if (s0.j(str, this.G) || s0.t(str)) {
            return;
        }
        this.G = str;
        m1.c.f(216, str);
        u0.d.K3(163, str);
    }

    public boolean s3() {
        return this.Q == 1;
    }

    public void s4(String str) {
        if (s0.t(str) && !s0.t(u0.b.L1)) {
            u0.b.L1 = ProxyProperties.LOCAL_EXCL_LIST;
            m1.c.f(215, ProxyProperties.LOCAL_EXCL_LIST);
            u0.d.K3(164, u0.b.L1);
        } else {
            if (s0.t(str) || !u.k0(App.c(), str) || s0.j(str, u0.b.L1)) {
                return;
            }
            u0.b.L1 = str;
            m1.c.f(215, str);
            u0.d.K3(164, u0.b.L1);
        }
    }

    public boolean t3() {
        return this.V;
    }

    public void u3(int i2) {
        if (this.f17480t == i2) {
            return;
        }
        this.f17480t = i2;
        u0.d.I3(142, i2);
        if (m1.c.k(209)) {
            m1.c.e(209, i2);
        }
    }

    public void v3() {
        if (u0.b.D1) {
            m mVarA = m.a();
            mVarA.removeCallbacks(this.f17471o0);
            mVarA.post(this.f17471o0);
        }
    }

    public void w3() {
        int i2;
        if (b3() && this.M == 0 && (i2 = this.O) > 0) {
            this.N = i2;
            Log.e("Qin", "===============>> resetScreenSaverRemain mScreenSaverRemain: " + this.N);
        }
    }

    public void x3(int i2) {
        if (m1.c.k(1017) && Configure.Property.ROTATION_BY_HAND.b(true)) {
            this.f329d.post(new f(i2));
        } else {
            int[] iArr = new int[3];
            iArr[0] = 1;
            iArr[1] = 0;
            iArr[2] = i2 == 1 ? 201 : 200;
            k.s(iArr);
        }
        Runnable runnable = this.f17472p;
        if (runnable != null) {
            runnable.run();
        }
    }

    public void y3() {
        int i2;
        if (!b3()) {
            this.N = 0;
            P3(0);
            return;
        }
        if (this.M != 0 || this.O <= 0 || (i2 = this.N) <= 0) {
            return;
        }
        this.N = i2 - 1;
        Log.e("Qin", "===============>> screenSaverTick mScreenSaverRemain: " + this.N);
        if (this.N == 0) {
            P3(1);
        }
    }

    public void z3(boolean z2) {
        if (this.V != z2) {
            this.V = z2;
            u0.d.I3(188, z2 ? 1 : 0);
        }
    }
}
