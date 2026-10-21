package i1;

import android.os.Handler;
import android.util.Log;
import java.io.File;
import java.util.Arrays;
import k0.qt;
import o1.s0;
import o1.t0;

/* JADX INFO: loaded from: classes2.dex */
public class u extends i1.a<k> {
    public final t0.b A;
    public final Runnable B;
    public final Runnable C;
    public final Runnable D;
    public final Runnable E;
    public final Runnable F;
    public final Runnable G;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final boolean f2755k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f2756l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f2757m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f2758n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f2759o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f2760p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f2761q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f2762r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f2763s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f2764t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f2765u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f2766v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public boolean f2767w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public String f2768x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public t0 f2769y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final t0.a f2770z;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            u.this.A(130, 16);
        }
    }

    public class b implements t0.a {
        public b() {
        }

        @Override // o1.t0.a
        public int a(byte... bArr) {
            b0 b0Var = u.this.f2544h;
            if (b0Var == null) {
                return -1;
            }
            b0Var.f(s0.e(bArr));
            return 1;
        }
    }

    public class c implements t0.b {
        public c() {
        }

        @Override // o1.t0.b
        public void a(int i2, boolean z2) {
            Log.e("Device", "onProgressChanged  progress: " + i2 + " error: " + z2);
            u uVar = u.this;
            int[] iArr = new int[1];
            if (z2) {
                i2 = -2;
            }
            iArr[0] = i2;
            uVar.r(2, iArr);
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            u.this.B();
        }
    }

    public class e implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f2775a = -1;

        public class a implements Runnable {
            public a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                u.this.A(130, 16);
            }
        }

        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = u0.b.f17306a0;
            if (i2 == 1 && this.f2775a != i2) {
                u uVar = u.this;
                uVar.f2765u = true;
                Handler handler = uVar.f2545i;
                if (handler != null) {
                    handler.postDelayed(new a(), 300L);
                }
            }
            this.f2775a = u0.b.f17306a0;
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            u.this.A(133, 0, u0.b.X1);
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            u.this.x(16, 255);
            u.this.x(15, 255);
            u.this.x(17, 255);
            u.this.x(14, 255);
        }
    }

    public class h implements Runnable {
        public h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            u.this.x(19, 255);
            u.this.x(20, 255);
            u.this.x(18, 255);
            u.this.x(21, 255);
        }
    }

    public class i implements Runnable {
        public i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17306a0 == 1) {
                u.this.A(17);
            }
        }
    }

    public class j implements Runnable {
        public j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            u uVar = u.this;
            t0 t0Var = uVar.f2769y;
            if (t0Var != null) {
                t0Var.f(uVar.A);
                u uVar2 = u.this;
                uVar2.f2769y.e(uVar2.f2768x);
            }
        }
    }

    public class k extends i1.e {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int[] f2783h = {170, 161, 65};

        public k() {
        }

        @Override // i1.e
        public boolean a(int i2) {
            int iIntValue = (this.f2619d.intValue() + 5 + 396) & 255;
            for (int i3 = 0; i3 < this.f2619d.intValue(); i3++) {
                iIntValue += this.f2618c[i3] & 255;
            }
            return (iIntValue & 255) == (i2 & 255);
        }

        @Override // i1.e
        public boolean c(int i2) {
            if (this.f2619d == null) {
                this.f2619d = Integer.valueOf((i2 & 255) - 5);
            }
            return this.f2619d != null;
        }

        @Override // i1.e
        public int[] f() {
            return this.f2783h;
        }
    }

    public class l {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f2785a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f2786b;

        public l(boolean z2, int i2) {
            this.f2785a = true;
            this.f2786b = 10;
            this.f2785a = z2;
            this.f2786b = i2;
        }

        public String toString() {
            return "isFornt : " + this.f2785a + " level :" + this.f2786b;
        }
    }

    public u(int i2, int i3) {
        super(i2, i3);
        this.f2755k = true;
        this.f2756l = 0;
        this.f2757m = 0;
        this.f2758n = 0;
        this.f2759o = 0;
        this.f2760p = 0;
        this.f2761q = 0;
        this.f2762r = 20;
        this.f2763s = -1;
        this.f2764t = 0;
        this.f2765u = true;
        this.f2766v = 0;
        this.f2767w = false;
        this.f2768x = null;
        this.f2769y = null;
        this.f2770z = new b();
        this.A = new c();
        this.B = new d();
        e eVar = new e();
        this.C = eVar;
        f fVar = new f();
        this.D = fVar;
        this.E = new g();
        this.F = new h();
        this.G = new i();
        k kVar = new k();
        this.f2721a = kVar;
        kVar.h();
        v();
        Log.e("Device", "============== DataMain.sAccOn: " + u0.b.f17306a0);
        u0.c.f17386m.a(eVar, 1);
        o1.h.f16866b.a(fVar, 1);
    }

    public void A(int... iArr) {
        if (this.f2769y != null) {
            return;
        }
        int length = iArr == null ? 0 : iArr.length;
        if (length == 0) {
            return;
        }
        int i2 = length + 5;
        int[] iArr2 = new int[i2];
        iArr2[0] = 170;
        iArr2[1] = 65;
        iArr2[2] = 161;
        iArr2[3] = i2 & 255;
        int i3 = iArr2[0] + iArr2[1] + iArr2[2] + iArr2[3];
        for (int i4 = 0; i4 < length; i4++) {
            i3 += iArr[i4];
            iArr2[i4 + 4] = iArr[i4];
        }
        iArr2[length + 4] = i3 & 255;
        Log.e("Device", "==============  PluginRadarTianChang write serial:" + o1.b0.e(iArr2, 0, i2));
        b0 b0Var = this.f2544h;
        if (b0Var != null) {
            b0Var.f(iArr2);
        }
    }

    public void B() {
        int i2 = (this.f2757m & 3) | ((this.f2758n & 1) << 2) | ((this.f2759o & 1) << 3) | ((this.f2760p & 1) << 4) | ((this.f2761q & 3) << 5);
        if (i2 != this.f2766v) {
            this.f2766v = i2;
        }
        A(131, 0, this.f2766v);
    }

    @Override // i1.a, i1.b0.a
    public void a(b0 b0Var) {
        super.a(b0Var);
    }

    @Override // i1.s
    public boolean j(int i2, int[] iArr, float[] fArr, String[] strArr) {
        Log.e("Device", "==============  PluginRadarTianChang handleCmd cmdCode: " + i2 + "  ints :  " + Arrays.toString(iArr) + "  strs: " + Arrays.toString(strArr));
        if (i2 != 0) {
            if (i2 != 1) {
                if (i2 == 2 && s0.i(strArr, 0)) {
                    String str = strArr[0];
                    File file = new File(str);
                    if (file.exists() && file.isFile()) {
                        this.f2768x = str;
                        A(120, 0, 165, 90, 25, 136);
                    } else {
                        r(2, -1);
                    }
                }
            } else if (s0.h(iArr, 0) && iArr[0] == 1 && this.f2763s < 0) {
                A(130, 0);
            }
        } else if (s0.h(iArr, 1)) {
            int i3 = iArr[0];
            if (i3 == 0) {
                int i4 = (iArr[1] < 0 || iArr[1] > 2) ? 0 : iArr[1];
                if (i4 != this.f2757m) {
                    this.f2757m = i4;
                    r(0, 0, i4);
                    z();
                }
            } else if (i3 == 1) {
                int i5 = iArr[1] == 1 ? 0 : 1;
                if (i5 != this.f2758n) {
                    this.f2758n = i5;
                    r(0, 1, i5 ^ 1);
                    z();
                }
            } else if (i3 == 2) {
                int i6 = iArr[1] == 1 ? 0 : 1;
                if (i6 != this.f2759o) {
                    this.f2759o = i6;
                    r(0, 2, i6 ^ 1);
                    z();
                }
            } else if (i3 == 3) {
                int i7 = iArr[1] == 1 ? 0 : 1;
                if (i7 != this.f2760p) {
                    this.f2760p = i7;
                    r(0, 3, i7 ^ 1);
                    z();
                }
            } else if (i3 == 4) {
                int i8 = (iArr[1] < 0 || iArr[1] > 2) ? 0 : iArr[1];
                if (i8 != this.f2761q) {
                    this.f2761q = i8;
                    r(0, 4, i8);
                    z();
                }
            } else if (i3 == 5) {
                int i9 = iArr[1] >= 0 ? iArr[1] : 0;
                if (i9 != this.f2762r) {
                    this.f2762r = i9;
                    r(0, 5, i9);
                    A(132, 0, this.f2762r);
                    z();
                }
            }
            return true;
        }
        return super.j(i2, iArr, fArr, strArr);
    }

    @Override // i1.s
    public void l(int[] iArr) {
        if ((iArr[0] & 255) != 129) {
            Log.e("Device", "=====>  PluginRadarTianChang onHandle:" + o1.b0.e(iArr, 0, iArr.length) + " toSet: " + this.f2765u);
        }
        if (this.f2769y == null && this.f2765u) {
            if (this.f2545i != null) {
                A(17);
                s0.C(50L);
                A(130, 16);
                s0.C(50L);
                A(131, 16);
                s0.C(50L);
                A(132, 16);
            }
            this.f2765u = false;
        }
        if (((k) this.f2721a).f2619d.intValue() > 0) {
            int i2 = iArr[0] & 255;
            if (i2 == 17) {
                Handler handler = this.f2545i;
                if (handler != null) {
                    handler.removeCallbacks(this.G);
                    this.f2545i.postDelayed(this.G, 500L);
                }
                if (!s0.h(iArr, 1) || iArr[1] == this.f2764t) {
                    return;
                }
                int i3 = iArr[1];
                this.f2764t = i3;
                r(0, 6, i3);
            }
            if (i2 == 120) {
                int i4 = iArr[1];
                if (i4 != 1) {
                    if (i4 == 170) {
                        if (this.f2769y != null || s0.t(this.f2768x)) {
                            return;
                        }
                        t0 t0Var = new t0();
                        this.f2769y = t0Var;
                        t0Var.g(this.f2770z);
                        Handler handler2 = this.f2545i;
                        if (handler2 != null) {
                            handler2.postDelayed(new j(), 600L);
                            return;
                        }
                        return;
                    }
                    if (i4 != 255) {
                        return;
                    }
                }
                if (this.f2769y != null) {
                    this.f2769y = null;
                    this.f2768x = null;
                }
                if (iArr[1] != 1) {
                    t0.b bVar = this.A;
                    if (bVar != null) {
                        bVar.a(-2, true);
                        return;
                    }
                    return;
                }
                this.f2765u = true;
                Handler handler3 = this.f2545i;
                if (handler3 != null) {
                    handler3.postDelayed(new a(), 600L);
                    return;
                }
                return;
            }
            switch (i2) {
                case 129:
                    if (s0.h(iArr, 8)) {
                        l lVarY = y(iArr[8]);
                        this.f2756l = s0.y(iArr[1], iArr[2], iArr[3]);
                        if (s0.l("persist.tzy.radar.left2right", false)) {
                            x(lVarY.f2785a ? 16 : 19, iArr[5]);
                            x(lVarY.f2785a ? 15 : 20, iArr[4]);
                            x(lVarY.f2785a ? 17 : 18, iArr[7]);
                            x(lVarY.f2785a ? 14 : 21, iArr[6]);
                        } else {
                            x(lVarY.f2785a ? 16 : 19, iArr[4]);
                            x(lVarY.f2785a ? 15 : 20, iArr[5]);
                            x(lVarY.f2785a ? 17 : 18, iArr[6]);
                            x(lVarY.f2785a ? 14 : 21, iArr[7]);
                        }
                        r(1, 0, Math.min(Math.min(iArr[4], iArr[5]), Math.min(iArr[6], iArr[7])), lVarY.f2785a ? 1 : 0);
                        Handler handler4 = this.f2545i;
                        if (handler4 != null && u0.b.f17306a0 == 1) {
                            if (!lVarY.f2785a) {
                                handler4.removeCallbacks(this.F);
                                this.f2545i.postDelayed(this.F, 3000L);
                            } else {
                                handler4.removeCallbacks(this.E);
                                this.f2545i.postDelayed(this.E, 3000L);
                            }
                            break;
                        }
                    }
                    break;
                case 130:
                    int i5 = iArr[1];
                    if (i5 == 0) {
                        this.f2763s = 0;
                        r(1, 1, 0);
                        break;
                    } else if (i5 == 170) {
                        this.f2763s = 0;
                        r(1, 1, 1);
                        break;
                    } else if (i5 == 255) {
                        this.f2763s = 0;
                        r(1, 1, -2);
                        break;
                    } else if (i5 == 160) {
                        this.f2763s = 0;
                        r(1, 1, -1);
                        break;
                    } else if (i5 == 161) {
                        this.f2763s = 0;
                        r(1, 1, 1);
                        break;
                    }
                    break;
                case 131:
                    int i6 = iArr[1];
                    if (i6 == 160) {
                        int i7 = iArr[2] & 255;
                        if (i7 != this.f2766v) {
                            this.f2766v = i7;
                            int i8 = i7 & 3;
                            if (i8 != this.f2757m) {
                                this.f2757m = i8;
                                r(0, 0, i8);
                            }
                            int i9 = (this.f2766v >> 2) & 1;
                            if (i9 != this.f2758n) {
                                this.f2758n = i9;
                                int[] iArr2 = new int[2];
                                iArr2[0] = 1;
                                iArr2[1] = i9 == 0 ? 1 : 0;
                                r(0, iArr2);
                            }
                            int i10 = (this.f2766v >> 3) & 1;
                            if (i10 != this.f2759o) {
                                this.f2759o = i10;
                                int[] iArr3 = new int[2];
                                iArr3[0] = 2;
                                iArr3[1] = i10 == 0 ? 1 : 0;
                                r(0, iArr3);
                            }
                            int i11 = (this.f2766v >> 4) & 1;
                            if (i11 != this.f2760p) {
                                this.f2760p = i11;
                                int[] iArr4 = new int[2];
                                iArr4[0] = 3;
                                iArr4[1] = i11 == 0 ? 1 : 0;
                                r(0, iArr4);
                            }
                            int i12 = (this.f2766v >> 5) & 3;
                            if (i12 != this.f2761q) {
                                this.f2761q = i12;
                                r(0, 4, i12);
                            }
                        }
                        break;
                    } else if (i6 == 170) {
                        A(131, 16);
                        break;
                    }
                    break;
                case 132:
                    int i13 = iArr[1];
                    if (i13 == 160) {
                        int i14 = iArr[2] & 255;
                        if (i14 != this.f2762r) {
                            this.f2762r = i14;
                            r(0, 5, i14);
                        }
                        break;
                    } else if (i13 == 170) {
                        A(132, 16);
                        break;
                    }
                    break;
            }
        }
    }

    @Override // i1.s
    public void o(byte[] bArr) {
        t0 t0Var = this.f2769y;
        if (t0Var != null) {
            t0Var.c(bArr);
        }
    }

    @Override // i1.s
    public boolean p(y.b bVar, int i2, int i3) {
        boolean z2 = false;
        if (i2 == 0) {
            o1.x.v(bVar, i2, 0, this.f2757m);
            int[] iArr = new int[2];
            iArr[0] = 1;
            iArr[1] = this.f2758n == 0 ? 1 : 0;
            o1.x.v(bVar, i2, iArr);
            int[] iArr2 = new int[2];
            iArr2[0] = 2;
            iArr2[1] = this.f2759o == 0 ? 1 : 0;
            o1.x.v(bVar, i2, iArr2);
            int[] iArr3 = new int[2];
            iArr3[0] = 3;
            iArr3[1] = this.f2760p == 0 ? 1 : 0;
            o1.x.v(bVar, i2, iArr3);
            o1.x.v(bVar, i2, 4, this.f2761q);
            o1.x.v(bVar, i2, 5, this.f2762r);
            o1.x.v(bVar, i2, 6, this.f2764t);
            z2 = true;
        } else if (i2 == 1) {
            o1.x.v(bVar, i2, 1, this.f2763s);
        }
        return z2 ? z2 : super.p(bVar, i2, i3);
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
    public final void x(int i2, int i3) {
        int i4;
        int i5 = i3 & 255;
        if (i5 < 0 || i5 > 249) {
            if (i5 != 253) {
            }
            i4 = 10;
        } else {
            i4 = (int) (((i5 * 10) / 250.0f) + 0.5f);
        }
        if (i4 < 0) {
            return;
        }
        if (u0.b.G != 0 || qt.k0()) {
            u0.d.I3(i2, i4);
            u0.c.R.c(new int[]{i2, i4});
        } else {
            u0.d.I3(i2, 10);
            u0.c.R.c(new int[]{i2, 10});
        }
    }

    public final l y(int i2) {
        boolean z2 = ((i2 >> 7) & 255) == 1;
        boolean z3 = (i2 & 16) != 0;
        int i3 = i2 & 7;
        int i4 = (i3 == 1 || i3 == 2 || i3 == 5) ? 10 : -1;
        if (z2 != this.f2767w) {
            this.f2767w = z2;
            y0.h.U(z2);
        }
        return new l(z3, i4);
    }

    public void z() {
        Handler handler = this.f2545i;
        if (handler != null) {
            handler.removeCallbacks(this.B);
            this.f2545i.postDelayed(this.B, 50L);
        }
    }
}
