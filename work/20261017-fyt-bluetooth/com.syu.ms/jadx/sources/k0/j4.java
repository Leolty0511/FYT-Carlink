package k0;

import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class j4 extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f6685b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f6686c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f6687d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, -1}, new int[]{5, 18}, new int[]{6, 26}, new int[]{7, -1}, new int[]{8, 3}, new int[]{9, 4}, new int[]{10, 2}, new int[]{13, 3}, new int[]{14, 4}};

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
            qt.z(l0.g0.f13049e);
            y0.g.f18094d.a(l0.g0.f13052h, 0);
            y0.g.f18095e.a(l0.g0.f13052h, 0);
            w0.e.f17815a.a(l0.g0.f13049e, 1);
            w0.e.f17819e.a(l0.g0.f13049e, 1);
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2 + 1];
        if (b2 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 114) {
            qt.y0(98, bArr[i2 + 3] & 255);
            if (nt.a()) {
                qt.p(bArr[i2 + 6] & 255, bArr[i2 + 7] & 255, 134);
                this.f6686c = bArr[i2 + 4] & 255;
                int i4 = 0;
                while (true) {
                    iArr = this.f6687d;
                    if (i4 >= iArr.length) {
                        break;
                    }
                    int i5 = this.f6686c;
                    if (i5 == iArr[i4][0]) {
                        if (i5 == 0) {
                            break;
                        }
                        this.f6685b = i4;
                        break;
                    }
                    i4++;
                }
                if (this.f6686c == 0) {
                    int i6 = this.f6685b;
                    if (i6 < iArr.length && i6 != 255) {
                        l0.b0.l0(iArr[i6][1], 1);
                    }
                    this.f6685b = 255;
                } else if (i4 < iArr.length) {
                    l0.b0.l0(iArr[i4][1], 0);
                }
                u0.d.C2((bArr[i2 + 2] >> 5) & 1);
                u0.d.R2((bArr[i2 + 8] >> 4) & 15);
                u0.d.S2((bArr[i2 + 9] >> 4) & 15);
                u0.d.T2((bArr[i2 + 10] >> 4) & 15);
                u0.d.U2((bArr[i2 + 11] >> 4) & 15);
                u0.d.D2((bArr[i2 + 12] >> 4) & 15);
                u0.d.E2((bArr[i2 + 13] >> 4) & 15);
                u0.d.F2((bArr[i2 + 14] >> 4) & 15);
                u0.d.G2((bArr[i2 + 15] >> 4) & 15);
                return;
            }
            return;
        }
        if (b2 != 115) {
            return;
        }
        byte b3 = bArr[i2 + 2];
        qt.y0(14, (b3 >> 2) & 1);
        qt.y0(13, (b3 >> 3) & 1);
        int i7 = b3 & 48;
        if (i7 == 0) {
            qt.y0(12, 0);
        } else if (i7 == 16) {
            qt.y0(12, 1);
        } else if (i7 == 48) {
            qt.y0(12, 2);
        }
        qt.y0(10, (b3 >> 6) & 1);
        byte b4 = bArr[i2 + 3];
        qt.y0(65, (b4 >> 4) & 1);
        qt.y0(16, (b4 >> 5) & 1);
        qt.y0(11, (b4 >> 6) & 1);
        qt.y0(29, (b4 >> 0) & 3);
        qt.y0(30, (b4 >> 2) & 3);
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            qt.y0(27, bArr[i2 + 5] & 255);
            qt.y0(28, bArr[i2 + 4] & 255);
        } else {
            qt.y0(27, bArr[i2 + 4] & 255);
            qt.y0(28, bArr[i2 + 5] & 255);
        }
        byte b5 = bArr[i2 + 6];
        qt.y0(18, (b5 >> 4) & 1);
        qt.y0(19, (b5 >> 5) & 1);
        qt.y0(20, (b5 >> 6) & 1);
        qt.y0(21, (b5 >> 0) & 15);
        byte b6 = bArr[i2 + 7];
        qt.y0(22, (b6 >> 4) & 1);
        qt.y0(23, (b6 >> 5) & 1);
        qt.y0(24, (b6 >> 6) & 1);
        qt.y0(25, (b6 >> 0) & 15);
        if (nt.a()) {
            int i8 = bArr[i2 + 8] & 255;
            int i9 = i8 >= 80 ? ((i8 * 5) + 1000) - 400 : 1000 - (400 - (i8 * 5));
            if (i9 > 600) {
                u0.d.A3(i9);
            }
        }
    }

    @Override // k0.lt
    public void W2() {
        qt.q0(l0.g0.f13049e);
        y0.g.f18094d.d(l0.g0.f13052h);
        y0.g.f18095e.d(l0.g0.f13052h);
        w0.e.f17815a.d(l0.g0.f13049e);
        w0.e.f17819e.d(l0.g0.f13049e);
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
        if (i2 == 0) {
            if (nt.f8637c == 1) {
                a3(129);
                return;
            } else {
                a3(130);
                return;
            }
        }
        if (i2 == 1) {
            if (nt.f8637c == 1) {
                a3(130);
                return;
            } else {
                a3(129);
                return;
            }
        }
        if (i2 == 2) {
            a3(131);
        } else if (i2 == 4 && iArr != null && iArr.length > 0) {
            int i3 = iArr[0];
            b3(i3 == 0 ? i3 : 1);
        }
    }

    public final void a3(int i2) {
        z.k.s(227, 13, -46, (byte) i2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    }

    public void b3(int i2) {
        z.k.s(1, 124, (byte) i2);
    }
}
