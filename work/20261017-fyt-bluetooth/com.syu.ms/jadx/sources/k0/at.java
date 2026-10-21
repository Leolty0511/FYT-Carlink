package k0;

import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class at extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f3455b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Runnable f3456c = new a();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Runnable f3457d = new b();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(at.this.f3457d);
            at.this.f3455b = 5;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
        }
    }

    @Override // k0.lt
    public void S2() {
        u0.c.f17386m.a(this.f3456c, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = null;
        mtVar.f8310e = 0;
        mtVar.f8311f = 0;
        mtVar.f8312g = 0;
        mtVar.f8314i = 0;
        mtVar.f8315j = 0;
        mtVar.f8320o = 0;
        mtVar.f8314i = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        a.f.p().t(LogType.CANBUS, "222 = " + o1.b0.d(bArr, i2, i3));
        if (bArr[i2 + 3] != 8) {
            return;
        }
        int i4 = i2 + 4;
        if (((bArr[i4] >> 7) & 1) == 1) {
            l0.b0.l0(7, 0);
            l0.b0.l0(7, 1);
            return;
        }
        if (((bArr[i4] >> 6) & 1) == 1) {
            l0.b0.l0(8, 0);
            l0.b0.l0(8, 1);
            return;
        }
        if (((bArr[i4] >> 5) & 1) == 1) {
            l0.b0.l0(3, 0);
            l0.b0.l0(3, 1);
            return;
        }
        if (((bArr[i4] >> 4) & 1) == 1) {
            l0.b0.l0(4, 0);
            l0.b0.l0(4, 1);
            return;
        }
        if (((bArr[i4] >> 3) & 1) == 1) {
            l0.b0.l0(2, 0);
            l0.b0.l0(2, 1);
            return;
        }
        if (((bArr[i4] >> 2) & 1) == 1) {
            l0.b0.l0(12, 0);
            l0.b0.l0(12, 1);
            return;
        }
        if (((bArr[i4] >> 1) & 1) == 1) {
            l0.b0.l0(32, 0);
            l0.b0.l0(32, 1);
            return;
        }
        if (((bArr[i4] >> 0) & 1) == 1) {
            l0.b0.l0(33, 0);
            l0.b0.l0(33, 1);
            return;
        }
        int i5 = i2 + 5;
        if (((bArr[i5] >> 7) & 1) == 1) {
            int i6 = u0.b.f17320f;
            if (i6 != 0) {
                u0.d.U1(0);
                return;
            } else {
                if (i6 == 0) {
                    u0.d.U1(1);
                    return;
                }
                return;
            }
        }
        if (((bArr[i5] >> 6) & 1) == 1) {
            l0.b0.l0(21, 0);
            l0.b0.l0(21, 1);
            return;
        }
        if (((bArr[i5] >> 5) & 1) == 1) {
            l0.b0.l0(16, 0);
            l0.b0.l0(16, 1);
            return;
        }
        if (((bArr[i5] >> 4) & 1) == 1) {
            l0.b0.l0(18, 0);
            l0.b0.l0(18, 1);
            return;
        }
        if (((bArr[i5] >> 3) & 1) == 1) {
            l0.b0.l0(18, 0);
            l0.b0.l0(18, 1);
        } else if (((bArr[i5] >> 2) & 1) == 1) {
            l0.b0.l0(26, 0);
            l0.b0.l0(26, 1);
        } else if (((bArr[i5] >> 1) & 1) == 1) {
            l0.b0.l0(25, 0);
            l0.b0.l0(25, 1);
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f3456c);
        l0.b0.p0(this.f3457d);
    }
}
