package s0;

import o1.p0;
import o1.x;

/* JADX INFO: loaded from: classes2.dex */
public class f extends y.c.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static f f17207a;

    public static synchronized f K2() {
        if (f17207a == null) {
            synchronized (f.class) {
                if (f17207a == null) {
                    f17207a = new f();
                }
            }
        }
        return f17207a;
    }

    @Override // y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // y.c
    public void P0(y.b bVar, int i2) {
        if (bVar != null && i2 >= 0 && i2 < 20 && c.f17185c[i2] != null) {
            x.o(c.f17186d, bVar, i2);
        }
    }

    @Override // y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (bVar == null) {
            return;
        }
        if (i2 >= 0 && i2 < 20) {
            x[] xVarArr = c.f17185c;
            if (xVarArr[i2] == null) {
                synchronized (this) {
                    if (xVarArr[i2] == null) {
                        xVarArr[i2] = c.f17186d;
                    }
                }
            }
            x.k(c.f17186d, bVar, i2);
        }
        if (i3 == 0) {
            return;
        }
        if (i2 == 0) {
            x.v(bVar, i2, c.f17187e);
            return;
        }
        switch (i2) {
            case 3:
                x.v(bVar, i2, c.f17188f);
                return;
            case 4:
                x.v(bVar, i2, c.f17190h);
                return;
            case 5:
                x.v(bVar, i2, c.f17192j);
                return;
            case 6:
                x.v(bVar, i2, c.f17194l);
                return;
            case 7:
                x.v(bVar, i2, c.f17196n);
                return;
            case 8:
                x.v(bVar, i2, c.f17198p);
                return;
            case 9:
                x.v(bVar, i2, c.f17200r);
                return;
            case 10:
                x.v(bVar, i2, c.f17201s);
                return;
            case 11:
                x.v(bVar, i2, c.f17202t);
                return;
            case 12:
                x.v(bVar, i2, c.f17203u);
                return;
            case 13:
                x.v(bVar, i2, c.f17204v);
                return;
            case 14:
                x.v(bVar, i2, c.f17205w);
                return;
            case 15:
                x.v(bVar, i2, c.f17206x);
                return;
            default:
                return;
        }
    }

    @Override // y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        switch (i2) {
            case 0:
                if (p0.b(iArr, 1)) {
                    d.n(iArr[0]);
                }
                break;
            case 1:
                if (p0.b(iArr, 1)) {
                    c.f17184b.f(iArr[0]);
                }
                break;
            case 2:
                if (p0.b(iArr, 1)) {
                    c.f17184b.c(iArr[0]);
                }
                break;
            case 3:
                if (p0.b(iArr, 1)) {
                    c.f17184b.g(iArr[0]);
                }
                break;
            case 4:
                if (p0.b(iArr, 1)) {
                    c.f17184b.e(iArr[0]);
                }
                break;
            case 5:
                if (p0.b(iArr, 1)) {
                    c.f17184b.h(iArr[0]);
                }
                break;
            case 6:
                if (p0.b(iArr, 1)) {
                    c.f17184b.d(iArr[0]);
                }
                break;
        }
    }
}
