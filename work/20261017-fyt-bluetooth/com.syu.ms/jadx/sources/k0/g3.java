package k0;

import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class g3 extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f5374b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f5375c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f5376d = {new int[]{2, 5}, new int[]{3, 34}, new int[]{4, 35}, new int[]{7, 29}, new int[]{8, 6}, new int[]{16, 2}, new int[]{17, 2}, new int[]{18, 4}, new int[]{19, 3}, new int[]{20, 7}, new int[]{21, 8}, new int[]{22, 12}, new int[]{23, 34}, new int[]{24, 35}, new int[]{33, 2}, new int[]{34, 11}, new int[]{35, 18}, new int[]{41, 12}, new int[]{48, 18}, new int[]{49, 26}, new int[]{50, 1}, new int[]{51, 24}, new int[]{52, 55}, new int[]{54, 54}, new int[]{56, 34}, new int[]{57, 35}, new int[]{64, 32}, new int[]{65, 33}, new int[]{66, 20}, new int[]{67, 19}, new int[]{68, 40}, new int[]{69, 41}, new int[]{70, 42}, new int[]{71, 43}, new int[]{72, 44}, new int[]{73, 45}, new int[]{80, 21}, new int[]{81, 1}, new int[]{82, 38}, new int[]{83, 58}, new int[]{84, 25}, new int[]{85, 11}, new int[]{86, 3}, new int[]{87, 4}, new int[]{88, 34}, new int[]{89, 35}, new int[]{128, 25}, new int[]{42, 55}, new int[]{43, 0}, new int[]{44, 54}, new int[]{45, 18}, new int[]{46, 10}, new int[]{47, 62}};

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
        mtVar.f8312g = 1;
        mtVar.f8314i = 0;
        mtVar.f8320o = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2 + 1];
        if (b2 == 2) {
            int i4 = i2 + 2;
            int i5 = bArr[i4] & 255;
            if (i5 == 32) {
                nt.f8643f[115].s(115, new int[]{1}, null, null);
                return;
            }
            if (i5 == 55) {
                nt.f8643f[116].s(116, new int[]{1}, null, null);
                return;
            }
            if (nt.a()) {
                int i6 = bArr[i4] & 255;
                this.f5375c = i6;
                int i7 = 0;
                while (true) {
                    iArr = this.f5376d;
                    if (i7 >= iArr.length) {
                        break;
                    }
                    int i8 = this.f5375c;
                    if (i8 == iArr[i7][0]) {
                        if (i8 == 0) {
                            break;
                        }
                        this.f5374b = i7;
                        break;
                    }
                    i7++;
                }
                if (i6 != 0) {
                    if (i7 < iArr.length) {
                        l0.b0.l0(iArr[i7][1], 0);
                        return;
                    }
                    return;
                } else {
                    int i9 = this.f5374b;
                    if (i9 < iArr.length && i9 != 255) {
                        l0.b0.l0(iArr[i9][1], 1);
                    }
                    this.f5374b = 255;
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
                int i10 = i2 + 6;
                u0.d.S2(l0.e0.m(bArr[i10]));
                u0.d.T2(l0.e0.m(bArr[i10]));
                u0.d.U2(l0.e0.m(bArr[i2 + 7]));
                u0.d.D2(l0.e0.m(bArr[i2 + 2]));
                int i11 = i2 + 3;
                u0.d.E2(l0.e0.m(bArr[i11]));
                u0.d.F2(l0.e0.m(bArr[i11]));
                u0.d.G2(l0.e0.m(bArr[i2 + 4]));
                return;
            }
            return;
        }
        switch (b2) {
            case 50:
                if (nt.a()) {
                    u0.d.R2(l0.e0.m(bArr[i2 + 3]));
                    int i12 = i2 + 4;
                    u0.d.S2(l0.e0.m(bArr[i12]));
                    u0.d.T2(l0.e0.m(bArr[i12]));
                    u0.d.U2(l0.e0.m(bArr[i2 + 5]));
                    if (i3 > 7) {
                        u0.d.D2(l0.e0.m(bArr[i2 + 6]));
                        int i13 = i2 + 7;
                        u0.d.E2(l0.e0.m(bArr[i13]));
                        u0.d.F2(l0.e0.m(bArr[i13]));
                        u0.d.G2(l0.e0.m(bArr[i2 + 8]));
                    }
                }
                break;
            case 51:
                int i14 = ((bArr[i2 + 6] & 255) << 8) | (bArr[i2 + 7] & 255);
                qt.y0(102, ((bArr[i2 + 2] & 255) << 8) | (bArr[i2 + 3] & 255));
                qt.y0(103, (bArr[i2 + 5] & 255) | ((bArr[i2 + 4] & 255) << 8));
                qt.y0(98, i14);
                break;
            case 52:
                qt.y0(104, ((bArr[i2 + 2] & 255) << 8) | (bArr[i2 + 3] & 255));
                qt.y0(99, ((bArr[i2 + 4] & 255) << 8) | (bArr[i2 + 5] & 255));
                qt.y0(100, (bArr[i2 + 7] & 255) | ((bArr[i2 + 6] & 255) << 8));
                break;
            case 53:
                qt.y0(101, ((bArr[i2 + 2] & 255) << 8) | (bArr[i2 + 3] & 255));
                qt.y0(105, ((bArr[i2 + 4] & 255) << 8) | (bArr[i2 + 5] & 255));
                qt.y0(106, (bArr[i2 + 7] & 255) | ((bArr[i2 + 6] & 255) << 8));
                break;
            case 54:
                if (nt.a()) {
                    l0.f0.a(bArr[i2 + 2]);
                }
                break;
            case 55:
            case 57:
            case 58:
                int i15 = bArr[i2 + 2] & 255;
                int i16 = bArr[i2 + 3] & 255;
                qt.y0(145, i15);
                qt.y0(114, i16);
                break;
            case 56:
                byte b3 = bArr[i2 + 2];
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
                byte b4 = bArr[i2 + 3];
                qt.y0(164, b4 & 3);
                qt.y0(108, (b4 >> 3) & 1);
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 166) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    /* JADX WARN: Code duplicated, block: B:19:0x003a  */
    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        int i3;
        if (i2 == 1) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (iArr[0] != 0) {
                iArr[0] = 1;
            }
            z.k.s(227, 5, -128, 1, (byte) iArr[0]);
            return;
        }
        int i4 = 53;
        if (i2 == 24) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (iArr[0] == 1) {
                i4 = 51;
            } else if (iArr[0] == 2) {
                i4 = 52;
            } else if (iArr[0] != 3) {
                i4 = 0;
            }
            z.k.s(227, 4, 61, (byte) i4);
            return;
        }
        if (i2 != 49) {
            if (i2 == 53 && iArr != null && iArr.length > 0) {
                z.k.s(227, 4, -113, (byte) iArr[0]);
                return;
            }
            return;
        }
        if (iArr == null || iArr.length <= 0) {
            return;
        }
        if (iArr[0] == 0) {
            i3 = 0;
        } else if (iArr[0] == 1) {
            i3 = 1;
        } else if (iArr[0] == 2) {
            i3 = 2;
        } else {
            i3 = 0;
        }
        z.k.s(227, 6, -126, (byte) i3, 0, 0);
    }
}
