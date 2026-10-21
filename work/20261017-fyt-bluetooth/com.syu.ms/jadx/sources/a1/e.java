package a1;

import android.util.Log;
import java.util.Arrays;
import o1.h0;
import o1.s0;
import y.f;
import z.k;

/* JADX INFO: loaded from: classes2.dex */
public class e extends base.b {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static e f122g;

    public e() {
        this.f331f.n("Steer-TRAN");
        P2("STEER");
    }

    public static synchronized e X2() {
        if (f122g == null) {
            f122g = new e();
        }
        return f122g;
    }

    @Override // y.c
    public f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            if (!Y2(iArr, 1) || iArr[0] < 0 || iArr[0] >= 50) {
                return null;
            }
            return new f(b.f112c[iArr[0]]);
        }
        if (i2 == 1 && Y2(iArr, 1) && iArr[0] >= 0 && iArr[0] < 6) {
            return new f(b.f113d[iArr[0]]);
        }
        return null;
    }

    @Override // base.b
    public void N2(int i2, int[] iArr, float[] fArr, String[] strArr) {
        Log.e("Steer", "cmdCode: " + i2 + " ints: " + Arrays.toString(iArr));
        switch (i2) {
            case 0:
                if (Y2(iArr, 1)) {
                    c.g(iArr[0]);
                }
                break;
            case 1:
                if (Y2(iArr, 1)) {
                    b.f111b.c(iArr[0], b.f114e);
                }
                break;
            case 2:
                if (Y2(iArr, 1)) {
                    b.f111b.j(iArr[0]);
                }
                break;
            case 3:
                b.f111b.clear();
                break;
            case 4:
                b.f111b.save();
                break;
            case 5:
                if (Y2(iArr, 1)) {
                    b.f111b.f(iArr[0]);
                }
                break;
            case 6:
                if (Y2(iArr, 2)) {
                    b.f111b.g(iArr[0], iArr[1]);
                }
                break;
            case 7:
                if (Y2(iArr, 2)) {
                    b.f111b.e(iArr[0], iArr[1], b.f114e);
                }
                break;
            case 10:
                if (Y2(iArr, 2)) {
                    b.f111b.i(iArr[0], iArr[1]);
                }
                break;
            case 11:
                if (Y2(iArr, 3)) {
                    b.f111b.h(iArr[0], iArr[1], iArr[2]);
                }
                break;
            case 12:
                if (s0.h(iArr, 0)) {
                    if (iArr[0] == 0) {
                        k.s(197, 0);
                    } else if (iArr[0] == 1) {
                        d dVar = b.f111b;
                        if (dVar instanceof a) {
                            ((a) dVar).o();
                        }
                    }
                }
                break;
        }
    }

    @Override // base.b
    public void O2(int i2, int[] iArr, float[] fArr, String[] strArr) {
    }

    @Override // y.c
    public void P0(y.b bVar, int i2) {
        if (bVar == null) {
            return;
        }
        this.f331f.p(bVar, i2);
    }

    @Override // base.b
    public void Q2(h0 h0Var) {
        d dVar = b.f111b;
        if (dVar instanceof a) {
            ((a) dVar).A();
        }
    }

    @Override // base.b, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (bVar == null) {
            return;
        }
        this.f331f.m(bVar, i2);
        if (i3 == 0) {
            return;
        }
        if (i2 == 0) {
            this.f331f.G(bVar, i2, b.f115f);
            return;
        }
        if (i2 == 1) {
            for (int i4 = 0; i4 < 50; i4++) {
                this.f331f.G(bVar, i2, i4, b.f112c[i4]);
            }
            return;
        }
        if (i2 == 2) {
            this.f331f.G(bVar, i2, b.f114e);
            return;
        }
        if (i2 == 3) {
            for (int i5 = 0; i5 < 6; i5++) {
                this.f331f.G(bVar, i2, i5, b.f113d[i5]);
            }
            return;
        }
        if (i2 == 4) {
            this.f331f.G(bVar, i2, b.f116g);
        } else {
            if (i2 != 5) {
                return;
            }
            this.f331f.G(bVar, i2, b.f117h);
        }
    }

    public final boolean Y2(int[] iArr, int i2) {
        return iArr != null && iArr.length >= i2;
    }
}
