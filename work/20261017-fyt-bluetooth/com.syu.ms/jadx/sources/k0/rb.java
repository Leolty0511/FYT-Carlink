package k0;

import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class rb extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f9834b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f9835c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f9836d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{6, 12}, new int[]{8, 13}, new int[]{9, 18}, new int[]{10, 26}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f9837e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f9838f = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            rb rbVar = rb.this;
            int i2 = rbVar.f9837e + 1;
            rbVar.f9837e = i2;
            if (i2 > 1) {
                z.k.s(227, 144, 2, 41, 0);
                rb.this.f9837e = 0;
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
        mtVar.f8306a = null;
        mtVar.f8310e = 1;
        mtVar.f8311f = 0;
        mtVar.f8312g = 0;
        mtVar.f8320o = 0;
        if (nt.a()) {
            l0.b0.a(this.f9838f);
            l0.e0.e(1);
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 != 32) {
            if (b2 != 36) {
                if (b2 == 41) {
                    qt.i(bArr[i2 + 2], bArr[i2 + 3], false, 1120);
                    return;
                } else {
                    if (b2 != 48) {
                        return;
                    }
                    qt.L(new String(bArr, i2 + 2, i3 - 2));
                    return;
                }
            }
            byte b3 = bArr[i2 + 2];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b3 >> 6) & 1);
                qt.y0(2, (b3 >> 7) & 1);
            } else {
                qt.y0(1, (b3 >> 6) & 1);
                qt.y0(2, (b3 >> 7) & 1);
            }
            qt.y0(4, (b3 >> 5) & 1);
            qt.y0(3, (b3 >> 4) & 1);
            qt.y0(0, (b3 >> 2) & 1);
            return;
        }
        if (nt.a()) {
            byte b4 = bArr[i2 + 2];
            byte b5 = bArr[i2 + 3];
            this.f9835c = b4 & 255;
            int i4 = 0;
            while (true) {
                iArr = this.f9836d;
                if (i4 >= iArr.length) {
                    break;
                }
                int i5 = this.f9835c;
                if (i5 == iArr[i4][0]) {
                    if (i5 == 0) {
                        break;
                    }
                    this.f9834b = i4;
                    break;
                }
                i4++;
            }
            if ((b5 & 255) != 0) {
                if (i4 < iArr.length) {
                    l0.b0.l0(iArr[i4][1], 0);
                }
            } else if (i4 <= iArr.length) {
                l0.b0.l0(iArr[this.f9834b][1], 1);
            }
        }
    }

    @Override // k0.lt
    public void W2() {
        if (nt.a()) {
            l0.b0.o0(this.f9838f);
            l0.e0.e(0);
        }
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 6) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
    }
}
