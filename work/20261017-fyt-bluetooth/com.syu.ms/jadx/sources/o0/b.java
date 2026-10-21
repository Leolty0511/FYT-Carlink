package o0;

import android.net.ProxyProperties;
import android.util.TimedRemoteCaller;
import o1.h0;
import o1.p0;
import o1.q0;
import o1.u;
import util.log.LogType;
import z.k;

/* JADX INFO: loaded from: classes2.dex */
public class b extends h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Runnable f16741a = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Runnable f16742b = new RunnableC0092b();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Runnable f16743c = new c();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Runnable f16744d = new d();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f16745e = 0;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int[] iArr = new int[3];
            iArr[0] = 0;
            iArr[1] = 193;
            iArr[2] = u0.b.f17347o == 1 ? 1 : 0;
            k.o(iArr);
        }
    }

    /* JADX INFO: renamed from: o0.b$b, reason: collision with other inner class name */
    public class RunnableC0092b implements Runnable {

        /* JADX INFO: renamed from: o0.b$b$a */
        public class a implements Runnable {
            public a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                if (u0.b.f17320f == 0) {
                    b.this.G(40);
                }
            }
        }

        public RunnableC0092b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17320f == 0) {
                g.T(20, 1);
                if (g.e.a() != 6) {
                    b.this.G(40);
                } else {
                    o1.k.a().postDelayed(new a(), 1000L);
                }
            }
        }
    }

    public class c implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f16749a;

        public class a implements Runnable {
            public a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                if (u0.b.D == 4 || c.this.f16749a) {
                    return;
                }
                g.T(20, 1);
            }
        }

        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2;
            if (u0.b.D == 4) {
                if (this.f16749a) {
                    this.f16749a = false;
                    b.this.o();
                    return;
                } else if (o0.e.I == 2) {
                    g.T(20, 1);
                    return;
                } else {
                    if (g.f.c(7)) {
                        g.T(20, o0.e.I);
                        return;
                    }
                    return;
                }
            }
            o0.e.I = 1;
            if (h0.c.G == 0 && (u0.b.D != 2 || ((i2 = o0.e.A) != 1 && i2 != 4 && i2 != 5))) {
                o1.k.a().postDelayed(new a(), 1000L);
            } else {
                this.f16749a = true;
                b.this.n();
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (o0.e.f16777g0 != 0) {
                o0.e.f16775f0 = 0;
                return;
            }
            int i2 = o0.e.f16775f0;
            if (i2 < 180) {
                int i3 = i2 + 1;
                o0.e.f16775f0 = i3;
                if (i3 == 180) {
                    q0.C();
                    o0.e.f16775f0 = 0;
                }
            }
        }
    }

    public class e implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            o0.e.f16777g0 = 0;
            g.T(37, 0);
        }
    }

    public class f implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            byte[] bArr = o0.e.f16781i0;
            if (bArr == null || o0.e.f16777g0 != 3) {
                return;
            }
            k.o(0, 213, bArr.length >> 24, (bArr.length >> 16) & 255, (bArr.length >> 8) & 255, bArr.length & 255);
            o1.k.a().postDelayed(this, TimedRemoteCaller.DEFAULT_CALL_TIMEOUT_MILLIS);
        }
    }

    public static synchronized void I(String str) {
        if (o0.e.f16777g0 != 0) {
            return;
        }
        o0.e.f16777g0 = 1;
        g.T(37, 1);
        if (p0.a(str) > 10485760) {
            o0.e.f16777g0 = 2;
            g.T(37, 2);
            return;
        }
        byte[] bArrF = p0.f(str);
        if (bArrF == null) {
            o0.e.f16777g0 = 2;
            g.T(37, 2);
            o1.k.a().postDelayed(new e(), 3000L);
        } else {
            o0.e.f16777g0 = 3;
            g.T(37, 3);
            o0.e.f16781i0 = bArrF;
            k.o(0, 213, bArrF.length >> 24, (bArrF.length >> 16) & 255, (bArrF.length >> 8) & 255, bArrF.length & 255);
            o1.k.a().postDelayed(new f(), TimedRemoteCaller.DEFAULT_CALL_TIMEOUT_MILLIS);
        }
    }

    @Override // o0.h
    public void A(int i2) {
        if (i2 == 1) {
            k.o(0, 208, 0);
        } else if (i2 == 2) {
            k.o(0, 208, 2);
        } else {
            if (i2 != 3) {
                return;
            }
            k.o(0, 208, 1);
        }
    }

    @Override // o0.h
    public void B() {
        G(16);
    }

    @Override // o0.h
    public void C(int i2, int i3) {
        k.o(0, 4, 1, 4, i2 / 100, i2 % 100, i3 / 100, i3 % 100);
    }

    @Override // o0.h
    public void D(int i2) {
        int i3 = i2 + 1;
        int i4 = o0.e.f16771d0;
        if (i4 == 1) {
            k.o(0, 210, 1, 0, 1, (i3 >> 8) & 255, i3 & 255);
            return;
        }
        if (i4 == 3 || i4 == 4 || i4 == 5 || i4 == 6) {
            k.o(0, 210, 2, 0, 1, (i3 >> 8) & 255, i3 & 255);
            return;
        }
        int i5 = o0.e.F;
        if (i5 == 1) {
            if (i3 <= 0 || i3 > o0.e.f16796t) {
                return;
            }
            for (int i6 = 0; i6 < o0.e.f16799w; i6++) {
                int[] iArr = o0.e.f16765a0;
                if (i3 <= iArr[i6]) {
                    if (i6 > 0) {
                        i3 -= iArr[i6 - 1];
                    }
                    int i7 = i6 + 1;
                    k.o(0, 210, 1, (i7 >> 8) & 255, i7 & 255, (i3 >> 8) & 255, i3 & 255);
                    return;
                }
            }
            return;
        }
        if (i5 == 2) {
            if (i3 <= 0 || i3 > o0.e.f16797u) {
                return;
            }
            for (int i8 = 0; i8 < o0.e.f16800x; i8++) {
                int[] iArr2 = o0.e.f16767b0;
                if (i3 <= iArr2[i8]) {
                    if (i8 > 0) {
                        i3 -= iArr2[i8 - 1];
                    }
                    int i9 = i8 + 1;
                    k.o(0, 210, 2, (i9 >> 8) & 255, i9 & 255, (i3 >> 8) & 255, i3 & 255);
                    return;
                }
            }
            return;
        }
        if (i5 == 3 && i3 > 0 && i3 <= o0.e.f16798v) {
            for (int i10 = 0; i10 < o0.e.f16801y; i10++) {
                int[] iArr3 = o0.e.f16769c0;
                if (i3 <= iArr3[i10]) {
                    if (i10 > 0) {
                        i3 -= iArr3[i10 - 1];
                    }
                    int i11 = i10 + 1;
                    k.o(0, 210, 4, (i11 >> 8) & 255, i11 & 255, (i3 >> 8) & 255, i3 & 255);
                    return;
                }
            }
        }
    }

    @Override // o0.h
    public void E() {
        G(20);
    }

    public final void G(int i2) {
        k.o(0, 13, i2);
    }

    public final byte[] H() {
        i iVarX2 = i.X2();
        byte[] bArr = null;
        if (iVarX2 != null) {
            h0 h0VarM2 = iVarX2.M2();
            if (h0VarM2.l(46, null) != null) {
                bArr = new byte[184];
                for (int i2 = 0; i2 < 46; i2++) {
                    int iH = h0VarM2.h(i2, 0);
                    int i3 = i2 * 4;
                    bArr[i3] = (byte) (iH & 255);
                    bArr[i3 + 1] = (byte) ((iH >> 8) & 255);
                    bArr[i3 + 2] = (byte) ((iH >> 16) & 255);
                    bArr[i3 + 3] = (byte) ((iH >> 24) & 255);
                }
            }
        }
        return bArr;
    }

    @Override // o0.h
    public void a() {
        G(13);
    }

    @Override // o0.h
    public void b() {
        G(42);
    }

    @Override // o0.h
    public void c(byte[] bArr, int i2, int i3) {
        byte b2 = bArr[i2];
        if (b2 != 2) {
            if (b2 == 80 && bArr[i2 + 1] == 5 && u0.b.D == 4 && u.b0()) {
                if (g.f.f(7)) {
                    o0.e.f16766b.g();
                    return;
                } else {
                    y0.f.f18034b.a(4);
                    return;
                }
            }
            return;
        }
        int i4 = i2 + 1;
        byte b3 = bArr[i4];
        if (b3 == 12) {
            G(42);
        }
        if (b3 == 29) {
            G(11);
            return;
        }
        if (b3 == 32) {
            G(8);
            return;
        }
        if (b3 == 40) {
            G(5);
            return;
        }
        if (b3 == 18) {
            G(10);
            return;
        }
        if (b3 == 19) {
            G(14);
            return;
        }
        if (b3 == 44) {
            G(12);
            return;
        }
        if (b3 == 45) {
            G(16);
            return;
        }
        if (b3 == 96) {
            G(6);
            return;
        }
        if (b3 == 97) {
            G(20);
            return;
        }
        switch (b3) {
            case 0:
                int i5 = this.f16745e;
                if (i5 != 0) {
                    D(i5 - 1);
                    this.f16745e = 0;
                }
                break;
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
                int i6 = (bArr[i4] & 255) - 1;
                int i7 = this.f16745e;
                if (i7 != 0) {
                    i6 += i7;
                }
                D(i6);
                this.f16745e = 0;
                break;
            case 10:
                this.f16745e += 10;
                break;
            default:
                switch (b3) {
                    case 34:
                        G(3);
                        break;
                    case 35:
                        G(4);
                        break;
                    case 36:
                        G(5);
                        break;
                    default:
                        switch (b3) {
                            case 47:
                                G(19);
                                break;
                            case 48:
                                G(15);
                                break;
                            case 49:
                                G(13);
                                break;
                            case 50:
                                G(27);
                                break;
                            default:
                                switch (b3) {
                                    case 91:
                                        G(0);
                                        g.l();
                                        break;
                                    case 92:
                                        G(1);
                                        break;
                                    case 93:
                                        G(2);
                                        break;
                                    default:
                                        switch (b3) {
                                            case 99:
                                                G(23);
                                                break;
                                            case 100:
                                                G(25);
                                                break;
                                            case 101:
                                                G(26);
                                                break;
                                            case 102:
                                                G(24);
                                                break;
                                        }
                                        break;
                                }
                                break;
                        }
                        break;
                }
                break;
        }
    }

    @Override // o0.h
    public void d() {
        g.i(1);
        u0.c.f17376c.a(this.f16742b, 1);
        u0.c.f17374a.a(this.f16743c, 1);
        u0.c.f17379f.a(this.f16741a, 1);
        g.a(this.f16744d);
    }

    @Override // o0.h
    public void e() {
        u0.c.f17376c.d(this.f16742b);
        u0.c.f17374a.d(this.f16743c);
        u0.c.f17379f.d(this.f16741a);
        g.L(this.f16744d);
    }

    @Override // o0.h
    public void f() {
        k.s(1, 1, 32);
    }

    @Override // o0.h
    public void g() {
        a.f.p().t(LogType.DVD, "============>>>  enterDvd");
        k.o(0, 16, 27, 9, 0);
        k.o(0, 16, 0, 5, 0);
    }

    @Override // o0.h
    public void h() {
        k.o(0, 16, 27, 9, 0);
        k.o(0, 16, 14, 9, 0);
    }

    @Override // o0.h
    public void i() {
        G(3);
    }

    @Override // o0.h
    public void j() {
        G(4);
    }

    @Override // o0.h
    public void k() {
        G(17);
    }

    @Override // o0.h
    public void l() {
        G(2);
    }

    @Override // o0.h
    public void m() {
        byte[] bArrH = o0.e.f16779h0;
        if (bArrH == null) {
            bArrH = H();
        }
        if (bArrH == null || bArrH.length < 184) {
            return;
        }
        int[] iArr = new int[186];
        iArr[0] = 0;
        iArr[1] = 241;
        for (int i2 = 0; i2 < 184; i2++) {
            iArr[i2 + 2] = bArrH[i2] & 255;
        }
        k.o(iArr);
    }

    @Override // o0.h
    public void n() {
        G(7);
    }

    @Override // o0.h
    public void o() {
        G(6);
    }

    @Override // o0.h
    public void p() {
        G(5);
    }

    @Override // o0.h
    public void q(int i2) {
        k.o(0, 211, (i2 >> 8) & 255, i2 & 255);
    }

    @Override // o0.h
    public void r() {
        G(1);
    }

    @Override // o0.h
    public void s(int i2) {
        if (i2 == 0) {
            if (o0.e.P != 0) {
                s(2);
            }
        } else if (i2 != 1) {
            if (i2 != 2) {
                return;
            }
            G(11);
        } else if (o0.e.P == 0) {
            s(2);
        }
    }

    @Override // o0.h
    public void t() {
        G(10);
    }

    @Override // o0.h
    public void u() {
        i iVarX2 = i.X2();
        if (iVarX2 != null) {
            h0 h0VarM2 = iVarX2.M2();
            byte[] bArr = o0.e.f16779h0;
            if (bArr != null && bArr.length >= 184) {
                for (int i2 = 0; i2 < 46; i2++) {
                    int i3 = i2 * 4;
                    h0VarM2.q(i2, p0.e(bArr[i3 + 3], bArr[i3 + 2], bArr[i3 + 1], bArr[i3]));
                }
                h0VarM2.t(46, ProxyProperties.LOCAL_EXCL_LIST);
            }
            h0VarM2.d();
        }
    }

    @Override // o0.h
    public void v() {
    }

    @Override // o0.h
    public void w() {
        G(19);
    }

    @Override // o0.h
    public void x() {
        G(8);
    }

    @Override // o0.h
    public void y() {
        G(15);
    }

    @Override // o0.h
    public void z(int i2) {
    }
}
