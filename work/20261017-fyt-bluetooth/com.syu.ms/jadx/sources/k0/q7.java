package k0;

/* JADX INFO: loaded from: classes2.dex */
public class q7 extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f9461b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f9462c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f9463d = {new int[]{2, 5}, new int[]{3, 34}, new int[]{4, 35}, new int[]{7, 29}, new int[]{8, 6}, new int[]{16, 2}, new int[]{17, 2}, new int[]{18, 4}, new int[]{19, 3}, new int[]{20, 7}, new int[]{21, 8}, new int[]{22, 12}, new int[]{23, 34}, new int[]{24, 35}, new int[]{33, 2}, new int[]{34, 11}, new int[]{35, 13}, new int[]{41, 13}, new int[]{42, 55}, new int[]{43, 1}, new int[]{44, 54}, new int[]{45, 18}, new int[]{46, 5}, new int[]{48, 18}, new int[]{49, 26}, new int[]{50, 1}, new int[]{51, 24}, new int[]{52, 55}, new int[]{53, 1}, new int[]{54, 54}, new int[]{55, 1}, new int[]{56, 34}, new int[]{57, 35}, new int[]{64, 32}, new int[]{65, 33}, new int[]{66, 20}, new int[]{67, 19}, new int[]{68, 40}, new int[]{69, 41}, new int[]{70, 42}, new int[]{71, 43}, new int[]{72, 44}, new int[]{73, 45}, new int[]{74, 2}, new int[]{80, 21}, new int[]{81, 18}, new int[]{82, 38}, new int[]{83, 58}, new int[]{84, 25}, new int[]{85, 11}, new int[]{86, 3}, new int[]{87, 4}, new int[]{88, 34}, new int[]{89, 35}, new int[]{97, 2}, new int[]{98, 18}, new int[]{128, 25}};

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2 + 1];
        if (b2 == 2) {
            if (nt.a()) {
                int i4 = bArr[i2 + 2] & 255;
                this.f9462c = i4;
                int i5 = 0;
                while (true) {
                    iArr = this.f9463d;
                    if (i5 >= iArr.length) {
                        break;
                    }
                    int i6 = this.f9462c;
                    if (i6 == iArr[i5][0]) {
                        if (i6 == 0) {
                            break;
                        }
                        this.f9461b = i5;
                        break;
                    }
                    i5++;
                }
                if (this.f9462c == 17) {
                    if (h0.c.E != 4) {
                        l0.b0.l0(2, 0);
                        l0.b0.l0(2, 1);
                        return;
                    } else {
                        l0.b0.l0(18, 0);
                        l0.b0.l0(18, 1);
                        return;
                    }
                }
                if (i4 != 0) {
                    if (i5 < iArr.length) {
                        l0.b0.l0(iArr[i5][1], 0);
                        return;
                    }
                    return;
                } else {
                    if (i4 == 0) {
                        int i7 = this.f9461b;
                        if (i7 < iArr.length && i7 != 255) {
                            l0.b0.l0(iArr[i7][1], 1);
                        }
                        this.f9461b = 255;
                        return;
                    }
                    return;
                }
            }
            return;
        }
        if (b2 == 41) {
            qt.i(bArr[i2 + 2] & 255, bArr[i2 + 3] & 255, false, 5450);
            return;
        }
        if (b2 == 48) {
            if (nt.a()) {
                u0.d.R2(l0.e0.m(bArr[i2 + 5]));
                int i8 = i2 + 6;
                u0.d.S2(l0.e0.m(bArr[i8]));
                u0.d.T2(l0.e0.m(bArr[i8]));
                u0.d.U2(l0.e0.m(bArr[i2 + 7]));
                u0.d.D2(l0.e0.m(bArr[i2 + 2]));
                int i9 = i2 + 3;
                u0.d.E2(l0.e0.m(bArr[i9]));
                u0.d.F2(l0.e0.m(bArr[i9]));
                u0.d.G2(l0.e0.m(bArr[i2 + 4]));
                return;
            }
            return;
        }
        if (b2 != 50) {
            if (b2 == 54 && nt.a()) {
                l0.f0.a(bArr[i2 + 2]);
                return;
            }
            return;
        }
        if (nt.a()) {
            u0.d.R2(l0.e0.m(bArr[i2 + 3]));
            int i10 = i2 + 4;
            u0.d.S2(l0.e0.m(bArr[i10]));
            u0.d.T2(l0.e0.m(bArr[i10]));
            u0.d.U2(l0.e0.m(bArr[i2 + 5]));
            int i11 = i2 + 6;
            int i12 = bArr[i11] & 255;
            int i13 = i2 + 7;
            int i14 = bArr[i13] & 255;
            int i15 = i2 + 8;
            int i16 = 255 & bArr[i15];
            if (i12 >= 5 && i14 >= 5 && i16 >= 5) {
                u0.d.C2(0);
            } else if ((l0.c0.f13013g != i12 || l0.c0.f13014h != i14 || l0.c0.f13015i != i16) && u0.b.f17347o == 0) {
                u0.d.C2(1);
                l0.c0.f13017k = 4;
                l0.b0.b(l0.c0.f13018l);
            }
            l0.c0.f13013g = i12;
            l0.c0.f13014h = i14;
            l0.c0.f13015i = i16;
            u0.d.D2(l0.e0.m(bArr[i11]));
            u0.d.E2(l0.e0.m(bArr[i13]));
            u0.d.F2(l0.e0.m(bArr[i13]));
            u0.d.G2(l0.e0.m(bArr[i15]));
        }
    }

    @Override // k0.lt
    public void W2() {
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
    }
}
