package k0;

import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class j extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f6627b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f6628c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f6629d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{7, 12}, new int[]{8, 32}, new int[]{9, 33}, new int[]{10, 2}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public byte f6630e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f6631f = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            j jVar = j.this;
            byte b2 = (byte) (jVar.f6630e + 1);
            jVar.f6630e = b2;
            if (b2 > 5) {
                l0.b0.o0(jVar.f6631f);
                j.this.f6630e = (byte) 0;
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
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2;
        byte b3 = bArr[i2 + 1];
        if (b3 != -127) {
            if (b3 != -126) {
                if (b3 != -16) {
                    return;
                }
                qt.L(new String(bArr, i2 + 2, i3 - 2));
                return;
            }
            byte b4 = bArr[i2 + 9];
            qt.y0(5, (b4 >> 3) & 1);
            qt.y0(4, (b4 >> 4) & 1);
            qt.y0(3, (b4 >> 5) & 1);
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b4 >> 7) & 1);
                qt.y0(2, (b4 >> 6) & 1);
                return;
            } else {
                qt.y0(2, (b4 >> 6) & 1);
                qt.y0(1, (b4 >> 7) & 1);
                return;
            }
        }
        if (nt.a()) {
            this.f6628c = bArr[i2 + 4] & 255;
            int i4 = 0;
            while (true) {
                iArr = this.f6629d;
                if (i4 >= iArr.length) {
                    break;
                }
                int i5 = this.f6628c;
                if (i5 == iArr[i4][0]) {
                    if (i5 == 0) {
                        break;
                    }
                    this.f6627b = i4;
                    break;
                }
                i4++;
            }
            if (this.f6628c != 0) {
                if (i4 >= iArr.length || (b2 = this.f6630e) != 0) {
                    return;
                }
                this.f6630e = (byte) (b2 + 1);
                l0.b0.l0(iArr[i4][1], 0);
                l0.b0.a(this.f6631f);
                return;
            }
            int i6 = this.f6627b;
            if (i6 < iArr.length && i6 != 255) {
                l0.b0.l0(iArr[i6][1], 1);
                l0.b0.o0(this.f6631f);
                this.f6630e = (byte) 0;
            }
            this.f6627b = 255;
        }
    }

    @Override // k0.lt
    public void W2() {
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 98) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
    }
}
