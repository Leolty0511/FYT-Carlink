package e1;

import android.net.ProxyProperties;
import android.os.Handler;
import android.os.SystemClock;
import android.util.Log;
import java.util.Arrays;
import o1.b0;
import o1.s0;

/* JADX INFO: loaded from: classes2.dex */
public class h extends e1.c {
    public static h Q;
    public final int A;
    public long B;
    public long C;
    public long D;
    public boolean E;
    public boolean F;
    public boolean G;
    public long H;
    public long I;
    public String J;
    public boolean K;
    public boolean L;
    public final Runnable M;
    public final Runnable N;
    public long O;
    public final Runnable P;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final boolean f1707x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final int f1708y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final int f1709z;

    public class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f1710a = -1;

        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = this.f1710a;
            int i3 = u0.b.f17320f;
            if (i2 != i3) {
                this.f1710a = i3;
                if (i3 == 1) {
                    h hVar = h.this;
                    hVar.B = 0L;
                    hVar.H = SystemClock.elapsedRealtime();
                    h hVar2 = h.this;
                    hVar2.F = true;
                    hVar2.E = true;
                }
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (h.this.G()) {
                int[] iArrE = s0.e(q1.a.b(h.this.J));
                if (iArrE == null || iArrE.length == 0) {
                    h.this.J = null;
                    return;
                }
                h.this.K = true;
                u0.d.I3(141, 0);
                h.this.H();
                int[] iArrK = h.this.K();
                h.this.F();
                h.this.N(iArrE);
                h.this.J(iArrE.length);
                h.this.O(iArrK);
                u0.d.I3(141, 100);
                h hVar = h.this;
                hVar.J = null;
                hVar.K = false;
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h.this.D(255, 128);
            h.this.D(238, 1);
            h.this.D(255, 184);
            h hVar = h.this;
            if (hVar.F) {
                hVar.F = false;
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h.this.E = true;
        }
    }

    public h(String str, int i2, Handler handler) {
        super(str, i2, handler);
        this.f1707x = false;
        this.f1708y = 1000;
        this.f1709z = 3;
        this.A = 10;
        this.B = 0L;
        this.C = 0L;
        this.D = 0L;
        this.E = false;
        this.F = false;
        this.G = false;
        this.H = 0L;
        this.I = 0L;
        this.J = null;
        this.K = false;
        this.L = true;
        this.M = new a();
        this.N = new b();
        this.O = 0L;
        this.P = new c();
        this.f1664f = 2;
        u0.b.s4 = 2;
        Q = this;
    }

    @Override // e1.c
    public int D(int i2, int i3) {
        return E(this.f1674p, i2, i3);
    }

    @Override // e1.c
    public int E(int i2, int i3, int i4) {
        if (k()) {
            return 1;
        }
        o1.n nVar = this.f1671m;
        if (nVar == null || this.f1673o) {
            return -1;
        }
        return nVar.d(i2, new int[]{i3}, i4);
    }

    public void F() {
        D(255, 128);
        D(238, 1);
        D(90, 130);
        D(90, 134);
        D(90, 130);
        D(91, 0);
        D(92, 0);
        D(93, 0);
        D(90, 131);
        D(90, 130);
        s0.C(1000L);
    }

    public boolean G() {
        D(255, 128);
        D(238, 1);
        D(255, 160);
        return ((s(0) << 8) | s(1)) == 5637;
    }

    public void H() {
        D(255, 128);
        D(238, 1);
        D(90, 130);
        D(94, 192);
        D(88, 0);
        D(89, 81);
        D(90, 146);
        D(90, 130);
    }

    public int[] I(int i2, int i3) {
        if (k()) {
            return null;
        }
        synchronized (this.f1671m) {
            o1.n nVar = this.f1671m;
            if (nVar != null && !this.f1673o) {
                int[] iArrE = nVar.e(i3, this.f1674p, false, i2);
                if (iArrE != null && iArrE.length != 0) {
                    int i4 = iArrE[0];
                }
                return iArrE;
            }
            return null;
        }
    }

    public void J(int i2) {
        Log.e("Keys", "*****************start readFirmware******************");
        D(255, 128);
        D(238, 1);
        D(255, 144);
        int iS = s(2) & 223;
        D(2, iS);
        D(2, iS | 32);
        D(255, 128);
        int i3 = 90;
        D(90, 134);
        int i4 = 130;
        D(90, 130);
        int[] iArr = {0, 0, 0};
        long j2 = 0;
        iArr[0] = (int) 0;
        iArr[1] = (int) 0;
        iArr[2] = (int) 0;
        int i5 = i2 / 16;
        if (i2 % 16 != 0) {
            i5++;
        }
        int i6 = 0;
        while (i6 < i5) {
            D(94, 111);
            D(i3, 162);
            D(i3, i4);
            D(91, iArr[0]);
            D(92, iArr[1]);
            D(93, iArr[2]);
            D(i3, 146);
            D(i3, i4);
            D(88, 1);
            int i7 = i2 - (i6 * 16);
            if (i7 >= 16) {
                i7 = 16;
            }
            Log.e("Keys", String.format("Read Page:%04d   ", Integer.valueOf(i6)) + b0.e(I(95, i7), 0, i7));
            j2 += (long) i7;
            iArr[0] = (int) ((16711680 & j2) >> 16);
            iArr[1] = (int) ((65280 & j2) >> 8);
            iArr[2] = (int) (255 & j2);
            i6++;
            i3 = 90;
            i4 = 130;
        }
        Log.e("Keys", "*****************END readFirmware******************");
    }

    public int[] K() {
        Log.e("Keys", "*****************start readKeys******************");
        int[] iArr = new int[286];
        D(255, 128);
        int i2 = 1;
        D(238, 1);
        D(255, 144);
        char c2 = 2;
        int iS = s(2) & 223;
        D(2, iS);
        D(2, iS | 32);
        D(255, 128);
        int i3 = 90;
        D(90, 134);
        int i4 = 130;
        D(90, 130);
        int[] iArr2 = {0, 0, 0};
        iArr2[0] = (int) 0;
        iArr2[1] = (int) 96;
        iArr2[2] = (int) 0;
        long j2 = 24576;
        int i5 = 0;
        while (i5 < 18) {
            D(94, 111);
            D(i3, 162);
            D(i3, i4);
            D(91, iArr2[0]);
            D(92, iArr2[i2]);
            D(93, iArr2[c2]);
            D(i3, 146);
            D(i3, i4);
            D(88, i2);
            int i6 = i5 * 16;
            int i7 = 286 - i6;
            if (i7 >= 16) {
                i7 = 16;
            }
            int[] iArrI = I(95, i7);
            StringBuilder sb = new StringBuilder();
            Object[] objArr = new Object[i2];
            objArr[0] = Integer.valueOf(i5);
            sb.append(String.format("Read Page:%04d   ", objArr));
            sb.append(b0.e(iArrI, 0, i7));
            Log.e("Keys", sb.toString());
            System.arraycopy(iArrI, 0, iArr, i6, i7);
            j2 += (long) i7;
            iArr2[0] = (int) ((16711680 & j2) >> 16);
            iArr2[1] = (int) ((65280 & j2) >> 8);
            c2 = 2;
            iArr2[2] = (int) (255 & j2);
            i5++;
            i2 = 1;
            i3 = 90;
            i4 = 130;
        }
        Log.e("Keys", "*****************start readKeys******************");
        return iArr;
    }

    public void L(boolean z2) {
        if (this.L != z2) {
            this.L = z2;
        }
    }

    public int M(int i2, int i3, int[] iArr, int i4, int i5) {
        int[] iArrCopyOfRange;
        if (k()) {
            return 1;
        }
        int length = iArr.length;
        int i6 = i4 + i5;
        if (i6 <= length) {
            iArrCopyOfRange = Arrays.copyOfRange(iArr, i4, i6);
        } else {
            int[] iArrQ = s0.q(i5, 255);
            System.arraycopy(iArr, i4, iArrQ, 0, length - i4);
            iArrCopyOfRange = iArrQ;
        }
        if (s0.h(iArrCopyOfRange, 1)) {
            Log.e("Keys", "Write:  " + b0.e(iArrCopyOfRange, 0, iArrCopyOfRange.length));
        }
        o1.n nVar = this.f1671m;
        if (nVar == null || this.f1673o) {
            return -1;
        }
        return nVar.d(i2, new int[]{i3}, iArrCopyOfRange);
    }

    public void N(int[] iArr) {
        Log.e("Keys", "*****************start writeFirmware******************");
        D(255, 128);
        D(238, 1);
        D(255, 144);
        int iS = s(2) & 223;
        D(2, iS);
        D(2, iS | 32);
        D(255, 128);
        int i2 = 134;
        D(90, 134);
        int i3 = 130;
        D(90, 130);
        int[] iArr2 = {0, 0, 0};
        int length = iArr.length;
        int i4 = length / 16;
        if (length % 16 != 0) {
            i4++;
        }
        int i5 = i4;
        long j2 = 0;
        int i6 = 0;
        int i7 = 0;
        while (i7 < i5) {
            D(90, i2);
            D(90, i3);
            D(94, 239);
            D(90, 162);
            D(90, i3);
            D(88, 1);
            int i8 = i7 * 16;
            int i9 = i6;
            int i10 = i7;
            int i11 = i5;
            M(this.f1674p, 89, iArr, i8, 16);
            i6 = i8 < length ? (int) ((100.0f / length) * i8) : 99;
            if (i9 != i6) {
                u0.d.I3(141, i6);
            } else {
                i6 = i9;
            }
            D(91, iArr2[0]);
            D(92, iArr2[1]);
            D(93, iArr2[2]);
            D(94, 224);
            D(90, 146);
            D(90, 130);
            j2 += 16;
            iArr2[0] = (int) ((j2 & 16711680) >> 16);
            iArr2[1] = (int) ((j2 & 65280) >> 8);
            iArr2[2] = (int) (j2 & 255);
            i7 = i10 + 1;
            i5 = i11;
            i2 = 134;
            i3 = 130;
        }
        Log.e("Keys", "*****************end writeFirmware******************");
        D(90, 138);
        D(90, 130);
    }

    public void O(int[] iArr) {
        Log.e("Keys", "*****************END writeKey******************");
        D(255, 128);
        D(238, 1);
        D(255, 144);
        int iS = s(2) & 223;
        D(2, iS);
        D(2, iS | 32);
        int[] iArr2 = {0, 96, 0};
        D(255, 128);
        int i2 = 134;
        D(90, 134);
        D(90, 130);
        int length = iArr.length;
        int i3 = length / 16;
        if (length % 16 != 0) {
            i3++;
        }
        int i4 = i3;
        long j2 = 24576;
        int i5 = 0;
        while (i5 < i4) {
            D(90, i2);
            D(90, 130);
            D(94, 239);
            D(90, 162);
            D(90, 130);
            D(88, 1);
            M(this.f1674p, 89, iArr, 0 + (i5 * 16), 16);
            D(91, iArr2[0]);
            D(92, iArr2[1]);
            D(93, iArr2[2]);
            D(94, 224);
            D(90, 146);
            D(90, 130);
            j2 += 16;
            iArr2[0] = (int) ((j2 & 16711680) >> 16);
            iArr2[1] = (int) ((j2 & 65280) >> 8);
            iArr2[2] = (int) (j2 & 255);
            i5++;
            i4 = i4;
            i2 = 134;
        }
        D(90, 138);
        D(90, 130);
        Log.e("Keys", "*****************END writeKey******************");
    }

    @Override // e1.c, e1.l
    public void a() {
        this.B = 0L;
        if (k()) {
            return;
        }
        this.E = false;
        this.f1676r = false;
        this.f1663e = 0;
        this.f1664f = 2;
    }

    @Override // e1.c, e1.l
    public synchronized void c(int i2) {
        this.E = true;
        super.c(i2);
    }

    @Override // e1.l
    public void g(int i2, String str) {
        if ((this.K || i2 == 9) && !s0.t(str)) {
            this.J = str;
            Handler handler = this.f1668j;
            if (handler != null) {
                handler.removeCallbacks(this.N);
                this.f1668j.postDelayed(this.N, 300L);
            }
        }
    }

    @Override // e1.c
    public int j() {
        if (this.K) {
            return 0;
        }
        SystemClock.elapsedRealtime();
        long j2 = this.B;
        this.B = 1 + j2;
        long j3 = j2 % 50;
        p(0);
        return (this.L && this.E) ? 1 : 0;
    }

    @Override // e1.c
    public void m() {
        if (!s0.o("sys.fyt.cvbs.needdeinterlace", ProxyProperties.LOCAL_EXCL_LIST).equals("0")) {
            s0.F("sys.fyt.cvbs.needdeinterlace", "0");
        }
        this.f1664f = 2;
    }

    @Override // e1.c
    public int p(int i2) {
        return 2;
    }

    @Override // e1.c
    public void r() {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (jElapsedRealtime - this.O >= 1000) {
            this.E = false;
            this.O = jElapsedRealtime;
            this.f1668j.postDelayed(new d(), 1000L);
        }
    }

    @Override // e1.c
    public int s(int i2) {
        if (k()) {
            return 1;
        }
        int[] iArrI = I(i2, 1);
        if (iArrI == null || iArrI.length == 0) {
            return -1;
        }
        return iArrI[0] & 255;
    }

    @Override // e1.c
    public void t() {
        super.t();
    }

    @Override // e1.c
    public boolean z() {
        u0.c.f17376c.a(this.M, 1);
        return true;
    }

    public h(Handler handler) {
        super(handler);
        this.f1707x = false;
        this.f1708y = 1000;
        this.f1709z = 3;
        this.A = 10;
        this.B = 0L;
        this.C = 0L;
        this.D = 0L;
        this.E = false;
        this.F = false;
        this.G = false;
        this.H = 0L;
        this.I = 0L;
        this.J = null;
        this.K = false;
        this.L = true;
        this.M = new a();
        this.N = new b();
        this.O = 0L;
        this.P = new c();
        this.f1664f = 2;
        u0.b.s4 = 2;
        Q = this;
    }
}
