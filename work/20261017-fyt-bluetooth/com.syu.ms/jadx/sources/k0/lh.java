package k0;

import android.os.SystemProperties;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class lh extends lt implements o1.q {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static int f7658l = 255;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f7659b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f7660c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f7661d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 18}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 1}, new int[]{10, 40}, new int[]{11, 41}, new int[]{12, 42}, new int[]{13, 43}, new int[]{14, 44}, new int[]{15, 45}, new int[]{16, 46}, new int[]{17, 47}, new int[]{41, 30}, new int[]{42, 31}, new int[]{43, 32}, new int[]{44, 33}, new int[]{45, 34}, new int[]{46, 35}, new int[]{47, 29}, new int[]{48, 54}, new int[]{49, 24}, new int[]{50, 5}, new int[]{51, 18}, new int[]{52, 1}, new int[]{53, 6}, new int[]{70, 55}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final byte[] f7662e = new byte[1024];

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f7663f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f7664g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f7665h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f7666i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f7667j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f7668k = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = lh.f7658l;
            int i3 = u0.b.D;
            if (i2 != i3) {
                if (i3 == 5) {
                    z.k.s(227, 130, 1, 1);
                } else if (lh.f7658l == 5) {
                    z.k.s(227, 130, 1, 0);
                }
                lh.f7658l = u0.b.D;
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
        u0.c.f17374a.a(this.f7668k, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8314i = 0;
        mtVar.f8312g = 1;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 3) {
            int i4 = ((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255);
            u0.d.A3((32768 & i4) != 0 ? 1000 - ((65536 - i4) * 5) : (i4 * 5) + 1000);
            qt.y0(98, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
            qt.y0(99, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
            qt.y0(100, (bArr[i2 + 9] & 255) | (65280 & (bArr[i2 + 8] << 8)));
        }
        if (b2 == 18) {
            int i5 = i2 + 2;
            if (this.f7666i != bArr[i5]) {
                byte b3 = bArr[i5];
                this.f7666i = b3;
                if (b3 == 1 && u0.b.D != 5) {
                    o1.u.j();
                    return;
                } else {
                    if (b3 == 0 && u0.b.D == 5) {
                        l0.b0.l0(5, 0);
                        l0.b0.l0(5, 1);
                        u0.b.f17311c.c(0);
                        return;
                    }
                    return;
                }
            }
            return;
        }
        if (b2 == 41) {
            qt.i(bArr[i2 + 2], bArr[i2 + 3], true, 5400);
            return;
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 125) {
            if ((bArr[i2 + 2] & 255) != 1) {
                return;
            }
            int i6 = i2 + 3;
            l0.c0.a((bArr[i6] >> 3) & 1, (bArr[i6] >> 4) & 1, 0);
            o1.x.C(nt.f8643f, 1049, new int[]{11, bArr[i6] & 255}, null, null);
            return;
        }
        switch (b2) {
            case 32:
                byte b4 = bArr[i2 + 2];
                byte b5 = bArr[i2 + 3];
                this.f7660c = b4 & 255;
                int i7 = 0;
                while (true) {
                    iArr = this.f7661d;
                    if (i7 < iArr.length) {
                        int i8 = this.f7660c;
                        if (i8 != iArr[i7][0]) {
                            i7++;
                        } else if (i8 != 0) {
                            this.f7659b = i7;
                        }
                    }
                }
                int i9 = this.f7660c;
                if (i9 != 5) {
                    if (i9 == 41) {
                        for (int i10 = 0; i10 < (b5 & 255); i10++) {
                            l0.b0.l0(30, 0);
                        }
                        l0.b0.l0(30, 1);
                    } else if (i9 != 42) {
                        int i11 = b5 & 255;
                        if (i11 == 1) {
                            if (i7 < iArr.length) {
                                l0.b0.l0(iArr[i7][1], 0);
                            }
                        } else if (i11 == 0) {
                            int i12 = this.f7659b;
                            if (i12 < iArr.length && i12 != 255) {
                                l0.b0.l0(iArr[i12][1], 1);
                            }
                            this.f7659b = 255;
                        }
                    } else {
                        for (int i13 = 0; i13 < (b5 & 255); i13++) {
                            l0.b0.l0(31, 0);
                        }
                        l0.b0.l0(31, 1);
                    }
                } else if ((b5 & 255) == 1) {
                    int i14 = h0.c.E;
                    if (i14 == 3 || i14 == 5) {
                        l0.b0.l0(26, 0);
                        l0.b0.l0(26, 1);
                    } else {
                        l0.b0.l0(18, 0);
                        l0.b0.l0(18, 1);
                    }
                }
                break;
            case 33:
                byte b6 = bArr[i2 + 2];
                qt.y0(10, (b6 >> 7) & 1);
                qt.y0(11, (b6 >> 6) & 1);
                qt.y0(12, (b6 >> 5) & 1);
                qt.y0(53, (b6 >> 4) & 1);
                qt.y0(13, (b6 >> 3) & 1);
                qt.y0(14, (b6 >> 2) & 1);
                qt.y0(15, (b6 >> 1) & 1);
                qt.y0(16, (b6 >> 0) & 1);
                byte b7 = bArr[i2 + 3];
                qt.y0(18, (b7 >> 7) & 1);
                qt.y0(19, (b7 >> 6) & 1);
                qt.y0(20, (b7 >> 5) & 1);
                qt.y0(21, (b7 >> 0) & 15);
                int i15 = i2 + 5;
                int i16 = bArr[i15] & 255;
                int i17 = i2 + 6;
                int i18 = bArr[i17] & 255;
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    i16 = bArr[i17] & 255;
                    i18 = bArr[i15] & 255;
                }
                if (i16 == 0) {
                    qt.y0(27, -2);
                } else if (i16 == 31) {
                    qt.y0(27, -3);
                } else if (i16 < 1 || i16 > 30) {
                    qt.y0(27, -1);
                } else {
                    qt.y0(27, i16);
                }
                if (i18 == 0) {
                    qt.y0(28, -2);
                } else if (i18 == 31) {
                    qt.y0(28, -3);
                } else if (i18 < 1 || i18 > 30) {
                    qt.y0(28, -1);
                } else {
                    qt.y0(28, i18);
                }
                int i19 = i2 + 7;
                qt.y0(29, (bArr[i19] >> 4) & 7);
                qt.y0(30, (bArr[i19] >> 0) & 7);
                break;
            case 34:
                u0.d.R2(l0.c0.y1(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.y1(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.y1(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.y1(bArr[i2 + 5] & 255));
                break;
            case 35:
                u0.d.D2(l0.c0.y1(bArr[i2 + 2] & 255));
                u0.d.E2(l0.c0.y1(bArr[i2 + 3] & 255));
                u0.d.F2(l0.c0.y1(bArr[i2 + 4] & 255));
                u0.d.G2(l0.c0.y1(bArr[i2 + 5] & 255));
                break;
            case 36:
                byte b8 = bArr[i2 + 2];
                if ((b8 & 1) == 1) {
                    if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                        qt.y0(1, (b8 >> 7) & 1);
                        qt.y0(2, (b8 >> 6) & 1);
                    } else {
                        qt.y0(1, (b8 >> 6) & 1);
                        qt.y0(2, (b8 >> 7) & 1);
                    }
                    qt.y0(4, (b8 >> 5) & 1);
                    qt.y0(3, (b8 >> 4) & 1);
                    qt.y0(5, (b8 >> 3) & 1);
                    qt.y0(0, (b8 >> 2) & 1);
                }
                int i20 = i2 + 3;
                if ((bArr[i20] & 8) != 0) {
                    u0.d.C2(1);
                } else {
                    u0.d.C2(0);
                }
                int i21 = bArr[i20] & 1;
                if (this.f7667j != i21) {
                    this.f7667j = i21;
                    if (u0.b.f17357r0 == 0) {
                        if (i21 != 0) {
                            if (!o1.u.S(a.b.f31s)) {
                                o1.u.f(a.b.f32t);
                            }
                        } else if (o1.u.S(a.b.f31s)) {
                            o1.u.k();
                        }
                    }
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(l0.c0.f13020n);
        u0.c.f17374a.d(this.f7668k);
        l0.b0.p0(l0.c0.f13021o);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 101) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
    }

    @Override // o1.q
    public void b(byte[] bArr) {
        int i2;
        int i3;
        int i4;
        if (bArr != null) {
            a.f.p().t(LogType.CANBUS, "OBD Rcv--> " + o1.b0.d(bArr, 0, bArr.length));
        }
        if (bArr == null || bArr.length <= 0) {
            a.i.a0(100L);
            return;
        }
        if (this.f7663f + bArr.length > 1024) {
            this.f7663f = 0;
            this.f7664g = 0;
            this.f7665h = 0;
        }
        System.arraycopy(bArr, 0, this.f7662e, this.f7663f, bArr.length);
        int length = this.f7663f + bArr.length;
        this.f7663f = length;
        int i5 = this.f7665h;
        if (i5 != 0) {
            if (i5 >= length) {
                return;
            }
            byte b2 = this.f7662e[1];
            int i6 = 2;
            while (true) {
                i4 = this.f7665h;
                if (i6 >= i4) {
                    break;
                }
                b2 = (byte) (b2 + this.f7662e[i6]);
                i6++;
            }
            byte b3 = (byte) (b2 ^ 255);
            byte[] bArr2 = this.f7662e;
            if (b3 == bArr2[i4]) {
                U2(bArr2, 1, i4 - 1);
                z.a.f18158i.i(new byte[]{-1});
                this.f7664g = this.f7665h + 1;
            } else {
                this.f7664g = 1;
            }
            this.f7665h = 0;
        }
        int i7 = this.f7663f - 2;
        while (true) {
            i2 = this.f7664g;
            if (i2 >= i7) {
                break;
            }
            byte[] bArr3 = this.f7662e;
            if (bArr3[i2] == 46) {
                int i8 = bArr3[i2 + 2] & 255;
                this.f7665h = i8;
                int i9 = i8 + i2 + 3;
                this.f7665h = i9;
                if (i9 >= this.f7663f) {
                    this.f7665h = i9 - i2;
                    break;
                }
                byte b4 = bArr3[i2 + 1];
                int i10 = i2 + 2;
                while (true) {
                    i3 = this.f7665h;
                    if (i10 >= i3) {
                        break;
                    }
                    b4 = (byte) (b4 + this.f7662e[i10]);
                    i10++;
                }
                byte b5 = (byte) (b4 ^ 255);
                byte[] bArr4 = this.f7662e;
                if (b5 == bArr4[i3]) {
                    int i11 = this.f7664g;
                    U2(bArr4, i11 + 1, (i3 - i11) - 1);
                    z.a.f18158i.i(new byte[]{-1});
                    this.f7664g = this.f7665h;
                } else {
                    this.f7664g++;
                }
                this.f7665h = 0;
            }
            this.f7664g++;
        }
        if (i2 != 0) {
            int i12 = this.f7663f - i2;
            this.f7663f = i12;
            if (i12 != 0) {
                byte[] bArr5 = this.f7662e;
                System.arraycopy(bArr5, i2, bArr5, 0, i12);
            }
            this.f7664g = 0;
        }
    }
}
