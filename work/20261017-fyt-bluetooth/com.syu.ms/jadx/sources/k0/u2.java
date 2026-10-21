package k0;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class u2 extends lt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f10900c;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f10904g;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public o1.g0 f10899b = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f10901d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[][] f10902e = {new int[]{16, 12}, new int[]{17, 2}, new int[]{18, 4}, new int[]{19, 3}, new int[]{20, 7}, new int[]{21, 8}, new int[]{22, 18}, new int[]{23, 26}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f10903f = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f10905h = new b();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Handler f10906i = new c(Looper.getMainLooper());

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            z.k.s(227, 3, 8);
        }
    }

    public class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f10908a = false;

        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u2.this.f10904g != 0) {
                if (u0.b.f17347o == 1) {
                    this.f10908a = true;
                    u2.this.d3();
                } else {
                    if (this.f10908a) {
                        qt.f();
                    }
                    this.f10908a = false;
                }
            }
        }
    }

    public class c extends Handler {
        public c(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what == 0) {
                qt.f();
            }
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 0;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8320o = 0;
        if (nt.a()) {
            qt.z(this.f10903f);
        }
        this.f10899b.a();
        a3(this.f10899b.b(1, 0));
        u0.c.f17379f.a(this.f10905h, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2 + 1];
        if (b2 != 1) {
            if (b2 == 2 && nt.a()) {
                int i4 = bArr[i2 + 2] & 255;
                this.f10901d = i4;
                int i5 = 0;
                while (true) {
                    iArr = this.f10902e;
                    if (i5 >= iArr.length) {
                        break;
                    }
                    int i6 = this.f10901d;
                    if (i6 == iArr[i5][0]) {
                        if (i6 == 0) {
                            break;
                        }
                        this.f10900c = i5;
                        break;
                    }
                    i5++;
                }
                if (i4 != 0) {
                    if (i5 < iArr.length) {
                        l0.b0.l0(iArr[i5][1], 0);
                        return;
                    }
                    return;
                } else {
                    int i7 = this.f10900c;
                    if (i7 < iArr.length && i7 != 255) {
                        l0.b0.l0(iArr[i7][1], 1);
                    }
                    this.f10900c = 255;
                    return;
                }
            }
            return;
        }
        int i8 = i2 + 2;
        int i9 = bArr[i8] & 255;
        int i10 = i2 + 3;
        int i11 = bArr[i10] & 255;
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            i9 = bArr[i10] & 255;
            i11 = bArr[i8] & 255;
        }
        if (i9 == 0) {
            qt.y0(27, -2);
        } else if (i9 == 254) {
            qt.y0(27, -1);
        } else if (i9 != 255) {
            qt.y0(27, i9);
        } else {
            qt.y0(27, -3);
        }
        if (i11 == 0) {
            qt.y0(28, -2);
        } else if (i11 == 254) {
            qt.y0(28, -1);
        } else if (i11 != 255) {
            qt.y0(28, i11);
        } else {
            qt.y0(28, -3);
        }
        int i12 = bArr[i2 + 4] & 255;
        if (i12 > 7) {
            i12 = 7;
        }
        qt.y0(21, i12);
        byte b3 = bArr[i2 + 5];
        qt.y0(19, (b3 >> 4) & 1);
        qt.y0(20, (b3 >> 5) & 1);
        qt.y0(16, (b3 >> 2) & 1);
        qt.y0(65, (b3 >> 3) & 1);
        qt.y0(12, (b3 >> 1) & 1);
        qt.y0(11, (b3 >> 0) & 1);
        byte b4 = bArr[i2 + 6];
        qt.y0(13, (b4 >> 7) & 1);
        qt.y0(10, (b4 >> 4) & 1);
        qt.y0(14, (b4 >> 6) & 1);
        qt.y0(55, (b4 >> 5) & 1);
        if (nt.a()) {
            l0.f0.d(bArr[i2 + 7]);
        }
    }

    @Override // k0.lt
    public void W2() {
        qt.q0(this.f10903f);
        this.f10899b.j();
        u0.c.f17379f.d(this.f10905h);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 99) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0 && iArr != null && iArr.length > 0) {
            a3(iArr[0] != 0 ? 1 : 0);
        }
    }

    public final void a3(int i2) {
        this.f10904g = i2;
        qt.y0(98, i2);
        int iB = this.f10899b.b(1, 0);
        int i3 = this.f10904g;
        if (iB != i3) {
            this.f10899b.g(1, i3);
        }
    }

    public final void d3() {
        this.f10906i.removeMessages(0);
    }
}
