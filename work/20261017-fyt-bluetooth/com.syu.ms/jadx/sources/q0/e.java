package q0;

import o1.p0;
import o1.x;
import y.f;

/* JADX INFO: loaded from: classes2.dex */
public class e extends y.c.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static e f17131a;

    public static synchronized e K2() {
        if (f17131a == null) {
            f17131a = new e();
        }
        return f17131a;
    }

    @Override // y.c
    public f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // y.c
    public void P0(y.b bVar, int i2) {
        if (bVar != null && i2 >= 0 && i2 < 10 && b.f17127c[i2] != null) {
            x.o(b.f17128d, bVar, i2);
        }
    }

    @Override // y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (bVar == null) {
            return;
        }
        if (i2 >= 0 && i2 < 10) {
            x[] xVarArr = b.f17127c;
            if (xVarArr[i2] == null) {
                synchronized (this) {
                    if (xVarArr[i2] == null) {
                        xVarArr[i2] = b.f17128d;
                    }
                }
            }
            x.k(b.f17128d, bVar, i2);
        }
        if (i3 == 0) {
            return;
        }
        if (i2 == 0) {
            x.v(bVar, i2, b.f17129e);
        } else {
            if (i2 != 1) {
                return;
            }
            x.v(bVar, i2, b.f17130f);
        }
    }

    @Override // y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            if (p0.b(iArr, 1)) {
                b.f17126b.f(iArr[0]);
            }
        } else if (i2 == 1 && p0.b(iArr, 1)) {
            b.f17126b.e(iArr[0]);
        }
    }
}
