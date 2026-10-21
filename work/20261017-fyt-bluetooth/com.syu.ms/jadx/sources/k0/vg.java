package k0;

import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class vg extends lt {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f11362d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f11360b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f11361c = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f11363e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int[][] f11364f = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 13}, new int[]{6, 6}, new int[]{7, 29}, new int[]{8, 30}, new int[]{9, 31}, new int[]{129, 61}, new int[]{130, 60}, new int[]{131, 18}, new int[]{132, 55}, new int[]{134, 3}, new int[]{135, 4}, new int[]{136, 9}, new int[]{137, 6}, new int[]{138, 0}, new int[]{140, 1}, new int[]{141, 58}, new int[]{142, 8}, new int[]{143, 7}, new int[]{144, 30}, new int[]{145, 31}, new int[]{176, 49}, new int[]{177, 40}, new int[]{178, 41}, new int[]{179, 42}, new int[]{180, 43}, new int[]{181, 44}, new int[]{182, 45}, new int[]{183, 46}, new int[]{184, 47}, new int[]{185, 48}, new int[]{186, 51}, new int[]{187, 50}, new int[]{188, -1}};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f11365g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f11366h = new a();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public byte f11367i = 3;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f11368j = new b();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = vg.this.f11365g;
            int i3 = u0.b.D;
            if (i2 != i3) {
                if (i3 == 13 && i2 != 13) {
                    z.k.s(227, -126, 2, 16, 0);
                } else if (i3 != 13 && i2 == 13) {
                    z.k.s(227, -126, 2, 16, 1);
                }
                vg.this.f11365g = u0.b.D;
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            vg vgVar = vg.this;
            byte b2 = (byte) (vgVar.f11367i - 1);
            vgVar.f11367i = b2;
            if (b2 > 0) {
                return;
            }
            o1.x.C(nt.f8643f, 98, new int[]{1}, null, null);
            l0.b0.p0(vg.this.f11368j);
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
        mtVar.f8311f = 1;
        mtVar.f8312g = 0;
        mtVar.f8315j = 0;
        mtVar.f8320o = 0;
        mtVar.f8307b = 1;
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        u0.c.f17374a.a(this.f11366h, 1);
        if (u0.b.D == 13) {
            z.k.s(227, -126, 2, 16, 0);
        } else {
            z.k.s(227, -126, 2, 16, 1);
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        int[][] iArr2;
        byte b2 = bArr[i2];
        if (b2 == 45) {
            int i6 = bArr[i2 + 2] & 255;
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(2, (i6 >> 6) & 1);
                qt.y0(1, (i6 >> 7) & 1);
            } else {
                qt.y0(2, (i6 >> 7) & 1);
                qt.y0(1, (i6 >> 6) & 1);
            }
            qt.y0(4, (i6 >> 5) & 1);
            qt.y0(3, (i6 >> 4) & 1);
            qt.y0(5, (i6 >> 3) & 1);
            qt.y0(0, (i6 >> 2) & 1);
            if ((bArr[i2 + 3] & 255 & 16) == 16) {
                u0.d.C2(1);
                return;
            }
            u0.d.C2(0);
        }
        if (b2 == 48) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f11363e = (b3 & 255) | 128;
            int i7 = 0;
            while (true) {
                iArr = this.f11364f;
                if (i7 >= iArr.length) {
                    break;
                }
                int i8 = this.f11363e;
                if (i8 == iArr[i7][0]) {
                    if (i8 == 0) {
                        break;
                    }
                    this.f11362d = i7;
                    break;
                }
                i7++;
            }
            if (u0.b.D != 13) {
                int i9 = this.f11363e;
                if (i9 != 129) {
                    if (i9 == 130) {
                        int i10 = b4 & 255;
                        if (i10 == 1) {
                            if (i7 < iArr.length) {
                                this.f11367i = (byte) 3;
                                l0.b0.b(this.f11368j);
                                return;
                            }
                            return;
                        }
                        if (i10 != 0 || i7 > iArr.length) {
                            return;
                        }
                        this.f11367i = (byte) 0;
                        l0.b0.p0(this.f11368j);
                        return;
                    }
                    if (i9 != 132) {
                        if (i9 == 188) {
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
                        switch (i9) {
                            case 142:
                                for (int i11 = 0; i11 < (b4 & 255); i11++) {
                                    l0.b0.l0(8, 0);
                                }
                                l0.b0.l0(8, 1);
                                break;
                            case 143:
                                for (int i12 = 0; i12 < (b4 & 255); i12++) {
                                    l0.b0.l0(7, 0);
                                }
                                l0.b0.l0(7, 1);
                                break;
                            case 144:
                                for (int i13 = 0; i13 < (b4 & 255); i13++) {
                                    l0.b0.l0(30, 0);
                                }
                                l0.b0.l0(30, 1);
                                break;
                            case 145:
                                for (int i14 = 0; i14 < (b4 & 255); i14++) {
                                    l0.b0.l0(31, 0);
                                }
                                l0.b0.l0(31, 1);
                                break;
                            default:
                                int i15 = b4 & 255;
                                if (i15 == 1) {
                                    if (i7 < iArr.length) {
                                        l0.b0.l0(iArr[i7][1], 0);
                                    }
                                } else if (i15 == 0) {
                                    int i16 = this.f11362d;
                                    if (i16 < iArr.length && i16 != 255) {
                                        l0.b0.l0(iArr[i16][1], 1);
                                    }
                                    this.f11362d = 255;
                                }
                                break;
                        }
                    }
                }
                if ((b4 & 255) == 1) {
                    o1.x.C(nt.f8643f, 98, new int[]{1}, null, null);
                    return;
                }
                return;
            }
            return;
        }
        if (b2 == 58) {
            byte b5 = bArr[i2 + 2];
            byte b6 = bArr[i2 + 3];
            int i17 = i2 + 4;
            byte b7 = bArr[i17];
            int i18 = i2 + 5;
            byte b8 = bArr[i18];
            byte b9 = bArr[i2 + 6];
            byte b10 = bArr[i2 + 7];
            byte b11 = bArr[i2 + 8];
            qt.y0(10, (b5 >> 7) & 1);
            qt.y0(11, (b5 >> 6) & 1);
            qt.y0(12, (b5 >> 5) & 1);
            qt.y0(13, (b5 >> 3) & 1);
            qt.y0(14, (b5 >> 2) & 1);
            qt.y0(18, (b6 >> 7) & 1);
            qt.y0(19, (b6 >> 6) & 1);
            qt.y0(20, (b6 >> 5) & 1);
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                i4 = bArr[i18] & 255;
                i5 = bArr[i17] & 255;
            } else {
                i4 = b7;
                i5 = b8;
            }
            int i19 = i4 & 255;
            if (i4 == 0) {
                qt.y0(27, -2);
            } else if (i4 == 31) {
                qt.y0(27, -3);
            } else {
                qt.y0(27, i19);
            }
            int i20 = i5 & 255;
            if (i5 == 0) {
                qt.y0(28, -2);
            } else if (i5 == 31) {
                qt.y0(28, -3);
            } else {
                qt.y0(28, i20);
            }
            qt.y0(65, (b9 >> 7) & 1);
            qt.y0(16, (b9 >> 6) & 1);
            qt.y0(37, (b9 >> 0) & 1);
            qt.y0(29, (b10 >> 4) & 7);
            qt.y0(30, (b10 >> 0) & 7);
            qt.y0(21, b11 & 255);
            return;
        }
        if (b2 == 127) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            int i21 = u0.b.D;
            if (i21 == 13) {
                z.k.s(227, -126, 2, 16, 0);
                return;
            } else {
                if (i21 != 13) {
                    z.k.s(227, -126, 2, 16, 1);
                    return;
                }
                return;
            }
        }
        switch (b2) {
            case 37:
                qt.i(bArr[i2 + 2], bArr[i2 + 3], true, 540);
                break;
            case 38:
                byte b12 = bArr[i2 + 2];
                byte b13 = bArr[i2 + 3];
                this.f11363e = b12 & 255;
                int i22 = 0;
                while (true) {
                    iArr2 = this.f11364f;
                    if (i22 < iArr2.length) {
                        int i23 = this.f11363e;
                        if (i23 != iArr2[i22][0]) {
                            i22++;
                        } else if (i23 != 0) {
                            this.f11362d = i22;
                        }
                    }
                }
                int i24 = this.f11363e;
                if (i24 == 8) {
                    for (int i25 = 0; i25 < (b13 & 255); i25++) {
                        l0.b0.l0(31, 0);
                    }
                    l0.b0.l0(31, 1);
                    break;
                } else if (i24 == 9) {
                    for (int i26 = 0; i26 < (b13 & 255); i26++) {
                        l0.b0.l0(30, 0);
                    }
                    l0.b0.l0(30, 1);
                    break;
                } else {
                    int i27 = b13 & 255;
                    if (i27 == 1) {
                        if (i22 < iArr2.length) {
                            l0.b0.l0(iArr2[i22][1], 0);
                        }
                        break;
                    } else if (i27 == 0 && i22 <= iArr2.length) {
                        l0.b0.l0(iArr2[this.f11362d][1], 1);
                        break;
                    }
                }
                break;
            case 39:
                u0.d.R2(l0.c0.P0(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.P0(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.P0(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.P0(bArr[i2 + 5] & 255));
                break;
            case 40:
                u0.d.D2(l0.c0.P0(bArr[i2 + 2] & 255));
                u0.d.E2(l0.c0.P0(bArr[i2 + 3] & 255));
                u0.d.F2(l0.c0.P0(bArr[i2 + 4] & 255));
                u0.d.G2(l0.c0.P0(bArr[i2 + 5] & 255));
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(l0.c0.f13020n);
        u0.c.f17374a.d(this.f11366h);
        l0.b0.p0(l0.c0.f13021o);
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
    }
}
