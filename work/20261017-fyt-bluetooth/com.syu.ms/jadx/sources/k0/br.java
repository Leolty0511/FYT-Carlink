package k0;

import android.os.SystemProperties;
import android.text.format.Time;

/* JADX INFO: loaded from: classes2.dex */
public class br extends lt {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static int f3799m;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f3800b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3801c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f3802d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{5, 12}, new int[]{6, 2}, new int[]{7, 18}, new int[]{8, 26}, new int[]{10, 0}, new int[]{20, 13}, new int[]{21, 21}, new int[]{22, 54}, new int[]{23, 5}, new int[]{24, 1}, new int[]{25, 25}, new int[]{26, 55}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f3803e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f3804f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f3805g = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f3806h = new b();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public o1.g0 f3807i = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f3808j = 1;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f3809k = new c();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f3810l = new d();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(br.this.f3806h);
            br.this.f3804f = 5;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            br brVar = br.this;
            int i2 = brVar.f3804f - 1;
            brVar.f3804f = i2;
            if (i2 <= 0) {
                l0.b0.p0(brVar.f3806h);
                br.this.f3804f = 5;
                return;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (u0.b.f17306a0 == 1) {
                br brVar2 = br.this;
                brVar2.c3(brVar2.f3807i.b(1, 0));
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17347o == 1) {
                qt.y0(134, 1);
            } else {
                qt.y0(134, 0);
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, 200, 3, time.hour, time.minute, time.second);
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        this.f3807i.a();
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 0;
        mtVar.f8313h = 0;
        mtVar.f8314i = 1;
        u0.c.f17386m.a(this.f3805g, 1);
        qt.z(this.f3810l);
        u0.c.f17379f.a(this.f3809k, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        int i6;
        byte b2 = bArr[i2];
        if (b2 == -1) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
        }
        if (b2 == 22) {
            qt.y0(1031, ((bArr[i2 + 2] & 255) | ((bArr[i2 + 3] << 8) & 65280)) / 16);
            return;
        }
        if (b2 == 41) {
            qt.i(bArr[i2 + 2] & 255, bArr[i2 + 3] & 255, false, 6592);
            return;
        }
        if (b2 == 48) {
            if (nt.f8633a == 14418374) {
                int i7 = i2 + 2;
                if (this.f3803e != ((bArr[i7] >> 7) & 1)) {
                    int i8 = (bArr[i7] >> 7) & 1;
                    this.f3803e = i8;
                    if (i8 == 1) {
                        qt.a(1);
                        return;
                    } else {
                        qt.a(0);
                        return;
                    }
                }
                return;
            }
            int i9 = i2 + 2;
            if (this.f3803e != ((bArr[i9] >> 7) & 1)) {
                int i10 = (bArr[i9] >> 7) & 1;
                this.f3803e = i10;
                if (f3799m == 1) {
                    if (i10 == 1) {
                        if (o1.u.T(a.b.O)) {
                            return;
                        }
                        qt.t();
                        return;
                    } else {
                        if (o1.u.T(a.b.O)) {
                            qt.f();
                            return;
                        }
                        return;
                    }
                }
                return;
            }
            return;
        }
        if (b2 == 50) {
            qt.y0(131, bArr[i2 + 2] & 255);
            return;
        }
        if (b2 == 58) {
            byte b3 = bArr[i2 + 2];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b3 >> 4) & 1);
                qt.y0(2, (b3 >> 5) & 1);
            } else {
                qt.y0(1, (b3 >> 5) & 1);
                qt.y0(2, (b3 >> 4) & 1);
            }
            qt.y0(3, (b3 >> 3) & 1);
            qt.y0(4, (b3 >> 2) & 1);
            qt.y0(5, (b3 >> 1) & 1);
            qt.y0(0, (b3 >> 0) & 1);
            qt.y0(98, ((bArr[i2 + 3] << 8) & 65280) | (bArr[i2 + 4] & 255));
            int i11 = i2 + 5;
            qt.y0(99, (bArr[i11] >> 7) & 1);
            qt.y0(100, (bArr[i11] >> 6) & 1);
            return;
        }
        if (b2 == 102) {
            int i12 = i2 + 2;
            qt.y0(101, (bArr[i12] >> 7) & 1);
            qt.y0(102, (bArr[i12] >> 6) & 1);
            qt.y0(103, (bArr[i12] >> 5) & 1);
            qt.y0(104, (bArr[i12] >> 4) & 1);
            int i13 = i2 + 3;
            qt.y0(105, (bArr[i13] >> 5) & 7);
            qt.y0(106, (bArr[i13] >> 3) & 3);
            qt.y0(107, (bArr[i13] >> 2) & 1);
            qt.y0(108, (bArr[i13] >> 1) & 1);
            qt.y0(109, (bArr[i2 + 4] >> 6) & 1);
            int i14 = i2 + 5;
            qt.y0(110, (bArr[i14] >> 7) & 1);
            qt.y0(111, (bArr[i14] >> 5) & 3);
            qt.y0(112, (bArr[i14] >> 4) & 1);
            qt.y0(113, (bArr[i14] >> 3) & 1);
            int i15 = i2 + 6;
            qt.y0(114, (bArr[i15] >> 7) & 1);
            qt.y0(115, (bArr[i15] >> 6) & 1);
            qt.y0(116, (bArr[i15] >> 4) & 3);
            qt.y0(117, (bArr[i15] >> 0) & 15);
            int i16 = i2 + 7;
            qt.y0(118, (bArr[i16] >> 7) & 1);
            qt.y0(119, (bArr[i16] >> 6) & 1);
            qt.y0(120, (bArr[i16] >> 0) & 15);
            int i17 = i2 + 8;
            qt.y0(121, (bArr[i17] >> 7) & 1);
            qt.y0(122, (bArr[i17] >> 6) & 1);
            qt.y0(123, (bArr[i17] >> 5) & 1);
            qt.y0(124, (bArr[i17] >> 0) & 31);
            int i18 = i2 + 9;
            qt.y0(125, (bArr[i18] >> 6) & 3);
            qt.y0(126, (bArr[i18] >> 4) & 3);
            qt.y0(127, (bArr[i18] >> 3) & 1);
            qt.y0(128, (bArr[i18] >> 2) & 1);
            qt.y0(129, (bArr[i18] >> 1) & 1);
            qt.y0(130, (bArr[i18] >> 0) & 1);
            return;
        }
        if (b2 == 103) {
            int i19 = i2 + 2;
            l0.c0.N1((bArr[i19] >> 1) & 1, (bArr[i19] >> 0) & 1, 0);
            return;
        }
        switch (b2) {
            case 32:
                byte b4 = bArr[i2 + 2];
                byte b5 = bArr[i2 + 3];
                this.f3801c = b4 & 255;
                int i20 = 0;
                while (true) {
                    iArr = this.f3802d;
                    if (i20 < iArr.length) {
                        int i21 = this.f3801c;
                        if (i21 != iArr[i20][0]) {
                            i20++;
                        } else if (i21 != 0) {
                            this.f3800b = i20;
                        }
                    }
                }
                int i22 = this.f3801c;
                if (i22 == 3) {
                    if ((b5 & 255) == 1) {
                        int i23 = h0.c.E;
                        if (i23 == 3 || i23 == 4 || i23 == 5) {
                            l0.b0.l0(26, 0);
                            l0.b0.l0(26, 1);
                        } else {
                            l0.b0.l0(3, 0);
                            l0.b0.l0(3, 1);
                        }
                    }
                } else if (i22 != 4) {
                    int i24 = b5 & 255;
                    if (i24 != 1) {
                        if (i24 == 0) {
                            int i25 = this.f3800b;
                            if (i25 < iArr.length && i25 != 255) {
                                l0.b0.l0(iArr[i25][1], 1);
                            }
                            this.f3800b = 255;
                        }
                    } else if (i20 < iArr.length) {
                        l0.b0.l0(iArr[i20][1], 0);
                    }
                } else if ((b5 & 255) == 1) {
                    if (h0.c.E == 4) {
                        l0.b0.l0(18, 0);
                        l0.b0.l0(18, 1);
                    } else {
                        l0.b0.l0(4, 0);
                        l0.b0.l0(4, 1);
                    }
                }
                break;
            case 33:
                int i26 = i2 + 2;
                qt.y0(14, (bArr[i26] >> 7) & 1);
                qt.y0(13, (bArr[i26] >> 4) & 1);
                qt.y0(11, (bArr[i26] >> 3) & 1);
                qt.y0(12, (bArr[i26] >> 2) & 1);
                qt.y0(65, (bArr[i26] >> 1) & 1);
                qt.y0(16, (bArr[i26] >> 0) & 1);
                qt.y0(21, bArr[i2 + 3] & 255);
                int i27 = bArr[i2 + 4] & 255;
                if (i27 != 0) {
                    if (i27 == 1) {
                        i4 = 0;
                        i6 = 1;
                    } else if (i27 == 2) {
                        i4 = 0;
                        i6 = 0;
                        i5 = 1;
                    } else if (i27 == 3) {
                        i6 = 0;
                        i5 = 0;
                        i4 = 1;
                    } else if (i27 != 4) {
                        i4 = 0;
                        i6 = 0;
                    } else {
                        i6 = 0;
                        i4 = 1;
                        i5 = 1;
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
                int i28 = i2 + 5;
                int i29 = bArr[i28] & 255;
                int i30 = i2 + 6;
                int i31 = bArr[i30] & 255;
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    i29 = bArr[i30] & 255;
                    i31 = bArr[i28] & 255;
                }
                if (i29 == 0) {
                    qt.y0(27, -2);
                } else if (i29 == 255) {
                    qt.y0(27, -3);
                } else {
                    qt.y0(27, i29);
                }
                if (i31 == 0) {
                    qt.y0(28, -2);
                } else if (i31 != 255) {
                    qt.y0(28, i31);
                } else {
                    qt.y0(28, -3);
                }
                break;
            case 34:
                u0.d.R2(l0.c0.s1(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.s1(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.s1(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.s1(bArr[i2 + 5] & 255));
                break;
            case 35:
                int i32 = i2 + 2;
                int i33 = bArr[i32] & 255;
                int i34 = i2 + 3;
                int i35 = bArr[i34] & 255;
                int i36 = i2 + 4;
                int i37 = bArr[i36] & 255;
                int i38 = i2 + 5;
                int i39 = bArr[i38] & 255;
                if (i33 == 0 && i35 == 0 && i37 == 0 && i39 == 0) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i33 || l0.c0.f13014h != i35 || l0.c0.f13015i != i37 || l0.c0.f13016j != i39) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i33;
                l0.c0.f13014h = i35;
                l0.c0.f13015i = i37;
                l0.c0.f13016j = i39;
                u0.d.D2(l0.c0.s1(bArr[i32] & 255));
                u0.d.E2(l0.c0.s1(bArr[i34] & 255));
                u0.d.F2(l0.c0.s1(bArr[i36] & 255));
                u0.d.G2(l0.c0.s1(bArr[i38] & 255));
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f3807i.j();
        u0.c.f17386m.d(this.f3805g);
        l0.b0.p0(this.f3806h);
        qt.q0(this.f3810l);
        u0.c.f17379f.d(this.f3809k);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 136) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, 224, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 1) {
            z.k.s(227, 136, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 2) {
            z.k.s(227, 133, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 3) {
            z.k.s(227, 167, 1, iArr[0]);
        } else if (i2 == 4 && iArr != null && iArr.length > 0) {
            c3(iArr[0]);
        }
    }

    public final void c3(int i2) {
        if (i2 < 0) {
            i2 = 0;
        } else if (i2 > 1) {
            i2 = 1;
        }
        f3799m = i2;
        qt.y0(135, i2);
        int iB = this.f3807i.b(1, 0);
        int i3 = f3799m;
        if (iB != i3) {
            this.f3807i.g(1, i3);
        }
    }
}
