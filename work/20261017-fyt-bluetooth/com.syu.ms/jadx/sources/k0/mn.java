package k0;

import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class mn extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f8234b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f8235c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f8236d = {new int[]{1, 7}, new int[]{4, 8}, new int[]{7, 3}, new int[]{10, 4}, new int[]{12, 18}, new int[]{13, 26}, new int[]{16, 2}, new int[]{25, 12}, new int[]{29, 0}, new int[]{28, 5}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[][] f8237e = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{5, 13}, new int[]{6, 12}, new int[]{7, 2}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f8238f = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = nt.f8633a;
            if (i2 == 2949573) {
                z.k.s(227, -18, 1, 0);
            } else {
                if (i2 != 3146181) {
                    return;
                }
                z.k.s(227, -18, 1, 1);
            }
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        qt.z(this.f8238f);
        mt mtVar = this.f7886a;
        mtVar.f8306a = null;
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8314i = 0;
        mtVar.f8315j = 0;
        mtVar.f8320o = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int[][] iArr2;
        byte b2 = bArr[i2];
        if (b2 == 29) {
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
            u0.d.D2(l0.c0.E0(bArr[i4] & 255));
            u0.d.E2(l0.c0.E0(bArr[i6] & 255));
            u0.d.F2(l0.c0.E0(bArr[i8] & 255));
            u0.d.G2(l0.c0.E0(bArr[i10] & 255));
            return;
        }
        if (b2 == 30) {
            u0.d.R2(l0.c0.E0(bArr[i2 + 2] & 255));
            u0.d.S2(l0.c0.E0(bArr[i2 + 3] & 255));
            u0.d.T2(l0.c0.E0(bArr[i2 + 4] & 255));
            u0.d.U2(l0.c0.E0(bArr[i2 + 5] & 255));
            return;
        }
        if (b2 == 32) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            if (nt.f8633a == 15663556) {
                this.f8235c = b3 & 255;
                int i12 = 0;
                while (true) {
                    iArr2 = this.f8237e;
                    if (i12 >= iArr2.length) {
                        break;
                    }
                    int i13 = this.f8235c;
                    if (i13 == iArr2[i12][0]) {
                        if (i13 == 0) {
                            break;
                        }
                        this.f8234b = i12;
                        break;
                    }
                    i12++;
                }
                int i14 = b4 & 255;
                if (i14 == 1) {
                    if (i12 < iArr2.length) {
                        l0.b0.l0(iArr2[i12][1], 0);
                        return;
                    }
                    return;
                } else {
                    if (i14 == 0) {
                        int i15 = this.f8234b;
                        if (i15 < iArr2.length && i15 != 255) {
                            l0.b0.l0(iArr2[i15][1], 1);
                        }
                        this.f8234b = 255;
                        return;
                    }
                    return;
                }
            }
            this.f8235c = b3 & 255;
            int i16 = 0;
            while (true) {
                iArr = this.f8236d;
                if (i16 >= iArr.length) {
                    break;
                }
                int i17 = this.f8235c;
                if (i17 == iArr[i16][0]) {
                    if (i17 == 0) {
                        break;
                    }
                    this.f8234b = i16;
                    break;
                }
                i16++;
            }
            int i18 = b4 & 255;
            if (i18 == 1) {
                if (i16 < iArr.length) {
                    l0.b0.l0(iArr[i16][1], 0);
                    return;
                }
                return;
            } else {
                if (i18 == 0) {
                    int i19 = this.f8234b;
                    if (i19 < iArr.length && i19 != 255) {
                        l0.b0.l0(iArr[i19][1], 1);
                    }
                    this.f8234b = 255;
                    return;
                }
                return;
            }
        }
        if (b2 == 36) {
            byte b5 = bArr[i2 + 2];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b5 >> 7) & 1);
                qt.y0(2, (b5 >> 6) & 1);
            } else {
                qt.y0(1, (b5 >> 6) & 1);
                qt.y0(2, (b5 >> 7) & 1);
            }
            qt.y0(4, (b5 >> 5) & 1);
            qt.y0(3, (b5 >> 4) & 1);
            qt.y0(5, (b5 >> 3) & 1);
            return;
        }
        if (b2 == 125) {
            if ((bArr[i2 + 2] & 255) != 1) {
                return;
            }
            int i20 = i2 + 3;
            l0.c0.a((bArr[i20] >> 3) & 1, (bArr[i20] >> 4) & 1, 0);
            o1.x.C(nt.f8643f, 1049, new int[]{11, bArr[i20] & 255}, null, null);
            return;
        }
        if (b2 != 40) {
            if (b2 != 41) {
                return;
            }
            qt.i(bArr[i2 + 2], bArr[i2 + 3], false, 7800);
            return;
        }
        int i21 = i2 + 2;
        qt.y0(10, (bArr[i21] >> 7) & 1);
        qt.y0(11, (bArr[i21] >> 6) & 1);
        qt.y0(12, (bArr[i21] >> 5) & 1);
        qt.y0(53, (bArr[i21] >> 4) & 1);
        qt.y0(13, (bArr[i21] >> 3) & 1);
        qt.y0(14, (bArr[i21] >> 2) & 1);
        qt.y0(15, (bArr[i21] >> 1) & 1);
        qt.y0(16, (bArr[i21] >> 0) & 1);
        int i22 = i2 + 3;
        qt.y0(18, (bArr[i22] >> 7) & 1);
        qt.y0(19, (bArr[i22] >> 6) & 1);
        qt.y0(20, (bArr[i22] >> 5) & 1);
        qt.y0(21, 15 & (bArr[i22] >> 0));
        int i23 = i2 + 4;
        int i24 = bArr[i23] & 255;
        int i25 = i2 + 5;
        int i26 = bArr[i25] & 255;
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            i24 = bArr[i25] & 255;
            i26 = bArr[i23] & 255;
        }
        int i27 = nt.f8633a;
        if (i27 == 16581060 || i27 == 16646596 || i27 == 2949573 || i27 == 3146181) {
            if (i24 == 0) {
                qt.y0(27, -2);
            } else if (i24 == 31) {
                qt.y0(27, -3);
            } else {
                qt.y0(27, i24);
            }
            if (i26 == 0) {
                qt.y0(28, -2);
                return;
            } else if (i26 == 31) {
                qt.y0(28, -3);
                return;
            } else {
                qt.y0(28, i26);
                return;
            }
        }
        if (i24 == 0) {
            qt.y0(27, -2);
        } else if (i24 == 32) {
            qt.y0(27, -3);
        } else {
            qt.y0(27, i24);
        }
        if (i26 == 0) {
            qt.y0(28, -2);
        } else if (i26 == 32) {
            qt.y0(28, -3);
        } else {
            qt.y0(28, i26);
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(l0.c0.f13020n);
        l0.b0.p0(l0.c0.f13021o);
        qt.q0(this.f8238f);
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
        if (i2 != 0) {
            return;
        }
        z.k.s(227, 224, 2, iArr[0], iArr[1]);
    }
}
