package k0;

import android.drm.DrmManagerClient;
import android.opengl.GLES10;
import android.os.SystemProperties;
import android.text.format.Time;

/* JADX INFO: loaded from: classes2.dex */
public class yq extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f12614b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f12615c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f12616d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{5, 12}, new int[]{6, 2}, new int[]{7, 18}, new int[]{8, 26}, new int[]{10, 0}, new int[]{20, 13}, new int[]{21, 21}, new int[]{22, 54}, new int[]{23, 5}, new int[]{24, 1}, new int[]{25, 25}, new int[]{26, 63}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f12617e = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, 200, 5, (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN), (byte) (time.month + 1), (byte) time.monthDay, (byte) time.hour, (byte) time.minute);
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 0;
        mtVar.f8320o = 0;
        mtVar.f8314i = 0;
        int i2 = nt.f8633a;
        if (i2 == 8520136) {
            mtVar.f8314i = 1;
        } else {
            if (i2 != 15204807) {
                return;
            }
            qt.z(this.f12617e);
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        int i6;
        byte b2 = bArr[i2];
        if (b2 == 40) {
            int i7 = i2 + 2;
            int i8 = bArr[i7] & 255;
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (i8 >> 7) & 1);
                qt.y0(2, (i8 >> 6) & 1);
            } else {
                qt.y0(1, (i8 >> 6) & 1);
                qt.y0(2, (i8 >> 7) & 1);
            }
            qt.y0(3, (i8 >> 4) & 1);
            qt.y0(4, (i8 >> 5) & 1);
            qt.y0(5, (i8 >> 3) & 1);
            if ((bArr[i7] & 1) == 1) {
                qt.a(1);
                return;
            }
            qt.a(0);
        }
        if (b2 == 41) {
            qt.i(bArr[i2 + 2] & 255, bArr[i2 + 3] & 255, false, GLES10.GL_CLEAR);
            return;
        }
        if (b2 == 102) {
            if (nt.f8633a != 8520136) {
                int i9 = i2 + 2;
                qt.y0(98, (bArr[i9] >> 5) & 7);
                qt.y0(99, (bArr[i9] >> 4) & 1);
                int i10 = i2 + 3;
                qt.y0(105, (bArr[i10] >> 4) & 1);
                qt.y0(106, (bArr[i10] >> 3) & 1);
                qt.y0(104, (bArr[i10] >> 2) & 1);
                qt.y0(100, (bArr[i10] >> 1) & 1);
                qt.y0(101, (bArr[i10] >> 0) & 1);
                int i11 = i2 + 4;
                qt.y0(102, (bArr[i11] >> 1) & 1);
                qt.y0(103, (bArr[i11] >> 0) & 1);
                qt.y0(107, bArr[i2 + 5] & 255);
                return;
            }
            qt.y0(108, (bArr[i2 + 2] >> 0) & 3);
            int i12 = i2 + 3;
            qt.y0(109, (bArr[i12] >> 7) & 1);
            qt.y0(110, (bArr[i12] >> 6) & 1);
            qt.y0(111, (bArr[i12] >> 5) & 1);
            qt.y0(112, (bArr[i12] >> 3) & 3);
            qt.y0(113, (bArr[i12] >> 2) & 1);
            qt.y0(114, (bArr[i12] >> 1) & 1);
            qt.y0(115, (bArr[i12] >> 0) & 1);
            int i13 = i2 + 4;
            qt.y0(116, (bArr[i13] >> 2) & 3);
            qt.y0(117, (bArr[i13] >> 0) & 3);
            qt.y0(118, bArr[i2 + 5] & 255);
            qt.y0(119, (bArr[i2 + 7] & 255) | ((bArr[i2 + 6] << 8) & 65280));
            return;
        }
        if (b2 == 103) {
            if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                int i14 = i2 + 2;
                l0.c0.b((bArr[i14] >> 1) & 1, (bArr[i14] >> 0) & 1, 0);
                return;
            } else {
                int i15 = i2 + 2;
                l0.c0.a((bArr[i15] >> 1) & 1, (bArr[i15] >> 0) & 1, 0);
                return;
            }
        }
        if (b2 == 127) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        switch (b2) {
            case 32:
                byte b3 = bArr[i2 + 2];
                byte b4 = bArr[i2 + 3];
                this.f12615c = b3 & 255;
                int i16 = 0;
                while (true) {
                    iArr = this.f12616d;
                    if (i16 < iArr.length) {
                        int i17 = this.f12615c;
                        if (i17 != iArr[i16][0]) {
                            i16++;
                        } else if (i17 != 0) {
                            this.f12614b = i16;
                        }
                    }
                }
                int i18 = b4 & 255;
                if (i18 != 1) {
                    if (i18 == 0) {
                        int i19 = this.f12614b;
                        if (i19 < iArr.length && i19 != 255) {
                            l0.b0.l0(iArr[i19][1], 1);
                        }
                        this.f12614b = 255;
                    }
                } else if (i16 < iArr.length) {
                    l0.b0.l0(iArr[i16][1], 0);
                }
                break;
            case 33:
                int i20 = bArr[i2 + 2] & 255;
                int i21 = bArr[i2 + 3] & 255;
                int i22 = bArr[i2 + 4] & 255;
                int i23 = i2 + 5;
                int i24 = bArr[i23] & 255;
                int i25 = i2 + 6;
                int i26 = bArr[i25] & 255;
                qt.y0(63, (i20 >> 4) & 1);
                qt.y0(11, (i20 >> 3) & 1);
                qt.y0(12, (i20 >> 2) & 1);
                qt.y0(65, (i20 >> 1) & 1);
                qt.y0(16, (i20 >> 0) & 1);
                qt.y0(21, i21 & 255);
                qt.y0(31, (bArr[i2 + 7] >> 0) & 3);
                int i27 = i22 & 255;
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
                        i4 = 1;
                        i5 = 1;
                    } else if (i27 != 4) {
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
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    i24 = bArr[i25] & 255;
                    i26 = bArr[i23] & 255;
                }
                int i28 = nt.f8633a;
                if (i28 == 8520136) {
                    if (i24 == 1) {
                        qt.y0(27, -2);
                    } else if (i24 == 9) {
                        qt.y0(27, -3);
                    } else if (i24 <= 1 || i24 >= 9) {
                        qt.y0(27, -1);
                    } else {
                        qt.y0(27, i24);
                    }
                    if (i26 == 1) {
                        qt.y0(28, -2);
                    } else if (i26 == 9) {
                        qt.y0(28, -3);
                    } else if (i24 > 1 && i24 < 9) {
                        qt.y0(28, i26);
                    } else {
                        qt.y0(28, -1);
                    }
                } else if (i28 == 13763015) {
                    if (i24 == 0) {
                        qt.y0(27, -2);
                    } else if (i24 == 15) {
                        qt.y0(27, -3);
                    } else if (i24 <= 0 || i24 >= 14) {
                        qt.y0(27, -1);
                    } else {
                        qt.y0(27, i24 + 17);
                    }
                    if (i26 == 0) {
                        qt.y0(28, -2);
                    } else if (i26 == 15) {
                        qt.y0(28, -3);
                    } else if (i24 > 0 && i24 < 14) {
                        qt.y0(28, i26 + 17);
                    } else {
                        qt.y0(28, -1);
                    }
                } else {
                    if (i24 == 1) {
                        qt.y0(27, -2);
                    } else if (i24 == 9) {
                        qt.y0(27, -3);
                    } else if (i24 <= 1 || i24 >= 9) {
                        qt.y0(27, -1);
                    } else {
                        qt.y0(27, ((i24 & 255) * 2) + 14);
                    }
                    if (i26 == 1) {
                        qt.y0(28, -2);
                    } else if (i26 == 9) {
                        qt.y0(28, -3);
                    } else if (i26 > 1 && i26 < 9) {
                        qt.y0(28, ((i26 & 255) * 2) + 14);
                    } else {
                        qt.y0(28, -1);
                    }
                }
                break;
            case 34:
                u0.d.R2(l0.c0.b1(bArr[i2 + 2]));
                u0.d.S2(l0.c0.b1(bArr[i2 + 3]));
                u0.d.T2(l0.c0.b1(bArr[i2 + 4]));
                u0.d.U2(l0.c0.b1(bArr[i2 + 5]));
                break;
            case 35:
                int i29 = i2 + 2;
                int i30 = bArr[i29] & 255;
                int i31 = i2 + 3;
                int i32 = bArr[i31] & 255;
                int i33 = i2 + 4;
                int i34 = bArr[i33] & 255;
                int i35 = i2 + 5;
                int i36 = 255 & bArr[i35];
                if (i30 == 0 && i32 == 0 && i34 == 0 && i36 == 0) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i30 || l0.c0.f13014h != i32 || l0.c0.f13015i != i34 || l0.c0.f13016j != i36) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i30;
                l0.c0.f13014h = i32;
                l0.c0.f13015i = i34;
                l0.c0.f13016j = i36;
                u0.d.D2(l0.c0.b1(bArr[i29]));
                u0.d.E2(l0.c0.b1(bArr[i31]));
                u0.d.F2(l0.c0.b1(bArr[i33]));
                u0.d.G2(l0.c0.b1(bArr[i35]));
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(l0.c0.f13020n);
        l0.b0.p0(l0.c0.f13021o);
        qt.q0(this.f12617e);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 120) {
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
            z.k.s(227, 144, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 2 && iArr != null && iArr.length > 0) {
            z.k.s(227, 224, 2, iArr[0], iArr[1]);
        }
    }
}
