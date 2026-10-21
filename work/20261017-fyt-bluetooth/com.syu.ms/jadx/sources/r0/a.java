package r0;

import android.net.ProxyProperties;
import android.os.FileUtils;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.util.Log;
import android.util.SparseIntArray;
import base.b;
import c.e;
import g1.c;
import java.io.File;
import o1.h0;
import o1.p;
import o1.s0;
import o1.x;
import o1.z;
import org.json.JSONArray;
import org.json.JSONObject;
import y.f;

/* JADX INFO: loaded from: classes2.dex */
public class a extends b {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static a f17145u;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public SparseIntArray f17149j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public SparseIntArray f17150k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public SparseIntArray f17151l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public SparseIntArray f17152m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public SparseIntArray f17153n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public SparseIntArray f17154o;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public long f17159t;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final boolean f17146g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f17147h = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public z f17148i = new z();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f17155p = new RunnableC0103a();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f17156q = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public long f17157r = 0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public long f17158s = 0;

    /* JADX INFO: renamed from: r0.a$a, reason: collision with other inner class name */
    public class RunnableC0103a implements Runnable {
        public RunnableC0103a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (a.this.f17147h) {
                if (c.f2390e == 1) {
                    SystemProperties.set("persist.gesture.switch", "2");
                } else {
                    SystemProperties.set("persist.gesture.switch", "1");
                }
            }
        }
    }

    public a() {
        P2("Gestrue");
        this.f17149j = new SparseIntArray();
        this.f17151l = new SparseIntArray();
        this.f17153n = new SparseIntArray();
        this.f17154o = new SparseIntArray();
        b3();
    }

    public static synchronized a X2() {
        if (f17145u == null) {
            f17145u = new a();
        }
        return f17145u;
    }

    @Override // y.c
    public f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // base.b
    public void N2(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            if (s0.h(iArr, 1)) {
                int i3 = iArr[1];
                int i4 = iArr[0];
                this.f17150k.get(i4, 0);
                if (i3 == 1) {
                    this.f17150k.put(i4, i3);
                } else {
                    this.f17150k.delete(i4);
                }
                h3(i2, i4, i3);
                return;
            }
            return;
        }
        if (i2 == 1) {
            if (s0.h(iArr, 1)) {
                int i5 = iArr[1];
                int i6 = iArr[0];
                this.f17152m.get(i6, -1);
                if (i5 >= 0) {
                    this.f17152m.put(i6, i5);
                } else {
                    this.f17152m.delete(i6);
                }
                h3(i2, i6, i5);
                return;
            }
            return;
        }
        if (i2 == 2) {
            this.f17149j.clear();
            this.f17151l.clear();
            this.f17150k = this.f17149j.m17clone();
            this.f17152m = this.f17151l.m17clone();
            this.f327b.v(0);
            this.f327b.v(1);
            this.f327b.d();
            h3(0, -1);
            h3(1, -1);
            return;
        }
        if (i2 != 3) {
            if (i2 == 4 && s0.h(iArr, 0)) {
                g3(iArr[0] == 1);
                return;
            }
            return;
        }
        this.f17149j = this.f17150k.m17clone();
        SparseIntArray sparseIntArrayM17clone = this.f17152m.m17clone();
        this.f17151l = sparseIntArrayM17clone;
        if (sparseIntArrayM17clone == null || sparseIntArrayM17clone.size() == 0) {
            this.f327b.v(1);
            this.f327b.d();
        } else {
            this.f327b.s(1, this.f17151l);
            this.f327b.e(1);
        }
        SparseIntArray sparseIntArray = this.f17149j;
        if (sparseIntArray == null || sparseIntArray.size() == 0) {
            this.f327b.v(0);
            this.f327b.d();
        } else {
            this.f327b.s(0, this.f17149j);
            this.f327b.e(0);
        }
    }

    @Override // base.b
    public void O2(int i2, int[] iArr, float[] fArr, String[] strArr) {
    }

    @Override // y.c
    public void P0(y.b bVar, int i2) {
        x xVar;
        if (bVar == null || (xVar = this.f331f) == null) {
            return;
        }
        xVar.p(bVar, i2);
    }

    @Override // base.b
    public void Q2(h0 h0Var) {
        SparseIntArray sparseIntArrayK = h0Var.k(0);
        if (sparseIntArrayK != null) {
            this.f17149j = sparseIntArrayK;
        }
        this.f17150k = this.f17149j.m17clone();
        SparseIntArray sparseIntArrayK2 = h0Var.k(1);
        if (sparseIntArrayK2 != null) {
            this.f17151l = sparseIntArrayK2;
        }
        this.f17152m = this.f17151l.m17clone();
        g3(h0Var.h(2, s0.m("ro.sys.touchGesture", 0)) == 1);
        SystemProperties.set("persist.gesture.switch", this.f17147h ? "1" : "0");
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
        x xVar;
        if (bVar == null || (xVar = this.f331f) == null) {
            return;
        }
        xVar.m(bVar, i2);
        if (i3 == 0) {
            return;
        }
        if (i2 == 0) {
            int size = this.f17149j.size();
            if (size <= 0) {
                return;
            }
            for (int i4 = 0; i4 < size; i4++) {
                int iKeyAt = this.f17149j.keyAt(i4);
                int i5 = this.f17149j.get(iKeyAt, 0);
                if (iKeyAt >= 0) {
                    this.f331f.G(bVar, i2, iKeyAt, i5);
                }
            }
            return;
        }
        if (i2 != 1) {
            if (i2 != 4) {
                return;
            }
            this.f331f.G(bVar, i2, this.f17147h ? 1 : 0);
            return;
        }
        int size2 = this.f17151l.size();
        if (size2 <= 0) {
            return;
        }
        for (int i6 = 0; i6 < size2; i6++) {
            int iKeyAt2 = this.f17151l.keyAt(i6);
            int i7 = this.f17151l.get(iKeyAt2, -1);
            if (iKeyAt2 >= 0) {
                this.f331f.G(bVar, i2, iKeyAt2, i7);
            }
        }
    }

    public void Y2(int i2, int i3) {
        if (i3 == 2) {
            return;
        }
        int iF3 = 0;
        switch (i2) {
            case 1:
                iF3 = 24;
                break;
            case 2:
                iF3 = 23;
                break;
            case 3:
                iF3 = 21;
                break;
            case 4:
                iF3 = 22;
                break;
            case 5:
                iF3 = 28;
                break;
            case 6:
                iF3 = 27;
                break;
            case 7:
                iF3 = 25;
                break;
            case 8:
                iF3 = 26;
                break;
            case 9:
            case 10:
            case 11:
            case 12:
                iF3 = f3(i2, i3);
                break;
            case 13:
                iF3 = 41;
                break;
            case 14:
                iF3 = 59;
                break;
            case 15:
                iF3 = 46;
                break;
            case 16:
                iF3 = 60;
                break;
            case 17:
                iF3 = 52;
                break;
            case 18:
                iF3 = 51;
                break;
            case 19:
                iF3 = 49;
                break;
            case 20:
                iF3 = 50;
                break;
            case 21:
                iF3 = 58;
                break;
            case 22:
                iF3 = 57;
                break;
            case 23:
                iF3 = 55;
                break;
            case 24:
                iF3 = 56;
                break;
            case 25:
                iF3 = 42;
                break;
            case 26:
                iF3 = 43;
                break;
            case 27:
                iF3 = 44;
                break;
            case 28:
                iF3 = 45;
                break;
            case 29:
                iF3 = 47;
                break;
            case 30:
                iF3 = 48;
                break;
            case 31:
                iF3 = 53;
                break;
            case 32:
                iF3 = 54;
                break;
        }
        if (iF3 != 0) {
            c3(iF3);
        }
    }

    public void Z2(int i2, int i3) {
        int i4;
        int i5 = 5;
        int i6 = 4;
        int i7 = 3;
        int i8 = 2;
        switch (i2) {
            case 2:
                if (i3 == 2) {
                    i4 = 9;
                } else if (i3 == 3) {
                    i4 = 10;
                } else if (i3 == 4) {
                    i4 = 11;
                } else if (i3 == 5) {
                    i4 = 12;
                } else {
                    i4 = 0;
                }
                break;
            case 3:
                if (i3 != 2) {
                    if (i3 == 3) {
                        i7 = 7;
                    } else if (i3 != 4) {
                        i7 = i3 != 5 ? 0 : 23;
                    } else {
                        i7 = 19;
                    }
                }
                i4 = i7;
                break;
            case 4:
                if (i3 != 2) {
                    if (i3 == 3) {
                        i6 = 8;
                    } else if (i3 != 4) {
                        i6 = i3 != 5 ? 0 : 24;
                    } else {
                        i6 = 20;
                    }
                }
                i4 = i6;
                break;
            case 5:
                if (i3 != 2) {
                    if (i3 == 3) {
                        i8 = 6;
                    } else if (i3 != 4) {
                        i8 = i3 != 5 ? 0 : 22;
                    } else {
                        i8 = 18;
                    }
                }
                i4 = i8;
                break;
            case 6:
                if (i3 == 2) {
                    i5 = 1;
                } else if (i3 != 3) {
                    i5 = i3 != 4 ? i3 != 5 ? 0 : 21 : 17;
                }
                i4 = i5;
                break;
            case 7:
                if (i3 == 2) {
                    i4 = 14;
                } else if (i3 == 3) {
                    i4 = 15;
                } else if (i3 == 4) {
                    i4 = 16;
                } else if (i3 == 5) {
                    i4 = 13;
                } else {
                    i4 = 0;
                }
                break;
            case 8:
                if (i3 == 2) {
                    i4 = 25;
                } else if (i3 == 3) {
                    i4 = 27;
                } else if (i3 == 4) {
                    i4 = 29;
                } else if (i3 == 5) {
                    i4 = 31;
                } else {
                    i4 = 0;
                }
                break;
            case 9:
                if (i3 == 2) {
                    i4 = 26;
                } else if (i3 == 3) {
                    i4 = 28;
                } else if (i3 == 4) {
                    i4 = 30;
                } else if (i3 == 5) {
                    i4 = 32;
                } else {
                    i4 = 0;
                }
                break;
            default:
                i4 = 0;
                break;
        }
        Y2(i4, 0);
    }

    public boolean a3(int i2) {
        return i2 == 9 || i2 == 10 || i2 == 11 || i2 == 12;
    }

    public final void b3() {
        File file = new File(a.f.B() + "/oem/gestures.config");
        if (file.exists() && file.isFile()) {
            boolean z2 = false;
            z2 = false;
            try {
                String textFile = FileUtils.readTextFile(file, 0, null);
                Log.e("Test", "load Str: " + textFile);
                if (textFile != null && !textFile.isEmpty()) {
                    SparseIntArray sparseIntArray = new SparseIntArray();
                    JSONObject jSONObject = new JSONObject(textFile);
                    if (jSONObject.has("gestures") && jSONObject.has("learnable")) {
                        JSONArray jSONArray = jSONObject.getJSONArray("gestures");
                        boolean z3 = jSONObject.getBoolean("learnable");
                        int length = jSONArray == null ? 0 : jSONArray.length();
                        for (int i2 = 0; i2 < length; i2++) {
                            JSONObject jSONObject2 = jSONArray.getJSONObject(i2);
                            if (jSONObject2.has("gesture") && jSONObject2.has("func")) {
                                sparseIntArray.put(jSONObject2.getInt("gesture"), jSONObject2.getInt("func"));
                            }
                        }
                        z2 = z3;
                    }
                    Log.e("Test", "load funcMap size : " + sparseIntArray.size() + "  supportLearn : " + z2);
                    if (sparseIntArray.size() > 0) {
                        d3(sparseIntArray, z2);
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public void c3(int i2) {
        z zVar;
        if (i2 == 41) {
            e.d().c(526);
            return;
        }
        int i3 = this.f17149j.get(i2, -1);
        int i4 = this.f17151l.get(i2, -1);
        if (i3 < 0 && i4 < 0) {
            i3 = this.f17153n.get(i2, -1);
            i4 = this.f17154o.get(i2, -1);
        }
        if (i3 <= 0 || i4 < 0 || !e.d().c(i4) || (zVar = this.f17148i) == null) {
            return;
        }
        zVar.c(Integer.valueOf(i4));
    }

    public void d3(SparseIntArray sparseIntArray, boolean z2) {
        int size = sparseIntArray == null ? 0 : sparseIntArray.size();
        if (size > 0) {
            if (!z2 || M2().h(3, 0) != 0) {
                if (z2) {
                    return;
                }
                for (int i2 = 0; i2 < size; i2++) {
                    int iKeyAt = sparseIntArray.keyAt(i2);
                    int i3 = sparseIntArray.get(iKeyAt);
                    this.f17153n.put(iKeyAt, 1);
                    this.f17154o.put(iKeyAt, i3);
                }
                return;
            }
            for (int i4 = 0; i4 < size; i4++) {
                int iKeyAt2 = sparseIntArray.keyAt(i4);
                int i5 = sparseIntArray.get(iKeyAt2);
                this.f17149j.put(iKeyAt2, 1);
                this.f17151l.put(iKeyAt2, i5);
                this.f17150k = this.f17149j.m17clone();
                this.f17152m = this.f17151l.m17clone();
                this.f327b.s(0, this.f17149j);
                this.f327b.s(1, this.f17151l);
                this.f327b.e(0);
                this.f327b.e(1);
            }
            M2().q(3, 1);
            M2().d();
        }
    }

    public void e3(p pVar) {
        if (pVar != null) {
            this.f17148i.a(pVar);
        }
    }

    public int f3(int i2, int i3) {
        boolean z2 = this.f17156q != i2;
        if (!a3(i2)) {
            return 0;
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (z2 || jElapsedRealtime - this.f17157r >= 400) {
            this.f17159t = 1L;
        } else {
            this.f17159t++;
        }
        this.f17156q = i2;
        this.f17157r = jElapsedRealtime;
        switch (i2) {
            case 9:
                long j2 = this.f17159t;
                if (j2 == 1) {
                    return 29;
                }
                if (j2 == 2) {
                    return 33;
                }
                return j2 == 3 ? 37 : 0;
            case 10:
                long j3 = this.f17159t;
                if (j3 == 1) {
                    return 30;
                }
                if (j3 == 2) {
                    return 34;
                }
                return j3 == 3 ? 38 : 0;
            case 11:
                long j4 = this.f17159t;
                if (j4 == 1) {
                    return 31;
                }
                if (j4 == 2) {
                    return 35;
                }
                return j4 == 3 ? 39 : 0;
            case 12:
                long j5 = this.f17159t;
                if (j5 == 1) {
                    return 32;
                }
                if (j5 == 2) {
                    return 36;
                }
                return j5 == 3 ? 40 : 0;
            default:
                return 0;
        }
    }

    public void g3(boolean z2) {
        if (z2 != this.f17147h) {
            this.f17147h = z2;
            SystemProperties.set("persist.gesture.switch", ProxyProperties.LOCAL_EXCL_LIST + (z2 ? 1 : 0));
            this.f327b.q(2, z2 ? 1 : 0);
            this.f327b.e(2);
            h3(4, z2 ? 1 : 0);
            if (z2) {
                g1.a.f2386a.a(this.f17155p, 0);
            } else {
                g1.a.f2386a.d(this.f17155p);
            }
        }
    }

    public void h3(int i2, int... iArr) {
        x xVar = this.f331f;
        if (xVar != null) {
            xVar.s(i2, iArr, null, null);
        }
    }
}
