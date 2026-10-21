package k0;

import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class ro extends lt {
    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = null;
        mtVar.f8310e = 1;
        mtVar.f8311f = 0;
        mtVar.f8312g = 0;
        mtVar.f8313h = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        byte b2 = bArr[i2];
        if (b2 == 41) {
            qt.m(bArr[i2 + 2], 0, 128, true, 24);
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        switch (b2) {
            case 34:
                u0.d.R2(l0.c0.t1(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.t1(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.t1(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.t1(bArr[i2 + 5] & 255));
                break;
            case 35:
                int i4 = i2 + 2;
                int i5 = bArr[i4] & 255;
                int i6 = i2 + 3;
                int i7 = bArr[i6] & 255;
                int i8 = i2 + 4;
                int i9 = bArr[i8] & 255;
                int i10 = i2 + 5;
                int i11 = bArr[i10] & 255;
                if (i5 == 0 && i7 == 0 && i9 == 0 && i11 == 0) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i5 || l0.c0.f13014h != i7 || l0.c0.f13015i != i9 || l0.c0.f13016j != i11) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i5;
                l0.c0.f13014h = i7;
                l0.c0.f13015i = i9;
                l0.c0.f13016j = i11;
                u0.d.D2(l0.c0.t1(bArr[i4] & 255));
                u0.d.E2(l0.c0.t1(bArr[i6] & 255));
                u0.d.F2(l0.c0.t1(bArr[i8] & 255));
                u0.d.G2(l0.c0.t1(bArr[i10] & 255));
                break;
            case 36:
                byte b3 = bArr[i2 + 2];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b3 >> 7) & 1);
                    qt.y0(2, (b3 >> 6) & 1);
                } else {
                    qt.y0(1, (b3 >> 6) & 1);
                    qt.y0(2, (b3 >> 7) & 1);
                }
                qt.y0(3, (b3 >> 4) & 1);
                qt.y0(4, (b3 >> 5) & 1);
                qt.y0(5, (b3 >> 3) & 1);
                break;
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
