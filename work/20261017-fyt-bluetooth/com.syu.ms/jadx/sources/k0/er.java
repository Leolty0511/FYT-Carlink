package k0;

import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class er extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f4949b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f4952e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f4950c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f4951d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{6, 12}, new int[]{7, 2}, new int[]{9, 18}, new int[]{10, 26}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f4953f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f4954g = {new int[]{1, 3}, new int[]{2, 4}, new int[]{3, 2}, new int[]{4, 54}, new int[]{5, 12}, new int[]{6, 8}, new int[]{7, 7}, new int[]{8, 0}, new int[]{9, 9}, new int[]{10, 6}, new int[]{11, 55}, new int[]{12, 18}, new int[]{13, 1}, new int[]{14, 24}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f4955h = new a();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f4956i = new b();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f4957j = new c();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            switch (nt.f8633a) {
                case 983496:
                    z.k.s(227, 238, 1, 2);
                    break;
                case 1704392:
                    z.k.s(227, 238, 1, 3);
                    break;
                case 5571015:
                    z.k.s(227, 238, 1, 1);
                    break;
                case 5636551:
                    z.k.s(227, 238, 1, 0);
                    break;
                case 6947272:
                    z.k.s(227, 238, 1, 4);
                    break;
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.c0.I();
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.c0.A0();
        }
    }

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
        mtVar.f8312g = 0;
        mtVar.f8315j = 0;
        mtVar.f8320o = 0;
        mtVar.f8314i = 0;
        if (nt.f8633a == 983496) {
            mtVar.f8314i = 1;
        }
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        y0.g.f18094d.a(this.f4957j, 1);
        y0.g.f18095e.a(this.f4957j, 1);
        w0.e.f17815a.a(this.f4956i, 1);
        w0.e.f17819e.a(this.f4956i, 1);
        u0.c.f17393t.a(this.f4956i, 1);
        u0.c.f17392s.a(this.f4956i, 1);
        u0.c.f17374a.a(this.f4956i, 1);
        qt.z(this.f4955h);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int[][] iArr2;
        int i4;
        int i5;
        int i6;
        byte b2 = bArr[i2];
        if (b2 == 40) {
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                int i7 = i2 + 2;
                qt.y0(1, (bArr[i7] >> 7) & 1);
                qt.y0(2, (bArr[i7] >> 6) & 1);
            } else {
                int i8 = i2 + 2;
                qt.y0(1, (bArr[i8] >> 6) & 1);
                qt.y0(2, (bArr[i8] >> 7) & 1);
            }
            int i9 = i2 + 2;
            qt.y0(3, (bArr[i9] >> 4) & 1);
            qt.y0(4, (bArr[i9] >> 5) & 1);
            qt.y0(5, (bArr[i9] >> 3) & 1);
        }
        if (b2 == 41) {
            int i10 = nt.f8633a;
            if (i10 == 5571015 || i10 == 5636551 || i10 == 983496) {
                qt.i(bArr[i2 + 3] & 255, bArr[i2 + 2] & 255, false, 8981);
                return;
            } else {
                qt.i(bArr[i2 + 3] & 255, bArr[i2 + 2] & 255, false, 5570);
                return;
            }
        }
        if (b2 == 64) {
            int i11 = i2 + 2;
            qt.y0(120, (bArr[i11] >> 5) & 1);
            qt.y0(98, (bArr[i11] >> 4) & 1);
            qt.y0(99, (bArr[i11] >> 2) & 3);
            qt.y0(100, (bArr[i11] >> 0) & 3);
            qt.y0(101, bArr[i2 + 3] & 255);
            qt.y0(102, bArr[i2 + 4] & 255);
            int i12 = i2 + 5;
            qt.y0(121, (bArr[i12] >> 6) & 1);
            qt.y0(122, (bArr[i12] >> 5) & 1);
            qt.y0(103, (bArr[i12] >> 4) & 1);
            qt.y0(104, (bArr[i12] >> 3) & 1);
            qt.y0(105, (bArr[i12] >> 2) & 1);
            qt.y0(106, (bArr[i12] >> 0) & 3);
            int i13 = i2 + 6;
            qt.y0(107, (bArr[i13] >> 7) & 1);
            qt.y0(108, (bArr[i13] >> 6) & 1);
            qt.y0(109, (bArr[i13] >> 4) & 3);
            qt.y0(110, (bArr[i13] >> 3) & 1);
            qt.y0(111, (bArr[i13] >> 0) & 7);
            int i14 = i2 + 7;
            qt.y0(119, (bArr[i14] >> 4) & 15);
            qt.y0(123, (bArr[i14] >> 3) & 1);
            qt.y0(124, (bArr[i14] >> 2) & 1);
            qt.y0(112, (bArr[i14] >> 1) & 1);
            qt.y0(113, (bArr[i14] >> 0) & 1);
            qt.y0(114, bArr[i2 + 8] & 255);
            qt.y0(115, bArr[i2 + 9] & 255);
            qt.y0(116, bArr[i2 + 10] & 255);
            qt.y0(117, bArr[i2 + 11] & 255);
            qt.y0(118, bArr[i2 + 12] & 255);
            return;
        }
        if (b2 == 125) {
            if ((bArr[i2 + 2] & 255) != 1) {
                return;
            }
            int i15 = i2 + 3;
            l0.c0.a((bArr[i15] >> 3) & 1, (bArr[i15] >> 4) & 1, 0);
            o1.x.C(nt.f8643f, 1049, new int[]{11, bArr[i15] & 255}, null, null);
            return;
        }
        if (b2 == 127) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        switch (b2) {
            case 32:
                byte b3 = bArr[i2 + 2];
                byte b4 = bArr[i2 + 3];
                this.f4950c = b3 & 255;
                int i16 = 0;
                while (true) {
                    iArr = this.f4951d;
                    if (i16 < iArr.length) {
                        int i17 = this.f4950c;
                        if (i17 != iArr[i16][0]) {
                            i16++;
                        } else if (i17 != 0) {
                            this.f4949b = i16;
                        }
                    }
                }
                int i18 = b4 & 255;
                if (i18 != 1) {
                    if (i18 == 0) {
                        int i19 = this.f4949b;
                        if (i19 < iArr.length && i19 != 255) {
                            l0.b0.l0(iArr[i19][1], 1);
                        }
                        this.f4949b = 255;
                    }
                } else if (i16 < iArr.length) {
                    l0.b0.l0(iArr[i16][1], 0);
                }
                break;
            case 33:
                byte b5 = bArr[i2 + 2];
                byte b6 = bArr[i2 + 3];
                this.f4953f = b5 & 255;
                int i20 = 0;
                while (true) {
                    iArr2 = this.f4954g;
                    if (i20 < iArr2.length) {
                        int i21 = this.f4953f;
                        if (i21 != iArr2[i20][0]) {
                            i20++;
                        } else if (i21 != 0) {
                            this.f4952e = i20;
                        }
                    }
                }
                if (this.f4953f == 5) {
                    if ((b6 & 255) == 1) {
                        if (nt.f8633a == 5636551) {
                            int i22 = h0.c.E;
                            if (i22 != 3) {
                                if (i22 == 4) {
                                    l0.b0.l0(18, 0);
                                    l0.b0.l0(18, 1);
                                } else if (i22 != 5) {
                                    l0.b0.l0(18, 0);
                                    l0.b0.l0(18, 1);
                                }
                            }
                            l0.b0.l0(26, 0);
                            l0.b0.l0(26, 1);
                        } else {
                            l0.b0.l0(12, 0);
                            l0.b0.l0(12, 1);
                        }
                    }
                    break;
                } else {
                    int i23 = b6 & 255;
                    if (i23 != 1) {
                        if (i23 == 0) {
                            int i24 = this.f4952e;
                            if (i24 < iArr2.length && i24 != 255) {
                                l0.b0.l0(iArr2[i24][1], 1);
                            }
                            this.f4952e = 255;
                        }
                    } else if (i20 < iArr2.length) {
                        l0.b0.l0(iArr2[i20][1], 0);
                    }
                }
                break;
            case 34:
                u0.d.R2(l0.c0.E0(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.E0(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.E0(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.E0(bArr[i2 + 5] & 255));
                break;
            case 35:
                int i25 = i2 + 2;
                int i26 = bArr[i25] & 255;
                int i27 = i2 + 3;
                int i28 = bArr[i27] & 255;
                int i29 = i2 + 4;
                int i30 = bArr[i29] & 255;
                int i31 = i2 + 5;
                int i32 = bArr[i31] & 255;
                if (i26 == 255 && i28 == 255 && i30 == 255 && i32 == 255) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i26 || l0.c0.f13014h != i28 || l0.c0.f13015i != i30 || l0.c0.f13016j != i32) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i26;
                l0.c0.f13014h = i28;
                l0.c0.f13015i = i30;
                l0.c0.f13016j = i32;
                u0.d.D2(l0.c0.E0(bArr[i25] & 255));
                u0.d.E2(l0.c0.E0(bArr[i27] & 255));
                u0.d.F2(l0.c0.E0(bArr[i29] & 255));
                u0.d.G2(l0.c0.E0(bArr[i31] & 255));
                break;
            case 36:
                int i33 = i2 + 2;
                qt.y0(10, (bArr[i33] >> 7) & 1);
                qt.y0(11, (bArr[i33] >> 6) & 1);
                qt.y0(12, (bArr[i33] >> 5) & 1);
                qt.y0(13, (bArr[i33] >> 3) & 1);
                qt.y0(62, (bArr[i33] >> 2) & 1);
                qt.y0(16, (bArr[i33] >> 1) & 1);
                qt.y0(65, (bArr[i33] >> 0) & 1);
                int i34 = bArr[i2 + 3] & 255;
                if (i34 != 1) {
                    if (i34 == 2) {
                        i4 = 0;
                        i6 = 1;
                    } else if (i34 == 3) {
                        i4 = 0;
                        i6 = 0;
                        i5 = 1;
                    } else if (i34 == 4) {
                        i6 = 0;
                        i4 = 1;
                        i5 = 1;
                    } else if (i34 != 5) {
                        i4 = 0;
                        i6 = 0;
                    } else {
                        i6 = 0;
                        i5 = 0;
                        i4 = 1;
                    }
                    i5 = i6;
                } else {
                    i4 = 0;
                    i5 = 0;
                    i6 = 1;
                }
                qt.y0(18, i4);
                qt.y0(19, i6);
                qt.y0(20, i5);
                qt.y0(21, bArr[i2 + 4] & 255);
                qt.y0(27, bArr[i2 + 5] & 255);
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(l0.c0.f13020n);
        l0.b0.p0(l0.c0.f13021o);
        y0.g.f18094d.d(this.f4957j);
        y0.g.f18095e.d(this.f4957j);
        w0.e.f17815a.d(this.f4956i);
        w0.e.f17819e.d(this.f4956i);
        u0.c.f17393t.d(this.f4956i);
        u0.c.f17392s.d(this.f4956i);
        u0.c.f17374a.d(this.f4956i);
        qt.q0(this.f4955h);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 125) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, -56, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 1) {
            z.k.s(227, -55, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 2) {
            z.k.s(227, -55, 6, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], iArr[5]);
        } else if (i2 == 3) {
            z.k.s(227, -112, 1, iArr[0]);
        } else {
            if (i2 != 4) {
                return;
            }
            z.k.s(227, -88, 2, iArr[0], iArr[1]);
        }
    }
}
