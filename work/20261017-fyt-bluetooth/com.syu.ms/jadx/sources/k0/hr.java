package k0;

import android.os.SystemProperties;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class hr extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f6140b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f6141c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f6142d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{5, 18}, new int[]{6, 26}, new int[]{7, 2}, new int[]{8, 0}, new int[]{9, 12}, new int[]{10, 5}, new int[]{11, 1}, new int[]{12, 24}, new int[]{13, 54}, new int[]{14, 3}, new int[]{15, 4}, new int[]{16, 6}, new int[]{17, 62}, new int[]{20, 13}, new int[]{21, 13}, new int[]{22, 13}, new int[]{23, 58}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f6143e = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, 132, 6, time.year - 2020, time.month + 1, time.monthDay, (byte) time.hour, (byte) time.minute, (byte) (!DateFormat.is24HourFormat(App.c()) ? 1 : 0));
            switch (nt.f8633a) {
                case 4260294:
                    z.k.s(227, 238, 2, 1, 1);
                    break;
                case 4325830:
                    z.k.s(227, 238, 2, 1, 5);
                    break;
                case 4391366:
                    z.k.s(227, 238, 2, 1, 3);
                    break;
                case 6685128:
                    z.k.s(227, 238, 2, 1, 2);
                    break;
                case 6750664:
                    z.k.s(227, 238, 2, 1, 4);
                    break;
                default:
                    z.k.s(227, 238, 2, 1, 6);
                    break;
            }
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void O2(int[] iArr) {
        if (iArr == null || iArr.length < 2) {
            return;
        }
        int i2 = iArr[0];
        if (i2 == 33) {
            if (iArr[1] != 0) {
                if (nt.f8645g[10] == 0) {
                    z.k.s(227, 199, 5, 128, 0, 0, 0, 0);
                    z.k.s(227, 199, 5, 0, 0, 0, 0, 0);
                    return;
                }
                return;
            }
            if (nt.f8645g[10] == 1) {
                z.k.s(227, 199, 5, 128, 0, 0, 0, 0);
                z.k.s(227, 199, 5, 0, 0, 0, 0, 0);
                return;
            }
            return;
        }
        if (i2 == 34) {
            if (iArr[1] != 0) {
                if (nt.f8645g[11] == 0) {
                    z.k.s(227, 199, 5, 2, 0, 0, 0, 0);
                    z.k.s(227, 199, 5, 0, 0, 0, 0, 0);
                    return;
                }
                return;
            }
            if (nt.f8645g[11] == 1) {
                z.k.s(227, 199, 5, 2, 0, 0, 0, 0);
                z.k.s(227, 199, 5, 0, 0, 0, 0, 0);
                return;
            }
            return;
        }
        if (i2 == 38) {
            if (iArr[1] != 0) {
                if (nt.f8645g[12] == 0) {
                    z.k.s(227, 199, 5, 0, 0, 1, 0, 0);
                    z.k.s(227, 199, 5, 0, 0, 0, 0, 0);
                    return;
                }
                return;
            }
            if (nt.f8645g[12] == 1) {
                z.k.s(227, 199, 5, 0, 0, 1, 0, 0);
                z.k.s(227, 199, 5, 0, 0, 0, 0, 0);
                return;
            }
            return;
        }
        if (i2 != 39) {
            if (i2 != 41) {
                return;
            }
            if (iArr[1] != 0) {
                int i3 = nt.f8645g[27];
                if (i3 < 9) {
                    i3++;
                }
                z.k.s(227, 199, 5, 0, 0, 0, 0, i3);
                z.k.s(227, 199, 5, 0, 0, 0, 0, 0);
                return;
            }
            int i4 = nt.f8645g[27];
            if (i4 > 1) {
                i4--;
            }
            z.k.s(227, 199, 5, 0, 0, 0, 0, i4);
            z.k.s(227, 199, 5, 0, 0, 0, 0, 0);
            return;
        }
        int i5 = iArr[1];
        if (i5 == -2) {
            int i6 = nt.f8645g[21];
            if (i6 > 0) {
                i6--;
            }
            z.k.s(227, 199, 5, 0, i6, 0, 0, 0);
            z.k.s(227, 199, 5, 0, 0, 0, 0, 0);
            return;
        }
        if (i5 != -1) {
            return;
        }
        int i7 = nt.f8645g[21];
        if (i7 < 15) {
            i7++;
        }
        z.k.s(227, 199, 5, 0, i7, 0, 0, 0);
        z.k.s(227, 199, 5, 0, 0, 0, 0, 0);
    }

    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8314i = 1;
        mtVar.f8318m = new int[]{33, 34, 35, 36, 37, 38, 39, 41, 42};
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        qt.z(this.f6143e);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        int i6;
        int i7 = bArr[i2] & 255;
        if (i7 == 33) {
            byte b2 = bArr[i2 + 2];
            byte b3 = bArr[i2 + 3];
            this.f6141c = b2 & 255;
            int i8 = 0;
            while (true) {
                iArr = this.f6142d;
                if (i8 >= iArr.length) {
                    break;
                }
                int i9 = this.f6141c;
                if (i9 == iArr[i8][0]) {
                    if (i9 == 0) {
                        break;
                    }
                    this.f6140b = i8;
                    break;
                }
                i8++;
            }
            if (this.f6141c == 6) {
                if ((b3 & 255) == 1) {
                    int i10 = h0.c.E;
                    if (i10 != 3 && i10 != 4 && i10 != 5) {
                        l0.b0.l0(12, 0);
                        l0.b0.l0(12, 1);
                        return;
                    } else {
                        l0.b0.l0(26, 0);
                        l0.b0.l0(26, 1);
                    }
                }
                return;
            }
            int i11 = b3 & 255;
            if (i11 == 1) {
                if (i8 < iArr.length) {
                    l0.b0.l0(iArr[i8][1], 0);
                    return;
                }
                return;
            } else {
                if (i11 == 0) {
                    int i12 = this.f6140b;
                    if (i12 < iArr.length && i12 != 255) {
                        l0.b0.l0(iArr[i12][1], 1);
                    }
                    this.f6140b = 255;
                    return;
                }
                return;
            }
        }
        if (i7 == 80) {
            if (bArr[i2 + 2] == 1) {
                qt.a(1);
                return;
            } else {
                qt.a(0);
                return;
            }
        }
        if (i7 == 125) {
            int i13 = bArr[i2 + 2] & 255;
            if (i13 == 1) {
                if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                    int i14 = i2 + 3;
                    l0.c0.b((bArr[i14] >> 3) & 1, (bArr[i14] >> 4) & 1, 0);
                    return;
                } else {
                    int i15 = i2 + 3;
                    l0.c0.a((bArr[i15] >> 3) & 1, (bArr[i15] >> 4) & 1, 0);
                    return;
                }
            }
            if (i13 != 3) {
                if (i13 != 8) {
                    return;
                }
                qt.i(bArr[i2 + 3], bArr[i2 + 4], true, 540);
                return;
            } else {
                int i16 = ((bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280)) / 100;
                qt.y0(1031, i16);
                o1.x.C(nt.f8643f, 1049, new int[]{1, i16}, null, null);
                return;
            }
        }
        if (i7 == 127) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (i7 == 35) {
            int i17 = bArr[i2 + 2] & 255;
            int i18 = bArr[i2 + 3] & 255;
            int i19 = bArr[i2 + 4] & 255;
            int i20 = bArr[i2 + 5] & 255;
            qt.y0(10, (i17 >> 7) & 1);
            qt.y0(11, (i17 >> 6) & 1);
            qt.y0(12, (i17 >> 5) & 1);
            qt.y0(13, (i17 >> 4) & 1);
            qt.y0(16, (i17 >> 3) & 1);
            qt.y0(53, (i17 >> 2) & 1);
            qt.y0(63, (i17 >> 0) & 1);
            if (i18 != 1) {
                if (i18 == 2) {
                    i4 = 0;
                    i6 = 1;
                } else if (i18 == 3) {
                    i4 = 0;
                    i6 = 0;
                    i5 = 1;
                } else if (i18 == 4) {
                    i6 = 0;
                    i4 = 1;
                    i5 = 1;
                } else if (i18 != 5) {
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
            qt.y0(15, i4);
            qt.y0(18, i4);
            qt.y0(19, i6);
            qt.y0(20, i5);
            qt.y0(21, i19);
            if (i20 == 0) {
                qt.y0(27, -2);
                return;
            }
            if (i20 == 255) {
                qt.y0(27, -3);
                return;
            } else if (i20 < 1 || i20 > 15) {
                qt.y0(27, -1);
                return;
            } else {
                qt.y0(27, (i20 * 10) + 170);
                return;
            }
        }
        if (i7 == 36) {
            int i21 = bArr[i2 + 2] & 255;
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(2, (i21 >> 6) & 1);
                qt.y0(1, (i21 >> 7) & 1);
            } else {
                qt.y0(2, (i21 >> 7) & 1);
                qt.y0(1, (i21 >> 6) & 1);
            }
            qt.y0(4, (i21 >> 5) & 1);
            qt.y0(3, (i21 >> 4) & 1);
            qt.y0(0, (i21 >> 2) & 1);
            qt.y0(5, (i21 >> 3) & 1);
            return;
        }
        if (i7 == 39) {
            u0.d.R2(l0.c0.E0(bArr[i2 + 2]));
            u0.d.S2(l0.c0.E0(bArr[i2 + 3]));
            u0.d.T2(l0.c0.E0(bArr[i2 + 4]));
            u0.d.U2(l0.c0.E0(bArr[i2 + 5]));
            return;
        }
        if (i7 == 40) {
            int i22 = i2 + 2;
            int i23 = bArr[i22] & 255;
            int i24 = i2 + 3;
            int i25 = bArr[i24] & 255;
            int i26 = i2 + 4;
            int i27 = bArr[i26] & 255;
            int i28 = i2 + 5;
            int i29 = 255 & bArr[i28];
            if (i23 == 0 && i25 == 0 && i27 == 0 && i29 == 0) {
                u0.d.C2(0);
            } else if ((l0.c0.f13013g != i23 || l0.c0.f13014h != i25 || l0.c0.f13015i != i27 || l0.c0.f13016j != i29) && u0.b.f17347o == 0) {
                u0.d.C2(1);
                l0.c0.f13017k = 4;
                l0.b0.b(l0.c0.f13018l);
            }
            l0.c0.f13013g = i23;
            l0.c0.f13014h = i25;
            l0.c0.f13015i = i27;
            l0.c0.f13016j = i29;
            u0.d.D2(l0.c0.E0(bArr[i22]));
            u0.d.E2(l0.c0.E0(bArr[i24]));
            u0.d.F2(l0.c0.E0(bArr[i26]));
            u0.d.G2(l0.c0.E0(bArr[i28]));
            return;
        }
        switch (i7) {
            case 55:
                int i30 = i2 + 2;
                if (bArr[i30] == 1) {
                    int i31 = i2 + 3;
                    if (bArr[i31] == 1) {
                        qt.y0(116, bArr[i2 + 4] & 255);
                    } else if (bArr[i31] == 2) {
                        qt.y0(117, bArr[i2 + 4] & 255);
                    } else if (bArr[i31] == 3) {
                        qt.y0(118, bArr[i2 + 4] & 255);
                    }
                } else if (bArr[i30] == 2) {
                    int i32 = i2 + 3;
                    if (bArr[i32] == 1) {
                        qt.y0(119, bArr[i2 + 4] & 255);
                    } else if (bArr[i32] == 2) {
                        qt.y0(120, bArr[i2 + 4] & 255);
                    } else if (bArr[i32] == 3) {
                        qt.y0(121, bArr[i2 + 4] & 255);
                    } else if (bArr[i32] == 4) {
                        qt.y0(122, bArr[i2 + 4] & 255);
                    }
                } else if (bArr[i30] == 3) {
                    int i33 = i2 + 3;
                    if (bArr[i33] == 1) {
                        qt.y0(123, bArr[i2 + 4] & 255);
                    } else if (bArr[i33] == 2) {
                        qt.y0(124, bArr[i2 + 4] & 255);
                    }
                } else if (bArr[i30] == 4) {
                    int i34 = i2 + 3;
                    if (bArr[i34] == 1) {
                        qt.y0(125, bArr[i2 + 4] & 255);
                    } else if (bArr[i34] == 2) {
                        qt.y0(126, bArr[i2 + 4] & 255);
                    } else if (bArr[i34] == 3) {
                        qt.y0(127, bArr[i2 + 4] & 255);
                    } else if (bArr[i34] == 4) {
                        qt.y0(128, bArr[i2 + 4] & 255);
                    }
                } else if (bArr[i30] == 5) {
                    int i35 = i2 + 3;
                    if (bArr[i35] == 1) {
                        qt.y0(129, bArr[i2 + 4] & 255);
                    } else if (bArr[i35] == 2) {
                        qt.y0(130, bArr[i2 + 4] & 255);
                    }
                }
                break;
            case 56:
                int i36 = bArr[i2 + 2] & 255;
                qt.y0(98, (i36 >> 1) & 1);
                qt.y0(99, (i36 >> 0) & 1);
                break;
            case 57:
                qt.y0(105, ((bArr[i2 + 2] & 255) << 16) | ((bArr[i2 + 3] << 8) & 65280) | (bArr[i2 + 4] & 255));
                qt.y0(106, bArr[i2 + 5] & 255);
                qt.y0(107, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
                qt.y0(108, ((bArr[i2 + 8] << 8) & 65280) | (bArr[i2 + 9] & 255));
                int i37 = i2 + 10;
                qt.y0(109, (bArr[i37] >> 4) & 15);
                qt.y0(110, (bArr[i37] >> 0) & 15);
                int i38 = i2 + 11;
                qt.y0(111, (bArr[i38] >> 7) & 1);
                qt.y0(112, bArr[i38] & 127);
                qt.y0(113, bArr[i2 + 12] & 255);
                break;
            default:
                switch (i7) {
                    case 64:
                        int i39 = bArr[i2 + 2] & 255;
                        int i40 = bArr[i2 + 3] & 255;
                        int i41 = bArr[i2 + 4] & 255;
                        int i42 = bArr[i2 + 5] & 255;
                        int i43 = bArr[i2 + 6] & 255;
                        qt.y0(100, ((i39 & 255) << 16) | ((i40 & 255) << 8) | (i41 & 255));
                        qt.y0(101, (i42 >> 4) & 15);
                        qt.y0(102, i42 & 15);
                        qt.y0(103, i43 & 255);
                        break;
                    case 65:
                        for (int i44 = 0; i44 < 50; i44++) {
                            int i45 = i2 + (i44 * 2);
                            o1.x.C(nt.f8643f, 104, new int[]{i44, (bArr[i45 + 3] & 255) | ((bArr[i45 + 2] << 8) & 65280)}, null, null);
                        }
                        break;
                    case 66:
                        qt.y0(114, (bArr[i2 + 3] & 255) | ((bArr[i2 + 2] << 8) & 65280));
                        break;
                    case 67:
                        qt.y0(115, (bArr[i2 + 3] & 255) | ((bArr[i2 + 2] << 8) & 65280));
                        break;
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(l0.c0.f13020n);
        l0.b0.p0(l0.c0.f13021o);
        qt.q0(this.f6143e);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 131) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            if (iArr == null || iArr.length < 2) {
                return;
            }
            z.k.s(227, 169, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 2) {
            if (iArr == null || iArr.length < 2) {
                return;
            }
            z.k.s(227, 199, 5, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4]);
            return;
        }
        if (i2 == 4 && iArr != null && iArr.length >= 2) {
            z.k.s(227, 134, 3, iArr[0], iArr[1], iArr[2]);
        }
    }
}
