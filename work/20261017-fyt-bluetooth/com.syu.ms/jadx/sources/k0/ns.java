package k0;

import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class ns extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f8630b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f8631c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f8632d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{7, 2}, new int[]{8, 12}, new int[]{9, 18}, new int[]{10, 26}, new int[]{11, 54}, new int[]{18, 29}, new int[]{19, 3}, new int[]{20, 4}, new int[]{24, 1}};

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 0;
        mtVar.f8312g = 0;
        mtVar.f8314i = 0;
        mtVar.f8307b = 0;
        mtVar.f8308c = 0;
        mtVar.f8309d = 0;
        mtVar.f8320o = 0;
        mtVar.f8313h = 0;
        mtVar.f8321p = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 != 32) {
            if (b2 != 36) {
                if (b2 != 48) {
                    return;
                }
                qt.L(new String(bArr, i2 + 2, i3 - 2));
                return;
            }
            byte b3 = bArr[i2 + 2];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(2, (b3 >> 6) & 1);
                qt.y0(1, (b3 >> 7) & 1);
            } else {
                qt.y0(2, (b3 >> 7) & 1);
                qt.y0(1, (b3 >> 6) & 1);
            }
            qt.y0(4, (b3 >> 5) & 1);
            qt.y0(3, (b3 >> 4) & 1);
            qt.y0(5, (b3 >> 3) & 1);
            qt.y0(0, (b3 >> 2) & 1);
            return;
        }
        byte b4 = bArr[i2 + 2];
        byte b5 = bArr[i2 + 3];
        this.f8631c = b4 & 255;
        int i4 = 0;
        while (true) {
            iArr = this.f8632d;
            if (i4 >= iArr.length) {
                break;
            }
            int i5 = this.f8631c;
            if (i5 == iArr[i4][0]) {
                if (i5 == 0) {
                    break;
                }
                this.f8630b = i4;
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
            int i7 = this.f8630b;
            if (i7 < iArr.length && i7 != 255) {
                l0.b0.l0(iArr[i7][1], 1);
            }
            this.f8630b = 255;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(l0.c0.f13020n);
        l0.b0.p0(l0.c0.f13021o);
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
