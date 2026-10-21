package p0;

import o1.x;
import y.f;

/* JADX INFO: loaded from: classes2.dex */
public class e extends y.c.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static e f17029a;

    public static synchronized e K2() {
        if (f17029a == null) {
            f17029a = new e();
        }
        return f17029a;
    }

    public final boolean L2(int[] iArr, int i2) {
        return iArr != null && iArr.length >= i2;
    }

    @Override // y.c
    public f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // y.c
    public void P0(y.b bVar, int i2) {
        if (bVar != null && i2 >= 0 && i2 < 50 && b.f17021c[i2] == null) {
            x.o(b.f17022d, bVar, i2);
        }
    }

    @Override // y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (bVar == null) {
            return;
        }
        if (i2 >= 0 && i2 < 50) {
            x[] xVarArr = b.f17021c;
            if (xVarArr[i2] == null) {
                synchronized (this) {
                    if (xVarArr[i2] == null) {
                        xVarArr[i2] = b.f17022d;
                    }
                }
            }
            x.k(b.f17022d, bVar, i2);
        }
        if (i3 == 0) {
            return;
        }
        if (i2 == 0) {
            x.v(bVar, i2, b.f17023e);
        } else {
            if (i2 != 1) {
                return;
            }
            x.v(bVar, i2, b.f17024f);
        }
    }

    @Override // y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            if (L2(iArr, 1)) {
                c.f(iArr[0], 0);
                return;
            } else {
                if (L2(iArr, 2)) {
                    c.f(iArr[0], iArr[1]);
                    return;
                }
                return;
            }
        }
        if (i2 == 1) {
            if (L2(iArr, 1)) {
                c.b(iArr[0]);
            }
        } else if (i2 == 2) {
            if (L2(iArr, 3)) {
                c.i(iArr[0], iArr[1], iArr[2]);
            }
        } else if (i2 == 3 && L2(iArr, 1)) {
            c.c(iArr[0]);
        }
    }
}
