package e1;

import android.net.ProxyProperties;
import android.os.Handler;
import android.os.Looper;
import android.util.SparseIntArray;
import android.util.TimedRemoteCaller;
import com.syu.jni.ToolsJni;
import o1.l0;
import o1.s0;

/* JADX INFO: loaded from: classes2.dex */
public class d extends e1.c {
    public final int A;
    public final int B;
    public final int C;
    public final int D;
    public boolean E;
    public final int F;
    public final int G;
    public final int H;
    public final int I;
    public final SparseIntArray J;
    public final SparseIntArray K;
    public final SparseIntArray L;
    public final SparseIntArray M;
    public final SparseIntArray N;
    public final SparseIntArray O;
    public int P;
    public final int Q;
    public l0 R;
    public l0 S;
    public l0 T;
    public l0 U;
    public l0 V;
    public l0 W;
    public int X;
    public int Y;
    public volatile boolean Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public Handler f1683a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public Runnable f1684b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public int[] f1685c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public int[] f1686d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public final Runnable f1687e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public final Runnable f1688f0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final boolean f1689x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final String f1690y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final String f1691z;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d.this.f1683a0.removeCallbacks(this);
            d.this.f1683a0.postDelayed(this, 2000L);
            if (s0.l("img.read", false)) {
                s0.F("img.read", "false");
                int length = d.this.f1685c0.length / 2;
                for (int i2 = 0; i2 < length; i2++) {
                    d dVar = d.this;
                    int[] iArr = dVar.f1685c0;
                    int i3 = i2 * 2;
                    int i4 = iArr[i3] & 255;
                    int i5 = iArr[i3 + 1];
                    if (i4 == 64) {
                        dVar.D(i4, i5);
                    } else if (i4 != 255) {
                        dVar.s(i4);
                    }
                }
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d dVar = d.this;
            if (dVar.f1675q) {
                return;
            }
            dVar.B();
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (d.this.f1667i) {
                u0.d.I3(137, 1);
            }
        }
    }

    public d(String str, int i2, Handler handler) {
        super(str, i2, handler);
        this.f1689x = false;
        this.f1690y = "2815S";
        this.f1691z = "persist.syu.camera360.format";
        this.A = 16;
        this.B = 18;
        this.C = 17;
        this.D = 192;
        this.E = false;
        this.F = 3;
        this.G = 2;
        this.H = 0;
        this.I = 1;
        this.J = new SparseIntArray();
        this.K = new SparseIntArray();
        this.L = new SparseIntArray();
        this.M = new SparseIntArray();
        this.N = new SparseIntArray();
        this.O = new SparseIntArray();
        this.P = 4;
        this.Q = 1000;
        this.R = new l0();
        this.S = new l0();
        this.T = new l0();
        this.U = new l0();
        this.V = new l0();
        this.W = new l0();
        this.X = 0;
        this.Y = 0;
        this.Z = false;
        this.f1683a0 = null;
        this.f1684b0 = new a();
        this.f1685c0 = new int[]{64, 8, 35, 2, 64, 4, i.a.Theme_preferenceFragmentStyle, 255, 2, 70, 7, 192, 11, 192, 12, 19, 13, 113, 21, 19, 22, 21, 23, 0, 24, 25, 25, 208, 26, 37, 28, 7, 29, 188, 32, 64, 33, 70, 34, 54, 35, 60, 37, 254, 38, 1, 43, 96, 44, 58, 45, 90, 46, 64, 48, 158, 49, 32, 50, 16, 51, 144, 53, 37, 56, 0, 57, 24, 69, 1, 64, 8, 1, 240, 2, 1, 8, 15, 53, 92, 33, 11, 32, 68, 52, 228, 20, 68, 21, 13, 37, 4, 38, 3, 39, 9, 41, 2, 51, 7, 51, 0, 20, 196, 20, 68, 35, 3, 35, 0, 64, 3};
        this.f1686d0 = new int[]{64, 8, 35, 2, 64, 4, 2, 68, 7, 192, 11, 192, 12, 3, 13, 115, 21, 1, 22, 240, 23, 128, 24, 41, 25, 56, 26, 71, 28, 10, 29, 80, 32, 60, 33, 70, 34, 54, 35, 60, 37, 254, 38, 13, 43, 96, 44, 58, 45, 84, 46, 64, 48, 165, 49, 134, 50, 251, 51, 96, 53, 5, 56, 0, 57, 28, i.a.Theme_preferenceFragmentStyle, 240, 69, 1, 64, 8, 1, 240, 2, 1, 8, 15, 53, 107, 33, 11, 32, 68, 52, 228, 21, 12, 37, 8, 38, 6, 39, 17, 41, 10, 51, 7, 51, 0, 20, 51, 20, 179, 20, 51, 64, 3};
        this.f1687e0 = new b();
        this.f1688f0 = new c();
        if (s0.m("persist.syu.fourcamera2.truck", 4) == 2) {
            this.P = 2;
        }
        u0.b.s4 = I();
        Handler handler2 = new Handler(Looper.getMainLooper());
        this.f1683a0 = handler2;
        handler2.post(this.f1684b0);
    }

    @Override // e1.c
    public void A() {
        super.A();
    }

    @Override // e1.c
    public void B() {
        if (u0.b.n4 == 0) {
            super.B();
        }
    }

    @Override // e1.c
    public int E(int i2, int i3, int i4) {
        return super.E(i2, i3, i4);
    }

    public synchronized boolean F(int i2) {
        boolean zG;
        if (this.f1673o) {
            return false;
        }
        if (i2 != -1) {
            s0.F("persist.syu.camera360.format", ProxyProperties.LOCAL_EXCL_LIST + i2);
        }
        if (i2 == 0 || i2 == 1) {
            zG = G(this.f1685c0);
        } else if (i2 == 2 || i2 == 3) {
            int i3 = u0.b.s1;
            zG = G(this.f1685c0);
        } else if (i2 == 6) {
            int i4 = u0.b.s1;
            zG = G(this.f1686d0);
        } else if (i2 != 13) {
            int i5 = u0.b.s1;
            zG = G(this.f1685c0);
        } else {
            zG = G(this.f1685c0);
        }
        if (zG) {
            this.X = 0;
            u0.c.P.c(Integer.valueOf(i2));
        }
        return zG;
    }

    public boolean G(int[] iArr) {
        boolean z2;
        if (iArr == null || iArr.length < 2) {
            throw new RuntimeException("flushParams  data is NULL  or  data  size < 2 !!!! ");
        }
        if (this.f1673o) {
            return false;
        }
        synchronized (this.f1671m) {
            int length = iArr.length / 2;
            z2 = true;
            for (int i2 = 0; i2 < length; i2++) {
                int i3 = i2 * 2;
                z2 = D(iArr[i3], iArr[i3 + 1]) >= 0;
                if (!z2) {
                    break;
                }
            }
        }
        return z2;
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0031 A[PHI: r4
  0x0031: PHI (r4v6 int) = (r4v2 int), (r4v7 int) binds: [B:25:0x0052, B:9:0x002f] A[DONT_GENERATE, DONT_INLINE]] */
    public int H(int i2) {
        if (k()) {
            return 1;
        }
        D(64, i2 & 255);
        int iS = s(1) & 255;
        int i3 = this.K.get(i2, 0);
        int iC = s0.c(i3, 1);
        int iC2 = s0.c(i3, 0);
        if ((iS & 112) == 112) {
            if (iC < 4) {
                iC++;
            }
            if (iC2 > 0) {
                iC2--;
            }
        } else if ((iS & 96) == 96) {
            if (iC2 < 4) {
                iC2++;
            }
            if (iC > 0) {
                iC--;
            }
        } else if (iC > 0 || iC2 > 0) {
            if (iC == 4) {
                iC = 0;
            } else if (iC > 0) {
                iC--;
            }
            if (iC2 == 4) {
                iC2 = 0;
            } else if (iC2 > 0) {
                iC2--;
            }
        }
        this.K.put(i2, s0.x(iC, iC2));
        if (iC < 4 || iC2 > 0) {
            return (iC2 < 4 || iC > 0) ? 0 : -1;
        }
        return 1;
    }

    public final int I() {
        int iM = s0.m("persist.syu.camera360.format", 2);
        this.f1664f = iM;
        if (iM != 2 && iM != 6) {
            this.f1664f = 2;
        }
        return this.f1664f;
    }

    public void J(boolean z2) {
        if (u0.b.n4 != 1) {
            this.X = 0;
            this.Y = 0;
            return;
        }
        if (u0.b.f17320f != 1) {
            this.X = 7;
            this.Y = 0;
            return;
        }
        if (this.R.c(1000)) {
            this.R.a();
            if (z2) {
                this.X = 0;
                return;
            }
            int i2 = this.X + 1;
            this.X = i2;
            if (i2 >= 8) {
                t();
                int i3 = this.Y;
                if (i3 < 3) {
                    this.Y = i3 + 1;
                }
                this.X = 0;
            }
        }
    }

    public int K(int i2) {
        if (k()) {
            return this.f1664f;
        }
        D(64, i2 & 255);
        int i3 = 3;
        switch (s(3) & 7) {
            case 0:
                i3 = 5;
                break;
            case 1:
                i3 = 4;
                break;
            case 2:
                i3 = 7;
                break;
            case 3:
                i3 = 6;
                break;
            case 4:
                break;
            case 5:
                i3 = 2;
                break;
            case 6:
                i3 = 1;
                if (((s(1) >> 2) & 1) == 0) {
                    i3 = 0;
                }
                break;
            case 7:
            default:
                i3 = -1;
                break;
        }
        int iL = L(i2, i3);
        if (iL != this.M.get(i2, -1)) {
            this.M.put(i2, iL);
        }
        return L(i2, i3);
    }

    public int L(int i2, int i3) {
        int i4 = this.M.get(i2, -1);
        int i5 = this.O.get(i2, -1);
        if (i4 == i3) {
            this.f1679u = 0;
            return i3;
        }
        if (i3 != i5) {
            this.f1679u = 1;
            this.O.put(i2, i3);
            return i4;
        }
        int i6 = this.f1679u + 1;
        this.f1679u = i6;
        if (i6 < 3) {
            return this.f1664f;
        }
        this.f1679u = 0;
        return i3;
    }

    public boolean M(int i2) {
        D(64, i2 & 255);
        return ((s(1) >> 7) & 1) == 0;
    }

    @Override // e1.c, e1.l
    public void b() {
        super.b();
        this.X = 0;
        this.Y = 0;
    }

    @Override // e1.l
    public void h(int i2, int i3, int i4, int i5) {
        if (k() || this.f1673o || !this.f1667i) {
            return;
        }
        D(64, i2 & 255);
        D(16, i3 & 255);
        D(17, i5 & 255);
        D(18, i4 & 255);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r2v0, types: [boolean, int] */
    @Override // e1.c
    public int j() {
        int i2;
        int iH;
        int iH2;
        int i3;
        int i4;
        ?? r1 = 0;
        r1 = 0;
        r1 = 0;
        r1 = 0;
        if (!this.f1667i) {
            return 0;
        }
        if (u0.b.n4 == 0) {
            B();
            return 0;
        }
        ?? M = M(2);
        int iH3 = H(2);
        boolean zM = M(3);
        int iH4 = H(3);
        if (zM) {
            i2 = M;
            i2 = M + 1;
        }
        i2 = M;
        if (this.P > 2) {
            boolean zM2 = M(1);
            iH = H(1);
            if (zM2) {
                i4 = i2;
                i4 = i2 + 1;
            }
            i4 = i2;
            boolean zM3 = M(0);
            iH2 = H(0);
            i3 = i4;
            if (zM3) {
                i3 = i4 + 1;
            }
        } else {
            iH = 0;
            iH2 = 0;
            i3 = i2;
        }
        boolean z2 = i3 >= this.P / 2;
        this.E = z2;
        if (z2) {
            int iK = K(2);
            if (K(3) != iK) {
                iK = -1;
            }
            if (iK != -1 && this.f1664f != iK) {
                this.f1664f = iK;
                this.Y = 0;
                F(iK);
            }
        }
        if (iH3 == 1 && iH4 == 1 && (this.P == 2 || (iH == 1 && iH2 == 1))) {
            r1 = 1;
        }
        if (this.Y < 3) {
            J(r1);
        }
        return r1;
    }

    @Override // e1.c
    public void m() {
        if (k()) {
            return;
        }
        this.f1676r = true;
        I();
        w(F(this.f1664f));
        if (!this.f1667i) {
            this.f1664f = -1;
            return;
        }
        int i2 = this.f1663e;
        if (i2 != 1 && i2 != 0) {
            a();
            c(i2);
        }
        C();
        if (this.f1667i && !this.f1675q && u0.b.n4 == 1) {
            A();
            this.f1668j.postDelayed(this.f1687e0, TimedRemoteCaller.DEFAULT_CALL_TIMEOUT_MILLIS);
        }
    }

    @Override // e1.c
    public int s(int i2) {
        return super.s(i2);
    }

    @Override // e1.c
    public void t() {
        super.t();
        w(false);
        ToolsJni.cmd_33_reset_videoIc(2);
    }

    @Override // e1.c
    public void w(boolean z2) {
        if (this.f1667i != z2) {
            this.f1667i = z2;
            s0.F("syu.imageic.inited", z2 ? "1" : "0");
            this.f1668j.removeCallbacks(this.f1688f0);
            if (z2) {
                this.f1668j.postDelayed(this.f1688f0, 800L);
            } else {
                u0.d.I3(137, z2 ? 1 : 0);
            }
        }
    }

    @Override // e1.c
    public boolean z() {
        if (!this.f1667i) {
            t();
        }
        if (k()) {
            return true;
        }
        return this.f1667i;
    }
}
