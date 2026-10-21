package i1;

import android.os.Handler;
import android.util.Log;
import k0.qt;

/* JADX INFO: loaded from: classes2.dex */
public class v extends i1.a<e> {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f2788k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final boolean f2789l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final Runnable f2790m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final Runnable f2791n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final Runnable f2792o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final Runnable f2793p;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17306a0 != 1) {
                return;
            }
            v vVar = v.this;
            if (vVar.f2544h == null) {
                return;
            }
            Handler handler = vVar.f2545i;
            if (handler != null) {
                handler.removeCallbacks(this);
                v.this.f2545i.postDelayed(this, 100L);
            }
            if (u0.b.f17347o == 1) {
                v.this.z(88, 70, 0, 2, 0, 2, 162);
            } else if (u0.b.X1 > 20) {
                v.this.z(88, 70, 0, 2, 0, 0, 160);
            } else {
                v.this.z(88, 70, 0, 2, 0, 1, 161);
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            v.this.x(16, 0);
            v.this.x(15, 0);
            v.this.x(17, 0);
            v.this.x(14, 0);
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            v.this.x(19, 0);
            v.this.x(20, 0);
            v.this.x(18, 0);
            v.this.x(21, 0);
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17306a0 == 1) {
                v vVar = v.this;
                Handler handler = vVar.f2545i;
                if (handler != null) {
                    handler.postDelayed(vVar.f2790m, 1000L);
                    return;
                }
                return;
            }
            v vVar2 = v.this;
            Handler handler2 = vVar2.f2545i;
            if (handler2 != null) {
                handler2.removeCallbacks(vVar2.f2790m);
            }
        }
    }

    public class e extends i1.e {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final int[] f2798h = {46};

        public e() {
        }

        @Override // i1.e
        public boolean a(int i2) {
            int iIntValue = (this.f2620e.intValue() & 255) + (this.f2619d.intValue() & 255);
            for (int i3 = 0; i3 < this.f2619d.intValue(); i3++) {
                iIntValue += this.f2618c[i3] & 255;
            }
            return (iIntValue ^ 255) == (i2 & 255);
        }

        @Override // i1.e
        public boolean c(int i2) {
            if (this.f2619d == null) {
                this.f2619d = Integer.valueOf(i2 & 255);
            }
            return this.f2619d != null;
        }

        @Override // i1.e
        public int[] f() {
            return this.f2798h;
        }

        @Override // i1.e
        public boolean j() {
            return true;
        }
    }

    public v(int i2, int i3) {
        super(i2, i3);
        this.f2788k = "XiaoFD";
        this.f2789l = true;
        this.f2790m = new a();
        this.f2791n = new b();
        this.f2792o = new c();
        d dVar = new d();
        this.f2793p = dVar;
        e eVar = new e();
        this.f2721a = eVar;
        eVar.h();
        v();
        u0.c.f17386m.a(dVar, 1);
    }

    @Override // i1.s
    public void l(int[] iArr) {
        Log.e("Device", "XiaoFD onHandle DATA : " + o1.b0.e(iArr, 0, iArr.length));
        if (((e) this.f2721a).f2619d.intValue() > 0) {
            int i2 = iArr[0] & 255;
            if (i2 != 9) {
                if (i2 == 34) {
                    y(iArr[1], iArr[2], iArr[3], iArr[4], false, (iArr[5] & 255) == 27);
                    return;
                } else {
                    if (i2 != 35) {
                        return;
                    }
                    y(iArr[1], iArr[2], iArr[3], iArr[4], true, (iArr[5] & 255) == 27);
                    return;
                }
            }
            if (iArr[1] == 241) {
                int i3 = iArr[2];
                if (i3 == 0) {
                    u0.i.l3().m4(12288, false);
                } else if (i3 == 1) {
                    u0.i.l3().m4(4096, true);
                } else {
                    if (i3 != 2) {
                        return;
                    }
                    u0.i.l3().m4(8192, true);
                }
            }
        }
    }

    @Override // i1.s
    public void o(byte[] bArr) {
        b0 b0Var;
        for (byte b2 : bArr) {
            if (b2 == -1 && (b0Var = this.f2544h) != null) {
                b0Var.f(255);
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
    public final void x(int i2, int i3) {
        int i4 = i3 & 255;
        int i5 = (i4 <= 0 || i4 > 10) ? 10 : i4 - 1;
        if (i5 < 0) {
            return;
        }
        if (u0.b.G != 0 || qt.k0()) {
            u0.d.I3(i2, i5);
            u0.c.R.c(new int[]{i2, i5});
        } else {
            u0.d.I3(i2, 10);
            u0.c.R.c(new int[]{i2, 10});
        }
    }

    public final void y(int i2, int i3, int i4, int i5, boolean z2, boolean z3) {
        int i6 = z2 ? 16 : 20;
        if (!z3) {
            i4 = 0;
        }
        x(i6, i4);
        int i7 = z2 ? 15 : 19;
        if (!z3) {
            i3 = 0;
        }
        x(i7, i3);
        int i8 = z2 ? 17 : 21;
        if (!z3) {
            i5 = 0;
        }
        x(i8, i5);
        int i9 = z2 ? 14 : 18;
        if (!z3) {
            i2 = 0;
        }
        x(i9, i2);
    }

    public void z(int... iArr) {
        int length = iArr == null ? 0 : iArr.length;
        if (length == 0) {
            return;
        }
        int[] iArr2 = new int[length + 2];
        iArr2[0] = 46;
        int i2 = 0;
        int i3 = 0;
        while (i2 < length) {
            i3 += iArr[i2];
            int i4 = i2 + 1;
            iArr2[i4] = iArr[i2];
            i2 = i4;
        }
        iArr2[length + 1] = i3 ^ 255;
        Log.e("Device", "==============  PluginCommon360_817 write serial:" + o1.b0.e(iArr, 0, iArr.length));
        b0 b0Var = this.f2544h;
        if (b0Var != null) {
            b0Var.f(iArr2);
        }
    }
}
