package v0;

import o1.x;

/* JADX INFO: loaded from: classes2.dex */
public class h extends m {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static h f17750b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public m f17751a;

    public static synchronized h M2() {
        if (f17750b == null) {
            f17750b = new h();
        }
        return f17750b;
    }

    @Override // v0.m, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        m mVar = this.f17751a;
        if (mVar != null) {
            return mVar.M1(i2, iArr, fArr, strArr);
        }
        return null;
    }

    public m N2() {
        return this.f17751a;
    }

    public void O2(m mVar) {
        this.f17751a = mVar;
    }

    @Override // v0.m, y.c
    public void P0(y.b bVar, int i2) {
        if (bVar != null && i2 >= 0 && i2 < 1200 && b.f17729d[i2] == null) {
            x.o(b.f17730e, bVar, i2);
        }
    }

    @Override // v0.m, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (bVar != null && i2 >= 0 && i2 < 1200) {
            x[] xVarArr = b.f17729d;
            if (xVarArr[i2] == null) {
                synchronized (this) {
                    if (xVarArr[i2] == null) {
                        xVarArr[i2] = b.f17730e;
                    }
                }
            }
            x.k(b.f17730e, bVar, i2);
            if (i3 == 0) {
                return;
            }
            if (i2 < 1000) {
                m mVar = this.f17751a;
                if (mVar != null) {
                    mVar.Y1(bVar, i2, i3);
                    return;
                }
                return;
            }
            if (i2 == 1000) {
                x.v(bVar, i2, b.f17732g);
            } else {
                if (i2 != 1001) {
                    return;
                }
                x.v(bVar, i2, b.f17726a);
            }
        }
    }

    @Override // v0.m, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        m mVar;
        if (i2 >= 1000 || (mVar = this.f17751a) == null) {
            return;
        }
        mVar.Z0(i2, iArr, fArr, strArr);
    }
}
