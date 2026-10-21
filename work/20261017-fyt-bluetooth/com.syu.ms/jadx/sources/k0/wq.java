package k0;

import android.content.Intent;
import android.opengl.GLES10;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.Spanned;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class wq extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f11875b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f11876c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f11877d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{6, 13}, new int[]{7, 2}, new int[]{8, 18}, new int[]{9, 26}, new int[]{10, 1}, new int[]{11, 12}, new int[]{12, -1}, new int[]{13, -1}, new int[]{14, 3}, new int[]{15, 28}, new int[]{16, 66}, new int[]{17, 4}, new int[]{18, 27}, new int[]{19, 65}, new int[]{20, -1}, new int[]{21, 7}, new int[]{22, 8}, new int[]{23, 0}, new int[]{24, 31}, new int[]{25, 30}, new int[]{26, 29}, new int[]{27, 4}, new int[]{28, 3}, new int[]{29, 74}, new int[]{30, 75}, new int[]{31, -1}, new int[]{32, 9}, new int[]{33, 21}, new int[]{34, 22}, new int[]{35, 53}, new int[]{36, 40}, new int[]{37, 41}, new int[]{38, 42}, new int[]{39, 43}, new int[]{40, 44}, new int[]{41, 45}, new int[]{42, 64}, new int[]{43, 6}, new int[]{44, 9}, new int[]{45, 18}, new int[]{46, 25}, new int[]{47, 58}, new int[]{48, 49}, new int[]{49, 40}, new int[]{50, 41}, new int[]{51, 42}, new int[]{52, 43}, new int[]{53, 44}, new int[]{54, 45}, new int[]{55, 46}, new int[]{56, 47}, new int[]{57, 48}, new int[]{58, 50}, new int[]{59, 51}, new int[]{60, -1}, new int[]{61, 38}, new int[]{62, 38}, new int[]{63, 38}, new int[]{64, 11}, new int[]{65, 56}, new int[]{66, 56}, new int[]{67, 55}, new int[]{68, 34}, new int[]{69, 35}, new int[]{70, 32}, new int[]{71, 33}, new int[]{72, 25}, new int[]{73, 62}, new int[]{74, 1}, new int[]{75, 72}, new int[]{76, 71}, new int[]{77, -1}, new int[]{78, 1}, new int[]{79, 1}, new int[]{80, 1}, new int[]{81, 54}, new int[]{82, 53}, new int[]{83, 34}, new int[]{84, 33}, new int[]{85, 35}, new int[]{86, 32}};

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8315j = 0;
        mtVar.f8320o = 0;
        mtVar.f8314i = 1;
        u0.c.f17386m.a(l0.c0.f13020n, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 32) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f11876c = b3 & 255;
            int i4 = 0;
            while (true) {
                iArr = this.f11877d;
                if (i4 >= iArr.length) {
                    break;
                }
                int i5 = this.f11876c;
                if (i5 == iArr[i4][0]) {
                    if (i5 == 0) {
                        break;
                    }
                    this.f11875b = i4;
                    break;
                }
                i4++;
            }
            int i6 = this.f11876c;
            if (i6 == 12) {
                if ((b4 & 255) == 1) {
                    b3();
                }
                return;
            }
            if (i6 != 13) {
                if (i6 == 24) {
                    for (int i7 = 0; i7 < (b4 & 255); i7++) {
                        l0.b0.l0(31, 0);
                    }
                    l0.b0.l0(31, 1);
                    return;
                }
                if (i6 == 25) {
                    for (int i8 = 0; i8 < (b4 & 255); i8++) {
                        l0.b0.l0(30, 0);
                    }
                    l0.b0.l0(30, 1);
                    return;
                }
                if (i6 == 77) {
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
                switch (i6) {
                    case 20:
                        break;
                    case 21:
                        for (int i9 = 0; i9 < (b4 & 255); i9++) {
                            l0.b0.l0(7, 0);
                        }
                        l0.b0.l0(7, 1);
                        break;
                    case 22:
                        for (int i10 = 0; i10 < (b4 & 255); i10++) {
                            l0.b0.l0(8, 0);
                        }
                        l0.b0.l0(8, 1);
                        break;
                    default:
                        int i11 = b4 & 255;
                        if (i11 == 1) {
                            if (i4 < iArr.length) {
                                l0.b0.l0(iArr[i4][1], 0);
                            }
                        } else if (i11 == 0) {
                            int i12 = this.f11875b;
                            if (i12 < iArr.length && i12 != 255) {
                                l0.b0.l0(iArr[i12][1], 1);
                            }
                            this.f11875b = 255;
                        }
                        break;
                }
            }
            if ((b4 & 255) == 1) {
                a3();
                return;
            }
            return;
        }
        if (b2 == 39) {
            int i13 = bArr[i2 + 2] & 255;
            int i14 = bArr[i2 + 3] & 255;
            qt.y0(10, (i13 >> 7) & 1);
            qt.y0(12, (i13 >> 5) & 1);
            qt.y0(49, (i13 >> 3) & 3);
            qt.y0(14, (i13 >> 2) & 1);
            qt.y0(50, (i13 >> 0) & 3);
            qt.y0(18, (i14 >> 7) & 1);
            qt.y0(19, (i14 >> 6) & 1);
            qt.y0(20, (i14 >> 5) & 1);
            qt.y0(22, (i14 >> 4) & 1);
            qt.y0(23, (i14 >> 3) & 1);
            qt.y0(24, (i14 >> 2) & 1);
            qt.y0(13, (i14 >> 0) & 3);
            int i15 = i2 + 4;
            int i16 = bArr[i15] & 255;
            int i17 = i2 + 5;
            int i18 = bArr[i17] & 255;
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                i16 = bArr[i17] & 255;
                i18 = bArr[i15] & 255;
            }
            if (i16 == 0) {
                qt.y0(27, -2);
            } else if (i16 == 255) {
                qt.y0(27, -3);
            } else if (i16 == 32) {
                qt.y0(27, -1);
            } else if (i16 >= 1 && i16 <= 29) {
                qt.y0(27, (i16 * 5) + 175);
            } else if (i16 < 48 || i16 > 51) {
                qt.y0(27, -3);
            } else {
                qt.y0(27, ((i16 - 48) * 5) + 160);
            }
            if (i18 == 0) {
                qt.y0(28, -2);
            } else if (i18 == 255) {
                qt.y0(28, -3);
            } else if (i18 == 32) {
                qt.y0(28, -1);
            } else if (i18 >= 1 && i18 <= 29) {
                qt.y0(28, (i18 * 5) + 175);
            } else if (i18 < 48 || i18 > 51) {
                qt.y0(28, -3);
            } else {
                qt.y0(28, ((i18 - 48) * 5) + 160);
            }
            int i19 = i2 + 6;
            qt.y0(65, (bArr[i19] >> 7) & 1);
            qt.y0(16, (bArr[i19] >> 6) & 1);
            qt.y0(11, (bArr[i19] >> 4) & 3);
            qt.y0(37, (bArr[i19] >> 0) & 1);
            qt.y0(21, bArr[i2 + 8] & 255);
            return;
        }
        if (b2 == 41) {
            qt.i(bArr[i2 + 2] & 255, bArr[i2 + 3] & 255, true, GLES10.GL_AMBIENT);
            return;
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        switch (b2) {
            case 34:
                u0.d.R2(l0.c0.K0(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.K0(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.K0(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.K0(bArr[i2 + 5] & 255));
                break;
            case 35:
                int i20 = i2 + 2;
                int i21 = bArr[i20] & 255;
                int i22 = i2 + 3;
                int i23 = bArr[i22] & 255;
                int i24 = i2 + 4;
                int i25 = bArr[i24] & 255;
                int i26 = i2 + 5;
                int i27 = bArr[i26] & 255;
                if (i21 == 255 && i23 == 255 && i25 == 255 && i27 == 255) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i21 || l0.c0.f13014h != i23 || l0.c0.f13015i != i25 || l0.c0.f13016j != i27) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i21;
                l0.c0.f13014h = i23;
                l0.c0.f13015i = i25;
                l0.c0.f13016j = i27;
                u0.d.D2(l0.c0.K0(bArr[i20] & 255));
                u0.d.E2(l0.c0.K0(bArr[i22] & 255));
                u0.d.F2(l0.c0.K0(bArr[i24] & 255));
                u0.d.G2(l0.c0.K0(bArr[i26] & 255));
                break;
            case 36:
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    int i28 = i2 + 2;
                    qt.y0(1, (bArr[i28] >> 7) & 1);
                    qt.y0(2, (bArr[i28] >> 6) & 1);
                } else {
                    int i29 = i2 + 2;
                    qt.y0(1, (bArr[i29] >> 6) & 1);
                    qt.y0(2, (bArr[i29] >> 7) & 1);
                }
                int i30 = i2 + 2;
                qt.y0(3, (bArr[i30] >> 4) & 1);
                qt.y0(4, (bArr[i30] >> 5) & 1);
                qt.y0(5, (bArr[i30] >> 3) & 1);
                qt.y0(0, (bArr[i30] >> 2) & 1);
                int i31 = i2 + 3;
                l0.c0.N1((bArr[i31] >> 5) & 1, (bArr[i31] >> 4) & 1, 0);
                break;
            default:
                switch (b2) {
                    case 53:
                        qt.y0(100, bArr[i2 + 3] & 255);
                        qt.y0(101, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
                        qt.y0(102, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
                        qt.y0(103, ((bArr[i2 + 9] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 10] << 8) & 65280) | (bArr[i2 + 11] & 255));
                        int i32 = i2 + 12;
                        qt.y0(104, (bArr[i32] >> 7) & 1);
                        qt.y0(105, (bArr[i32] >> 6) & 1);
                        int i33 = (bArr[i32] >> 7) & 1;
                        int i34 = bArr[i2 + 8] & 255;
                        if (i34 == 0) {
                            u0.d.B3(0);
                        } else {
                            u0.d.B3(i33 == 1 ? (((i34 * 18) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR) | 268435456) & (-1) : (i34 * 10) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
                        }
                        break;
                    case 54:
                        int i35 = i2 + 6;
                        qt.y0(107, ((bArr[i35] >> 7) & 32768) | ((bArr[i35] >> 3) & 256) | (bArr[i2 + 2] & 255));
                        qt.y0(106, ((bArr[i35] >> 6) & 32768) | ((bArr[i35] >> 2) & 256) | (bArr[i2 + 3] & 255));
                        qt.y0(109, ((bArr[i35] >> 5) & 32768) | ((bArr[i35] >> 1) & 256) | (bArr[i2 + 4] & 255));
                        qt.y0(108, (bArr[i2 + 5] & 255) | ((bArr[i35] >> 4) & 32768) | ((bArr[i35] >> 0) & 256));
                        break;
                    case 55:
                        qt.y0(99, (bArr[i2 + 5] & 255) | ((bArr[i2 + 4] << 8) & 65280));
                        break;
                    case 56:
                        qt.y0(110, bArr[i2 + 2] & 255);
                        qt.y0(111, bArr[i2 + 3] & 255);
                        qt.y0(112, bArr[i2 + 8] & 255);
                        int i36 = i2 + 15;
                        qt.y0(113, (bArr[i36] >> 7) & 1);
                        qt.y0(114, (bArr[i36] >> 6) & 1);
                        qt.y0(115, (bArr[i36] >> 4) & 3);
                        break;
                    case 57:
                        qt.y0(116, bArr[i2 + 2] & 255);
                        qt.y0(117, bArr[i2 + 3] & 255);
                        qt.y0(118, bArr[i2 + 4] & 255);
                        qt.y0(119, bArr[i2 + 5] & 255);
                        qt.y0(120, bArr[i2 + 6] & 255);
                        int i37 = i2 + 7;
                        qt.y0(121, (bArr[i37] >> 5) & 1);
                        qt.y0(122, (bArr[i37] >> 4) & 1);
                        break;
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(l0.c0.f13020n);
        l0.b0.p0(l0.c0.f13021o);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 123) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, -59, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 1) {
            z.k.s(227, -112, 2, iArr[0], iArr[1]);
        } else if (i2 == 2) {
            z.k.s(227, -55, 2, iArr[0], iArr[1]);
        } else {
            if (i2 != 3) {
                return;
            }
            z.k.s(227, -58, 2, iArr[0], iArr[1]);
        }
    }

    public final void a3() {
        try {
            if (qt.i0().equals("com.syu.carinfo.rzc.andra.LzNissan05CimaCarInfo")) {
                return;
            }
            Intent intent = new Intent();
            intent.setClassName("com.syu.canbus", "com.syu.carinfo.rzc.andra.LzNissan05CimaCarInfo");
            intent.addCategory(Intent.CATEGORY_DEFAULT);
            intent.setFlags(268435456);
            App.c().startActivity(intent);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final void b3() {
        try {
            if (qt.i0().equals("com.syu.carinfo.rzc.andra.LzNissan05CimaCarSet")) {
                return;
            }
            Intent intent = new Intent();
            intent.setClassName("com.syu.canbus", "com.syu.carinfo.rzc.andra.LzNissan05CimaCarSet");
            intent.addCategory(Intent.CATEGORY_DEFAULT);
            intent.setFlags(268435456);
            App.c().startActivity(intent);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
