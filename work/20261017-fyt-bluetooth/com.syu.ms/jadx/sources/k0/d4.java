package k0;

import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class d4 extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f4335b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f4336c = 255;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f4337d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, -1}, new int[]{5, 18}, new int[]{6, 26}, new int[]{7, 13}, new int[]{8, 4}, new int[]{9, 3}, new int[]{10, 5}, new int[]{11, 2}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public byte f4338e = 5;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f4339f = new a();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f4340g = new b();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(d4.this.f4340g);
            d4.this.f4338e = (byte) 5;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d4 d4Var = d4.this;
            byte b2 = (byte) (d4Var.f4338e - 1);
            d4Var.f4338e = b2;
            if (b2 > 0) {
                z.k.s(227, 2, 36, 5, 0);
            } else {
                l0.b0.p0(d4Var.f4340g);
                d4.this.f4338e = (byte) 5;
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
        mtVar.f8320o = 1;
        mtVar.f8310e = 1;
        if (nt.a()) {
            qt.z(l0.g0.f13050f);
            w0.e.f17815a.a(l0.g0.f13050f, 1);
            w0.e.f17819e.a(l0.g0.f13050f, 1);
            u0.c.f17392s.a(l0.g0.f13050f, 1);
            u0.c.f17386m.a(this.f4339f, 1);
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2 + 1];
        if (b2 == -90) {
            qt.y0(100, bArr[i2 + 2] & 255);
            qt.y0(101, bArr[i2 + 3] & 255);
            qt.y0(102, bArr[i2 + 4] & 255);
            qt.y0(103, bArr[i2 + 5] & 255);
            qt.y0(104, bArr[i2 + 6] & 255);
            qt.y0(105, bArr[i2 + 7] & 255);
            return;
        }
        if (b2 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 18) {
            byte b3 = bArr[i2 + 4];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b3 >> 6) & 1);
                qt.y0(2, (b3 >> 7) & 1);
            } else {
                qt.y0(1, (b3 >> 7) & 1);
                qt.y0(2, (b3 >> 6) & 1);
            }
            qt.y0(3, (b3 >> 5) & 1);
            qt.y0(4, (b3 >> 4) & 1);
            qt.y0(5, (b3 >> 3) & 1);
            qt.y0(0, (b3 >> 2) & 1);
            return;
        }
        if (b2 == 50) {
            int i4 = i2 + 4;
            int i5 = i2 + 5;
            qt.y0(99, ((bArr[i4] << 8) & 65280) | (bArr[i5] & 255));
            qt.y0(1032, ((bArr[i4] << 8) & 65280) | (bArr[i5] & 255));
            qt.y0(98, (bArr[i2 + 7] & 255) | ((bArr[i2 + 6] << 8) & 65280));
            return;
        }
        if (b2 == 114 && nt.a()) {
            qt.i(bArr[i2 + 7], bArr[i2 + 6], true, 540);
            this.f4336c = bArr[i2 + 4] & 255;
            int i6 = 0;
            while (true) {
                iArr = this.f4337d;
                if (i6 >= iArr.length) {
                    break;
                }
                int i7 = this.f4336c;
                if (i7 == iArr[i6][0]) {
                    if (i7 == 0) {
                        break;
                    }
                    this.f4335b = i6;
                    break;
                }
                i6++;
            }
            if (this.f4336c != 0) {
                if (i6 < iArr.length) {
                    l0.b0.l0(iArr[i6][1], 0);
                }
            } else {
                int i8 = this.f4335b;
                if (i8 < iArr.length && i8 != 255) {
                    l0.b0.l0(iArr[i8][1], 1);
                }
                this.f4335b = 255;
            }
        }
    }

    @Override // k0.lt
    public void W2() {
        qt.q0(l0.g0.f13050f);
        w0.e.f17815a.d(l0.g0.f13050f);
        w0.e.f17819e.d(l0.g0.f13050f);
        u0.c.f17392s.d(l0.g0.f13050f);
        u0.c.f17386m.d(this.f4339f);
        l0.b0.p0(this.f4340g);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 106) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 != 0) {
            return;
        }
        z.k.s(227, 2, 173, iArr[0], iArr[1]);
    }
}
