package y0;

import android.util.Log;
import android.view.Window;
import k0.nt;
import o1.o0;
import o1.z;

/* JADX INFO: loaded from: classes2.dex */
public class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final f[] f18130a = new f[48];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final f[] f18131b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final f[] f18132c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final f[] f18133d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final f[] f18134e;

    public class a implements f.a {
        @Override // y0.i.f.a
        public void a(int i2, int i3) {
            i.i(i2, i3);
        }
    }

    public class b implements f.a {
        @Override // y0.i.f.a
        public void a(int i2, int i3) {
            i.g(i2, i3);
        }
    }

    public class c implements f.a {
        @Override // y0.i.f.a
        public void a(int i2, int i3) {
            i.m(i2, i3);
        }
    }

    public class d implements f.a {
        @Override // y0.i.f.a
        public void a(int i2, int i3) {
            i.q(i2, i3);
        }
    }

    public class e implements f.a {
        @Override // y0.i.f.a
        public void a(int i2, int i3) {
            i.o(i2, i3);
        }
    }

    public static class f implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final a f18135a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f18136b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f18137c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final long f18138d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f18139e;

        public interface a {
            void a(int i2, int i3);
        }

        public f(a aVar, int i2, long j2) {
            this.f18135a = aVar;
            this.f18136b = i2;
            this.f18138d = j2;
        }

        public synchronized void a(int i2) {
            this.f18137c = i2;
            if (!this.f18139e) {
                this.f18139e = true;
                o1.k.a().postDelayed(this, this.f18138d);
            }
        }

        @Override // java.lang.Runnable
        public synchronized void run() {
            this.f18139e = false;
            this.f18135a.a(this.f18136b, this.f18137c);
        }
    }

    static {
        int i2 = 0;
        int i3 = 0;
        while (true) {
            f[] fVarArr = f18130a;
            if (i3 >= fVarArr.length) {
                break;
            }
            fVarArr[i3] = new f(new a(), i3, 100L);
            i3++;
        }
        f18131b = new f[48];
        int i4 = 0;
        while (true) {
            f[] fVarArr2 = f18131b;
            if (i4 >= fVarArr2.length) {
                break;
            }
            fVarArr2[i4] = new f(new b(), i4, 100L);
            i4++;
        }
        f18132c = new f[48];
        int i5 = 0;
        while (true) {
            f[] fVarArr3 = f18132c;
            if (i5 >= fVarArr3.length) {
                break;
            }
            fVarArr3[i5] = new f(new c(), i5, 100L);
            i5++;
        }
        f18133d = new f[36];
        int i6 = 0;
        while (true) {
            f[] fVarArr4 = f18133d;
            if (i6 >= fVarArr4.length) {
                break;
            }
            fVarArr4[i6] = new f(new d(), i6, 100L);
            i6++;
        }
        f18134e = new f[36];
        while (true) {
            f[] fVarArr5 = f18134e;
            if (i2 >= fVarArr5.length) {
                return;
            }
            fVarArr5[i2] = new f(new e(), i2, 100L);
            i2++;
        }
    }

    public static void f(int i2, int i3) {
        if (i2 >= 0) {
            f[] fVarArr = f18131b;
            if (i2 < fVarArr.length) {
                fVarArr[i2].a(i3);
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
    public static void g(int i2, int i3) {
        if (i2 < 0 || i2 >= 48) {
            return;
        }
        int iA = g.f.c(7) ? o0.a(i3, 20, Window.PROGRESS_SECONDARY_START) : o0.a(i3, 0, Window.PROGRESS_SECONDARY_START);
        Log.e("Qin", "eqCfSrcCmdInner -------->> index = " + i2 + " value: " + iA);
        z zVar = g.f18103m;
        if (zVar.b() > 0) {
            zVar.c(new int[]{i2, iA});
        }
    }

    public static void h(int i2, int i3) {
        if (i2 >= 0) {
            f[] fVarArr = f18130a;
            if (i2 < fVarArr.length) {
                fVarArr[i2].a(i3);
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
    public static void i(int i2, int i3) {
        if (i2 < 0 || i2 >= 48) {
            return;
        }
        int iA = o0.a(i3, 0, y0.f.f18047f0);
        z zVar = g.f18104n;
        if (zVar.b() > 0) {
            zVar.c(new int[]{i2, iA});
        }
        if (nt.f8661v != 0) {
            if (i2 == 0) {
                z.k.s(1, 74, ((iA + 1) >> 1) + 96);
            } else if (i2 == 1) {
                z.k.s(1, 74, ((iA + 1) >> 1) + 64);
            } else {
                if (i2 != 2) {
                    return;
                }
                z.k.s(1, 74, ((iA + 1) >> 1) + 32);
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
    public static void j(int i2) {
        k(i2);
        z zVar = g.f18106p;
        if (zVar.b() > 0) {
            zVar.c(new int[]{i2});
        }
    }

    public static void k(int i2) {
        switch (i2) {
            case 0:
                z.k.s(1, 10, 32);
                break;
            case 1:
                z.k.s(1, 10, 33);
                break;
            case 2:
                z.k.s(1, 10, 34);
                break;
            case 3:
                z.k.s(1, 10, 35);
                break;
            case 4:
                z.k.s(1, 10, 36);
                break;
            case 5:
                z.k.s(1, 10, 37);
                break;
            case 6:
                z.k.s(1, 10, 38);
                break;
            case 7:
                z.k.s(1, 10, 39);
                break;
            case 8:
                z.k.s(1, 10, 40);
                break;
        }
    }

    public static void l(int i2, int i3) {
        if (i2 >= 0) {
            f[] fVarArr = f18132c;
            if (i2 < fVarArr.length) {
                fVarArr[i2].a(i3);
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
    public static void m(int i2, int i3) {
        if (i2 < 0 || i2 >= 48) {
            return;
        }
        int iA = g.f.c(4) ? o0.a(i3, 1, 1000) : o0.a(i3, 0, 1000);
        z zVar = g.f18105o;
        if (zVar.b() > 0) {
            zVar.c(new int[]{i2, iA});
        }
    }

    public static void n(int i2, int i3) {
        if (i2 >= 0) {
            f[] fVarArr = f18134e;
            if (i2 < fVarArr.length) {
                fVarArr[i2].a(i3);
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
    public static void o(int i2, int i3) {
        if (i2 < 0 || i2 >= 36) {
            return;
        }
        int iA = o0.a(i3, 20, Window.PROGRESS_SECONDARY_START);
        z zVar = g.f18108r;
        if (zVar.b() > 0) {
            zVar.c(new int[]{i2, iA});
        }
        if (nt.f8662w != 0) {
            return;
        }
        h.m0();
        int[] iArr = y0.f.f18080u0;
        if (iArr[i2] != iA) {
            iArr[i2] = iA;
            if (i2 < 36) {
                m1.c.g(i2 + 302, iA);
            }
        }
        h.l0(0);
        h.L();
    }

    public static void p(int i2, int i3) {
        if (i2 >= 0) {
            f[] fVarArr = f18133d;
            if (i2 < fVarArr.length) {
                fVarArr[i2].a(i3);
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
    public static void q(int i2, int i3) {
        if (i2 < 0 || i2 >= 36) {
            return;
        }
        int iA = o0.a(i3, 0, 20);
        z zVar = g.f18109s;
        if (zVar.b() > 0) {
            zVar.c(new int[]{i2, iA});
        }
        if (nt.f8662w != 0) {
            return;
        }
        h.m0();
        int[] iArr = y0.f.f18074r0;
        if (iArr[i2] != iA) {
            iArr[i2] = iA;
            if (i2 < 36) {
                m1.c.g(i2 + 266, iA);
            }
        }
        h.l0(0);
        h.L();
    }
}
