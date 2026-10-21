package i1;

import android.util.SparseIntArray;
import java.util.Arrays;
import o1.s0;

/* JADX INFO: loaded from: classes2.dex */
public class t extends s<d> implements b0.a {
    public int[] A;
    public final Runnable B;
    public final Runnable C;
    public Runnable D;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f2732h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f2733i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f2734j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f2735k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f2736l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int f2737m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final int f2738n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final int f2739o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public b0 f2740p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public SparseIntArray f2741q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public SparseIntArray f2742r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f2743s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f2744t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f2745u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f2746v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f2747w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f2748x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f2749y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int[] f2750z;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            t.this.y(3, 1, 0);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            t.this.y(3, 1, 1);
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            t tVar = t.this;
            if (tVar.f2740p != null) {
                tVar.y(3, 1, 0);
                t.this.y(3, 1, 1);
            }
            o1.m.a().removeCallbacks(this);
            o1.m.a().postDelayed(this, 10000L);
        }
    }

    public static class d extends e {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final int[] f2754h = {46};

        @Override // i1.e
        public boolean a(int i2) {
            int iIntValue = (this.f2620e.intValue() & 255) + (this.f2619d.intValue() & 255);
            for (int i3 = 0; i3 < this.f2619d.intValue(); i3++) {
                iIntValue += this.f2618c[i3] & 255;
            }
            return (i2 & 255) == ((iIntValue & 255) ^ 255);
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
            return this.f2754h;
        }

        @Override // i1.e
        public boolean j() {
            return true;
        }
    }

    public t(int i2, int i3) {
        super(i2, i3);
        this.f2732h = 210;
        this.f2733i = 211;
        this.f2734j = 212;
        this.f2735k = 213;
        this.f2736l = 214;
        this.f2737m = 215;
        this.f2738n = 216;
        this.f2739o = 217;
        this.f2741q = new SparseIntArray();
        this.f2742r = new SparseIntArray();
        this.B = new a();
        this.C = new b();
        this.D = new c();
        d dVar = new d();
        this.f2721a = dVar;
        dVar.h();
    }

    public void A(int i2, int i3) {
        if (i3 != this.f2742r.get(i2, -1)) {
            this.f2742r.put(i2, i3);
            r(217, i2, i3);
        }
    }

    @Override // i1.b0.a
    public void a(b0 b0Var) {
        this.f2740p = b0Var;
        o1.m.a().postDelayed(this.D, 1000L);
    }

    @Override // i1.b0.a
    public void c(byte[] bArr) {
        b(bArr);
    }

    @Override // i1.s
    public boolean j(int i2, int[] iArr, float[] fArr, String[] strArr) {
        int[] iArrW;
        int[] iArrW2;
        boolean z2 = true;
        switch (i2) {
            case 210:
                if (s0.h(iArr, 0) && iArr[0] != this.f2745u) {
                    y(x(iArr[0], this.f2743s, this.f2744t, this.f2746v, this.f2747w, this.f2748x));
                }
                break;
            case 211:
                if (s0.h(iArr, 0) && iArr[0] != this.f2743s) {
                    y(x(this.f2745u, iArr[0], this.f2744t, this.f2746v, this.f2747w, this.f2748x));
                }
                break;
            case 212:
                if (s0.h(iArr, 0) && iArr[0] != this.f2744t) {
                    y(x(this.f2745u, this.f2743s, iArr[0], this.f2746v, this.f2747w, this.f2748x));
                }
                break;
            case 213:
                if (s0.h(iArr, 0) && iArr[0] != this.f2746v) {
                    y(x(this.f2745u, this.f2743s, this.f2744t, iArr[0], this.f2747w, this.f2748x));
                }
                break;
            case 214:
                if (s0.h(iArr, 1) && (iArr[0] != this.f2747w || iArr[1] != this.f2748x)) {
                    y(x(this.f2745u, this.f2743s, this.f2744t, this.f2746v, iArr[0], iArr[1]));
                }
                break;
            case 215:
                if (s0.h(iArr, 0) && iArr[0] != this.f2749y) {
                    y(3, 1, iArr[0] + 2);
                }
                break;
            case 216:
                if (s0.h(iArr, 1) && (iArrW = w(this.f2749y, iArr[0], iArr[1], this.f2742r.get(iArr[0]))) != null) {
                    y(iArrW);
                }
                break;
            case 217:
                if (s0.h(iArr, 1) && (iArrW2 = w(this.f2749y, iArr[0], this.f2741q.get(iArr[0]), iArr[1])) != null) {
                    y(iArrW2);
                }
                break;
            default:
                z2 = false;
                break;
        }
        if (z2) {
            o1.m.a().removeCallbacks(this.D);
            o1.m.a().postDelayed(this.D, 100L);
        }
        return z2;
    }

    @Override // i1.s
    public void l(int[] iArr) {
        v();
        int i2 = 0;
        int i3 = iArr[0];
        if (i3 == 1) {
            this.f2750z = Arrays.copyOfRange(iArr, 1, iArr.length);
            int i4 = iArr[1];
            if (i4 != this.f2745u) {
                this.f2745u = i4;
                r(210, i4);
            }
            int i5 = iArr[2];
            if (i5 != this.f2743s) {
                this.f2743s = i5;
                r(211, i5);
            }
            int i6 = iArr[3];
            if (i6 != this.f2744t) {
                this.f2744t = i6;
                r(212, i6);
            }
            int i7 = iArr[4];
            if (i7 != this.f2746v) {
                this.f2746v = i7;
                r(213, i7);
            }
            int i8 = iArr[iArr.length - 2];
            int i9 = iArr[iArr.length - 1];
            if (i8 == this.f2747w && i9 == this.f2748x) {
                return;
            }
            this.f2747w = i8;
            this.f2748x = i9;
            r(214, i8, i9);
            return;
        }
        if (i3 != 2) {
            return;
        }
        int length = iArr.length;
        this.A = Arrays.copyOfRange(iArr, 1, length);
        int i10 = iArr[1];
        if (i10 != this.f2749y) {
            this.f2749y = i10;
            r(215, i10);
        }
        while (true) {
            int i11 = (i2 * 2) + 2;
            int i12 = i11 + 1;
            if (i12 >= length) {
                return;
            }
            z(i2, iArr[i11]);
            A(i2, iArr[i12]);
            i2++;
        }
    }

    @Override // i1.s
    public boolean p(y.b bVar, int i2, int i3) {
        if (i3 != 1) {
            return false;
        }
        switch (i2) {
            case 210:
                o1.x.v(bVar, i2, this.f2745u);
                break;
            case 211:
                o1.x.v(bVar, i2, this.f2743s);
                break;
            case 212:
                o1.x.v(bVar, i2, this.f2744t);
                break;
            case 213:
                o1.x.v(bVar, i2, this.f2746v);
                break;
            case 214:
                o1.x.v(bVar, i2, this.f2747w, this.f2748x);
                break;
            case 215:
                o1.x.v(bVar, i2, this.f2749y);
                break;
            case 216:
                if (this.f2741q.size() > 0) {
                    for (int i4 = 0; i4 < this.f2741q.size(); i4++) {
                        o1.x.v(bVar, i2, this.f2741q.keyAt(i4), this.f2741q.valueAt(i4));
                    }
                }
                break;
            case 217:
                if (this.f2742r.size() > 0) {
                    for (int i5 = 0; i5 < this.f2742r.size(); i5++) {
                        o1.x.v(bVar, i2, this.f2742r.keyAt(i5), this.f2742r.valueAt(i5));
                    }
                }
                break;
            default:
                return false;
        }
        return true;
    }

    public void v() {
        b0 b0Var = this.f2740p;
        if (b0Var != null) {
            b0Var.f(255);
        }
    }

    public int[] w(int i2, int i3, int i4, int i5) {
        if (i4 == this.f2741q.get(i3, i4) && i5 == this.f2742r.get(i3, i5)) {
            return null;
        }
        int length = this.A.length;
        int[] iArrA = s0.a(length + 2);
        iArrA[0] = 2;
        iArrA[1] = length;
        System.arraycopy(this.A, 0, iArrA, 2, length);
        iArrA[2] = i2;
        int i6 = (i3 * 2) + 3;
        iArrA[i6] = i4;
        iArrA[i6 + 1] = i5;
        return iArrA;
    }

    public int[] x(int i2, int i3, int i4, int i5, int i6, int i7) {
        int length = this.f2750z.length;
        int i8 = length + 2;
        int[] iArrA = s0.a(i8);
        iArrA[0] = 1;
        iArrA[1] = length;
        System.arraycopy(this.f2750z, 0, iArrA, 2, length);
        iArrA[2] = i2;
        iArrA[3] = i3;
        iArrA[4] = i4;
        iArrA[5] = i5;
        iArrA[i8 - 2] = i6;
        iArrA[i8 - 1] = i7;
        return iArrA;
    }

    public void y(int... iArr) {
        int length = iArr.length;
        int[] iArr2 = new int[length + 2];
        int i2 = 0;
        iArr2[0] = 46;
        int i3 = 0;
        while (i2 < length) {
            int i4 = i2 + 1;
            iArr2[i4] = iArr[i2];
            i3 += iArr[i2] & 255;
            i2 = i4;
        }
        iArr2[length + 1] = (i3 ^ 255) & 255;
        b0 b0Var = this.f2740p;
        if (b0Var != null) {
            b0Var.f(iArr2);
        }
    }

    public void z(int i2, int i3) {
        if (i3 != this.f2741q.get(i2, -1)) {
            this.f2741q.put(i2, i3);
            r(216, i2, i3);
        }
    }
}
