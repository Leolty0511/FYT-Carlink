package u0;

import android.util.Log;
import c1.n;
import i1.s;
import java.util.Arrays;
import k0.lt;
import k0.nt;
import o1.l0;
import o1.p0;
import o1.q;
import o1.u;

/* JADX INFO: loaded from: classes2.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static l0 f17445a = new l0();

    public static void a(int[] iArr, float[] fArr, String[] strArr) {
        d.J3(42, iArr, fArr, strArr);
    }

    public static void b(int[] iArr, float[] fArr, String[] strArr) {
        int i2;
        Log.e("kuwo", "vaCmd : " + Arrays.toString(iArr) + "  DataMain.sAppId: " + b.D);
        switch (iArr[0]) {
            case 0:
                a.i.A();
                return;
            case 1:
                int i3 = b.D;
                if (i3 == 3) {
                    h0.c.f2425b.w();
                    return;
                } else {
                    if (i3 == 4) {
                        o0.e.f16766b.o();
                        return;
                    }
                    switch (i3) {
                        case 8:
                        case 9:
                        case 10:
                            a.i.L(i3);
                            return;
                        default:
                            return;
                    }
                }
            case 2:
                int i4 = b.D;
                if (i4 == 3) {
                    h0.c.f2425b.E();
                    return;
                } else {
                    if (i4 == 4) {
                        o0.e.f16766b.n();
                        return;
                    }
                    switch (i4) {
                        case 8:
                        case 9:
                        case 10:
                            a.i.K(i4);
                            return;
                        default:
                            return;
                    }
                }
            case 3:
                int i5 = b.D;
                if (i5 == 3) {
                    h0.c.f2425b.k();
                    return;
                } else {
                    if (i5 == 4) {
                        o0.e.f16766b.x();
                        return;
                    }
                    switch (i5) {
                        case 8:
                        case 9:
                        case 10:
                            a.i.P(i5);
                            return;
                        default:
                            return;
                    }
                }
            case 4:
                int i6 = b.D;
                if (i6 == 4) {
                    o0.e.f16766b.j();
                    return;
                }
                switch (i6) {
                    case 8:
                    case 9:
                    case 10:
                        a.i.F(i6);
                        return;
                    default:
                        return;
                }
            case 5:
                int i7 = b.D;
                if (i7 == 4) {
                    o0.e.f16766b.i();
                    return;
                }
                switch (i7) {
                    case 8:
                    case 9:
                    case 10:
                        a.i.E(i7);
                        return;
                    default:
                        return;
                }
            case 6:
                if (o0.e.f16778h == 0) {
                    o0.e.f16766b.f();
                    return;
                }
                return;
            case 7:
                if (o0.e.f16778h != 0) {
                    o0.e.f16766b.f();
                    return;
                }
                return;
            case 8:
                h0.c.f2425b.h(0);
                return;
            case 9:
                h0.c.f2425b.h(1);
                return;
            case 10:
                int i8 = b.D;
                if (i8 == 1) {
                    w0.d.f17790b.g();
                    return;
                }
                if (i8 == 3) {
                    h0.c.f2425b.i();
                    return;
                } else {
                    if (i8 == 4) {
                        o0.e.f16766b.r();
                        return;
                    }
                    switch (i8) {
                        case 8:
                        case 9:
                        case 10:
                            c.e.d().c(88);
                            return;
                        default:
                            return;
                    }
                }
            case 11:
                int i9 = b.D;
                if (i9 == 1) {
                    w0.d.f17790b.c();
                    return;
                }
                if (i9 == 3) {
                    h0.c.f2425b.V();
                    return;
                } else {
                    if (i9 == 4) {
                        o0.e.f16766b.l();
                        return;
                    }
                    switch (i9) {
                        case 8:
                        case 9:
                        case 10:
                            c.e.d().c(87);
                            return;
                        default:
                            return;
                    }
                }
            case 12:
                y0.h.u0(-1);
                return;
            case 13:
                y0.h.u0(-2);
                return;
            case 14:
                h0.c.f2425b.P(0);
                return;
            case 15:
                h0.c.f2425b.P(1);
                return;
            case 16:
                u.U0();
                return;
            case 17:
                w0.d.f17790b.k();
                return;
            case 18:
                w0.d.f17790b.x(-1);
                return;
            case 19:
                w0.d.f17790b.d();
                return;
            case 20:
                w0.d.f17790b.i();
                return;
            case 21:
                w0.d.f17790b.h();
                return;
            case 22:
                w0.d.f17790b.B();
                return;
            case 23:
                w0.d.f17790b.v(2);
                return;
            case 24:
                w0.d.f17790b.save();
                return;
            case 25:
                a(iArr, fArr, strArr);
                return;
            case 26:
                a(iArr, fArr, strArr);
                return;
            case 27:
                if (p0.h(strArr, 1)) {
                    try {
                        int i10 = Integer.parseInt(strArr[0]);
                        if (b.D == 1) {
                            w0.d.f17790b.l(1, i10);
                            return;
                        }
                        return;
                    } catch (Exception e2) {
                        e2.printStackTrace();
                        return;
                    }
                }
                return;
            case 28:
                if (iArr.length < 2 || w0.d.f17789a != 1 || (i2 = iArr[1]) < 0 || i2 > 5) {
                    return;
                }
                w0.f.B(i2 + 1);
                return;
            case 29:
                a(iArr, fArr, strArr);
                return;
            case 30:
                a(iArr, fArr, strArr);
                return;
            case 31:
                if (p0.h(strArr, 1)) {
                    h0.e.q(strArr[0]);
                    return;
                }
                return;
            case 32:
                if (iArr.length >= 2) {
                    synchronized (d.f17407g) {
                        if (iArr[1] == 0) {
                            if (b.i4 > 2) {
                                d.I3(57, 0);
                            }
                            if (f17445a.c(2000) & (b.j4 != 0)) {
                                f17445a.a();
                                b.i4 = 2;
                            }
                        } else {
                            f17445a.b();
                            b.i4 = 10;
                            d.P3(1);
                        }
                        break;
                    }
                    return;
                }
                return;
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 38:
            case 39:
            case 40:
            case 41:
            case 42:
            case 43:
            case 44:
            case 45:
            case 46:
            case 47:
            case 48:
            case 49:
            case 50:
            case 51:
            case 52:
            case 53:
            case 54:
            case 55:
            case 56:
            case 57:
            case 59:
            case 60:
            case 61:
            case 62:
            case 69:
            case 70:
                lt ltVar = nt.f8639d;
                if (ltVar != null) {
                    ltVar.O2(iArr);
                    return;
                }
                return;
            case 58:
            case 63:
            case 65:
            default:
                return;
            case 64:
                lt ltVar2 = nt.f8639d;
                if (ltVar2 != null) {
                    ltVar2.O2(iArr);
                }
                if (p0.b(iArr, 2)) {
                    if (iArr[1] != 0) {
                        if (b.T0 == 0) {
                            d.G3();
                            return;
                        }
                        return;
                    } else {
                        if (b.T0 != 0) {
                            d.G3();
                            return;
                        }
                        return;
                    }
                }
                return;
            case 66:
                q qVarG = s.g(21);
                if (qVarG == null || !(qVarG instanceof i1.f)) {
                    n.a3(iArr[1]);
                    return;
                } else {
                    ((i1.f) qVarG).f(iArr[1]);
                    return;
                }
            case 67:
                if (iArr.length >= 2) {
                    d.b0(iArr[1]);
                }
                lt ltVar3 = nt.f8639d;
                if (ltVar3 != null) {
                    ltVar3.O2(iArr);
                    return;
                }
                return;
            case 68:
                if (iArr.length >= 2) {
                    s<? extends i1.e> sVarG = s.g(19);
                    if (sVarG != null && sVarG.j(18, iArr, fArr, strArr)) {
                        return;
                    } else {
                        n.V2(iArr[1]);
                    }
                }
                lt ltVar4 = nt.f8639d;
                if (ltVar4 != null) {
                    ltVar4.O2(iArr);
                    return;
                }
                return;
        }
    }
}
