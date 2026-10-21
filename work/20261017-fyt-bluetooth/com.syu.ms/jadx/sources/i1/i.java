package i1;

import android.net.ProxyProperties;
import android.util.Log;
import android.util.SparseArray;
import o1.s0;

/* JADX INFO: loaded from: classes2.dex */
public class i extends s<a> implements b0.a {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f2626h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f2627i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f2628j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f2629k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f2630l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int f2631m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final int f2632n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f2633o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public b0 f2634p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public SparseArray<b> f2635q;

    public static class a extends e {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int[] f2636h = {85};

        @Override // i1.e
        public boolean a(int i2) {
            int i3 = 85;
            for (int i4 = 0; i4 < this.f2619d.intValue(); i4++) {
                i3 += this.f2618c[i4] & 255;
            }
            return (((~i3) + 1) & 255) == i2;
        }

        @Override // i1.e
        public void b() {
            super.b();
        }

        @Override // i1.e
        public boolean c(int i2) {
            return this.f2619d != null;
        }

        @Override // i1.e
        public int[] f() {
            return this.f2636h;
        }

        @Override // i1.e
        public boolean j() {
            this.f2619d = 6;
            return super.j();
        }
    }

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f2637a = ProxyProperties.LOCAL_EXCL_LIST;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public float f2638b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public float f2639c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f2640d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f2641e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f2642f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f2643g;

        public boolean a(int i2) {
            boolean z2 = this.f2643g != i2;
            if (z2) {
                this.f2643g = i2;
            }
            return z2;
        }

        public boolean b(String str) {
            boolean z2 = !this.f2637a.equals(str);
            if (z2) {
                this.f2637a = str;
            }
            return z2;
        }

        public boolean c(int i2) {
            boolean z2 = this.f2641e != i2;
            if (z2) {
                this.f2641e = i2;
            }
            return z2;
        }

        public boolean d(int i2) {
            boolean z2 = this.f2642f != i2;
            if (z2) {
                this.f2642f = i2;
            }
            return z2;
        }

        public boolean e(float f2) {
            boolean z2 = this.f2638b != f2;
            if (z2) {
                this.f2638b = f2;
            }
            return z2;
        }

        public boolean f(int i2) {
            boolean z2 = this.f2640d != i2;
            if (z2) {
                this.f2640d = i2;
            }
            return z2;
        }

        public boolean g(float f2) {
            boolean z2 = this.f2639c != f2;
            if (z2) {
                this.f2639c = f2;
            }
            return z2;
        }
    }

    public i(int i2, int i3) {
        super(i2, i3);
        this.f2626h = 200;
        this.f2627i = 201;
        this.f2628j = 202;
        this.f2629k = 203;
        this.f2630l = 204;
        this.f2631m = 205;
        this.f2632n = 206;
        this.f2633o = 0;
        this.f2635q = new SparseArray<>();
        a aVar = new a();
        this.f2721a = aVar;
        aVar.h();
    }

    @Override // i1.b0.a
    public void a(b0 b0Var) {
        this.f2634p = b0Var;
    }

    @Override // i1.b0.a
    public void c(byte[] bArr) {
        synchronized (this) {
            b(bArr);
        }
    }

    @Override // i1.s
    public void l(int[] iArr) {
        float f2 = iArr[0] * 3.14f;
        float f3 = iArr[1] - 50;
        int iY = s0.y(iArr[3], iArr[4], iArr[5]);
        String str = String.format("%02X%02X%02X", Integer.valueOf(iArr[3]), Integer.valueOf(iArr[4]), Integer.valueOf(iArr[5]));
        int i2 = (iArr[2] >> 6) & 3;
        int i3 = (iArr[2] >> 4) & 3;
        int i4 = (iArr[2] >> 2) & 3;
        int i5 = iArr[2] & 3;
        b bVar = this.f2635q.get(iY, null);
        if (bVar == null) {
            bVar = new b();
            bVar.b(str);
            this.f2635q.put(iY, bVar);
        }
        if (bVar.e(f2)) {
            s(200, new int[]{-16777215}, new float[]{v(f2)}, new String[]{bVar.f2637a});
        }
        if (bVar.g(f3)) {
            s(201, new int[]{-16777215}, new float[]{f3}, new String[]{bVar.f2637a});
        }
        if (bVar.c(i2)) {
            s(202, new int[]{i2}, null, new String[]{bVar.f2637a});
        }
        if (bVar.f(i4)) {
            s(204, new int[]{i4}, null, new String[]{bVar.f2637a});
        }
        if (bVar.d(i3)) {
            s(203, new int[]{i3}, null, new String[]{bVar.f2637a});
        }
        if (bVar.a(i5)) {
            s(205, new int[]{i5}, null, new String[]{bVar.f2637a});
        }
        Log.e("tpms", String.format("00 senor : [pressure: %.2f, temp: %.2f, id: %d, idName: %s, mode: %d, motion: %d, state: %d, battery: %d]", Float.valueOf(bVar.f2638b), Float.valueOf(bVar.f2639c), Integer.valueOf(iY), bVar.f2637a, Integer.valueOf(bVar.f2641e), Integer.valueOf(bVar.f2642f), Integer.valueOf(bVar.f2640d), Integer.valueOf(bVar.f2643g)));
    }

    @Override // i1.s
    public boolean p(y.b bVar, int i2, int i3) {
        int size = this.f2635q.size();
        Log.e("test", "-----updateCode :" + i2);
        if (size <= 0 || i3 == 0) {
            return super.p(bVar, i2, i3);
        }
        switch (i2) {
            case 200:
                for (int i4 = 0; i4 < size; i4++) {
                    b bVarValueAt = this.f2635q.valueAt(i4);
                    s(200, new int[]{-16777215}, new float[]{v(bVarValueAt.f2638b)}, new String[]{bVarValueAt.f2637a});
                }
                break;
            case 201:
                for (int i5 = 0; i5 < size; i5++) {
                    b bVarValueAt2 = this.f2635q.valueAt(i5);
                    s(201, new int[]{-16777215}, new float[]{bVarValueAt2.f2639c}, new String[]{bVarValueAt2.f2637a});
                }
                break;
            case 202:
                for (int i6 = 0; i6 < size; i6++) {
                    b bVarValueAt3 = this.f2635q.valueAt(i6);
                    s(202, new int[]{bVarValueAt3.f2641e}, null, new String[]{bVarValueAt3.f2637a});
                }
                break;
            case 203:
                for (int i7 = 0; i7 < size; i7++) {
                    b bVarValueAt4 = this.f2635q.valueAt(i7);
                    s(203, new int[]{bVarValueAt4.f2642f}, null, new String[]{bVarValueAt4.f2637a});
                }
                break;
            case 204:
                for (int i8 = 0; i8 < size; i8++) {
                    b bVarValueAt5 = this.f2635q.valueAt(i8);
                    s(204, new int[]{bVarValueAt5.f2640d}, null, new String[]{bVarValueAt5.f2637a});
                }
                break;
            case 205:
                for (int i9 = 0; i9 < size; i9++) {
                    b bVarValueAt6 = this.f2635q.valueAt(i9);
                    s(205, new int[]{bVarValueAt6.f2643g}, null, new String[]{bVarValueAt6.f2637a});
                }
                break;
            default:
                return false;
        }
        return true;
    }

    public float v(float f2) {
        float f3;
        int i2 = this.f2633o;
        if (i2 == 1) {
            f3 = 0.14503776f;
        } else {
            f3 = i2 == 2 ? 0.01f : 1.0f;
        }
        return f2 * f3;
    }
}
