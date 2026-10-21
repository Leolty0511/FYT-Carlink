package k0;

import android.media.videoeditor.MediaArtistNativeHelper;
import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class oq extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f8972b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f8973c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f8974d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 18}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 13}, new int[]{19, 4}, new int[]{20, 3}, new int[]{22, 64}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f8975e = new a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f8976f = new b();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f8977g = new c();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.c0.s0();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.c0.m();
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (o1.u.S("com.syu.fourcamera2") || u0.b.f17347o == 1 || SystemProperties.getBoolean("persist.lsec.fourcamera2.show", false)) {
                z.k.s(227, 144, 2, 38, 0);
            }
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        qt.x(this.f8977g);
        l0.b0.b(this.f8976f);
        w0.e.f17815a.a(this.f8976f, 1);
        w0.e.f17819e.a(this.f8976f, 1);
        u0.c.f17374a.a(this.f8976f, 1);
        y0.g.f18094d.a(this.f8975e, 1);
        y0.g.f18095e.a(this.f8975e, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = null;
        mtVar.f8310e = 1;
        mtVar.f8311f = 0;
        mtVar.f8312g = 0;
        mtVar.f8313h = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 != 32) {
            if (b2 != 36) {
                if (b2 == 38) {
                    qt.i(bArr[i2 + 2], bArr[i2 + 3], false, MediaArtistNativeHelper.AudioSamplingFrequency.FREQ_12000);
                    return;
                } else {
                    if (b2 != 48) {
                        return;
                    }
                    qt.L(new String(bArr, i2 + 2, i3 - 2));
                    return;
                }
            }
            byte b3 = bArr[i2 + 3];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b3 >> 1) & 1);
                qt.y0(2, (b3 >> 0) & 1);
            } else {
                qt.y0(1, (b3 >> 0) & 1);
                qt.y0(2, (b3 >> 1) & 1);
            }
            qt.y0(3, (b3 >> 2) & 1);
            qt.y0(4, (b3 >> 3) & 1);
            qt.y0(5, (b3 >> 4) & 1);
            return;
        }
        byte b4 = bArr[i2 + 2];
        byte b5 = bArr[i2 + 3];
        this.f8973c = b4 & 255;
        int i4 = 0;
        while (true) {
            iArr = this.f8974d;
            if (i4 >= iArr.length) {
                break;
            }
            int i5 = this.f8973c;
            if (i5 == iArr[i4][0]) {
                if (i5 == 0) {
                    break;
                }
                this.f8972b = i4;
                break;
            }
            i4++;
        }
        int i6 = b5 & 255;
        if (i6 == 1) {
            if (i4 < iArr.length) {
                l0.b0.l0(iArr[i4][1], 0);
            }
        } else if (i6 == 0) {
            int i7 = this.f8972b;
            if (i7 < iArr.length && i7 != 255) {
                l0.b0.l0(iArr[i7][1], 1);
            }
            this.f8972b = 255;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(l0.c0.f13020n);
        l0.b0.p0(l0.c0.f13021o);
        qt.o0(this.f8977g);
        l0.b0.p0(this.f8976f);
        w0.e.f17815a.d(this.f8976f);
        w0.e.f17819e.d(this.f8976f);
        u0.c.f17374a.d(this.f8976f);
        y0.g.f18094d.d(this.f8975e);
        y0.g.f18095e.d(this.f8975e);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 7) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
    }
}
