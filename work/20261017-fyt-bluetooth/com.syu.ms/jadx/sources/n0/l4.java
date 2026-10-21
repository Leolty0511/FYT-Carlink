package n0;

/* JADX INFO: loaded from: classes2.dex */
public class l4 extends y.c.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static l4 f16490b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public c4 f16491a = null;

    public static synchronized l4 L2() {
        if (f16490b == null) {
            f16490b = new l4();
        }
        return f16490b;
    }

    public c4 K2() {
        return this.f16491a;
    }

    @Override // y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    public void M2(c4 c4Var) {
        this.f16491a = c4Var;
    }

    @Override // y.c
    public void P0(y.b bVar, int i2) {
        if (bVar != null && i2 >= 0 && i2 < 100 && j4.f16467e[i2] != null) {
            o1.x.o(j4.f16468f, bVar, i2);
        }
    }

    @Override // y.c
    public void Y1(y.b bVar, int i2, int i3) {
        c4 c4Var;
        if (bVar != null && i2 >= 0 && i2 < 100) {
            o1.x[] xVarArr = j4.f16467e;
            if (xVarArr[i2] == null) {
                synchronized (this) {
                    if (xVarArr[i2] == null) {
                        xVarArr[i2] = j4.f16468f;
                    }
                }
            }
            o1.x.k(j4.f16468f, bVar, i2);
            if (i3 == 0 || i2 >= 80 || (c4Var = this.f16491a) == null) {
                return;
            }
            c4Var.Y1(bVar, i2, i3);
        }
    }

    @Override // y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        c4 c4Var;
        if (i2 < 1000 || (c4Var = this.f16491a) == null) {
            return;
        }
        c4Var.Z0(i2, iArr, fArr, strArr);
    }
}
