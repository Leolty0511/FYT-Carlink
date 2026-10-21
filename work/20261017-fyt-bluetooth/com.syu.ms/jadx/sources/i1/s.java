package i1;

import android.util.Log;
import android.util.SparseArray;
import i1.e;
import java.util.Arrays;
import o1.s0;

/* JADX INFO: loaded from: classes2.dex */
public abstract class s<P extends e> implements o1.q {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static SparseArray<s<? extends e>> f2720g = new SparseArray<>();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public P f2721a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Integer f2722b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Integer f2723c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int[] f2724d = new int[512];

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public volatile int f2725e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public SparseArray<s<P>.a> f2726f = new SparseArray<>();

    public class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f2727a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int[] f2728b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public float[] f2729c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public String[] f2730d;

        public a(int i2) {
            this.f2727a = i2;
            s.this.f2726f.put(i2, this);
        }

        public final boolean a(float[] fArr) {
            boolean z2 = !Arrays.equals(fArr, this.f2729c);
            if (z2) {
                this.f2729c = fArr;
            }
            return z2;
        }

        public final boolean b(int[] iArr) {
            boolean z2 = !Arrays.equals(iArr, this.f2728b);
            if (z2) {
                this.f2728b = iArr;
            }
            return z2;
        }

        public final boolean c(String[] strArr) {
            boolean z2 = !Arrays.equals(strArr, this.f2730d);
            if (z2) {
                this.f2730d = strArr != null ? (String[]) strArr.clone() : null;
            }
            return z2;
        }
    }

    public s(int i2, int i3) {
        this.f2722b = Integer.valueOf(i2);
        this.f2723c = Integer.valueOf(i3);
        f2720g.put(i2, this);
    }

    /* JADX WARN: In static synchronized method top region not synchronized by class const: (wrap java.lang.Class:0x0000: CONST_CLASS  A[WRAPPED] i1.s.class) */
    public static synchronized s<? extends e> g(int i2) {
        s<? extends e> sVar;
        synchronized (s.class) {
            sVar = f2720g.indexOfKey(i2) < 0 ? null : f2720g.get(i2);
        }
        return sVar;
    }

    public static g h() {
        o1.q qVarG = g(19);
        if (qVarG instanceof g) {
            return (g) qVarG;
        }
        o1.q qVarG2 = g(21);
        if (qVarG2 instanceof g) {
            return (g) qVarG2;
        }
        o1.q qVarG3 = g(23);
        if (qVarG3 instanceof g) {
            return (g) qVarG3;
        }
        o1.q qVarG4 = g(25);
        if (qVarG4 instanceof g) {
            return (g) qVarG4;
        }
        o1.q qVarG5 = g(27);
        if (qVarG5 instanceof g) {
            return (g) qVarG5;
        }
        o1.q qVarG6 = g(29);
        if (qVarG6 instanceof g) {
            return (g) qVarG6;
        }
        return null;
    }

    /* JADX WARN: In static synchronized method top region not synchronized by class const: (wrap java.lang.Class:0x0000: CONST_CLASS  A[WRAPPED] i1.s.class) */
    public static synchronized boolean m(int i2, int[] iArr, float[] fArr, String[] strArr) {
        boolean z2;
        synchronized (s.class) {
            Log.e("Tpms", "onHandle  cmdCode: " + i2 + "  ints: " + Arrays.toString(iArr));
            s<? extends e> sVarG = g(19);
            z2 = sVarG != null && sVarG.j(i2, iArr, fArr, strArr);
            if (!z2) {
                s<? extends e> sVarG2 = g(21);
                z2 = sVarG2 != null && sVarG2.j(i2, iArr, fArr, strArr);
            }
            if (!z2) {
                s<? extends e> sVarG3 = g(23);
                z2 = sVarG3 != null && sVarG3.j(i2, iArr, fArr, strArr);
            }
        }
        return z2;
    }

    /* JADX WARN: In static synchronized method top region not synchronized by class const: (wrap java.lang.Class:0x0000: CONST_CLASS  A[WRAPPED] i1.s.class) */
    public static synchronized boolean n(y.b bVar, int i2, int i3) {
        boolean z2;
        synchronized (s.class) {
            s<? extends e> sVarG = g(19);
            z2 = sVarG != null && sVarG.p(bVar, i2, i3);
            if (!z2) {
                s<? extends e> sVarG2 = g(21);
                z2 = sVarG2 != null && sVarG2.p(bVar, i2, i3);
            }
            if (!z2) {
                s<? extends e> sVarG3 = g(23);
                z2 = sVarG3 != null && sVarG3.p(bVar, i2, i3);
            }
        }
        return z2;
    }

    @Override // o1.q
    public void b(byte[] bArr) {
        o(bArr);
        boolean z2 = bArr != null && bArr.length > 0;
        if (k() && z2) {
            l(s0.e(bArr));
            return;
        }
        if (this.f2721a != null && z2) {
            for (byte b2 : bArr) {
                if (this.f2721a.d()) {
                    int[] iArr = this.f2724d;
                    int i2 = this.f2725e;
                    this.f2725e = i2 + 1;
                    iArr[i2] = b2;
                    int iG = this.f2721a.g(b2);
                    if (iG == 1) {
                        this.f2725e = 0;
                        if (this.f2721a.j()) {
                            int[] iArr2 = new int[this.f2721a.f2619d.intValue() + 1];
                            iArr2[0] = this.f2721a.f2620e.intValue();
                            P p2 = this.f2721a;
                            System.arraycopy(p2.f2618c, 0, iArr2, 1, p2.f2619d.intValue());
                            l(iArr2);
                        } else {
                            P p3 = this.f2721a;
                            l(Arrays.copyOfRange(p3.f2618c, 0, p3.f2619d.intValue()));
                        }
                        this.f2721a.b();
                    } else if (iG == -1) {
                        int i3 = this.f2725e;
                        this.f2725e = 0;
                        if (i3 > 1) {
                            int[] iArrCopyOfRange = Arrays.copyOfRange(this.f2724d, 1, i3 - 1);
                            Log.e("Device", "  recycles : " + o1.b0.e(iArrCopyOfRange, 0, iArrCopyOfRange.length) + "  bufferOffset: " + this.f2725e);
                            b(s0.r(iArrCopyOfRange));
                        }
                    } else if (iG == -2) {
                        this.f2725e = 0;
                    }
                } else {
                    int length = bArr.length;
                    int[] iArr3 = new int[length];
                    for (int i4 = 0; i4 < length; i4++) {
                        iArr3[i4] = bArr[i4] & 255;
                    }
                    l(iArr3);
                }
            }
        }
    }

    public s<P>.a i(int i2) {
        s<P>.a aVar = this.f2726f.get(i2);
        if (aVar == null) {
            synchronized (this.f2726f) {
                aVar = new a(this.f2723c.intValue());
            }
        }
        return aVar;
    }

    public boolean j(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return false;
    }

    public boolean k() {
        return false;
    }

    public abstract void l(int[] iArr);

    public void o(byte[] bArr) {
    }

    public boolean p(y.b bVar, int i2, int i3) {
        if (i3 != 1) {
            return false;
        }
        s<P>.a aVarI = i(i2);
        u(bVar, i2, aVarI.f2728b, aVarI.f2729c, aVarI.f2730d);
        return false;
    }

    public void q(int i2, String str, int... iArr) {
        s(i2, iArr, null, new String[]{str});
    }

    public void r(int i2, int... iArr) {
        s<P>.a aVarI = i(i2);
        if (aVarI == null || !aVarI.b(iArr)) {
            return;
        }
        c1.b.j(i2, aVarI.f2728b, aVarI.f2729c, aVarI.f2730d);
    }

    public void s(int i2, int[] iArr, float[] fArr, String[] strArr) {
        s<P>.a aVarI = i(i2);
        Log.e("Device", "updateCode: " + i2 + "  ints:" + Arrays.toString(iArr) + "  flts:" + Arrays.toString(fArr) + "  strs:" + Arrays.toString(strArr));
        boolean zB = aVarI.b(iArr);
        boolean zA = aVarI.a(fArr);
        boolean zC = aVarI.c(strArr);
        Log.e("test", "updateCode: " + i2 + " status  ints:" + Arrays.toString(aVarI.f2728b) + "  flts:" + Arrays.toString(aVarI.f2729c) + "  strs:" + Arrays.toString(aVarI.f2730d));
        if (zB || zA || zC) {
            c1.b.j(i2, aVarI.f2728b, aVarI.f2729c, aVarI.f2730d);
        }
    }

    public void t(y.b bVar, int i2, int... iArr) {
        u(bVar, i2, iArr, null, null);
    }

    public void u(y.b bVar, int i2, int[] iArr, float[] fArr, String[] strArr) {
        s<P>.a aVarI = i(i2);
        Log.e("Device", "updateCode: " + i2 + "  ints:" + Arrays.toString(iArr) + "  flts:" + Arrays.toString(fArr) + "  strs:" + Arrays.toString(strArr));
        aVarI.b(iArr);
        aVarI.a(fArr);
        aVarI.c(strArr);
        c1.c cVarO2 = c1.c.O2();
        if (cVarO2 != null) {
            cVarO2.S2(bVar, i2, iArr, fArr, strArr);
        }
    }
}
