package y0;

import android.net.ProxyProperties;
import android.util.Log;
import app.App;
import base.Configure;
import com.syu.jni.ToolsJni;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.List;
import java.util.Objects;
import java.util.regex.Pattern;
import k0.nt;
import module.sound.AudioDevice;
import o1.h0;
import o1.s0;
import o1.x;

/* JADX INFO: loaded from: classes2.dex */
public class j extends base.b {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static j f18140l;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public List<String> f18141g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Pattern f18142h = null;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f18143i = -1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public BitSet f18144j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public BitSet f18145k;

    public class a extends Thread {
        public a() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            if (j.this.f18142h == null) {
                try {
                    String strC = q1.a.c(App.c().getAssets().open("app_category/ignore_audio_app.txt"));
                    if (strC == null || strC.isEmpty()) {
                        return;
                    }
                    j.this.f18142h = Pattern.compile(strC);
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        }
    }

    public class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ int[] f18147a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ int f18148b;

        public b(int[] iArr, int i2) {
            this.f18147a = iArr;
            this.f18148b = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            int[] iArr = this.f18147a;
            int i2 = iArr[0];
            if (i2 == 0) {
                a.c.f40b.g(iArr[1]);
                h.s0(this.f18148b, this.f18147a[0], a.c.q());
                return;
            }
            if (i2 == 1) {
                a.c.f43e.g(iArr[1]);
                h.s0(this.f18148b, this.f18147a[0], a.c.w());
                return;
            }
            if (i2 == 2) {
                a.c.f41c.g(iArr[1]);
                h.s0(this.f18148b, this.f18147a[0], a.c.m());
            } else if (i2 == 3) {
                a.c.f44f.g(iArr[1]);
                h.s0(this.f18148b, this.f18147a[0], a.c.t());
            } else {
                if (i2 != 4) {
                    return;
                }
                a.c.f42d.g(iArr[1]);
                h.s0(this.f18148b, this.f18147a[0], a.c.g());
            }
        }
    }

    public j() {
        this.f18141g = new ArrayList();
        P2("sound");
        this.f18144j = new BitSet(128);
        this.f18145k = new BitSet(128);
        this.f331f.n("Sound-TRAN");
        this.f331f.f17001d = Configure.Property.MODULE_DEBUG_PREFIX.c("sound", false);
        this.f18141g = s0.u(Configure.Property.APPID_IGNORE.h(ProxyProperties.LOCAL_EXCL_LIST));
        new a().start();
        Log.e("Qin", "ignore apps: " + Arrays.toString(this.f18141g.toArray()));
    }

    public static synchronized j a3() {
        if (f18140l == null) {
            f18140l = new j();
        }
        return f18140l;
    }

