package k0;

import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class um extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f11114b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f11115c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f11116d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 18}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 26}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f11117e = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            um.a3();
        }
    }

    public static void a3() {
        if (u0.b.D != 1) {
            z.k.s(227, 192, 2, 255, 0);
            return;
        }
        int i2 = w0.d.f17796h;
        int i3 = (i2 < 65536 || i2 > 65538) ? 16 : 0;
        int i4 = w0.d.f17797i;
        z.k.s(227, 192, 5, 1, 1, i3, i4 & 255, (i4 >> 8) & 255);
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 0;
        mtVar.f8314i = 0;
        mtVar.f8312g = 0;
        mtVar.f8315j = 0;
        mtVar.f8320o = 0;
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        qt.z(this.f11117e);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 != 32) {
            if (b2 == 48) {
                qt.L(new String(bArr, i2 + 2, i3 - 2));
                return;
            }
            if (b2 == 125) {
                if ((bArr[i2 + 2] & 255) != 1) {
                    return;
                }
                int i4 = i2 + 3;
                l0.c0.a((bArr[i4] >> 3) & 1, (bArr[i4] >> 4) & 1, 0);
                o1.x.C(nt.f8643f, 1049, new int[]{11, bArr[i4] & 255}, null, null);
                return;
            }
            if (b2 != 65) {
                if (b2 != 66) {
                    return;
                }
                qt.y0(7, bArr[i2 + 2] & 255);
                return;
            }
            byte b3 = bArr[i2 + 2];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b3 >> 1) & 1);
                qt.y0(2, (b3 >> 0) & 1);
            } else {
                qt.y0(1, (b3 >> 0) & 1);
                qt.y0(2, (b3 >> 1) & 1);
            }
            qt.y0(3, (b3 >> 2) & 1);
            qt.y0(4, (b3 >> 3) & 1);
            return;
        }
        byte b4 = bArr[i2 + 2];
        byte b5 = bArr[i2 + 3];
        this.f11115c = b4 & 255;
        int i5 = 0;
        while (true) {
            iArr = this.f11116d;
            if (i5 >= iArr.length) {
                break;
            }
            int i6 = this.f11115c;
            if (i6 == iArr[i5][0]) {
                if (i6 == 0) {
                    break;
                }
                this.f11114b = i5;
                break;
            }
            i5++;
        }
        int i7 = b5 & 255;
        if (i7 == 1) {
            if (i5 < iArr.length) {
                l0.b0.l0(iArr[i5][1], 0);
            }
        } else if (i7 == 0) {
            int i8 = this.f11114b;
            if (i8 < iArr.length && i8 != 255) {
                l0.b0.l0(iArr[i8][1], 1);
            }
            this.f11114b = 255;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(l0.c0.f13020n);
        l0.b0.p0(l0.c0.f13021o);
        qt.q0(this.f11117e);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 8) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, -125, 1, iArr[0]);
        } else {
            if (i2 != 1) {
                return;
            }
            z.k.s(227, -112, 1, iArr[0]);
        }
    }
}
