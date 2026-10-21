package k0;

/* JADX INFO: loaded from: classes2.dex */
public class zn extends lt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f12880c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int[] f12879b = new int[101];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f12881d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[][] f12882e = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 33}, new int[]{4, 32}, new int[]{5, 18}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 13}, new int[]{19, 4}, new int[]{20, 3}, new int[]{21, 6}, new int[]{22, 29}, new int[]{23, 5}, new int[]{32, 74}, new int[]{33, 54}, new int[]{34, 1}, new int[]{35, 56}, new int[]{36, 53}, new int[]{48, -1}, new int[]{49, -1}};

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 0;
        mtVar.f8311f = 0;
        mtVar.f8312g = 0;
        mtVar.f8315j = 0;
        mtVar.f8320o = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 32) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f12881d = b3 & 255;
            int i4 = 0;
            while (true) {
                iArr = this.f12882e;
                if (i4 >= iArr.length) {
                    break;
                }
                int i5 = this.f12881d;
                if (i5 == iArr[i4][0]) {
                    if (i5 == 0) {
                        break;
                    }
                    this.f12880c = i4;
                    break;
                }
                i4++;
            }
            int i6 = this.f12881d;
            if (i6 == 48) {
                if ((b4 & 255) == 1) {
                    if (!o1.u.i0()) {
                        o1.u.M();
                        return;
                    } else {
                        if (o1.s0.t(o1.u.s0())) {
                            return;
                        }
                        if (o1.u.j0(o1.u.s0())) {
                            a.i.A();
                            return;
                        }
                        o1.u.J0(o1.u.s0());
                    }
                }
                return;
            }
            if (i6 == 49) {
                if ((b4 & 255) == 1) {
                    if (u0.b.f17347o == 0) {
                        qt.a(1);
                        return;
                    } else {
                        qt.a(0);
                        return;
                    }
                }
                return;
            }
            int i7 = b4 & 255;
            if (i7 == 1) {
                if (i4 < iArr.length) {
                    l0.b0.l0(iArr[i4][1], 0);
                    return;
                }
                return;
            } else {
                if (i7 == 0) {
                    int i8 = this.f12880c;
                    if (i8 < iArr.length && i8 != 255) {
                        l0.b0.l0(iArr[i8][1], 1);
                    }
                    this.f12880c = 255;
                    return;
                }
                return;
            }
        }
        if (b2 == 65) {
            if (bArr[i2 + 2] != 2) {
                return;
            }
            qt.y0(4, ((bArr[i2 + 3] << 8) & 65280) | (bArr[i2 + 4] & 255));
            qt.y0(5, bArr[i2 + 9] & 255);
            qt.y0(6, bArr[i2 + 14] & 255);
            return;
        }
        if (b2 == 38) {
            qt.i(bArr[i2 + 4], bArr[i2 + 3], false, 6020);
            return;
        }
        if (b2 == 39) {
            int i9 = i2 + 3;
            qt.y0(2, bArr[i9] & 255);
            for (int i10 = 0; i10 < bArr[i9]; i10++) {
                int i11 = i10 * 2;
                this.f12879b[i10] = ((bArr[(i2 + 4) + i11] << 8) & 65280) | (bArr[i2 + 5 + i11] & 255);
            }
            o1.x.B(nt.f8643f, 3, this.f12879b);
            return;
        }
        switch (b2) {
            case 34:
                u0.d.R2(l0.c0.X0(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.X0(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.X0(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.X0(bArr[i2 + 5] & 255));
                break;
            case 35:
                int i12 = i2 + 2;
                int i13 = bArr[i12] & 255;
                int i14 = i2 + 3;
                int i15 = bArr[i14] & 255;
                int i16 = i2 + 4;
                int i17 = bArr[i16] & 255;
                int i18 = i2 + 5;
                int i19 = bArr[i18] & 255;
                if (i13 == 255 && i15 == 255 && i17 == 255 && i19 == 255) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i13 || l0.c0.f13014h != i15 || l0.c0.f13015i != i17 || l0.c0.f13016j != i19) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i13;
                l0.c0.f13014h = i15;
                l0.c0.f13015i = i17;
                l0.c0.f13016j = i19;
                u0.d.D2(l0.c0.X0(bArr[i12] & 255));
                u0.d.E2(l0.c0.X0(bArr[i14] & 255));
                u0.d.F2(l0.c0.X0(bArr[i16] & 255));
                u0.d.G2(l0.c0.X0(bArr[i18] & 255));
                break;
            case 36:
                qt.y0(0, bArr[i2 + 2] & 255);
                qt.y0(1, bArr[i2 + 3] & 255);
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
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
        if (i2 != 0) {
            return;
        }
        z.k.s(227, 167, 2, 0, 4);
    }
}
