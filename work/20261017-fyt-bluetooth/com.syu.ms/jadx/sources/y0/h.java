package y0;

import android.content.Context;
import android.net.ProxyProperties;
import android.os.SystemProperties;
import android.util.Log;
import android.widget.Toast;
import app.App;
import base.Configure;
import com.syu.ms.R;
import k0.nt;
import k0.qt;
import module.sound.AudioDevice;
import module.sound.C2313;
import module.sound.C32107;
import module.sound.C32107S;
import module.sound.C3702;
import module.sound.C7604;
import module.sound.C7604_NAVI_DIR;
import module.sound.C7729;
import module.sound.C7738;
import module.sound.C7738FC;
import module.sound.C7738NOR7870;
import module.sound.C7738NOR7870TDM;
import module.sound.C7738NOR_QC;
import module.sound.C7738NOR_QUALCOMM;
import module.sound.C7739;
import module.sound.C7739_48;
import module.sound.C7739_QC;
import module.sound.C8288;
import module.sound.DU561;
import module.sound.DU561NEW;
import module.sound.DU561NEW2;
import o1.c0;
import o1.j0;
import o1.k0;
import o1.m;
import o1.o;
import o1.o0;
import o1.q0;
import o1.s0;
import o1.x;
import o1.z;

/* JADX INFO: loaded from: classes2.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final c0 f18114a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final c0 f18115b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Runnable f18116c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final Object f18117d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static int f18118e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Runnable f18119f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static k0 f18120g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static boolean f18121h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static Toast f18122i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static String f18123j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static Runnable f18124k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final Runnable f18125l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static int f18126m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static int f18127n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final Runnable f18128o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final Runnable f18129p;

    public class a implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            int i2 = y0.f.Z;
            if (i2 == 0) {
                if (nt.f8661v != 0) {
                    nt.f8639d.Q2(y0.f.f18032a0);
                    return;
                }
                y0.e eVar = y0.f.f18034b;
                if (eVar instanceof AudioDevice) {
                    return;
                }
                eVar.h(y0.f.f18032a0);
                return;
            }
            if (i2 == 1) {
                if (nt.f8661v != 0) {
                    nt.f8639d.Q2(y0.f.f18032a0);
                    return;
                }
                y0.e eVar2 = y0.f.f18034b;
                if (eVar2 instanceof AudioDevice) {
                    return;
                }
                eVar2.h(y0.f.f18032a0);
            }
        }
    }

    public class b implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            int i2 = y0.f.Z;
            if (i2 == 0) {
                if (nt.f8662w != 0) {
                    nt.f8639d.X2(y0.f.f18070p0);
                    return;
                } else {
                    y0.f.f18034b.n(y0.f.f18070p0);
                    return;
                }
            }
            if (i2 == 1) {
                if (nt.f8662w != 0) {
                    nt.f8639d.X2(y0.f.f18070p0);
                } else {
                    y0.f.f18034b.n(y0.f.f18070p0);
                }
            }
        }
    }

    public class c implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            h.Y(1024, false);
        }
    }

    public class d implements Runnable {
        @Override // java.lang.Runnable
        public synchronized void run() {
            o1.k.a().removeCallbacks(this);
            y0.f.f18034b.p();
        }
    }

    public class e implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            if (h.f18122i == null) {
                Toast unused = h.f18122i = Toast.makeText(App.c(), ProxyProperties.LOCAL_EXCL_LIST, 1);
            }
            h.f18122i.setText(h.f18123j);
            h.f18122i.show();
        }
    }

    public class f implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            int i2 = y0.f.K0 != 0 ? 0 : y0.f.C0;
            int i3 = y0.f.D0;
            if (i3 < i2) {
                y0.f.D0 = i3 + 1;
            } else if (i3 > i2) {
                y0.f.D0 = i3 - 1;
            }
        }
    }

    public class g implements Runnable {
        /* JADX WARN: Code duplicated, block: B:31:0x005f  */
        /* JADX WARN: Code duplicated, block: B:8:0x000e  */
        @Override // java.lang.Runnable
        public synchronized void run() {
            boolean z2;
            int i2;
            int i3 = y0.f.f18069p;
            boolean z3 = true;
            if (i3 > 0) {
                int i4 = i3 - 1;
                y0.f.f18069p = i4;
                if (i4 == 0) {
                    z2 = true;
                } else {
                    z2 = false;
                }
            } else {
                z2 = false;
            }
            if (h.e() > 10 && y0.f.f18031a != 5) {
                int unused = h.f18126m = 0;
                base.a aVar = a.c.f40b;
                aVar.f(aVar.c());
            }
            if (h.g() > 10) {
                int unused2 = h.f18127n = 0;
                int i5 = -1;
                if (g.e.a() == 4 || g.e.a() == 8) {
                    float fP = q0.p();
                    i5 = fP > y0.f.H0 ? y0.f.G0 : -1;
                    if (fP < y0.f.I0 && (i2 = y0.f.F0) >= 0) {
                        i5 = i2;
                    }
                }
                if (y0.f.F0 != i5) {
                    y0.f.F0 = i5;
                } else {
                    z3 = z2;
                }
            } else {
                z3 = z2;
            }
            if (z3) {
                h.M();
            }
        }
    }

    /* JADX INFO: renamed from: y0.h$h, reason: collision with other inner class name */
    public class RunnableC0131h implements Runnable {
        @Override // java.lang.Runnable
        public synchronized void run() {
            int i2 = y0.f.U0;
            if (i2 > 0) {
                int i3 = i2 - 1;
                y0.f.U0 = i3;
                if (i3 == 0) {
                    h.p0(0);
                }
            }
        }
    }

    static {
        z();
        f18114a = new c0(new a());
        f18115b = new c0(new b());
        f18116c = new c();
        f18117d = new Object();
        f18118e = 20;
        f18119f = new d();
        f18120g = new k0();
        f18121h = false;
        f18124k = new e();
        f fVar = new f();
        f18125l = fVar;
        h(fVar);
        f18126m = 0;
        f18127n = 0;
        g gVar = new g();
        f18128o = gVar;
        RunnableC0131h runnableC0131h = new RunnableC0131h();
        f18129p = runnableC0131h;
        i(gVar);
        i(runnableC0131h);
    }

    public static void A(int i2) {
        int iA = o0.a(i2, 0, y0.f.C);
        if (y0.f.B != iA) {
            y0.f.B = iA;
            s0(6, iA);
            if (y0.f.f18039c1 == 1) {
                m1.c.g(163, iA);
            }
        }
    }

    public static void B(int i2) {
        int i3 = y0.f.f18039c1;
        if (i3 == 0) {
            z.k.s(6, 2, i2);
        } else if (i3 == 1) {
            A(i2);
        }
    }

    public static void C(int i2) {
        if (y0.f.f18089z != i2) {
            y0.f.f18089z = i2;
            s0(5, i2);
            if (y0.f.f18036b1 == 1) {
                m1.c.g(162, i2);
            }
        }
    }

    public static void D(int i2) {
        int i3 = y0.f.f18036b1;
        if (i3 != 0) {
            if (i3 == 1) {
                if (i2 == 0) {
                    C(0);
                    return;
                }
                if (i2 == 1) {
                    C(1);
                    return;
                } else {
                    if (i2 != 2) {
                        return;
                    }
                    if (y0.f.f18089z == 0) {
                        D(1);
                        return;
                    } else {
                        D(0);
                        return;
                    }
                }
            }
            return;
        }
        if (i2 == 0) {
            int i4 = u0.b.y3 & (-9);
            u0.b.y3 = i4;
            z.k.s(10, i4, 0, 0);
        } else if (i2 == 1) {
            int i5 = u0.b.y3 | 8;
            u0.b.y3 = i5;
            z.k.s(10, i5, 0, 0);
        } else {
            if (i2 != 2) {
                return;
            }
            if (y0.f.f18089z == 0) {
                D(1);
            } else {
                D(0);
            }
        }
    }

    public static void E(int i2, int i3) {
        if (i2 < 0 || i2 >= 48) {
            return;
        }
        int iA = o0.a(i3, 0, y0.f.f18047f0);
        int[] iArr = y0.f.f18038c0;
        if (iArr[i2] != iA) {
            iArr[i2] = iA;
            s0(9, i2, iA);
            t(new int[]{1, i2});
        }
    }

    public static void F(int i2) {
        if (y0.f.f18032a0 != i2) {
            y0.f.f18032a0 = i2;
            s0(10, i2);
            J();
            y0.g.f18099i.c();
        }
    }

    /* JADX WARN: Code duplicated, block: B:11:0x002f  */
    public static void G(int[] iArr, int[] iArr2, int[] iArr3, int i2) {
        boolean z2;
        int[] iArr4 = new int[i2 + 1];
        for (int i3 = 0; i3 < i2; i3++) {
            if (iArr == null || iArr.length <= i3) {
                z2 = false;
            } else {
                int[] iArr5 = y0.f.f18038c0;
                if (iArr5[i3] != iArr[i3]) {
                    iArr5[i3] = iArr[i3];
                    s0(9, i3, iArr[i3]);
                    iArr4[iArr4[0] + 1] = i3;
                    z2 = true;
                } else {
                    z2 = false;
                }
            }
            if (iArr2 != null && iArr2.length > i3) {
                int[] iArr6 = y0.f.f18050g0;
                if (iArr6[i3] != iArr2[i3]) {
                    iArr6[i3] = iArr2[i3];
                    s0(18, i3, iArr2[i3]);
                    iArr4[iArr4[0] + 1] = i3;
                    z2 = true;
                }
            }
            if (iArr3 != null && iArr3.length > i3) {
                int[] iArr7 = y0.f.f18058j0;
                if (iArr7[i3] != iArr3[i3]) {
                    iArr7[i3] = iArr3[i3];
                    s0(20, i3, iArr3[i3]);
                    iArr4[iArr4[0] + 1] = i3;
                    z2 = true;
                }
            }
            if (z2) {
                iArr4[0] = iArr4[0] + 1;
            }
        }
        if (iArr4[0] > 0) {
            t(iArr4);
        }
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0034  */
    public static void H(int[] iArr, int[] iArr2, int[] iArr3, int i2, AudioDevice audioDevice) {
        boolean z2;
        int[] iArr4 = new int[i2 + 1];
        for (int i3 = 0; i3 < i2; i3++) {
            if (iArr == null || iArr.length <= i3) {
                z2 = false;
            } else {
                int[] iArr5 = y0.f.f18038c0;
                if (iArr5[i3] != iArr[i3]) {
                    iArr5[i3] = iArr[i3];
                    s0(9, i3, iArr[i3] + audioDevice.x0(i3));
                    iArr4[iArr4[0] + 1] = i3;
                    z2 = true;
                } else {
                    z2 = false;
                }
            }
            if (iArr2 != null && iArr2.length > i3) {
                int[] iArr6 = y0.f.f18050g0;
                if (iArr6[i3] != iArr2[i3]) {
                    iArr6[i3] = iArr2[i3];
                    s0(18, i3, iArr2[i3]);
                    iArr4[iArr4[0] + 1] = i3;
                    z2 = true;
                }
            }
            if (iArr3 != null && iArr3.length > i3) {
                int[] iArr7 = y0.f.f18058j0;
                if (iArr7[i3] != iArr3[i3]) {
                    iArr7[i3] = iArr3[i3];
                    s0(20, i3, iArr3[i3] + audioDevice.y0(i3));
                    iArr4[iArr4[0] + 1] = i3;
                    z2 = true;
                }
            }
            if (z2) {
                iArr4[0] = iArr4[0] + 1;
            }
        }
        if (iArr4[0] > 0) {
            t(iArr4);
        }
    }

    public static void I(int i2) {
        if (i2 == 0) {
            z.k.s(1, 10, 128);
        } else if (i2 == 1) {
            z.k.s(1, 10, 130);
        } else if (i2 == 2) {
            z.k.s(1, 10, 131);
        } else if (i2 == 3) {
            z.k.s(1, 10, 129);
        }
        y0.e eVar = y0.f.f18034b;
        if (eVar == null || !(eVar instanceof AudioDevice)) {
            return;
        }
        ((AudioDevice) eVar).P(i2);
    }

    public static void J() {
        f18114a.a(100L);
    }

    public static void K() {
        synchronized (f18117d) {
            boolean z2 = h0.c.G == 1;
            if (z2) {
                boolean z3 = ((y0.f.K0 & 63) == 0) && z2;
                if (q0.f16964m == 1 && z3) {
                    q0.y(0);
                } else if (!z3) {
                    q0.y(1);
                }
            } else {
                boolean z4 = ((y0.f.K0 & 20255) & 65535) != 0;
                if (u0.b.V3) {
                    q0.y(Q());
                } else {
                    q0.y(((u0.b.W3 && (65535 & (y0.f.K0 & 64)) != 0) || z4) ? 1 : 0);
                }
            }
        }
    }

    public static void L() {
        f18115b.a(100L);
    }

    public static void M() {
        o1.k.a().postDelayed(f18119f, f18118e);
    }

    public static final void N(int i2) {
        o1.k kVarA = o1.k.a();
        Runnable runnable = f18116c;
        kVarA.removeCallbacks(runnable);
        Y(1024, false);
        o1.k.a().postDelayed(runnable, i2);
    }

    public static void O() {
        if (a.f.v() != null) {
            a.f.v().hide();
        }
    }

    public static void P() {
        y0.e eVar = y0.f.f18034b;
        if (eVar instanceof AudioDevice) {
            return;
        }
        eVar.k();
        y0.g.f18111u.c();
    }

    public static int Q() {
        return (y0.f.K0 & 65535) != 0 ? 1 : 0;
    }

    public static void R(int i2) {
        if (y0.f.f18065n != i2) {
            y0.f.f18065n = i2;
            s0(25, i2);
        }
    }

    public static void S(int i2) {
        a.f.p().s("loud状态 = " + i2);
        if (y0.f.E != i2) {
            y0.f.E = i2;
            s0(11, i2);
            y0.f.f18034b.l(i2);
            if (y0.f.f18051g1 == 1) {
                m1.c.g(166, i2);
            }
        }
    }

    public static void T(int i2) {
        a.f.p().s("loudCmd = " + i2);
        int i3 = y0.f.f18051g1;
        if (i3 != 0) {
            if (i3 == 1) {
                if (i2 == 0) {
                    S(0);
                    return;
                } else if (i2 == 1) {
                    S(1);
                    return;
                } else {
                    if (i2 != 2) {
                        return;
                    }
                    T(y0.f.E != 0 ? 0 : 1);
                    return;
                }
            }
            return;
        }
        if (i2 == 0) {
            if (y0.f.E != 0) {
                z.k.s(1, 10, 64);
            }
        } else if (i2 != 1) {
            if (i2 != 2) {
                return;
            }
            z.k.s(1, 10, 64);
        } else if (y0.f.E == 0) {
            z.k.s(1, 10, 64);
        }
    }

    public static void U(boolean z2) {
        if (z2 != y0.f.f18083w) {
            y0.f.f18083w = z2;
            M();
        }
    }

    public static synchronized void V(int i2) {
        a.f.p().s("Sound moduleId = " + i2);
        Log.e("sound", "Sound moduleId = " + i2);
        Log.e(Context.AUDIO_SERVICE, " moduleId  Audio Module Id  : " + i2);
        if (y0.f.f18031a == i2) {
            return;
        }
        y0.f.f18034b.f();
        y0.f.f18031a = i2;
        switch (i2) {
            case 1:
                y0.f.f18034b = new C3702(z.a.f18171v);
                break;
            case 2:
                y0.f.f18034b = new C8288(z.a.f18152c);
                break;
            case 3:
            case 19:
            default:
                y0.f.f18034b = new y0.e();
                break;
            case 4:
                y0.f.f18034b = new k();
                break;
            case 5:
                y0.f.f18034b = new y0.c();
                break;
            case 6:
                y0.f.f18034b = new C32107(16, 3, z.a.f18171v);
                break;
            case 7:
                y0.f.f18034b = new module.sound.a(13, 3, z.a.f18171v);
                break;
            case 8:
                y0.f.f18034b = new C2313(z.a.f18171v);
                break;
            case 9:
                y0.f.f18034b = new C7729(z.a.f18171v);
                break;
            case 10:
                y0.f.f18034b = new C32107S(27, 3, z.a.f18171v);
                break;
            case 11:
                if (SystemProperties.getInt("sys.lsec.navileft", 0) != 1) {
                    y0.f.f18034b = new C7604(z.a.f18171v);
                } else {
                    y0.f.f18034b = new C7604_NAVI_DIR(z.a.f18171v);
                }
                break;
            case 12:
                y0.f.f18034b = new DU561(z.a.f18171v);
                break;
            case 13:
                y0.f.f18034b = new C7738(z.a.f18171v);
                break;
            case 14:
                y0.f.f18034b = new C7738FC(z.a.f18171v);
                break;
            case 15:
                if (s0.m("sys.lsec.tdm", 0) <= 0) {
                    y0.f.f18034b = new C7738NOR7870(z.a.f18171v);
                } else {
                    y0.f.f18034b = new C7738NOR7870TDM(z.a.f18171v);
                }
                break;
            case 16:
                if (s0.m("sys.lsec.dspfs", 0) != 1) {
                    y0.f.f18034b = new C7739_48(z.a.f18171v);
                } else if (s0.m("sys.lsec.ext_dsp", 0) != 1) {
                    y0.f.f18034b = new C7739(z.a.f18171v);
                } else {
                    y0.f.f18034b = new C7739_QC(z.a.f18171v);
                }
                break;
            case 17:
                y0.f.f18034b = new DU561NEW(z.a.f18171v);
                break;
            case 18:
                y0.f.f18034b = new DU561NEW2(z.a.f18171v);
                break;
            case 20:
                if (s0.m("sys.lsec.ext_dsp", 0) != 1) {
                    y0.f.f18034b = new C7738NOR_QUALCOMM(z.a.f18171v);
                } else {
                    y0.f.f18034b = new C7738NOR_QC(z.a.f18171v);
                }
                break;
        }
        y0.f.f18034b.e();
        s0(1, i2);
        y0.g.f18091a.c();
        s();
    }

    public static final synchronized void W(int i2) {
        int i3 = y0.f.K0;
        int i4 = i3 & 255;
        int i5 = i3 | i2;
        y0.f.K0 = i5;
        int i6 = i2 | (i5 & 255);
        K();
    }

    public static final void X(int i2, boolean z2) {
        Log.e("soundMute", "  ==============>>> muteAmp flag : " + Integer.toBinaryString(i2 & 65535) + " mute " + z2 + " old DataSound.sMuteDst: " + Integer.toBinaryString(y0.f.K0 & 65535));
        if (z2) {
            W(i2);
        } else {
            r0(i2);
        }
        Log.e("soundMute", "  ==============>>> muteAmp DataSound.sMuteDst: " + Integer.toBinaryString(y0.f.K0 & 65535));
    }

    public static final void Y(int i2, boolean z2) {
        X(i2, z2);
        M();
    }

    public static void Z(int i2) {
        if (y0.f.f18055i != i2) {
            y0.f.f18055i = i2;
            s0(3, i2);
            Y(128, y0.f.f18055i == 1);
            if (h0.c.G != 1) {
                e0();
            }
            y0.g.f18095e.c();
        }
    }

    public static void a0(int i2) {
        if (y0.f.J != i2) {
            y0.f.J = i2;
            s0(14, i2);
            y0.g.f18098h.c();
            M();
            f.c cVar = f.b.f1841d.f1844c;
            if (cVar != null) {
                if (cVar.h()) {
                    Configure.Property.SYSTEM_VOLUME_DUCK.g("-1");
                    a.f.f().setParameters("lsecVol=-1");
                } else {
                    int i3 = y0.f.J != 0 ? (int) ((y0.f.L / 20.0f) * 100.0f) : 0;
                    Configure.Property.SYSTEM_VOLUME_DUCK.g(ProxyProperties.LOCAL_EXCL_LIST + i3);
                    a.f.f().setParameters("lsecVol=" + i3);
                }
            }
            if (y0.f.f18045e1 == 1) {
                m1.c.g(164, i2);
            }
        }
    }

    public static void b0(int i2) {
        int i3 = y0.f.f18045e1;
        if (i3 == 0) {
            if (i2 == 0) {
                z.k.s(1, 0, 144);
                return;
            }
            if (i2 == 1) {
                z.k.s(1, 0, 145);
                return;
            } else {
                if (i2 != 2) {
                    return;
                }
                if (y0.f.J == 0) {
                    b0(1);
                    return;
                } else {
                    b0(0);
                    return;
                }
            }
        }
        if (i3 == 1) {
            if (i2 == 0) {
                a0(0);
                return;
            }
            if (i2 == 1) {
                a0(1);
            } else {
                if (i2 != 2) {
                    return;
                }
                if (y0.f.J == 0) {
                    b0(1);
                } else {
                    b0(0);
                }
            }
        }
    }

    public static void c0(int i2) {
        int iA = o0.a(i2, 0, y0.f.P);
        if (y0.f.O != iA) {
            y0.f.O = iA;
            s0(16, iA);
            M();
            m1.c.g(134, iA);
        }
    }

    public static void d0(int i2) {
        int iA = o0.a(i2, 0, y0.f.M);
        if (y0.f.L != iA) {
            y0.f.L = iA;
            s0(15, iA);
            y0.g.f18092b.c();
            M();
            m1.c.g(135, iA);
            f.c cVar = f.b.f1841d.f1844c;
            if (cVar != null) {
                if (cVar.h()) {
                    Configure.Property.SYSTEM_VOLUME_DUCK.g("-1");
                    a.f.f().setParameters("lsecVol=-1");
                    return;
                }
                int i3 = y0.f.J != 0 ? (int) ((iA / 20.0f) * 100.0f) : 0;
                Configure.Property.SYSTEM_VOLUME_DUCK.g(ProxyProperties.LOCAL_EXCL_LIST + i3);
                a.f.f().setParameters("lsecVol=" + i3);
            }
        }
    }

    public static /* synthetic */ int e() {
        int i2 = f18126m + 1;
        f18126m = i2;
        return i2;
    }

    public static void e0() {
        if (a.f.v() != null) {
            a.f.v().c();
        }
    }

    public static String f0(int i2) {
        switch (i2) {
            case 0:
                return "radio";
            case 1:
                return "dvd";
            case 2:
                return "btphone";
            case 3:
                return "btav";
            case 4:
                return "ipod";
            case 5:
                return "aux";
            case 6:
                return "player";
            case 7:
                return "navi";
            case 8:
                return "tv";
            case 9:
                return "car.btphone";
            case 10:
                return "car.usb";
            case 11:
                return "car.radio";
            default:
                return "null";
        }
    }

    public static /* synthetic */ int g() {
        int i2 = f18127n + 1;
        f18127n = i2;
        return i2;
    }

    public static void g0(int i2, int i3) {
        if (i2 < 0 || i2 >= 48) {
            return;
        }
        int iA = o0.a(i3, 0, 20);
        int[] iArr = y0.f.f18084w0;
        if (iArr[i2] != iA) {
            iArr[i2] = iA;
            s0(12, i2, iA);
            if (i2 < 48) {
                m1.c.g(i2 + 82, iA);
            }
        }
        y0.f.f18034b.m(i2, iA);
        M();
    }

    public static void h(Runnable runnable) {
        j0.f16912g.c(runnable);
    }

    public static void h0(String str) {
        f18123j = str;
        m.a().post(f18124k);
    }

    public static void i(Runnable runnable) {
        j0.f16915j.c(runnable);
    }

    public static void i0() {
        if (a.f.v() != null) {
            a.f.v().show();
        }
    }

    public static void j(int i2) {
        if (y0.f.H != i2) {
            y0.f.H = i2;
            y0.g.f18100j.c();
            s0(13, i2);
            if (y0.f.f18054h1 == 1) {
                m1.c.g(167, i2);
            }
        }
    }

    public static void j0(int[] iArr) {
        s0(0, iArr);
        if (f18120g.c(y0.f.f18067o)) {
            f18121h = true;
        }
        if (u0.b.k2 && f18121h) {
            int[] iArr2 = new int[10];
            iArr2[0] = 119;
            System.arraycopy(iArr, 0, iArr2, 1, 9);
            z.k.s(iArr2);
            f18121h = false;
        }
    }

    public static void k(int i2) {
        if (i2 == 0) {
            z.k.s(1, 0, 86);
        } else if (i2 == 1) {
            z.k.s(1, 0, 87);
        } else if (i2 == 2) {
            if (y0.f.H == 0) {
                k(1);
            } else {
                k(0);
            }
        }
        if (y0.f.f18054h1 == 1) {
            int i3 = y0.f.H;
            if (i2 == 2) {
                i2 = i3 == 1 ? 0 : 1;
            }
            if (i2 != i3) {
                j(i2);
            }
        }
    }

    public static void k0(int i2) {
        if (y0.f.U != i2) {
            y0.f.U = i2;
            s0(24, i2);
            m1.c.g(153, i2);
        }
    }

    public static void l(int i2) {
        if (y0.f.f18085x != i2) {
            y0.f.f18085x = i2;
            s0(7, i2);
            if (y0.f.f18042d1 == 1) {
                m1.c.g(161, i2);
            }
            M();
            y0.g.f18096f.c();
        }
    }

    public static void l0(int i2) {
        if (y0.f.f18070p0 != i2) {
            y0.f.f18070p0 = i2;
            L();
        }
    }

    public static void m(int i2) {
        int i3 = y0.f.f18042d1;
        if (i3 != 0) {
            if (i3 == 1) {
                if (i2 == 0) {
                    l(0);
                    return;
                } else if (i2 == 1) {
                    l(1);
                    return;
                } else {
                    if (i2 != 2) {
                        return;
                    }
                    m(y0.f.f18085x == 0 ? 1 : 0);
                    return;
                }
            }
            return;
        }
        if (i2 == 0) {
            z.k.s(1, 0, 147);
            return;
        }
        if (i2 == 1) {
            z.k.s(1, 0, 146);
        } else {
            if (i2 != 2) {
                return;
            }
            if (y0.f.f18085x == 0) {
                m(1);
            } else {
                m(0);
            }
        }
    }

    public static void m0() {
        if (y0.f.f18070p0 == 0) {
            return;
        }
        for (int i2 = 0; i2 < 36; i2++) {
            int[] iArr = y0.f.f18074r0;
            int i3 = iArr[i2];
            int[] iArr2 = y0.f.f18072q0;
            if (i3 != iArr2[i2]) {
                iArr[i2] = iArr2[i2];
                if (i2 < 36) {
                    m1.c.g(i2 + 266, iArr[i2]);
                }
            }
            int[] iArr3 = y0.f.f18080u0;
            int i4 = iArr3[i2];
            int[] iArr4 = y0.f.f18078t0;
            if (i4 != iArr4[i2]) {
                iArr3[i2] = iArr4[i2];
                if (i2 < 36) {
                    m1.c.g(i2 + 302, iArr3[i2]);
                }
            }
        }
    }

    public static void n(int i2) {
        int iA = o0.a(i2, 0, y0.f.S);
        if (y0.f.R != iA) {
            y0.f.R = iA;
            s0(23, iA);
            M();
            m1.c.g(146, iA);
            y0.g.f18097g.c();
        }
    }

    public static void n0(int i2) {
        y0.e eVar;
        int iA = o0.a(i2, 0, 10);
        if (y0.f.V0 != iA) {
            y0.f.V0 = iA;
            s0(26, iA);
            m1.c.g(170, iA);
            y0.e eVar2 = y0.f.f18034b;
            if (eVar2 != null && (eVar2 instanceof AudioDevice)) {
                eVar2.o(iA);
            } else {
                if (!y0.f.Y0 || (eVar = y0.f.f18034b) == null) {
                    return;
                }
                eVar.o(iA);
            }
        }
    }

    public static void o(int i2, int i3) {
        int iA = o0.a(i2, 0, y0.f.f18059k);
        int iA2 = o0.a(i3, 0, y0.f.f18063m);
        int[] iArr = new int[3];
        if (y0.f.f18057j != iA) {
            y0.f.f18057j = iA;
            int i4 = iArr[0] + 1;
            iArr[0] = i4;
            iArr[i4] = 0;
        }
        if (y0.f.f18061l != iA2) {
            y0.f.f18061l = iA2;
            int i5 = iArr[0] + 1;
            iArr[0] = i5;
            iArr[i5] = 1;
        }
        if (iArr[0] > 0) {
            Log.e("c32107", " =====>>   bal : " + iA + " fade : " + iA2 + "   DataSound.sBalDst: " + y0.f.L0 + "  DataSound.sFadeDst : " + y0.f.M0);
            s0(8, iA, iA2);
            u(iArr);
        }
    }

    public static void o0(int i2) {
        y0.f.Y0 = i2 != 0;
        y0.e eVar = y0.f.f18034b;
        if (eVar == null || !(eVar instanceof AudioDevice)) {
            return;
        }
        ((AudioDevice) eVar).f1(y0.f.Y0);
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
    public static void p(int i2, int i3) {
        z.k.s(232, i2, i3, 1);
        z zVar = y0.g.f18107q;
        if (zVar.b() > 0) {
            zVar.c(new int[]{i2, i3});
        }
        y0.e eVar = y0.f.f18034b;
        if (eVar == null || !(eVar instanceof AudioDevice)) {
            return;
        }
        o(i2, i3);
    }

    public static void p0(int i2) {
        if (y0.f.R0 != i2) {
            y0.f.R0 = i2;
            M();
        }
    }

    public static void q(int i2) {
        Log.e("Beep", "=================>>MCU to value :" + i2);
        if (y0.f.f18073r != i2) {
            y0.f.f18073r = i2;
            s0(4, i2);
            if (y0.f.f18048f1 == 1) {
                m1.c.g(165, i2);
            }
        }
    }

    public static void q0(int i2) {
        if (i2 != 0) {
            h0(App.c().getString(R.string.loud_on));
        } else {
            h0(App.c().getString(R.string.loud_off));
        }
    }

    public static void r(int i2) {
        if (i2 == 0) {
            Log.e("Beep", "=================>>53 to MCU value :" + i2);
            z.k.s(1, 0, 83);
            return;
        }
        if (i2 == 1) {
            Log.e("Beep", "=================>>54 to MCU value :" + i2);
            z.k.s(1, 0, 84);
            return;
        }
        if (i2 != 2) {
            return;
        }
        if (y0.f.f18073r == 0) {
            r(1);
        } else {
            r(0);
        }
    }

    public static final synchronized void r0(int i2) {
        int i3 = y0.f.K0;
        boolean z2 = true;
        boolean z3 = (i3 & 65535) != 0;
        int i4 = (~i2) & 65535 & i3;
        y0.f.K0 = i4;
        if ((i4 & 65535) == 0) {
            z2 = false;
        }
        if (z3 != z2) {
            K();
        }
    }

    public static void s() {
        J();
        L();
        u(new int[]{2, 0, 1});
        v();
    }

    public static void s0(int i2, int... iArr) {
        x xVarL2 = j.a3().L2();
        if (xVarL2 != null) {
            xVarL2.s(i2, iArr, null, null);
        }
    }

    public static void t(int[] iArr) {
        int i2 = y0.f.Z;
        if (i2 == 0) {
            if (nt.f8654o == 0) {
                y0.f.f18034b.b(iArr);
                y0.f.f18034b.g(iArr);
                return;
            }
            o oVar = nt.f8665z;
            if (oVar == null || !oVar.a(nt.f8633a, iArr, null, null, null)) {
                nt.f8639d.L2(iArr);
            }
            nt.f8639d.P2(iArr);
            return;
        }
        if (i2 == 1) {
            if (nt.f8654o == 0) {
                y0.f.f18034b.b(iArr);
                y0.f.f18034b.g(iArr);
                return;
            }
            o oVar2 = nt.f8665z;
            if (oVar2 == null || !oVar2.a(nt.f8633a, iArr, null, null, null)) {
                nt.f8639d.L2(iArr);
            }
            nt.f8639d.P2(iArr);
        }
    }

    public static void t0(int i2) {
        int iV0 = v0(i2);
        if (m1.a.f13516e) {
            int i3 = u0.b.D;
            boolean z2 = i3 == 15;
            boolean z3 = i3 != 2;
            if (z2) {
                j.a3().k3(iV0);
            } else if (z3) {
                j.a3().m3(iV0);
            } else {
                if (z3) {
                    return;
                }
                j.a3().j3(iV0);
            }
        }
    }

    public static void u(int[] iArr) {
        int i2 = y0.f.Z;
        if (i2 == 0) {
            if (nt.f8653n == 0) {
                y0.f.f18034b.c(iArr);
                y0.f.f18034b.j(iArr);
                return;
            }
            o oVar = nt.f8664y;
            if (oVar == null || !oVar.a(nt.f8633a, iArr, null, null, null)) {
                nt.f8639d.M2(iArr);
            }
            nt.f8639d.R2(iArr);
            y0.f.f18034b.j(null);
            return;
        }
        if (i2 == 1) {
            if (nt.f8653n == 0) {
                y0.f.f18034b.c(iArr);
                y0.f.f18034b.j(iArr);
                return;
            }
            o oVar2 = nt.f8664y;
            if (oVar2 == null || !oVar2.a(nt.f8633a, iArr, null, null, null)) {
                nt.f8639d.M2(iArr);
            }
            nt.f8639d.R2(iArr);
            y0.f.f18034b.j(null);
        }
    }

    public static void u0(int i2) {
        if (!u0.b.W3 || (u0.b.f17320f == 1 && u0.b.f17326h != 1)) {
            switch (i2) {
                case -7:
                    O();
                    break;
                case -6:
                    i0();
                    break;
                case -5:
                    boolean zR3 = u0.i.l3().r3();
                    if (y0.f.f18055i == 0 && h0.c.G == 0 && !zR3) {
                        Z(1);
                        y0.f.A0.b();
                        z.k.s(1, 0, 161);
                    } else {
                        Z(0);
                        y0.f.A0.b();
                        z.k.s(1, 0, 160);
                    }
                    break;
                case -4:
                    if (y0.f.f18055i != 0) {
                        u0(-5);
                    }
                    break;
                case -3:
                    if (y0.f.f18055i == 0) {
                        u0(-5);
                    }
                    break;
                case -2:
                    int i3 = y0.f.f18037c;
                    if (i3 > 0) {
                        u0(Math.max(i3 - y0.f.f18052h, 0));
                    }
                    break;
                case -1:
                    if (y0.f.f18037c < y0.f.f18049g) {
                        u0(Math.min(y0.f.f18037c + y0.f.f18052h, y0.f.f18049g));
                    }
                    break;
                default:
                    t0(i2);
                    z.k.s(231, y0.f.f18037c, 0);
                    u0(-4);
                    break;
            }
        }
    }

    public static void v() {
        int i2 = y0.f.Z;
        if (i2 == 0) {
            if (nt.f8652m != 0) {
                o oVar = nt.f8663x;
                if (oVar == null || !oVar.a(nt.f8633a, null, null, null, null)) {
                    nt.f8639d.N2();
                }
                qt.g0();
            } else {
                y0.f.f18034b.d();
            }
            M();
            return;
        }
        if (i2 == 1) {
            if (nt.f8652m != 0) {
                o oVar2 = nt.f8663x;
                if (oVar2 == null || !oVar2.a(nt.f8633a, null, null, null, null)) {
                    nt.f8639d.N2();
                }
                qt.g0();
            } else {
                y0.f.f18034b.d();
            }
            M();
        }
    }

    public static int v0(int i2) {
        int iA = o0.a(i2, 0, y0.f.f18049g);
        Log.e("soundMute", "================>>> volume value : " + iA);
        if (y0.f.f18037c != iA) {
            y0.f.f18037c = iA;
            s0(2, iA);
            v();
            e0();
            y0.g.f18094d.c();
        }
        return iA;
    }

    public static void w() {
        int i2;
        Log.e("Qin", "checkMainVolume --- DataStore.sCustomerCfgOk : " + m1.a.f13514c + " DataStore.localStore : " + m1.a.f13516e + " DataSound.mSysVol: " + y0.f.f18046f + " DataMain.sAppId : " + u0.b.D);
        if (m1.a.f13514c && m1.a.f13516e && (i2 = u0.b.D) >= 0) {
            boolean z2 = i2 == 15;
            boolean z3 = i2 != 2;
            int i3 = y0.f.f18046f;
            if (z2) {
                i3 = y0.f.f18043e;
            } else if (!z3) {
                i3 = y0.f.f18040d;
            }
            t0(i3);
        }
    }

    public static boolean x(int i2) {
        return (i2 & y0.f.K0) != 0;
    }

    public static void y() {
        y0.f.P0 = 0;
        y0.f.Q0 = 0;
        y0.f.R0 = 0;
        M();
    }

    public static void z() {
        int[] iArr = y0.f.f18090z0;
        iArr[0] = 6;
        iArr[1] = 0;
        iArr[2] = 2;
        iArr[3] = 3;
        iArr[4] = 1;
        iArr[5] = 5;
        iArr[6] = 8;
        iArr[7] = 6;
        iArr[8] = 6;
        iArr[9] = 6;
        iArr[10] = 6;
        iArr[11] = 5;
        iArr[12] = 5;
        iArr[13] = 5;
        iArr[14] = 5;
        iArr[15] = 6;
        iArr[16] = 6;
    }
}
