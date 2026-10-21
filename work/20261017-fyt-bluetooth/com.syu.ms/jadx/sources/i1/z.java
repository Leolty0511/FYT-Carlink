package i1;

import android.util.Log;
import java.util.Arrays;
import k0.qt;
import o1.h0;
import o1.s0;

/* JADX INFO: loaded from: classes2.dex */
public class z extends i1.a<d> {
    public final Runnable A;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f2862k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final boolean f2863l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int f2864m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final int f2865n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final int f2866o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final int f2867p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f2868q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f2869r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f2870s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f2871t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public h0 f2872u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f2873v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f2874w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f2875x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public Runnable f2876y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final Runnable f2877z;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            z zVar = z.this;
            zVar.z(zVar.f2873v, zVar.f2874w, zVar.f2875x);
        }
    }

    public class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f2879a = false;

        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2;
            boolean z2 = u0.b.f17306a0 == 1 && u0.b.f17320f == 1;
            if (z2 != this.f2879a) {
                this.f2879a = z2;
                if (z2) {
                    qt.z(z.this.f2876y);
                } else {
                    qt.q0(z.this.f2876y);
                }
            }
            int i3 = z.this.f2873v;
            Log.e("Device", "DataMain.sHostBackcar: " + u0.b.f17347o + " DataMain.sHandbrake : " + u0.b.f17335k);
            if (u0.b.f17347o == 1) {
                i2 = 32;
            } else {
                i2 = u0.b.f17335k == 1 ? 16 : 64;
            }
            z zVar = z.this;
            if (zVar.f2873v != i2) {
                zVar.f2873v = i2;
                zVar.z(i2, zVar.f2874w, zVar.f2875x);
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = u0.b.X1;
            z zVar = z.this;
            if (i2 != zVar.f2874w) {
                zVar.f2874w = Math.max(0, Math.min(i2, 255));
            }
        }
    }

    public class d extends e {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final int[] f2882h = {46};

        public d() {
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
            return this.f2882h;
        }

        @Override // i1.e
        public boolean j() {
            return true;
        }
    }

    public z(int i2, int i3) {
        super(i2, i3);
        this.f2862k = "PluginZhiHangRadar";
        this.f2863l = true;
        this.f2864m = 1;
        this.f2865n = 2;
        this.f2866o = 4;
        this.f2867p = 8;
        this.f2868q = 0;
        this.f2869r = 0;
        this.f2870s = 0;
        this.f2871t = 0;
        this.f2872u = new h0("zh_radar");
        this.f2873v = 16;
        this.f2874w = 0;
        this.f2875x = 0;
        this.f2876y = new a();
        b bVar = new b();
        this.f2877z = bVar;
        c cVar = new c();
        this.A = cVar;
        d dVar = new d();
        this.f2721a = dVar;
        dVar.h();
        v();
        int iH = this.f2872u.h(0, 15);
        this.f2875x = iH;
        this.f2868q = (iH & 1) > 0 ? 1 : 0;
        this.f2869r = (iH & 2) > 0 ? 1 : 0;
        this.f2870s = (iH & 4) > 0 ? 1 : 0;
        this.f2871t = (8 & iH) > 0 ? 1 : 0;
        u0.c.B.a(bVar, 0);
        u0.c.f17379f.a(bVar, 0);
        u0.c.f17376c.a(bVar, 0);
        u0.c.f17386m.a(bVar, 1);
        o1.h.f16866b.a(cVar, 1);
    }

    public synchronized void A(int i2, boolean z2) {
        int i3 = this.f2875x;
        int i4 = i3 & 15;
        int i5 = z2 ? i2 | i3 : (~i2) & i3;
        if (i4 != i5) {
            this.f2875x = i5;
            this.f2872u.q(0, i5);
            this.f2872u.e(0);
            z(this.f2873v, this.f2874w, this.f2875x);
        }
    }

    @Override // i1.s
    public boolean j(int i2, int[] iArr, float[] fArr, String[] strArr) {
        Log.e("Device", "PluginZhiHangRadar handleCmd : " + i2 + " ints : " + Arrays.toString(iArr));
        if (i2 != 0) {
            return false;
        }
        if (s0.h(iArr, 0)) {
            int i3 = iArr[0];
            if (i3 != 0) {
                if (i3 != 1) {
                    if (i3 != 2) {
                        if (i3 != 3) {
                            if (i3 == 4 && s0.h(iArr, 1)) {
                                int i4 = iArr[1] == 1 ? 1 : 0;
                                if (this.f2871t != i4) {
                                    this.f2871t = i4;
                                    r(i2, 0, this.f2868q, this.f2870s, this.f2869r, i4);
                                    A(8, i4 == 1);
                                }
                            }
                        } else if (s0.h(iArr, 1)) {
                            int i5 = iArr[1] == 1 ? 1 : 0;
                            if (this.f2869r != i5) {
                                this.f2869r = i5;
                                r(i2, 0, this.f2868q, this.f2870s, i5, this.f2871t);
                                A(2, i5 == 1);
                            }
                        }
                    } else if (s0.h(iArr, 1)) {
                        int i6 = iArr[1] == 1 ? 1 : 0;
                        if (this.f2870s != i6) {
                            this.f2870s = i6;
                            A(4, i6 == 1);
                            r(i2, 0, this.f2868q, this.f2870s, this.f2869r, this.f2871t);
                        }
                    }
                } else if (s0.h(iArr, 1)) {
                    int i7 = iArr[1] == 1 ? 1 : 0;
                    if (this.f2868q != i7) {
                        this.f2868q = i7;
                        A(1, i7 == 1);
                        r(i2, 0, this.f2868q, this.f2870s, this.f2869r, this.f2871t);
                    }
                }
            } else if (s0.h(iArr, 4)) {
                int i8 = iArr[1];
                this.f2868q = i8;
                int i9 = iArr[2];
                this.f2870s = i9;
                int i10 = iArr[3];
                this.f2869r = i10;
                int i11 = iArr[4];
                this.f2871t = i11;
                int i12 = ((i11 << 3) | i8 | (i10 << 1) | (i9 << 2)) & 15;
                if (this.f2875x != i12) {
                    this.f2875x = i12;
                    this.f2872u.q(0, i12);
                    this.f2872u.e(0);
                    z(this.f2873v, this.f2874w, i12);
                    r(i2, 0, this.f2868q, this.f2870s, this.f2869r, this.f2871t);
                }
            }
        }
        return true;
    }

    @Override // i1.s
    public void l(int[] iArr) {
        Log.e("Device", "PluginZhiHangRadar onHandle DATA : " + o1.b0.e(iArr, 0, iArr.length));
        if (((d) this.f2721a).f2619d.intValue() == 4) {
            int i2 = iArr[0] & 255;
            if (i2 == 34) {
                int i3 = iArr[1] & 255;
                int i4 = iArr[2] & 255;
                int i5 = iArr[3] & 255;
                int i6 = iArr[4] & 255;
                if (u0.b.f17347o == 0) {
                    if (l0.c0.f13009c != i3 || l0.c0.f13010d != i4 || l0.c0.f13011e != i5 || l0.c0.f13012f != i6) {
                        if (i3 != 0 || i4 != 0 || i5 != 0 || i6 != 0 || l0.c0.f13013g != 0 || l0.c0.f13014h != 0 || l0.c0.f13015i != 0 || l0.c0.f13016j != 0) {
                            u0.d.C2(1);
                        } else if (u0.b.f17350p == 1) {
                            l0.c0.f13017k = 2;
                            l0.b0.b(l0.c0.f13018l);
                        }
                    }
                    l0.c0.f13009c = i3;
                    l0.c0.f13010d = i4;
                    l0.c0.f13011e = i5;
                    l0.c0.f13012f = i6;
                }
                y(iArr[1], iArr[2], iArr[3], iArr[4], false, true);
                return;
            }
            if (i2 != 35) {
                return;
            }
            int i7 = iArr[1] & 255;
            int i8 = iArr[2] & 255;
            int i9 = iArr[3] & 255;
            int i10 = iArr[4] & 255;
            if (u0.b.f17347o == 0) {
                if (l0.c0.f13013g != i7 || l0.c0.f13014h != i8 || l0.c0.f13015i != i9 || l0.c0.f13016j != i10) {
                    if (i7 != 0 || i8 != 0 || i9 != 0 || i10 != 0 || l0.c0.f13009c != 0 || l0.c0.f13010d != 0 || l0.c0.f13011e != 0 || l0.c0.f13012f != 0) {
                        u0.d.C2(1);
                    } else if (u0.b.f17350p == 1) {
                        l0.c0.f13017k = 2;
                        l0.b0.b(l0.c0.f13018l);
                    }
                }
                l0.c0.f13013g = i7;
                l0.c0.f13014h = i8;
                l0.c0.f13015i = i9;
                l0.c0.f13016j = i10;
            }
            y(iArr[1], iArr[2], iArr[3], iArr[4], true, true);
        }
    }

    @Override // i1.s
    public void o(byte[] bArr) {
    }

    @Override // i1.s
    public boolean p(y.b bVar, int i2, int i3) {
        if (i3 == 1) {
            if (i2 != 0) {
                return false;
            }
            t(bVar, i2, 0, this.f2868q, this.f2870s, this.f2869r, this.f2871t);
        }
        return true;
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
        if (iArr.length != 3) {
            return;
        }
        int[] iArr2 = new int[6];
        iArr2[0] = 85;
        int i2 = 0;
        int i3 = 0;
        while (i2 < iArr.length) {
            int i4 = i2 + 1;
            iArr2[i4] = iArr[i2];
            i3 += iArr[i2] & 255;
            i2 = i4;
        }
        iArr2[4] = i3 & 255;
        iArr2[5] = 255;
        if (this.f2544h != null) {
            Log.e("Device", "PluginZhiHangRadar Write DATA : " + o1.b0.e(iArr2, 0, 6));
            this.f2544h.f(iArr2);
        }
    }
}
