package w0;

import android.util.Log;
import base.Configure;
import java.util.Arrays;
import o1.h0;
import o1.s0;
import o1.x;

/* JADX INFO: loaded from: classes2.dex */
public class i extends base.b {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static i f17822g;

    public i() {
        this.f331f.n("Radio-TRAN");
        this.f331f.f17001d = Configure.Property.MODULE_DEBUG_PREFIX.c("radio", false);
    }

    public static synchronized i X2() {
        if (f17822g == null) {
            f17822g = new i();
        }
        return f17822g;
    }

    @Override // y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // base.b
    public void N2(int i2, int[] iArr, float[] fArr, String[] strArr) {
        base.a aVar;
        Log.e("radio", "00 >>>>>>>>>>>>>>    cmd :  " + i2 + "  " + Arrays.toString(iArr));
        if ((d.f17790b instanceof h) && s0.l("sys.syu.radio.ta", false)) {
            s0.F("sys.syu.radio.ta", "false");
        }
        if (i2 == 0) {
            d.f17790b.c();
        }
        if (i2 == 1) {
            d.f17790b.g();
            return;
        }
        switch (i2) {
            case 3:
                d.f17790b.i();
                break;
            case 4:
                d.f17790b.d();
                break;
            case 5:
                d.f17790b.h();
                break;
            case 6:
                d.f17790b.B();
                break;
            case 7:
                if (Y2(iArr, 1)) {
                    d.f17790b.z(iArr[0]);
                }
                break;
            case 8:
                if (Y2(iArr, 1)) {
                    d.f17790b.j(iArr[0]);
                }
                break;
            case 9:
                d.f17790b.k();
                break;
            case 10:
                d.f17790b.save();
                break;
            case 11:
                if (Y2(iArr, 1)) {
                    d.f17790b.x(iArr[0]);
                }
                break;
            case 12:
                if (Y2(iArr, 1)) {
                    d.f17790b.f(iArr[0]);
                }
                break;
            case 13:
                if (Y2(iArr, 2)) {
                    d.f17790b.l(iArr[0], iArr[1]);
                }
                break;
            case 14:
                if (Y2(iArr, 2)) {
                    d.f17790b.y(iArr[0], iArr[1]);
                }
                break;
            case 15:
                if (Y2(iArr, 1)) {
                    d.f17790b.s(iArr[0]);
                }
                break;
            case 16:
                if (Y2(iArr, 1)) {
                    d.f17790b.u(iArr[0]);
                }
                break;
            case 17:
                if (Y2(iArr, 1)) {
                    d.f17790b.p(iArr[0]);
                }
                break;
            case 18:
                if (Y2(iArr, 1)) {
                    d.f17790b.A(iArr[0]);
                }
                break;
            case 19:
                if (Y2(iArr, 1)) {
                    d.f17790b.w(iArr[0]);
                }
                break;
            case 20:
                if (Y2(iArr, 1)) {
                    d.f17790b.n(iArr[0]);
                }
                break;
            case 21:
                if (Y2(iArr, 1)) {
                    d.f17790b.o(iArr[0]);
                }
                break;
            case 22:
                if (Y2(iArr, 1)) {
                    d.f17790b.v(iArr[0]);
                }
                break;
            case 23:
                if (Y2(iArr, 1)) {
                    d.f17790b.r(iArr[0]);
                }
                break;
            case 24:
                if (Y2(iArr, 1)) {
                    f.b(iArr[0]);
                }
                break;
            case 25:
                if (Y2(iArr, 1)) {
                    d.f17790b.q(iArr[0]);
                }
                break;
            case 26:
                f.p(iArr, fArr, strArr);
                break;
            case 27:
                if (strArr == null) {
                    if (d.f17789a != 1) {
                        f.x("----");
                    }
                } else if (d.f17789a != 1) {
                    f.x(strArr[0]);
                }
                break;
            default:
                switch (i2) {
                    case 32:
                        if (s0.h(iArr, 0) && (aVar = a.c.f39a) != null) {
                            if (iArr[0] != 1) {
                                aVar.a(false);
                            } else {
                                aVar.a(true);
                            }
                            break;
                        }
                        break;
                    case 33:
                        if (s0.h(iArr, 0)) {
                            d.f17790b.t(iArr[0], iArr.length > 1 ? Arrays.copyOfRange(iArr, 1, iArr.length) : null, fArr, strArr);
                        }
                        break;
                    case 34:
                        d.f17790b.reset();
                        break;
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
    }

    @Override // base.b, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (bVar == null) {
        }
        super.Y1(bVar, i2, i3);
        this.f331f.m(bVar, i2);
        if (i3 == 0) {
            return;
        }
        g gVar = d.f17790b;
        if (gVar == null || !gVar.m(bVar, i2)) {
            if (i2 == 29) {
                this.f331f.G(bVar, i2, d.E);
                return;
            }
            if (i2 == 32) {
                x xVar = this.f331f;
                int[] iArr = new int[1];
                base.a aVar = a.c.f39a;
                iArr[0] = (aVar == null || !aVar.d()) ? 0 : 1;
                xVar.G(bVar, i2, iArr);
                return;
            }
            if (i2 == 35) {
                this.f331f.G(bVar, i2, d.F);
                return;
            }
            if (i2 == 36) {
                this.f331f.G(bVar, i2, d.G);
                return;
            }
            switch (i2) {
                case 0:
                    this.f331f.G(bVar, i2, d.f17796h);
                    break;
                case 1:
                    this.f331f.G(bVar, i2, d.f17797i);
                    break;
                case 2:
                    this.f331f.G(bVar, i2, d.f17799k);
                    break;
                case 3:
                    this.f331f.G(bVar, i2, d.f17798j);
                    break;
                case 4:
                    for (int i4 = 0; i4 < 12; i4++) {
                        this.f331f.G(bVar, i2, i4 + 0, d.f17792d[i4]);
                    }
                    for (int i5 = 0; i5 < 18; i5++) {
                        this.f331f.G(bVar, i2, i5 + 65536, d.f17793e[i5]);
                    }
                    break;
                case 5:
                    this.f331f.G(bVar, i2, d.f17800l);
                    break;
                case 6:
                    this.f331f.G(bVar, i2, d.f17801m);
                    break;
                case 7:
                    this.f331f.G(bVar, i2, d.f17802n);
                    break;
                case 8:
                    this.f331f.G(bVar, i2, d.f17803o);
                    break;
                case 9:
                    this.f331f.G(bVar, i2, d.f17804p);
                    break;
                case 10:
                    this.f331f.G(bVar, i2, d.f17805q);
                    break;
                case 11:
                    this.f331f.G(bVar, i2, d.f17806r);
                    break;
                case 12:
                    this.f331f.G(bVar, i2, d.f17807s);
                    break;
                case 13:
                    this.f331f.F(bVar, i2, d.H);
                    break;
                case 14:
                    x xVarL2 = X2().L2();
                    for (int i6 = 0; i6 < 12; i6++) {
                        xVarL2.E(bVar, i2, i6 + 0, d.f17794f[i6]);
                    }
                    for (int i7 = 0; i7 < 18; i7++) {
                        xVarL2.E(bVar, i2, i7 + 65536, d.f17795g[i7]);
                    }
                    break;
                case 15:
                    this.f331f.G(bVar, i2, d.f17808t);
                    break;
                case 16:
                    g gVar2 = d.f17790b;
                    if (gVar2 instanceof h) {
                        ((h) gVar2).D(bVar);
                    } else {
                        f.g();
                    }
                    break;
                case 17:
                    this.f331f.G(bVar, i2, d.f17809u);
                    break;
                case 18:
                    this.f331f.G(bVar, i2, d.f17810v);
                    break;
                case 19:
                    this.f331f.G(bVar, i2, d.f17811w);
                    break;
                case 20:
                    this.f331f.G(bVar, i2, d.f17812x);
                    break;
                case 21:
                    this.f331f.G(bVar, i2, d.f17814z);
                    break;
                case 22:
                    this.f331f.G(bVar, i2, d.A);
                    break;
                case 23:
                    this.f331f.G(bVar, i2, d.f17813y);
                    break;
                case 24:
                    this.f331f.G(bVar, i2, d.B);
                    break;
                case 25:
                    this.f331f.G(bVar, i2, d.C);
                    break;
                case 26:
                    this.f331f.F(bVar, i2, d.I);
                    break;
                case 27:
                    this.f331f.G(bVar, i2, d.D);
                    break;
            }
        }
    }

    public final boolean Y2(int[] iArr, int i2) {
        return iArr != null && iArr.length >= i2;
    }
}
