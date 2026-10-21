package u0;

import android.util.SparseIntArray;
import o1.y;
import o1.z;

/* JADX INFO: loaded from: classes2.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final y f17374a = new y();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final z f17375b = new z();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final y f17376c = new y();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final y f17377d = new y();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final y f17378e = new y();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final y f17379f = new y();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final y f17380g = new y();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final y f17381h = new y();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final y f17382i = new y();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final y f17383j = new y();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final y f17384k = new y();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final y f17385l = new y();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final y f17386m = new y();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final y f17387n = new y();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final y f17388o = new y();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final y f17389p = new y();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final y f17390q = new y();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final y f17391r = new y();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final y f17392s = new y();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final y f17393t = new y();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final y f17394u = new y();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final y f17395v = new y();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final y f17396w = new y();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final y f17397x = new y();

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final y f17398y = new y();

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final y f17399z = new y();
    public static final y A = new y();
    public static final y B = new y();
    public static final y C = new y();
    public static final y D = new y();
    public static final y E = new y();
    public static final y F = new y();
    public static final y G = new y();
    public static final y H = new y();
    public static final y I = new y();
    public static final y J = new y();
    public static final y K = new y();
    public static final y L = new y();
    public static final y M = new y();
    public static final y N = new y();
    public static final z O = new z();
    public static final z P = new z();
    public static final z Q = new z();
    public static final z R = new a();

    public class a extends z {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public SparseIntArray f17400b = new SparseIntArray();

        @Override // o1.z
        public synchronized void c(Object obj) {
            try {
                int[] iArr = (int[]) obj;
                if (iArr != null && iArr.length == 2) {
                    int i2 = iArr[0] - 13;
                    if (this.f17400b.get(i2, 0) != iArr[1]) {
                        this.f17400b.put(i2, iArr[1]);
                        super.c(obj);
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }
}
