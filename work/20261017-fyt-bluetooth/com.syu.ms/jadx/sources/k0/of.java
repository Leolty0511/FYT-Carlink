package k0;

import android.drm.DrmManagerClient;
import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import android.text.format.Time;

/* JADX INFO: loaded from: classes2.dex */
public class of extends lt {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static int f8814k;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f8817d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public o1.g0 f8815b = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f8816c = 1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f8818e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int[][] f8819f = {new int[]{0, -1}, new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 12}, new int[]{6, 26}, new int[]{7, 2}, new int[]{8, 6}, new int[]{9, 38}, new int[]{10, 27}, new int[]{11, 28}, new int[]{14, 34}, new int[]{15, 35}, new int[]{16, 13}, new int[]{17, 18}, new int[]{18, 29}, new int[]{96, 13}, new int[]{97, 1}};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f8820g = {new int[]{0, -1}, new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 7}, new int[]{4, 8}, new int[]{5, 12}, new int[]{6, 26}, new int[]{7, 2}, new int[]{8, 6}, new int[]{9, 38}, new int[]{10, 27}, new int[]{11, 28}, new int[]{14, 34}, new int[]{15, 35}, new int[]{16, 13}, new int[]{17, 18}, new int[]{18, 29}, new int[]{96, 13}, new int[]{97, 1}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f8821h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f8822i = new a();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f8823j = new b();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17347o == 1) {
                z.k.s(227, 144, 2, 41, 0);
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, -90, 7, (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN), (byte) (time.month + 1), (byte) time.monthDay, (byte) time.hour, (byte) time.minute, 0, 0);
        }
    }

    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        mtVar.f8310e = 1;
        mtVar.f8311f = 0;
        mtVar.f8312g = 0;
        mtVar.f8320o = 1;
        mtVar.f8314i = 0;
        z.k.s(227, 137, 1, 0);
        z.k.s(227, 138, 1, 0);
        int i2 = nt.f8637c;
        if (i2 == 122 || i2 == 165) {
            this.f7886a.f8306a = new String[]{"com.syu.canbus"};
        } else {
            this.f7886a.f8306a = null;
        }
        this.f8815b.a();
        c3(this.f8815b.b(1, 0));
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        qt.y(this.f8822i);
        qt.z(this.f8823j);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int[][] iArr2;
        int i4;
        int i5;
        int i6;
        byte b2 = bArr[i2];
        if (b2 == 41) {
            qt.m(bArr[i2 + 2], bArr[i2 + 3], 32768, false, 8192);
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 102) {
            int i7 = i2 + 2;
            qt.y0(98, (bArr[i7] >> 7) & 1);
            qt.y0(99, (bArr[i7] >> 6) & 1);
            int i8 = i2 + 3;
            qt.y0(100, (bArr[i8] >> 7) & 1);
            qt.y0(101, (bArr[i8] >> 6) & 1);
            int i9 = i2 + 4;
            qt.y0(102, (bArr[i9] >> 7) & 1);
            qt.y0(103, (bArr[i9] >> 6) & 1);
            qt.y0(104, (bArr[i2 + 5] >> 7) & 1);
            return;
        }
        if (b2 == 104) {
            qt.y0(1032, (bArr[i2 + 2] & 255) | ((bArr[i2 + 3] << 8) & 65280));
            return;
        }
        switch (b2) {
            case 32:
                byte b3 = bArr[i2 + 2];
                byte b4 = bArr[i2 + 3];
                this.f8818e = b3 & 255;
                if (nt.f8637c == 162) {
                    int i10 = 0;
                    while (true) {
                        iArr = this.f8820g;
                        if (i10 < iArr.length) {
                            int i11 = this.f8818e;
                            if (i11 != iArr[i10][0]) {
                                i10++;
                            } else if (i11 != 0) {
                                this.f8817d = i10;
                            }
                        }
                    }
                    int i12 = this.f8818e;
                    if (i12 == 6) {
                        if ((b4 & 255) == 1) {
                            int i13 = h0.c.E;
                            if (i13 != 3) {
                                if (i13 == 4) {
                                    l0.b0.l0(18, 0);
                                    l0.b0.l0(18, 1);
                                } else if (i13 != 5) {
                                    l0.b0.l0(12, 0);
                                    l0.b0.l0(12, 1);
                                }
                            }
                            l0.b0.l0(26, 0);
                            l0.b0.l0(26, 1);
                        }
                        break;
                    } else if (i12 != 17) {
                        int i14 = b4 & 255;
                        if (i14 != 1) {
                            if (i14 == 0) {
                                int i15 = this.f8817d;
                                if (i15 < iArr.length && i15 != 255) {
                                    l0.b0.l0(iArr[i15][1], 1);
                                }
                                this.f8817d = 255;
                            }
                        } else if (i10 < iArr.length) {
                            l0.b0.l0(iArr[i10][1], 0);
                        }
                    } else if ((b4 & 255) == 1) {
                        int i16 = h0.c.E;
                        if (i16 == 3 || i16 == 5) {
                            l0.b0.l0(26, 0);
                            l0.b0.l0(26, 1);
                        } else {
                            l0.b0.l0(18, 0);
                            l0.b0.l0(18, 1);
                        }
                    }
                } else {
                    int i17 = 0;
                    while (true) {
                        iArr2 = this.f8819f;
                        if (i17 < iArr2.length) {
                            int i18 = this.f8818e;
                            if (i18 != iArr2[i17][0]) {
                                i17++;
                            } else if (i18 != 0) {
                                this.f8817d = i17;
                            }
                        }
                    }
                    int i19 = this.f8818e;
                    if (i19 == 6) {
                        if ((b4 & 255) == 1) {
                            int i20 = h0.c.E;
                            if (i20 != 3) {
                                if (i20 == 4) {
                                    l0.b0.l0(18, 0);
                                    l0.b0.l0(18, 1);
                                } else if (i20 != 5) {
                                    l0.b0.l0(12, 0);
                                    l0.b0.l0(12, 1);
                                }
                            }
                            l0.b0.l0(26, 0);
                            l0.b0.l0(26, 1);
                        }
                        break;
                    } else if (i19 != 17) {
                        int i21 = b4 & 255;
                        if (i21 != 1) {
                            if (i21 == 0) {
                                int i22 = this.f8817d;
                                if (i22 < iArr2.length && i22 != 255) {
                                    l0.b0.l0(iArr2[i22][1], 1);
                                }
                                this.f8817d = 255;
                            }
                        } else if (i17 < iArr2.length) {
                            l0.b0.l0(iArr2[i17][1], 0);
                        }
                    } else if ((b4 & 255) == 1) {
                        int i23 = h0.c.E;
                        if (i23 == 3 || i23 == 5) {
                            l0.b0.l0(26, 0);
                            l0.b0.l0(26, 1);
                        } else {
                            l0.b0.l0(18, 0);
                            l0.b0.l0(18, 1);
                        }
                    }
                }
                break;
            case 33:
                int i24 = bArr[i2 + 2] & 255;
                qt.y0(10, (i24 >> 7) & 1);
                qt.y0(11, (i24 >> 6) & 1);
                qt.y0(12, (i24 >> 5) & 1);
                qt.y0(13, (i24 >> 3) & 1);
                qt.y0(14, (i24 >> 2) & 1);
                qt.y0(15, (i24 >> 1) & 1);
                qt.y0(38, (i24 >> 0) & 1);
                int i25 = i2 + 3;
                qt.y0(21, bArr[i25] & DhcpPacket.DHCP_DOMAIN_NAME);
                if (((bArr[i25] >> 7) & 1) != 1) {
                    if (((bArr[i25] >> 6) & 1) == 1) {
                        i4 = 0;
                        i6 = 0;
                        i5 = 1;
                    } else if (((bArr[i25] >> 5) & 1) == 1) {
                        i4 = 0;
                        i5 = 0;
                        i6 = 1;
                    } else if (((bArr[i25] >> 4) & 1) == 1) {
                        i5 = 0;
                        i4 = 1;
                        i6 = 1;
                    } else {
                        i4 = 0;
                        i5 = 0;
                    }
                    qt.y0(18, i4);
                    qt.y0(19, i5);
                    qt.y0(20, i6);
                    int i26 = i2 + 4;
                    qt.y0(56, (bArr[i26] >> 7) & 1);
                    qt.y0(27, bArr[i26] & 127);
                    qt.y0(28, bArr[i26] & 127);
                    int i27 = i2 + 6;
                    qt.y0(65, (bArr[i27] >> 7) & 1);
                    qt.y0(16, (bArr[i27] >> 6) & 1);
                    qt.y0(54, (bArr[i27] >> 5) & 1);
                    qt.y0(52, (bArr[i27] >> 4) & 1);
                    qt.y0(53, (bArr[i27] >> 3) & 1);
                    qt.y0(37, (bArr[i27] >> 0) & 1);
                } else {
                    i4 = 0;
                    i5 = 1;
                }
                i6 = i5;
                qt.y0(18, i4);
                qt.y0(19, i5);
                qt.y0(20, i6);
                int i28 = i2 + 4;
                qt.y0(56, (bArr[i28] >> 7) & 1);
                qt.y0(27, bArr[i28] & 127);
                qt.y0(28, bArr[i28] & 127);
                int i29 = i2 + 6;
                qt.y0(65, (bArr[i29] >> 7) & 1);
                qt.y0(16, (bArr[i29] >> 6) & 1);
                qt.y0(54, (bArr[i29] >> 5) & 1);
                qt.y0(52, (bArr[i29] >> 4) & 1);
                qt.y0(53, (bArr[i29] >> 3) & 1);
                qt.y0(37, (bArr[i29] >> 0) & 1);
                break;
            case 34:
                if (this.f8821h != 1) {
                    u0.d.R2(15);
                    u0.d.S2(15);
                    u0.d.T2(15);
                    u0.d.U2(15);
                } else {
                    u0.d.R2(a3(bArr[i2 + 3] & 255));
                    u0.d.S2(b3(bArr[i2 + 4] & 255));
                    u0.d.T2(b3(bArr[i2 + 5] & 255));
                    u0.d.U2(a3(bArr[i2 + 6] & 255));
                }
                break;
            case 35:
                int i30 = i2 + 2;
                u0.d.D2(l0.c0.t1(bArr[i30] & 255));
                u0.d.E2(l0.c0.t1(bArr[i30] & 255));
                u0.d.F2(l0.c0.t1(bArr[i30] & 255));
                u0.d.G2(l0.c0.t1(bArr[i30] & 255));
                break;
            case 36:
                byte b5 = bArr[i2 + 2];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b5 >> 7) & 1);
                    qt.y0(2, (b5 >> 6) & 1);
                } else {
                    qt.y0(1, (b5 >> 6) & 1);
                    qt.y0(2, (b5 >> 7) & 1);
                }
                qt.y0(3, (b5 >> 4) & 1);
                qt.y0(4, (b5 >> 5) & 1);
                qt.y0(5, (b5 >> 3) & 1);
                int i31 = i2 + 3;
                byte b6 = bArr[i31];
                int i32 = bArr[i31] & 1;
                this.f8821h = i32;
                if (i32 == 0) {
                    u0.d.R2(15);
                    u0.d.S2(15);
                    u0.d.T2(15);
                    u0.d.U2(15);
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f8815b.j();
        u0.c.f17386m.d(l0.c0.f13020n);
        qt.p0(this.f8822i);
        qt.q0(this.f8823j);
        l0.b0.p0(l0.c0.f13021o);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 106) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            z.k.s(227, 136, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 1) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            z.k.s(227, 224, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 2 && iArr != null && iArr.length > 0) {
            c3(iArr[0]);
        }
    }

    public final int a3(int i2) {
        if (i2 == 0) {
            return 15;
        }
        if (i2 == 1) {
            return 0;
        }
        if (i2 != 2) {
            return i2 != 3 ? 15 : 9;
        }
        return 5;
    }

    public final int b3(int i2) {
        if (i2 == 0) {
            return 15;
        }
        if (i2 == 1) {
            return 0;
        }
        if (i2 == 2) {
            return 4;
        }
        if (i2 != 3) {
            return i2 != 4 ? 15 : 9;
        }
        return 7;
    }

    public final void c3(int i2) {
        f8814k = i2;
        qt.y0(105, i2);
        z.k.s(227, 153, 4, 1, i2, 0, 0);
        int iB = this.f8815b.b(1, 0);
        int i3 = f8814k;
        if (iB != i3) {
            this.f8815b.g(1, i3);
        }
    }
}
