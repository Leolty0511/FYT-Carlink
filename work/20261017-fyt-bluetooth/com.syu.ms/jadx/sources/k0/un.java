package k0;

import android.os.Process;
import android.os.SystemProperties;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class un extends lt {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static int f11119k;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f11120b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f11123e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f11121c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f11122d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 12}, new int[]{6, 2}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f11124f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f11125g = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{5, 12}, new int[]{6, 16}, new int[]{7, 5}, new int[]{8, 54}, new int[]{9, 21}, new int[]{10, 76}, new int[]{11, 18}, new int[]{12, 26}, new int[]{13, 6}, new int[]{14, 25}, new int[]{15, 38}, new int[]{16, 55}, new int[]{17, 1}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f11126h = new a();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public o1.g0 f11127i = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f11128j = 1;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = nt.f8637c;
            if (i2 == 52) {
                z.k.s(227, -30, 1, 4);
            } else {
                if (i2 != 53) {
                    return;
                }
                z.k.s(227, -30, 1, 5);
            }
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void O2(int[] iArr) {
        if (iArr == null || iArr.length < 2 || iArr[0] != 67) {
            return;
        }
        int i2 = iArr[1];
        if (i2 == 2) {
            z.k.s(227, -125, 3, 1, 1, 0);
            return;
        }
        if (i2 == 3) {
            z.k.s(227, -125, 3, 1, 2, 0);
        } else if (i2 == 4) {
            z.k.s(227, -125, 3, 1, 3, 0);
        } else {
            if (i2 != 5) {
                return;
            }
            z.k.s(227, -125, 3, 1, 4, 0);
        }
    }

    @Override // k0.lt
    public void S2() {
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        qt.z(this.f11126h);
        mt mtVar = this.f7886a;
        mtVar.f8306a = null;
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 0;
        mtVar.f8313h = 0;
        if (nt.f8637c == 53) {
            this.f11127i.a();
            a3(this.f11127i.b(1, 0));
        }
        this.f7886a.f8318m = new int[]{67};
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int[][] iArr2;
        byte b2 = bArr[i2];
        if (b2 == 38) {
            int i4 = i2 + 2;
            qt.y0(10, (bArr[i4] >> 7) & 1);
            qt.y0(11, (bArr[i4] >> 6) & 1);
            qt.y0(12, (bArr[i4] >> 5) & 1);
            qt.y0(65, (bArr[i4] >> 4) & 1);
            qt.y0(13, (bArr[i4] >> 3) & 1);
            qt.y0(14, (bArr[i4] >> 2) & 1);
            qt.y0(15, (bArr[i4] >> 1) & 1);
            qt.y0(16, (bArr[i4] >> 0) & 1);
            int i5 = i2 + 3;
            qt.y0(18, (bArr[i5] >> 7) & 1);
            qt.y0(19, (bArr[i5] >> 6) & 1);
            qt.y0(20, (bArr[i5] >> 5) & 1);
            qt.y0(21, 15 & (bArr[i5] >> 0));
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                int i6 = i2 + 4;
                if ((bArr[i6] & 255) == 0) {
                    qt.y0(28, -2);
                } else if ((bArr[i6] & 255) == 31) {
                    qt.y0(28, -3);
                } else {
                    qt.y0(28, bArr[i6] & 255);
                }
                int i7 = i2 + 5;
                if ((bArr[i7] & 255) == 0) {
                    qt.y0(27, -2);
                } else if ((bArr[i7] & 255) == 31) {
                    qt.y0(27, -3);
                } else {
                    qt.y0(27, bArr[i7] & 255);
                }
            } else {
                int i8 = i2 + 4;
                if ((bArr[i8] & 255) == 0) {
                    qt.y0(27, -2);
                } else if ((bArr[i8] & 255) == 31) {
                    qt.y0(27, -3);
                } else {
                    qt.y0(27, bArr[i8] & 255);
                }
                int i9 = i2 + 5;
                if ((bArr[i9] & 255) == 0) {
                    qt.y0(28, -2);
                } else if ((bArr[i9] & 255) == 31) {
                    qt.y0(28, -3);
                } else {
                    qt.y0(28, bArr[i9] & 255);
                }
            }
            int i10 = i2 + 6;
            qt.y0(42, (bArr[i10] >> 7) & 1);
            qt.y0(44, (bArr[i10] >> 4) & 7);
        }
        if (b2 == 41) {
            qt.i(bArr[i2 + 3], bArr[i2 + 2], false, 5820);
            return;
        }
        switch (b2) {
            case 32:
                byte b3 = bArr[i2 + 2];
                byte b4 = bArr[i2 + 3];
                this.f11121c = b3 & 255;
                int i11 = 0;
                while (true) {
                    iArr = this.f11122d;
                    if (i11 < iArr.length) {
                        int i12 = this.f11121c;
                        if (i12 != iArr[i11][0]) {
                            i11++;
                        } else if (i12 != 0) {
                            this.f11120b = i11;
                        }
                    }
                }
                int i13 = this.f11121c;
                if (i13 == 3) {
                    if ((b4 & 255) == 1) {
                        if (h0.c.E == 4) {
                            l0.b0.l0(18, 0);
                            l0.b0.l0(18, 1);
                        } else {
                            l0.b0.l0(4, 0);
                            l0.b0.l0(4, 1);
                        }
                    }
                } else if (i13 != 4) {
                    int i14 = b4 & 255;
                    if (i14 != 1) {
                        if (i14 == 0) {
                            int i15 = this.f11120b;
                            if (i15 < iArr.length && i15 != 255) {
                                l0.b0.l0(iArr[i15][1], 1);
                            }
                            this.f11120b = 255;
                        }
                    } else if (i11 < iArr.length) {
                        l0.b0.l0(iArr[i11][1], 0);
                    }
                } else if ((b4 & 255) == 1) {
                    int i16 = h0.c.E;
                    if (i16 == 3 || i16 == 4 || i16 == 5) {
                        l0.b0.l0(26, 0);
                        l0.b0.l0(26, 1);
                    } else {
                        l0.b0.l0(3, 0);
                        l0.b0.l0(3, 1);
                    }
                }
                break;
            case 33:
                byte b5 = bArr[i2 + 2];
                byte b6 = bArr[i2 + 3];
                this.f11124f = b5 & 255;
                int i17 = 0;
                while (true) {
                    iArr2 = this.f11125g;
                    if (i17 < iArr2.length) {
                        int i18 = this.f11124f;
                        if (i18 != iArr2[i17][0]) {
                            i17++;
                        } else if (i18 != 0) {
                            this.f11123e = i17;
                        }
                    }
                }
                int i19 = b6 & 255;
                if (i19 != 1) {
                    if (i19 == 0) {
                        int i20 = this.f11123e;
                        if (i20 < iArr2.length && i20 != 255) {
                            l0.b0.l0(iArr2[i20][1], 1);
                        }
                        this.f11123e = 255;
                    }
                } else if (i17 < iArr2.length) {
                    l0.b0.l0(iArr2[i17][1], 0);
                }
                break;
            case 34:
                u0.d.R2(l0.c0.p1(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.p1(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.p1(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.p1(bArr[i2 + 5] & 255));
                break;
            case 35:
                int i21 = i2 + 2;
                int i22 = bArr[i21] & 255;
                int i23 = i2 + 3;
                int i24 = bArr[i23] & 255;
                int i25 = i2 + 4;
                int i26 = bArr[i25] & 255;
                int i27 = i2 + 5;
                int i28 = bArr[i27] & 255;
                if (i22 == 0 && i24 == 0 && i26 == 0 && i28 == 0) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i22 || l0.c0.f13014h != i24 || l0.c0.f13015i != i26 || l0.c0.f13016j != i28) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i22;
                l0.c0.f13014h = i24;
                l0.c0.f13015i = i26;
                l0.c0.f13016j = i28;
                u0.d.D2(l0.c0.p1(bArr[i21] & 255));
                u0.d.E2(l0.c0.p1(bArr[i23] & 255));
                u0.d.F2(l0.c0.p1(bArr[i25] & 255));
                u0.d.G2(l0.c0.p1(bArr[i27] & 255));
                break;
            case 36:
                byte b7 = bArr[i2 + 2];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b7 >> 7) & 1);
                    qt.y0(2, (b7 >> 6) & 1);
                } else {
                    qt.y0(1, (b7 >> 6) & 1);
                    qt.y0(2, (b7 >> 7) & 1);
                }
                qt.y0(3, (b7 >> 4) & 1);
                qt.y0(4, (b7 >> 5) & 1);
                qt.y0(5, (b7 >> 3) & 1);
                qt.y0(0, (b7 >> 2) & 1);
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f11127i.j();
        u0.c.f17386m.d(l0.c0.f13020n);
        l0.b0.p0(l0.c0.f13021o);
        qt.q0(this.f11126h);
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
        int i3;
        if (i2 != 1005) {
            return;
        }
        a.f.p().t(LogType.CANBUS, "C_CAMERA_MODE codeCmd = " + iArr[0]);
        if (T2(iArr, 1)) {
            if (iArr[0] <= 1) {
                if (f11119k == 1) {
                    a3(0);
                    return;
                } else {
                    a3(1);
                    return;
                }
            }
            if (iArr[0] == 4) {
                i3 = 1;
            } else if (iArr[0] == 5) {
                i3 = 2;
            } else if (iArr[0] == 6) {
                i3 = 3;
            } else {
                i3 = iArr[0] == 7 ? 4 : 0;
            }
            z.k.s(227, -125, 3, 1, i3, 0);
        }
    }

    public final void a3(int i2) {
        f11119k = i2;
        qt.y0(Process.MEDIA_UID, i2);
        if (f11119k == 0) {
            z.k.s(227, -125, 3, 1, 6, 0);
        } else {
            z.k.s(227, -125, 3, 1, 5, 0);
        }
        int iB = this.f11127i.b(1, 0);
        int i3 = f11119k;
        if (iB != i3) {
            this.f11127i.g(1, i3);
        }
    }
}
