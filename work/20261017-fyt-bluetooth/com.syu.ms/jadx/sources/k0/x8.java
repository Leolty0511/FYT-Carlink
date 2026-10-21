package k0;

/* JADX INFO: loaded from: classes2.dex */
public class x8 extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f12042b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f12043c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f12044d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, 3}, new int[]{5, 18}, new int[]{6, 26}, new int[]{7, 4}, new int[]{8, 3}, new int[]{9, 4}, new int[]{10, 2}, new int[]{17, 3}, new int[]{18, 3}};

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
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
        if (b2 == 66) {
            if (nt.a()) {
                u0.d.H2((bArr[i2 + 9] >> 4) & 15);
                u0.d.I2((bArr[i2 + 6] >> 4) & 15);
                u0.d.J2((bArr[i2 + 8] >> 4) & 15);
                u0.d.K2((bArr[i2 + 7] >> 4) & 15);
                u0.d.N2((bArr[i2 + 5] >> 4) & 15);
                u0.d.O2((bArr[i2 + 2] >> 4) & 15);
                u0.d.P2((bArr[i2 + 4] >> 4) & 15);
                u0.d.Q2((bArr[i2 + 3] >> 4) & 15);
                return;
            }
            return;
        }
        if (b2 != 114) {
            if (b2 == 115 && nt.a()) {
                int i4 = bArr[i2 + 8] & 255;
                int i5 = i4 >= 80 ? ((i4 * 5) + 1000) - 400 : 1000 - (400 - (i4 * 5));
                if (i5 > 600) {
                    u0.d.A3(i5);
                    return;
                }
                return;
            }
            return;
        }
        if (nt.a()) {
            qt.p(bArr[i2 + 6] & 255, bArr[i2 + 7] & 255, 134);
            this.f12043c = bArr[i2 + 4] & 255;
            int i6 = 0;
            while (true) {
                iArr = this.f12044d;
                if (i6 >= iArr.length) {
                    break;
                }
                int i7 = this.f12043c;
                if (i7 == iArr[i6][0]) {
                    if (i7 == 0) {
                        break;
                    }
                    this.f12042b = i6;
                    break;
                }
                i6++;
            }
            if (this.f12043c != 0 && i6 < iArr.length) {
                l0.b0.l0(iArr[i6][1], 0);
                l0.b0.l0(this.f12044d[i6][1], 1);
            }
            u0.d.R2((bArr[i2 + 8] >> 4) & 15);
            u0.d.S2((bArr[i2 + 9] >> 4) & 15);
            u0.d.T2((bArr[i2 + 10] >> 4) & 15);
            u0.d.U2((bArr[i2 + 11] >> 4) & 15);
            u0.d.D2((bArr[i2 + 12] >> 4) & 15);
            u0.d.E2((bArr[i2 + 13] >> 4) & 15);
            u0.d.F2((bArr[i2 + 14] >> 4) & 15);
            u0.d.G2((bArr[i2 + 15] >> 4) & 15);
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
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
    }
}