    @Override // y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 != 89 || !(f.f18034b instanceof AudioDevice) || !s0.h(iArr, 1)) {
            return null;
        }
        y.f fVar = new y.f();
        fVar.f17946a = ((AudioDevice) f.f18034b).b0(iArr[0], Arrays.copyOfRange(iArr, 1, iArr.length - 1));
        return fVar;
    }

    @Override // base.b
    public void N2(int i2, int[] iArr, float[] fArr, String[] strArr) {
        int i3;
        Log.e("sound", "00 >>>>>>>>>>>>>>    cmd :  " + i2 + "  " + Arrays.toString(iArr));
        if (i2 != 35 && i2 != 36 && i2 != 57) {
            if (i2 == 60) {
                if (s0.h(iArr, 0)) {
                    Z2(iArr[0] == 1);
                    return;
                }
                return;
            }
            if (i2 != 67 && i2 != 73) {
                if (i2 == 86) {
                    if (s0.h(iArr, 1)) {
                        o1.j.c(new b(iArr, i2), 0L);
                        return;
                    }
                    return;
                }
                if (i2 == 89) {
                    if (s0.h(iArr, 3)) {
                        boolean z2 = iArr[0] == 1;
                        int i4 = iArr[1];
                        int i5 = iArr[2];
                        e eVar = f.f18034b;
                        AudioDevice audioDevice = eVar instanceof AudioDevice ? (AudioDevice) eVar : null;
                        if (audioDevice == null) {
                            return;
                        }
                        if (!z2 || iArr.length != i4 + 3) {
                            if (!z2 || iArr.length <= (i3 = i4 + 3)) {
                                return;
                            }
                            audioDevice.p1(iArr[0], Arrays.copyOfRange(iArr, 31, iArr.length - 3), Arrays.copyOfRange(iArr, i3, iArr.length - i3));
                            return;
                        }
                        int[] iArrCopyOfRange = Arrays.copyOfRange(iArr, 31, iArr.length - 3);
                        int[] iArrB0 = audioDevice.b0(i5, iArrCopyOfRange);
                        if (iArrB0 != null) {
                            int[] iArr2 = new int[iArrB0.length + i4 + 1];
                            iArr2[0] = i4;
                            System.arraycopy(iArrCopyOfRange, 0, iArr2, 1, i4);
                            System.arraycopy(iArrB0, 0, iArr2, i4 + 1, iArrB0.length);
                            h.s0(i2, iArr2);
                            return;
                        }
                        return;
                    }
                    return;
                }
                if (i2 != 95) {
                    if (i2 == 91) {
                        if (!s0.h(iArr, 1) || iArr[1] < 0 || iArr[1] >= 128) {
                            return;
                        }
                        boolean zD3 = d3();
                        if (iArr[0] == 1) {
                            this.f18144j.set(iArr[1]);
                        } else {
                            this.f18144j.clear(iArr[1]);
                        }
                        boolean zD4 = d3();
                        if (zD3 != zD4) {
                            h.Y(16384, zD4);
                            return;
                        }
                        return;
                    }
                    if (i2 != 92) {
                        switch (i2) {
                            case 0:
                                if (c3(iArr, 1)) {
                                    int i6 = iArr[0];
                                    if (iArr[0] != -6 || n1.a.f16644a.c(200)) {
                                        h.u0(iArr[0]);
                                        return;
                                    }
                                    return;
                                }
                                return;
                            case 1:
                                if (c3(iArr, 2)) {
                                    i.h(iArr[0], iArr[1]);
                                    return;
                                }
                                return;
                            case 2:
                                if (c3(iArr, 1)) {
                                    Log.e("c32107", "    notify   111  >>>>>>>>>>>>>>>>>>>>>>>>>>>MODE ints[0]  : " + iArr[0]);
                                    i.j(iArr[0]);
                                    return;
                                }
                                return;
                            case 3:
                                if (c3(iArr, 2)) {
                                    h.p(iArr[0], iArr[1]);
                                    return;
                                }
                                return;
                            case 4:
                                if (c3(iArr, 1)) {
                                    h.I(iArr[0]);
                                    return;
                                }
                                return;
                            case 5:
                                if (c3(iArr, 1)) {
                                    h.T(iArr[0]);
                                    return;
                                }
                                return;
                            case 6:
                                if (c3(iArr, 2)) {
                                    a.f.p().s("index = " + iArr[0] + " value = " + iArr[1]);
                                    h.g0(iArr[0], iArr[1]);
                                    return;
                                }
                                return;
                            case 7:
                                if (c3(iArr, 1)) {
                                    h.k(iArr[0]);
                                    return;
                                }
                                return;
                            case 8:
                                if (c3(iArr, 1)) {
                                    h.r(iArr[0]);
                                    return;
                                }
                                return;
                            case 9:
                                if (c3(iArr, 1)) {
                                    h.b0(iArr[0]);
                                    return;
                                }
                                return;
                            case 10:
                                if (c3(iArr, 1)) {
                                    h.d0(iArr[0]);
                                    return;
                                }
                                return;
                            case 11:
                                if (c3(iArr, 1)) {
                                    h.c0(iArr[0]);
                                    return;
                                }
                                return;
                            case 12:
                                if (c3(iArr, 1)) {
                                    h.D(iArr[0]);
                                    return;
                                }
                                return;
                            case 13:
                                if (c3(iArr, 1)) {
                                    h.m(iArr[0]);
                                    return;
                                }
                                return;
                            case 14:
                                if (c3(iArr, 1)) {
                                    h.B(iArr[0]);
                                    return;
                                }
                                return;
                            case 15:
                                if (c3(iArr, 2)) {
                                    e eVar2 = f.f18034b;
                                    if (eVar2 != null || (eVar2 instanceof AudioDevice)) {
                                        ((AudioDevice) eVar2).L(iArr[0], iArr[1]);
                                        return;
                                    } else {
                                        i.f(iArr[0], iArr[1]);
                                        return;
                                    }
                                }
                                return;
                            case 16:
                                if (c3(iArr, 1)) {
                                    i.l(iArr[0], iArr[1]);
                                    return;
                                }
                                return;
                            case 17:
                                if (c3(iArr, 2)) {
                                    i.n(iArr[0], iArr[1]);
                                    return;
                                }
                                return;
                            case 18:
                                if (c3(iArr, 2)) {
                                    i.p(iArr[0], iArr[1]);
                                    return;
                                }
                                return;
                            case 19:
                                if (g.e.e() != 9 && c3(iArr, 1)) {
                                    synchronized (h.f18128o) {
                                        if (iArr[0] == 0) {
                                            f.f18069p = 0;
                                            h.M();
                                        } else {
                                            f.f18069p = 2;
                                            f.f18071q = 0;
                                            a.c.p(0);
                                        }
                                        break;
                                    }
                                    return;
                                }
                                return;
                            case 20:
                                if (c3(iArr, 1)) {
                                    h.n(iArr[0]);
                                    return;
                                }
                                return;
                            case 21:
                                if (c3(iArr, 1)) {
                                    h.k0(iArr[0]);
                                    return;
                                }
                                return;
                            case 22:
                                if (c3(iArr, 1)) {
                                    synchronized (h.f18129p) {
                                        if (iArr[0] == 0) {
                                            f.U0 = 0;
                                            h.p0(0);
                                        } else {
                                            f.U0 = 3;
                                            h.p0(1);
                                        }
                                        break;
                                    }
                                    return;
                                }
                                return;
                            case 23:
                                if (c3(iArr, 1)) {
                                    h.n0(iArr[0]);
                                    return;
                                }
                                return;
                            case 24:
                            case 25:
                            case 26:
                            case 27:
                            case 28:
                            case 29:
                            case 30:
                            case 31:
                            case 32:
                            case 33:
                                break;
                            default:
                                switch (i2) {
                                    case 52:
                                    case 53:
                                    case 54:
                                    case 55:
                                        break;
                                    default:
                                        switch (i2) {
                                            case 79:
                                                if (s0.h(iArr, 0)) {
                                                    if (iArr[0] == 1) {
                                                        z.k.s(1, 0, 216);
                                                        return;
                                                    } else {
                                                        z.k.s(1, 0, 215);
                                                        return;
                                                    }
                                                }
                                                return;
                                            case 80:
                                                if (s0.h(iArr, 0)) {
                                                    if (iArr[0] == 1) {
                                                        z.k.s(1, 0, 217);
                                                        return;
                                                    } else {
                                                        z.k.s(1, 0, 218);
                                                        return;
                                                    }
                                                }
                                                return;
                                            case 81:
                                                break;
                                            case 82:
                                                if (s0.h(iArr, 0)) {
                                                    i3(iArr[0]);
                                                    return;
                                                }
                                                return;
                                            default:
                                                e eVar3 = f.f18034b;
                                                if (eVar3 != null || (eVar3 instanceof AudioDevice)) {
                                                    ((AudioDevice) eVar3).D(i2, iArr, fArr, strArr);
                                                    return;
                                                }
                                                return;
                                        }
                                        break;
                                }
                                break;
                        }
                    }
                }
            }
        }
        b3(i2, iArr);
    }

    @Override // base.b
    public void O2(int i2, int[] iArr, float[] fArr, String[] strArr) {
    }

    @Override // y.c
    public void P0(y.b bVar, int i2) {
        if (bVar == null) {
            return;
        }
        this.f331f.p(bVar, i2);
    }

    @Override // base.b
    public void Q2(h0 h0Var) {
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
        if (bVar == null) {
        }
        super.Y1(bVar, i2, i3);
        this.f331f.m(bVar, i2);
        if (i3 == 0) {
            return;
        }
        e eVar = f.f18034b;
        boolean z2 = eVar instanceof AudioDevice;
        if (z2 && ((AudioDevice) eVar).U(i2, bVar)) {
            return;
        }
        if (i2 == 60) {
            this.f331f.G(bVar, i2, h0.e.w(2) ? 1 : 0);
            return;
        }
        if (i2 == 67) {
            this.f331f.G(bVar, i2, 0, f.f18046f);
            this.f331f.G(bVar, i2, 1, f.f18040d);
            this.f331f.G(bVar, i2, 2, f.f18043e);
            return;
        }
        if (i2 == 82) {
            this.f331f.G(bVar, i2, this.f18143i);
            return;
        }
        if (i2 == 86) {
            this.f331f.G(bVar, i2, 0, a.c.q());
            this.f331f.G(bVar, i2, 2, a.c.m());
            this.f331f.G(bVar, i2, 1, a.c.w());
            this.f331f.G(bVar, i2, 3, a.c.t());
            this.f331f.G(bVar, i2, 4, a.c.g());
            return;
        }
        if (i2 == 111) {
            int[] iArr = new int[1];
            f.b bVar2 = f.b.f1841d;
            boolean z3 = bVar2.f1844c instanceof f.a;
            Objects.requireNonNull(bVar2);
            iArr[0] = z3 ? 1 : 0;
            x.v(bVar, i2, iArr);
            return;
        }
        if (i2 == 91) {
            this.f331f.G(bVar, i2, d3() ? 1 : 0);
            return;
        }
        if (i2 == 92) {
            this.f331f.G(bVar, i2, e3() ? 1 : 0);
            return;
        }
        switch (i2) {
            case 1:
                this.f331f.G(bVar, i2, f.f18031a);
                break;
            case 2:
                this.f331f.G(bVar, i2, f.f18037c);
                break;
            case 3:
                this.f331f.G(bVar, i2, f.f18055i);
                break;
            case 4:
                this.f331f.G(bVar, i2, f.f18073r);
                break;
            case 5:
                this.f331f.G(bVar, i2, f.f18089z);
                break;
            case 6:
                this.f331f.G(bVar, i2, f.B);
                break;
            case 7:
                this.f331f.G(bVar, i2, f.f18085x);
                break;
            case 8:
                this.f331f.G(bVar, i2, f.f18057j, f.f18061l);
                break;
            case 9:
                if (!z2) {
                    if (nt.f8661v != 0 && f.Z == 0) {
                        for (int i4 = 0; i4 < 48; i4++) {
                            this.f331f.G(bVar, i2, i4, f.f18035b0[i4]);
                        }
                    } else if (f.f18032a0 == 0) {
                        for (int i5 = 0; i5 < 48; i5++) {
                            this.f331f.G(bVar, i2, i5, f.f18041d0[i5]);
                        }
                    } else {
                        for (int i6 = 0; i6 < 48; i6++) {
                            this.f331f.G(bVar, i2, i6, f.f18038c0[i6]);
                        }
                    }
                    break;
                }
                break;
            case 10:
                if (!z2) {
                    this.f331f.G(bVar, i2, f.f18032a0);
                    break;
                }
                break;
            case 11:
                this.f331f.G(bVar, i2, f.E);
                break;
            case 12:
                for (int i7 = 0; i7 < 48; i7++) {
                    this.f331f.G(bVar, i2, i7, f.f18084w0[i7]);
                }
                break;
            case 13:
                this.f331f.G(bVar, i2, f.H);
                break;
            case 14:
                this.f331f.G(bVar, i2, f.J);
                break;
            case 15:
                this.f331f.G(bVar, i2, f.L);
                break;
            case 16:
                this.f331f.G(bVar, i2, f.O);
                break;
            case 17:
                this.f331f.G(bVar, i2, nt.f8661v);
                break;
            case 18:
                if (!z2) {
                    for (int i8 = 0; i8 < 48; i8++) {
                        this.f331f.G(bVar, i2, i8, f.f18050g0[i8]);
                    }
                    break;
                }
                break;
            default:
                switch (i2) {
                    case 20:
                        if (!z2) {
                            for (int i9 = 0; i9 < 48; i9++) {
                                this.f331f.G(bVar, i2, i9, f.f18058j0[i9]);
                            }
                            break;
                        }
                        break;
                    case 21:
                        for (int i10 = 0; i10 < 36; i10++) {
                            this.f331f.G(bVar, i2, i10, f.f18078t0[i10]);
                        }
                        break;
                    case 22:
                        for (int i11 = 0; i11 < 36; i11++) {
                            this.f331f.G(bVar, i2, i11, f.f18072q0[i11]);
                        }
                        break;
                    case 23:
                        this.f331f.G(bVar, i2, f.R);
                        break;
                    case 24:
                        this.f331f.G(bVar, i2, f.U);
                        break;
                    case 25:
                        this.f331f.G(bVar, i2, f.f18065n);
                        break;
                    case 26:
                        this.f331f.G(bVar, i2, f.V0);
                        break;
                }
                break;
        }
    }

    public void Z2(boolean z2) {
        if (h0.e.w(2) != z2) {
            h0.e.J(2, z2);
            h.s0(60, h0.e.w(2) ? 1 : 0);
        }
    }

    public void b3(int i2, int... iArr) {
        e eVar;
        if (iArr == null || iArr.length == 0 || (eVar = f.f18034b) == null || !(eVar instanceof AudioDevice)) {
            return;
        }
        AudioDevice audioDevice = (AudioDevice) eVar;
        if (i2 == 35) {
            if (c3(iArr, 1)) {
                audioDevice.T0(iArr[0]);
            }
            return;
        }
        if (i2 == 36) {
            if (c3(iArr, 1)) {
                audioDevice.f1(iArr[0] == 1);
                return;
            }
            return;
        }
        if (i2 == 44) {
            if (c3(iArr, 1)) {
                audioDevice.f0(iArr[0] == 1);
                return;
            }
            return;
        }
        if (i2 == 57) {
            if (c3(iArr, 1)) {
                audioDevice.K(iArr[0]);
                return;
            }
            return;
        }
        if (i2 == 67) {
            if (c3(iArr, 2)) {
                n3(iArr[0], iArr[1]);
                return;
            }
            return;
        }
        if (i2 == 73) {
            if (c3(iArr, 1)) {
                audioDevice.K0(iArr[0]);
                return;
            }
            return;
        }
        if (i2 == 81) {
            if (c3(iArr, 1)) {
                audioDevice.R0(iArr[0] == 1);
                return;
            }
            return;
        }
        if (i2 == 92) {
            if (s0.h(iArr, 1)) {
                h3(iArr[0], iArr[1]);
                return;
            }
            return;
        }
        if (i2 == 95) {
            if (s0.h(iArr, 0)) {
                audioDevice.A(iArr[0]);
                return;
            }
            return;
        }
        switch (i2) {
            case 24:
                if (c3(iArr, 1)) {
                    audioDevice.J0(iArr[0]);
                }
                break;
            case 25:
                if (c3(iArr, 2)) {
                    audioDevice.e1(iArr[0], iArr[1]);
                }
                break;
            case 26:
                if (c3(iArr, 1)) {
                    audioDevice.E0(iArr[0] == 1);
                }
                break;
            case 27:
                if (c3(iArr, 2)) {
                    audioDevice.D0(iArr[0], iArr[1]);
                }
                break;
            case 28:
                if (c3(iArr, 2)) {
                    audioDevice.C0(iArr[0], iArr[1]);
                }
                break;
            case 29:
                if (c3(iArr, 2)) {
                    audioDevice.g0(iArr[0], iArr[1]);
                }
                break;
            case 30:
                if (c3(iArr, 1)) {
                    audioDevice.l1(iArr[0] == 1);
                }
                break;
            case 31:
                if (c3(iArr, 1)) {
                    audioDevice.k1(iArr[0]);
                }
                break;
            case 32:
                if (c3(iArr, 2)) {
                    audioDevice.j1(iArr[0], iArr[1]);
                }
                break;
            case 33:
                if (c3(iArr, 2)) {
                    audioDevice.i1(iArr[0], iArr[1]);
                }
                break;
            default:
                switch (i2) {
                    case 52:
                        if (c3(iArr, 1)) {
                            audioDevice.U0(iArr[0]);
                        }
                        break;
                    case 53:
                        if (c3(iArr, 2)) {
                            audioDevice.a1(iArr[0], iArr[1]);
                        }
                        break;
                    case 54:
                        if (c3(iArr, 2)) {
                            audioDevice.h1(iArr[0], iArr[1]);
                        }
                        break;
                    case 55:
                        if (c3(iArr, 1)) {
                            audioDevice.b1(iArr[0] != 1);
                        }
                        break;
                }
                break;
        }
    }

    public final boolean c3(int[] iArr, int i2) {
        return iArr != null && iArr.length >= i2;
    }

    public boolean d3() {
        return !this.f18144j.isEmpty();
    }

    public boolean e3() {
        return !this.f18145k.isEmpty();
    }

    public boolean f3(String str) {
        boolean z2;
        Pattern pattern;
        synchronized (this.f18141g) {
            z2 = this.f18141g.contains(str) || ((pattern = this.f18142h) != null && pattern.matcher(str).find());
        }
        return z2;
    }

    public boolean g3(int i2) {
        return this.f18145k.get(i2);
    }

    public void h3(int i2, int i3) {
        if (i3 < 0 || i3 >= 128) {
            return;
        }
        boolean zE3 = e3();
        if (i2 == 1) {
            this.f18145k.set(i3);
        } else {
            this.f18145k.clear(i3);
        }
        boolean zE4 = e3();
        if (zE3 != zE4) {
            AudioDevice audioDeviceW = AudioDevice.W();
            if (audioDeviceW != null) {
                audioDeviceW.c0(zE4);
            }
            h.Y(32768, zE4);
        }
    }

    public void i3(int i2) {
        Log.e("Qin", "setFMTransmissionVolume -------- vol: " + i2 + " mFmTransmissionVolume : " + this.f18143i);
        if (i2 > 5) {
            return;
        }
        ToolsJni.callSystemCtrl(140, "fmsendervolume", i2);
        if (i2 != this.f18143i) {
            this.f18143i = i2;
            m1.c.e(1000, i2);
            h.s0(82, i2);
        }
    }

    public void j3(int i2) {
        if (i2 < 0 || i2 > f.f18049g || f.f18040d == i2) {
            return;
        }
        f.f18040d = i2;
        if (m1.a.f13516e) {
            m1.c.e(381, i2);
        }
        h.s0(67, 1, f.f18040d);
    }

    public void k3(int i2) {
        if (i2 < 0 || i2 > f.f18049g || f.f18043e == i2) {
            return;
        }
        f.f18043e = i2;
        if (m1.a.f13516e) {
            m1.c.e(388, i2);
        }
        h.s0(67, 2, f.f18043e);
    }

    public void l3(String str) {
        synchronized (this.f18141g) {
            if (!this.f18141g.contains(str)) {
                this.f18141g.add(str);
            }
        }
    }

    public void m3(int i2) {
        if (i2 < 0 || i2 > f.f18049g || f.f18046f == i2) {
            return;
        }
        f.f18046f = i2;
        if (m1.a.f13516e) {
            m1.c.e(380, i2);
        }
        h.s0(67, 0, f.f18046f);
    }

    public void n3(int i2, int i3) {
        if (i3 < 0 || i3 > f.f18049g) {
            return;
        }
        int i4 = u0.b.D;
        boolean z2 = i4 == 15;
        boolean z3 = i4 != 2;
        if (i2 == 0) {
            m3(i3);
            if (z2 || !z3) {
                return;
            }
            h.v0(i3);
            return;
        }
        if (i2 == 1) {
            j3(i3);
            if (z2 || z3) {
                return;
            }
            h.v0(i3);
            return;
        }
        if (i2 == 2) {
            k3(i3);
            if (z2) {
                h.v0(i3);
            }
        }
    }
}
