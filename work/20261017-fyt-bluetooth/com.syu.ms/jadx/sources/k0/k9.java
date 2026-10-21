package k0;

import android.drm.DrmManagerClient;
import android.os.SystemProperties;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class k9 extends lt {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static int f7177n;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f7180d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f7181e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f7182f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public o1.g0 f7178b = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f7179c = 1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f7183g = 255;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int[][] f7184h = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, 13}, new int[]{5, 18}, new int[]{6, 26}, new int[]{7, -1}, new int[]{8, 3}, new int[]{9, 4}, new int[]{10, -1}, new int[]{11, 2}, new int[]{64, 1}, new int[]{129, 25}, new int[]{130, 3}, new int[]{131, 4}, new int[]{134, 6}, new int[]{137, 12}, new int[]{160, 1}, new int[]{171, 5}, new int[]{172, 2}, new int[]{175, 5}};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int[][] f7185i = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, 13}, new int[]{5, 18}, new int[]{6, 26}, new int[]{8, 3}, new int[]{9, 4}, new int[]{11, 2}, new int[]{24, 2}, new int[]{134, 6}, new int[]{137, 12}, new int[]{144, 16}, new int[]{160, 1}, new int[]{171, 5}, new int[]{203, 21}};

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f7186j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f7187k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f7188l = new a();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f7189m = new b();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            k9 k9Var = k9.this;
            k9Var.f7186j = 0;
            k9Var.f7187k = 0;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            boolean zIs24HourFormat = DateFormat.is24HourFormat(App.c());
            if (nt.f8637c == 1) {
                z.k.s(227, 10, -53, 0, time.hour, time.minute, 0, 0, zIs24HourFormat ? 1 : 0, 0, 0, 0, 0);
            } else {
                z.k.s(227, 10, -53, (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN), time.month + 1, time.monthDay, time.hour, time.minute, zIs24HourFormat ? 1 : 0, 0, 0, 0, 0);
            }
        }
    }

    public static int a3(int i2) {
        switch (i2) {
            case 0:
            default:
                return 10;
            case 1:
                return 0;
            case 2:
                return 1;
            case 3:
                return 3;
            case 4:
                return 5;
            case 5:
                return 6;
            case 6:
                return 7;
            case 7:
                return 9;
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        c3(36, 7, 13);
        qt.z(this.f7189m);
        if (nt.a()) {
            u0.c.f17386m.a(this.f7188l, 1);
        }
        if (nt.f8637c != 1) {
            mt mtVar = this.f7886a;
            mtVar.f8306a = new String[]{"com.syu.canbus"};
            mtVar.f8310e = 1;
            mtVar.f8311f = 1;
            mtVar.f8314i = 1;
            mtVar.f8312g = 1;
            return;
        }
        mt mtVar2 = this.f7886a;
        mtVar2.f8306a = new String[]{"com.syu.canbus"};
        mtVar2.f8310e = 1;
        mtVar2.f8311f = 1;
        mtVar2.f8314i = 0;
        mtVar2.f8312g = 0;
        this.f7178b.a();
        e3(this.f7178b.b(1, 0));
    }

    /* JADX WARN: Code duplicated, block: B:62:0x03f1  */
    /* JADX WARN: Code duplicated, block: B:72:0x0436  */
    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int[][] iArr2;
        int[][] iArr3;
        int[][] iArr4;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        byte b2 = bArr[i2 + 1];
        if (b2 != -16) {
            if (b2 == 63) {
                int i9 = bArr[i2 + 2] & 255;
                int i10 = bArr[i2 + 3] & 255;
                int i11 = i2 + 4;
                int i12 = bArr[i11] & 255;
                int i13 = bArr[i2 + 5] & 255;
                int i14 = bArr[i11] & 255;
                qt.y0(143, (i9 >> 5) & 1);
                qt.y0(144, (i9 >> 4) & 1);
                qt.y0(145, (i9 >> 3) & 1);
                qt.y0(146, (i9 >> 2) & 1);
                qt.y0(147, (i10 >> 4) & 1);
                qt.y0(148, (i12 >> 6) & 1);
                qt.y0(149, (i12 >> 4) & 1);
                qt.y0(150, (i13 >> 7) & 1);
                qt.y0(151, (i13 >> 6) & 1);
                qt.y0(152, (i14 >> 7) & 1);
                return;
            }
            if (b2 == 65) {
                if (nt.a()) {
                    u0.d.R2(a3(bArr[i2 + 2] & 255));
                    u0.d.S2(a3(bArr[i2 + 3] & 255));
                    u0.d.T2(a3(bArr[i2 + 4] & 255));
                    u0.d.U2(a3(bArr[i2 + 5] & 255));
                    return;
                }
                return;
            }
            if (b2 == 112) {
                int i15 = bArr[i2 + 2] & 255;
                int i16 = bArr[i2 + 3] & 255;
                qt.y0(119, (i15 >> 7) & 1);
                qt.y0(120, (i15 >> 6) & 1);
                qt.y0(121, (i16 >> 4) & 15);
                qt.y0(122, i16 & 15);
                return;
            }
            if (b2 == 17) {
                if (nt.a()) {
                    byte b3 = bArr[i2 + 4];
                    byte b4 = bArr[i2 + 5];
                    this.f7181e = b3 & 255;
                    if (nt.f8637c == 1) {
                        int i17 = 0;
                        while (true) {
                            iArr2 = this.f7185i;
                            if (i17 >= iArr2.length) {
                                break;
                            }
                            int i18 = this.f7181e;
                            if (i18 == iArr2[i17][0]) {
                                if (i18 == 0) {
                                    break;
                                }
                                this.f7180d = i17;
                                break;
                            }
                            i17++;
                        }
                        if ((b4 & 255) == 0) {
                            int i19 = this.f7180d;
                            int[][] iArr5 = this.f7184h;
                            if (i19 < iArr5.length && i19 != 255) {
                                l0.b0.l0(iArr5[i19][1], 1);
                            }
                            this.f7180d = 255;
                        } else if (i17 < iArr2.length) {
                            l0.b0.l0(iArr2[i17][1], 0);
                        }
                    } else {
                        int i20 = 0;
                        while (true) {
                            iArr = this.f7184h;
                            if (i20 >= iArr.length) {
                                break;
                            }
                            int i21 = this.f7181e;
                            if (i21 == iArr[i20][0]) {
                                if (i21 == 0) {
                                    break;
                                }
                                this.f7180d = i20;
                                break;
                            }
                            i20++;
                        }
                        if ((b4 & 255) == 0) {
                            int i22 = this.f7180d;
                            if (i22 < iArr.length && i22 != 255) {
                                l0.b0.l0(iArr[i22][1], 1);
                            }
                            this.f7180d = 255;
                        } else if (i20 < iArr.length) {
                            l0.b0.l0(iArr[i20][1], 0);
                        }
                    }
                    qt.i(bArr[i2 + 9], bArr[i2 + 8], true, 540);
                    return;
                }
                return;
            }
            if (b2 == 18) {
                byte b5 = bArr[i2 + 4];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b5 >> 6) & 1);
                    qt.y0(2, (b5 >> 7) & 1);
                } else {
                    qt.y0(1, (b5 >> 7) & 1);
                    qt.y0(2, (b5 >> 6) & 1);
                }
                qt.y0(3, (b5 >> 5) & 1);
                qt.y0(4, (b5 >> 4) & 1);
                qt.y0(5, (b5 >> 3) & 1);
                qt.y0(0, (b5 >> 2) & 1);
                return;
            }
            if (b2 == 33) {
                if (nt.a()) {
                    byte b6 = bArr[i2 + 3];
                    this.f7182f = (bArr[i2 + 2] & 255) | 128;
                    if (nt.f8637c == 1) {
                        int i23 = 0;
                        while (true) {
                            iArr4 = this.f7185i;
                            if (i23 >= iArr4.length) {
                                break;
                            }
                            int i24 = this.f7182f;
                            if (i24 == iArr4[i23][0]) {
                                if (i24 == 0) {
                                    break;
                                }
                                this.f7183g = i23;
                                break;
                            }
                            i23++;
                        }
                        if ((b6 & 255) != 0) {
                            if (i23 < iArr4.length) {
                                l0.b0.l0(iArr4[i23][1], 0);
                                return;
                            }
                            return;
                        } else {
                            int i25 = this.f7183g;
                            if (i25 < iArr4.length && i25 != 255) {
                                l0.b0.l0(iArr4[i25][1], 1);
                            }
                            this.f7183g = 255;
                            return;
                        }
                    }
                    int i26 = 0;
                    while (true) {
                        iArr3 = this.f7184h;
                        if (i26 >= iArr3.length) {
                            break;
                        }
                        int i27 = this.f7182f;
                        if (i27 == iArr3[i26][0]) {
                            if (i27 == 0) {
                                break;
                            }
                            this.f7183g = i26;
                            break;
                        }
                        i26++;
                    }
                    if ((b6 & 255) != 0) {
                        if (i26 < iArr3.length) {
                            l0.b0.l0(iArr3[i26][1], 0);
                            return;
                        }
                        return;
                    } else {
                        int i28 = this.f7183g;
                        if (i28 < iArr3.length && i28 != 255) {
                            l0.b0.l0(iArr3[i28][1], 1);
                        }
                        this.f7183g = 255;
                        return;
                    }
                }
                return;
            }
            if (b2 == 34) {
                if (nt.a()) {
                    byte b7 = bArr[i2 + 2];
                    byte b8 = bArr[i2 + 3];
                    if (b7 != 1) {
                        if (b7 == 2 && b8 != (i4 = this.f7187k)) {
                            if (b8 > i4) {
                                for (int i29 = 0; i29 < b8 - this.f7187k; i29++) {
                                    l0.b0.l0(31, 0);
                                }
                                l0.b0.l0(31, 1);
                            } else if (b8 < i4) {
                                for (int i30 = 0; i30 < this.f7187k - b8; i30++) {
                                    l0.b0.l0(30, 0);
                                }
                                l0.b0.l0(30, 1);
                            }
                            this.f7187k = b8;
                            return;
                        }
                        return;
                    }
                    int i31 = this.f7186j;
                    if (b8 != i31) {
                        if (b8 > i31) {
                            for (int i32 = 0; i32 < b8 - this.f7186j; i32++) {
                                l0.b0.l0(7, 0);
                            }
                            l0.b0.l0(7, 1);
                        } else if (b8 < i31) {
                            for (int i33 = 0; i33 < this.f7186j - b8; i33++) {
                                l0.b0.l0(8, 0);
                            }
                            l0.b0.l0(8, 1);
                        }
                        this.f7186j = b8;
                        return;
                    }
                    return;
                }
                return;
            }
            if (b2 == 119) {
                int i34 = bArr[i2 + 2] & 255;
                int i35 = bArr[i2 + 3] & 255;
                int i36 = bArr[i2 + 4] & 255;
                int i37 = bArr[i2 + 5] & 255;
                int i38 = bArr[i2 + 6] & 255;
                int i39 = bArr[i2 + 7] & 255;
                int i40 = bArr[i2 + 8] & 255;
                int i41 = bArr[i2 + 9] & 255;
                qt.y0(159, i34);
                qt.y0(160, i35);
                qt.y0(161, i36);
                qt.y0(162, i37);
                qt.y0(163, i38);
                qt.y0(164, i39);
                qt.y0(165, i40);
                qt.y0(166, i41);
                return;
            }
            if (b2 == 120) {
                int i42 = bArr[i2 + 4] & 255;
                int i43 = bArr[i2 + 9] & 255;
                qt.y0(167, ((i42 & 4) << 6) | ((i43 >> 2) & 3));
                qt.y0(168, ((i42 & 2) << 7) | ((i43 >> 1) & 1));
                qt.y0(169, ((i42 & 1) << 8) | (i43 & 1));
                qt.y0(182, (3 & (i43 >> 6)) | ((i42 & 32) << 3));
                qt.y0(183, ((i42 & 16) << 4) | ((i43 >> 5) & 1));
                qt.y0(184, ((i43 >> 4) & 1) | ((i42 & 8) << 5));
                return;
            }
            switch (b2) {
                case 49:
                    int i44 = bArr[i2 + 2] & 255;
                    int i45 = bArr[i2 + 3] & 255;
                    qt.y0(10, (i44 >> 6) & 1);
                    if (nt.f8637c == 1) {
                        qt.y0(11, (i45 >> 6) & 1);
                    } else {
                        qt.y0(11, (i44 >> 0) & 1);
                    }
                    qt.y0(12, (i45 >> 4) & 1);
                    qt.y0(13, (i45 >> 3) & 1);
                    qt.y0(14, (i45 >> 2) & 1);
                    int i46 = bArr[i2 + 4] & 255;
                    qt.y0(16, (i46 >> 5) & 1);
                    qt.y0(65, (i46 >> 4) & 1);
                    if (nt.f8637c == 0) {
                        int i47 = bArr[i2 + 5] & 255;
                        if (i47 == 254) {
                            qt.y0(186, -2);
                        } else if (i47 == 255) {
                            qt.y0(186, -3);
                        } else {
                            qt.y0(186, (int) (((((double) i47) * 0.5d) - 40.0d) * 10.0d));
                        }
                    }
                    int i48 = bArr[i2 + 6] & 255;
                    if (i48 == 1) {
                        i5 = 0;
                        i6 = 0;
                        i7 = 0;
                        i8 = 1;
                    } else if (i48 == 2) {
                        i8 = 0;
                        i5 = 0;
                        i6 = 0;
                        i7 = 1;
                    } else if (i48 == 3) {
                        i8 = 0;
                        i5 = 0;
                        i7 = 0;
                        i6 = 1;
                    } else if (i48 == 5) {
                        i8 = 0;
                        i7 = 0;
                        i5 = 1;
                        i6 = 1;
                    } else if (i48 != 6) {
                        switch (i48) {
                            case 11:
                                i8 = 0;
                                i5 = 0;
                                i6 = 0;
                                i7 = 1;
                                break;
                            case 12:
                                i8 = 0;
                                i5 = 0;
                                i6 = 1;
                                i7 = i6;
                                break;
                            case 13:
                                i8 = 0;
                                i6 = 0;
                                i5 = 1;
                                i7 = 1;
                                break;
                            case 14:
                                i8 = 0;
                                i5 = 1;
                                i6 = i5;
                                i7 = i6;
                                break;
                            default:
                                i8 = 0;
                                i5 = 0;
                                i6 = i5;
                                i7 = i6;
                                break;
                        }
                    } else {
                        i8 = 0;
                        i6 = 0;
                        i7 = 0;
                        i5 = 1;
                    }
                    qt.y0(49, i8);
                    qt.y0(19, i5);
                    qt.y0(20, i6);
                    qt.y0(18, i7);
                    int i49 = bArr[i2 + 7] & 255;
                    if (nt.f8633a == 131354) {
                        if (i49 < 0) {
                            i49 = 0;
                        } else if (i49 > 8) {
                            i49 = 8;
                        }
                    } else if (i49 < 0) {
                        i49 = 0;
                    } else if (i49 > 7) {
                        i49 = 7;
                    }
                    qt.y0(21, i49);
                    int i50 = i2 + 8;
                    int i51 = bArr[i50] & 255;
                    int i52 = i2 + 9;
                    int i53 = bArr[i52] & 255;
                    if (nt.f8637c == 1) {
                        qt.y0(27, i51);
                    } else {
                        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                            i51 = bArr[i52] & 255;
                            i53 = bArr[i50] & 255;
                        }
                        if (i51 == 254) {
                            qt.y0(27, -2);
                        } else if (i51 == 255) {
                            qt.y0(27, -3);
                        } else {
                            qt.y0(27, (int) (((double) i51) * 0.5d * 10.0d));
                        }
                        if (i53 == 254) {
                            qt.y0(28, -2);
                        } else if (i53 == 255) {
                            qt.y0(28, -3);
                        } else {
                            qt.y0(28, (int) (((double) i53) * 0.5d * 10.0d));
                        }
                    }
                    if (nt.a()) {
                        l0.h0.u(bArr[i2 + 13] & 255);
                    }
                    break;
                case 50:
                    int i54 = ((bArr[i2 + 4] & 255) << 8) | (bArr[i2 + 5] & 255);
                    int i55 = ((bArr[i2 + 6] & 255) << 8) | (bArr[i2 + 7] & 255);
                    int i56 = bArr[i2 + 8] & 255;
                    int i57 = bArr[i2 + 9] & 255;
                    int i58 = bArr[i2 + 10] & 255;
                    qt.y0(123, i54);
                    qt.y0(124, i55);
                    qt.y0(125, i56);
                    qt.y0(126, i57);
                    qt.y0(127, i58);
                    break;
                case 51:
                    int i59 = bArr[i2 + 5] & 255;
                    qt.y0(128, (i59 >> 7) & 1);
                    qt.y0(129, (i59 >> 6) & 1);
                    qt.y0(130, (i59 >> 5) & 1);
                    qt.y0(131, (i59 >> 4) & 1);
                    break;
                case 52:
                    int i60 = bArr[i2 + 24] & 255;
                    qt.y0(153, ((bArr[i2 + 6] & 255) << 16) | ((bArr[i2 + 7] & 255) << 8) | (bArr[i2 + 8] & 255));
                    qt.y0(154, ((bArr[i2 + 9] & 255) << 8) | (bArr[i2 + 10] & 255));
                    qt.y0(155, ((bArr[i2 + 14] & 255) << 8) | (bArr[i2 + 15] & 255));
                    qt.y0(156, (bArr[i2 + 20] & 255) | ((bArr[i2 + 19] & 255) << 8));
                    qt.y0(157, (i60 >> 2) & 1);
                    qt.y0(158, i60 & 3);
                    break;
                case 53:
                    break;
                case 54:
                    int i61 = bArr[i2 + 2] & 255;
                    int i62 = bArr[i2 + 3] & 255;
                    qt.y0(132, (i61 >> 7) & 1);
                    qt.y0(133, (i61 >> 6) & 1);
                    qt.y0(134, (i61 >> 5) & 1);
                    qt.y0(135, (i61 >> 4) & 1);
                    qt.y0(136, (i61 >> 3) & 1);
                    qt.y0(137, (i61 >> 2) & 1);
                    qt.y0(138, (i61 >> 1) & 1);
                    qt.y0(139, (i61 >> 0) & 1);
                    qt.y0(140, (i62 >> 7) & 1);
                    qt.y0(141, (i62 >> 6) & 1);
                    qt.y0(142, (i62 >> 3) & 1);
                    break;
                default:
                    switch (b2) {
                        case 101:
                            int i63 = bArr[i2 + 2] & 255;
                            int i64 = bArr[i2 + 3] & 255;
                            qt.y0(99, (i63 >> 6) & 1);
                            qt.y0(100, (i63 >> 5) & 1);
                            qt.y0(101, (i63 >> 2) & 1);
                            qt.y0(102, (i64 >> 6) & 1);
                            qt.y0(103, (i64 >> 4) & 1);
                            qt.y0(104, (i64 >> 2) & 1);
                            break;
                        case 102:
                            int i65 = bArr[i2 + 2] & 255;
                            int i66 = bArr[i2 + 5] & 255;
                            qt.y0(105, (i65 >> 0) & 1);
                            qt.y0(106, (i66 >> 7) & 1);
                            break;
                        case 103:
                            int i67 = bArr[i2 + 2] & 255;
                            int i68 = bArr[i2 + 3] & 255;
                            qt.y0(107, (i67 >> 5) & 1);
                            qt.y0(108, (i67 >> 4) & 1);
                            qt.y0(109, (i67 >> 3) & 1);
                            qt.y0(110, (i67 >> 2) & 1);
                            qt.y0(111, (i67 >> 1) & 1);
                            qt.y0(112, (i67 >> 0) & 1);
                            qt.y0(113, (i68 >> 5) & 1);
                            qt.y0(114, (i68 >> 4) & 1);
                            qt.y0(115, (i68 >> 3) & 1);
                            qt.y0(116, (i68 >> 2) & 1);
                            qt.y0(117, (i68 >> 1) & 1);
                            qt.y0(118, (i68 >> 0) & 1);
                            qt.y0(168, (i68 >> 6) & 1);
                            qt.y0(169, (i68 >> 7) & 1);
                            qt.y0(173, (i67 >> 6) & 1);
                            qt.y0(174, (i67 >> 7) & 1);
                            break;
                    }
                    break;
            }
        }
        qt.L(new String(bArr, i2 + 2, i3 - 2));
        int i69 = bArr[i2 + 2] & 255;
        int i70 = bArr[i2 + 3] & 255;
        int i71 = bArr[i2 + 4] & 255;
        int i72 = bArr[i2 + 6] & 255;
        qt.y0(178, (i69 >> 7) & 1);
        qt.y0(175, (i71 >> 6) & 3);
        qt.y0(179, (i69 >> 4) & 1);
        qt.y0(176, (i71 >> 0) & 3);
        qt.y0(180, (i70 >> 1) & 1);
        qt.y0(177, (i72 >> 3) & 1);
    }

    @Override // k0.lt
    public void W2() {
        this.f7178b.j();
        qt.q0(this.f7189m);
        u0.c.f17386m.d(this.f7188l);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 187) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        switch (i2) {
            case 1:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    b3(2, iArr[0]);
                    break;
                }
                break;
            case 2:
                if (iArr != null && iArr.length > 0) {
                    b3(2, 255);
                    break;
                }
                break;
            case 3:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    b3(4, iArr[0]);
                    break;
                }
                break;
            case 4:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    b3(5, iArr[0]);
                    break;
                }
                break;
            case 5:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    b3(6, iArr[0]);
                    break;
                }
                break;
            case 6:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    b3(7, iArr[0]);
                    break;
                }
                break;
            case 7:
                if (iArr != null && iArr.length > 0) {
                    b3(15, 255);
                    break;
                }
                break;
            case 8:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        b3(11, 2);
                    } else {
                        b3(11, 1);
                    }
                    break;
                }
                break;
            case 9:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        b3(12, 2);
                    } else {
                        b3(12, 1);
                    }
                    break;
                }
                break;
            case 10:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    c3(106, 6, iArr[0]);
                    break;
                }
                break;
            case 11:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    c3(106, 3, iArr[0]);
                    break;
                }
                break;
            case 12:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    c3(106, 7, iArr[0]);
                    break;
                }
                break;
            case 13:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    c3(107, 8, iArr[0]);
                    break;
                }
                break;
            case 14:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    c3(108, 3, iArr[0]);
                    break;
                }
                break;
            case 15:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    c3(108, 4, iArr[0]);
                    break;
                }
                break;
            case 16:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    c3(108, 5, iArr[0]);
                    break;
                }
                break;
            case 17:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    c3(108, 6, iArr[0]);
                    break;
                }
                break;
            case 18:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    c3(108, 7, iArr[0]);
                    break;
                }
                break;
            case 19:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    c3(108, 8, iArr[0]);
                    break;
                }
                break;
            case 20:
                if (iArr != null && iArr.length > 0) {
                    c3(108, 9, iArr[0]);
                    break;
                }
                break;
            case 21:
                if (iArr != null && iArr.length > 0) {
                    c3(108, 10, iArr[0]);
                    break;
                }
                break;
            case 22:
                if (iArr != null && iArr.length > 2) {
                    if (iArr[1] != 4) {
                        d3(iArr[0], iArr[1], iArr[2]);
                    } else {
                        e3(iArr[2]);
                    }
                    break;
                }
                break;
            case 23:
                if (iArr != null && iArr.length > 0) {
                    c3(108, 11, iArr[0]);
                    break;
                }
                break;
            case 24:
                if (iArr != null && iArr.length > 0) {
                    c3(108, 12, iArr[0]);
                    break;
                }
                break;
            case 25:
                if (iArr != null && iArr.length > 0) {
                    z.k.s(227, 2, 58, iArr[0], iArr[1]);
                    break;
                }
                break;
            case 26:
                if (iArr != null && iArr.length > 0) {
                    z.k.s(227, 2, 59, iArr[0], iArr[1]);
                    break;
                }
                break;
        }
    }

    public final void b3(int i2, int i3) {
        z.k.s(227, 2, 59, (byte) i2, (byte) i3);
    }

    public final void c3(int i2, int i3, int i4) {
        z.k.s(227, 2, (byte) i2, (byte) i3, (byte) i4);
    }

    public final void d3(int i2, int i3, int i4) {
        z.k.s(227, 4, (byte) i2, 13, 0, (byte) i3, (byte) i4);
    }

    public final void e3(int i2) {
        f7177n = i2;
        qt.y0(185, i2);
        d3(126, 4, i2);
        int iB = this.f7178b.b(1, 0);
        int i3 = f7177n;
        if (iB != i3) {
            this.f7178b.g(1, i3);
        }
    }
}
