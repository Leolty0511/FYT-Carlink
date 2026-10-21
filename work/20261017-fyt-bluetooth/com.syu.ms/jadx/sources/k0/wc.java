package k0;

import android.content.ComponentName;
import android.content.Intent;
import android.hardware.Camera;
import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class wc extends lt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f11706c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f11707d;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f11712i;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f11705b = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f11708e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int[][] f11709f = {new int[]{129, 7}, new int[]{130, 8}, new int[]{131, 4}, new int[]{132, 3}, new int[]{133, 2}, new int[]{134, 13}, new int[]{135, 12}, new int[]{1, 25}, new int[]{2, 3}, new int[]{3, 4}, new int[]{5, 38}, new int[]{6, 6}, new int[]{7, 21}, new int[]{8, 22}, new int[]{9, 12}, new int[]{10, 40}, new int[]{11, 41}, new int[]{12, 42}, new int[]{13, 43}, new int[]{14, 44}, new int[]{15, 45}, new int[]{16, 11}, new int[]{17, 11}, new int[]{18, 1}, new int[]{19, 56}, new int[]{20, 2}, new int[]{21, 39}, new int[]{22, 5}, new int[]{23, 7}, new int[]{24, 8}, new int[]{25, 33}, new int[]{26, 32}, new int[]{27, 16}, new int[]{28, 35}, new int[]{29, 34}, new int[]{52, 33}, new int[]{53, 32}, new int[]{64, 53}, new int[]{80, 5}, new int[]{81, 2}, new int[]{82, 36}, new int[]{84, 2}, new int[]{85, 1}};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f11710g = {new int[]{129, 7}, new int[]{130, 8}, new int[]{131, 4}, new int[]{132, 3}, new int[]{133, 2}, new int[]{134, 13}, new int[]{135, 12}, new int[]{1, 41}, new int[]{2, 12}, new int[]{3, 6}, new int[]{5, 24}, new int[]{6, 4}, new int[]{7, 0}, new int[]{9, 1}, new int[]{10, 42}, new int[]{11, 43}, new int[]{12, 44}, new int[]{13, 45}, new int[]{16, 39}, new int[]{17, 11}, new int[]{20, 38}, new int[]{21, 40}, new int[]{22, 3}, new int[]{27, 36}, new int[]{54, 22}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int[][] f11711h = {new int[]{129, 7}, new int[]{130, 8}, new int[]{131, 4}, new int[]{132, 3}, new int[]{133, 2}, new int[]{134, 18}, new int[]{135, 12}, new int[]{1, 8}, new int[]{2, 7}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 2}, new int[]{6, 1}, new int[]{7, 12}, new int[]{8, 40}, new int[]{9, 41}, new int[]{10, 3}, new int[]{12, 6}, new int[]{13, 38}, new int[]{14, 11}, new int[]{15, 11}, new int[]{18, 13}, new int[]{19, 36}, new int[]{20, 24}, new int[]{21, 12}, new int[]{22, 45}, new int[]{23, 33}, new int[]{24, 32}, new int[]{25, 27}, new int[]{52, 27}, new int[]{26, 28}, new int[]{53, 28}};

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f11713j = new a();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f11714k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f11715l = new b();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f11716m = new c();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Runnable f11717n = new d();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17347o == 1) {
                z.k.s(227, 144, 1, 38);
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(wc.this.f11716m);
            wc.this.f11714k = 5;
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            wc wcVar = wc.this;
            int i2 = wcVar.f11714k - 1;
            wcVar.f11714k = i2;
            if (i2 <= 0) {
                l0.b0.p0(wcVar.f11716m);
                wc.this.f11714k = 5;
            } else {
                z.k.s(227, 129, 1, u0.b.f17306a0);
                if (u0.b.f17306a0 == 1) {
                    z.k.s(227, 144, 1, 3);
                }
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2;
            switch (nt.f8633a) {
                case 524667:
                    i2 = 1;
                    break;
                case 590203:
                case 2359675:
                    i2 = 2;
                    break;
                case 655739:
                case 2425211:
                    i2 = 3;
                    break;
                case 721275:
                    i2 = 4;
                    break;
                case 786811:
                    i2 = 5;
                    break;
                case 852347:
                    i2 = 6;
                    break;
                case 917883:
                    i2 = 7;
                    break;
                case 983419:
                    i2 = 8;
                    break;
                case 1048955:
                    i2 = 9;
                    break;
                case 1114491:
                    i2 = 10;
                    break;
                case 1180027:
                    i2 = 11;
                    break;
                case 1245563:
                    i2 = 12;
                    break;
                case 1311099:
                    i2 = 13;
                    break;
                case 1376635:
                    i2 = 14;
                    break;
                case 1442171:
                    i2 = 15;
                    break;
                case 1507707:
                    i2 = 16;
                    break;
                case 1573243:
                    i2 = 17;
                    break;
                case 1638779:
                    i2 = 18;
                    break;
                case 1704315:
                    i2 = 19;
                    break;
                case 1769851:
                    i2 = 20;
                    break;
                case 1835387:
                    i2 = 21;
                    break;
                case 1900923:
                case 2490747:
                    i2 = 64;
                    break;
                case 1966459:
                    i2 = 65;
                    break;
                case 2031995:
                    i2 = 22;
                    break;
                case 2097531:
                    i2 = 23;
                    break;
                default:
                    i2 = 0;
                    break;
            }
            wc.this.d3(i2);
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
        switch (iArr[0]) {
            case 33:
                if (iArr[1] == 0) {
                    if (nt.f8645g[10] == 1) {
                        a3(1);
                    }
                } else if (nt.f8645g[10] == 0) {
                    a3(1);
                }
                break;
            case 34:
                if (iArr[1] == 0) {
                    if (nt.f8645g[11] == 1) {
                        a3(23);
                    }
                } else if (nt.f8645g[11] == 0) {
                    a3(23);
                }
                break;
            case 35:
                if (iArr[1] == 0) {
                    if (nt.f8645g[13] == 1) {
                        a3(21);
                    }
                } else if (nt.f8645g[13] == 0) {
                    a3(21);
                }
                break;
            case 37:
                if (iArr[1] == 0) {
                    if (nt.f8645g[16] == 1) {
                        a3(20);
                    }
                } else if (nt.f8645g[16] == 0) {
                    a3(20);
                }
                break;
            case 38:
                if (iArr[1] == 0) {
                    if (nt.f8645g[12] == 1) {
                        a3(35);
                    }
                } else if (nt.f8645g[12] == 0) {
                    a3(34);
                }
                break;
            case 39:
                int i2 = iArr[1];
                if (i2 == -2) {
                    a3(9);
                    break;
                } else if (i2 == -1) {
                    a3(10);
                    break;
                }
                break;
            case 41:
                if (iArr[1] == 0) {
                    a3(2);
                } else {
                    a3(3);
                }
                break;
            case 42:
                if (iArr[1] == 0) {
                    a3(4);
                } else {
                    a3(5);
                }
                break;
        }
    }

    @Override // k0.lt
    public void S2() {
        u0.c.f17386m.a(this.f11715l, 1);
        this.f7886a.f8318m = new int[]{33, 34, 35, 36, 37, 38, 39, 41, 42};
        qt.z(this.f11717n);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8314i = 1;
        mtVar.f8320o = 1;
        if (App.c().getResources().getConfiguration().orientation == 1) {
            this.f7886a.f8314i = 0;
        }
        qt.x(this.f11713j);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int[][] iArr2;
        int[][] iArr3;
        int[][] iArr4;
        int[][] iArr5;
        int[][] iArr6;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        byte b2 = bArr[i2];
        if (b2 != 1) {
            if (b2 == 2) {
                int i12 = i2 + 2;
                int i13 = bArr[i12] & 255;
                int i14 = i2 + 3;
                if ((bArr[i14] & 255) == 1 && i13 == 4) {
                    o1.u.v();
                }
                if (nt.a()) {
                    byte b3 = bArr[i12];
                    byte b4 = bArr[i14];
                    this.f11708e = b3 & 255;
                    int i15 = nt.f8633a;
                    if (i15 == 253 || i15 == 262462 || i15 == 327998 || i15 == 131097 || i15 == 359 || i15 == 65895 || i15 == 131431 || i15 == 379 || i15 == 459131 || i15 == 524667 || i15 == 590203 || i15 == 2359675 || i15 == 655739 || i15 == 2425211 || i15 == 721275 || i15 == 786811 || i15 == 852347 || i15 == 917883 || i15 == 983419 || i15 == 1048955 || i15 == 1114491 || i15 == 1180027 || i15 == 1245563 || i15 == 1311099 || i15 == 1376635 || i15 == 1442171 || i15 == 1507707 || i15 == 1573243 || i15 == 1638779 || i15 == 1704315 || i15 == 1769851 || i15 == 1835387 || i15 == 1900923 || i15 == 2490747 || i15 == 2031995 || i15 == 2097531) {
                        int i16 = 0;
                        while (true) {
                            iArr4 = this.f11709f;
                            if (i16 >= iArr4.length) {
                                break;
                            }
                            int i17 = this.f11708e;
                            if (i17 == iArr4[i16][0]) {
                                if (i17 == 0) {
                                    break;
                                }
                                this.f11707d = i16;
                                break;
                            }
                            i16++;
                        }
                        if ((b4 & 255) != 0) {
                            if (i16 < iArr4.length) {
                                l0.b0.l0(iArr4[i16][1], 0);
                            }
                        } else if (i16 <= iArr4.length) {
                            l0.b0.l0(iArr4[this.f11707d][1], 1);
                        }
                    } else if (i15 == 65561) {
                        int i18 = 0;
                        while (true) {
                            iArr6 = this.f11710g;
                            if (i18 >= iArr6.length) {
                                break;
                            }
                            int i19 = this.f11708e;
                            if (i19 == iArr6[i18][0]) {
                                if (i19 == 0) {
                                    break;
                                }
                                this.f11707d = i18;
                                break;
                            }
                            i18++;
                        }
                        if ((b4 & 255) != 0) {
                            if (i18 < iArr6.length) {
                                l0.b0.l0(iArr6[i18][1], 0);
                            }
                        } else if (i18 <= iArr6.length) {
                            l0.b0.l0(iArr6[this.f11707d][1], 1);
                        }
                    } else if (i15 == 196633 || i15 == 393241) {
                        int i20 = 0;
                        while (true) {
                            iArr5 = this.f11711h;
                            if (i20 >= iArr5.length) {
                                break;
                            }
                            int i21 = this.f11708e;
                            if (i21 == iArr5[i20][0]) {
                                if (i21 == 0) {
                                    break;
                                }
                                this.f11707d = i20;
                                break;
                            }
                            i20++;
                        }
                        int i22 = b4 & 255;
                        if (i22 == 1) {
                            if (i20 < iArr5.length) {
                                l0.b0.l0(iArr5[i20][1], 0);
                            }
                        } else if (i22 == 0 && i20 <= iArr5.length) {
                            l0.b0.l0(iArr5[this.f11707d][1], 1);
                        }
                    }
                }
            } else if (b2 == 3) {
                byte b5 = bArr[i2 + 2];
                byte b6 = bArr[i2 + 3];
                int i23 = i2 + 4;
                byte b7 = bArr[i23];
                int i24 = i2 + 5;
                byte b8 = bArr[i24];
                byte b9 = bArr[i2 + 6];
                byte b10 = bArr[i2 + 8];
                qt.y0(10, (b5 >> 7) & 1);
                qt.y0(11, (b5 >> 6) & 1);
                qt.y0(12, (b5 >> 5) & 1);
                qt.y0(16, (b5 >> 4) & 1);
                qt.y0(54, (b5 >> 3) & 1);
                int i25 = (b6 >> 4) & 1;
                if (i25 == 0) {
                    qt.y0(21, b5 & 7);
                } else if (i25 == 1) {
                    qt.y0(21, 8);
                }
                qt.y0(52, (b6 >> 6) & 1);
                qt.y0(14, (b6 >> 5) & 1);
                int i26 = b6 & DhcpPacket.DHCP_DOMAIN_NAME & 255;
                switch (i26) {
                    case 1:
                        i4 = 0;
                        i5 = 0;
                        i6 = 0;
                        i7 = 0;
                        i8 = 1;
                        break;
                    case 2:
                        i8 = 0;
                        i5 = 0;
                        i6 = 0;
                        i7 = 0;
                        i4 = 1;
                        break;
                    case 3:
                        i8 = 0;
                        i4 = 0;
                        i5 = 0;
                        i6 = 0;
                        i7 = 1;
                        break;
                    case 4:
                        i8 = 0;
                        i4 = 0;
                        i5 = 0;
                        i6 = 1;
                        i7 = i6;
                        break;
                    case 5:
                        i8 = 0;
                        i4 = 0;
                        i5 = 0;
                        i7 = 0;
                        i6 = 1;
                        break;
                    case 6:
                        i8 = 0;
                        i4 = 0;
                        i7 = 0;
                        i5 = 1;
                        i6 = 1;
                        break;
                    case 7:
                        i8 = 0;
                        i4 = 0;
                        i6 = 0;
                        i7 = 0;
                        i5 = 1;
                        break;
                    case 8:
                        i8 = 0;
                        i4 = 0;
                        i6 = 0;
                        i5 = 1;
                        i7 = 1;
                        break;
                    case 9:
                        i8 = 0;
                        i4 = 0;
                        i5 = 1;
                        i6 = i5;
                        i7 = i6;
                        break;
                    default:
                        i8 = 0;
                        i4 = 0;
                        i5 = 0;
                        i6 = i5;
                        i7 = i6;
                        break;
                }
                qt.y0(49, i8);
                qt.y0(15, i4);
                qt.y0(18, i5);
                qt.y0(19, i6);
                qt.y0(20, i7);
                qt.y0(77, i26);
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    b7 = bArr[i24];
                    b8 = bArr[i23];
                }
                int i27 = b7 & 255;
                if (i27 == 0) {
                    qt.y0(27, -2);
                } else if (i27 != 255) {
                    switch (i27) {
                        case 29:
                            qt.y0(27, 160);
                            break;
                        case 30:
                            qt.y0(27, -3);
                            break;
                        case 31:
                            qt.y0(27, 165);
                            break;
                        case 32:
                            qt.y0(27, 150);
                            break;
                        case 33:
                            qt.y0(27, 155);
                            break;
                        case 34:
                            qt.y0(27, 310);
                            break;
                        default:
                            if (i27 >= 1 && i27 <= 28) {
                                qt.y0(27, (i27 * 5) + 165);
                            }
                            break;
                    }
                } else {
                    qt.y0(27, -1);
                }
                int i28 = b8 & 255;
                if (i28 == 0) {
                    qt.y0(28, -2);
                } else if (i28 != 255) {
                    switch (i28) {
                        case 29:
                            qt.y0(28, 160);
                            break;
                        case 30:
                            qt.y0(28, -3);
                            break;
                        case 31:
                            qt.y0(28, 165);
                            break;
                        case 32:
                            qt.y0(28, 150);
                            break;
                        case 33:
                            qt.y0(28, 155);
                            break;
                        case 34:
                            qt.y0(28, 310);
                            break;
                        default:
                            if (i28 >= 1 && i28 <= 28) {
                                qt.y0(28, (i28 * 5) + 165);
                            }
                            break;
                    }
                } else {
                    qt.y0(28, -1);
                }
                qt.y0(29, (b9 >> 4) & 15);
                qt.y0(30, b9 & DhcpPacket.DHCP_DOMAIN_NAME);
                qt.y0(65, (b10 >> 2) & 1);
                qt.y0(80, (b10 >> 1) & 1);
                qt.y0(74, b10 & 1);
                if (nt.a()) {
                    byte b11 = bArr[i2 + 7];
                    u0.d.A3((b11 & 128) > 0 ? 1000 - ((((~(b11 & 255)) + 1) & 255) * 10) : ((b11 & 255) * 10) + 1000);
                }
            } else if (b2 == 13) {
                qt.y0(131, bArr[i2 + 2]);
            } else if (b2 == 19) {
                byte b12 = bArr[i2 + 2];
                byte b13 = bArr[i2 + 3];
                byte b14 = bArr[i2 + 4];
                byte b15 = bArr[i2 + 5];
                qt.y0(31, (b12 >> 4) & 3);
                qt.y0(32, (b12 >> 0) & 3);
                int i29 = b13 & 255;
                if (i29 == 0) {
                    qt.y0(40, -2);
                } else if (i29 != 255) {
                    switch (i29) {
                        case 29:
                            qt.y0(40, 160);
                            break;
                        case 30:
                            qt.y0(40, -3);
                            break;
                        case 31:
                            qt.y0(40, 165);
                            break;
                        case 32:
                            qt.y0(40, 150);
                            break;
                        case 33:
                            qt.y0(40, 155);
                            break;
                        case 34:
                            qt.y0(40, 310);
                            break;
                        default:
                            if (i29 >= 1 && i29 <= 28) {
                                qt.y0(40, (i29 * 5) + 165);
                            }
                            break;
                    }
                } else {
                    qt.y0(40, -1);
                }
                int i30 = (b14 >> 4) & 15;
                if (i30 == 1) {
                    i9 = 0;
                    i10 = 0;
                    i11 = 1;
                } else if (i30 != 3) {
                    if (i30 == 4) {
                        i11 = 0;
                        i9 = 1;
                    } else if (i30 != 5) {
                        i11 = 0;
                        i9 = 0;
                    } else {
                        i11 = 0;
                        i10 = 0;
                        i9 = 1;
                    }
                    i10 = i9;
                } else {
                    i11 = 0;
                    i9 = 0;
                    i10 = 1;
                }
                qt.y0(43, i11);
                qt.y0(46, i9);
                qt.y0(47, i10);
                qt.y0(44, 15 & b14);
                qt.y0(85, b15 & 1);
            } else if (b2 != 38) {
                switch (b2) {
                    case 5:
                        byte b16 = bArr[i2 + 2];
                        byte b17 = bArr[i2 + 3];
                        qt.y0(97, (b16 >> 6) & 3);
                        qt.y0(98, (b16 >> 4) & 3);
                        qt.y0(99, (b16 >> 2) & 3);
                        qt.y0(100, (b16 >> 1) & 1);
                        qt.y0(101, b16 & 1);
                        if (((b17 >> 6) & 1) == 1) {
                            qt.y0(187, (b17 >> 4) & 3);
                        }
                        qt.y0(188, (b17 >> 2) & 1);
                        qt.y0(102, (b17 >> 3) & 1);
                        qt.y0(103, b17 & 3);
                        break;
                    case 6:
                        byte b18 = bArr[i2 + 2];
                        byte b19 = bArr[i2 + 3];
                        qt.y0(104, (b18 >> 7) & 1);
                        qt.y0(105, (b18 >> 5) & 3);
                        qt.y0(106, (b18 >> 4) & 1);
                        qt.y0(107, (b18 >> 3) & 1);
                        qt.y0(108, (b18 >> 1) & 3);
                        qt.y0(109, b18 & 1);
                        qt.y0(110, (b19 >> 7) & 1);
                        qt.y0(111, (b19 >> 5) & 3);
                        qt.y0(112, (b19 >> 4) & 1);
                        qt.y0(113, (b19 >> 3) & 1);
                        qt.y0(114, b19 & 1);
                        break;
                    case 7:
                        qt.y0(184, bArr[i2 + 2] & 1);
                        break;
                    case 8:
                        if (!e3()) {
                            f3(bArr, i2 + 2, i3 - 2);
                        }
                        break;
                    case 9:
                        if (!e3() && nt.R != 0) {
                            g3(bArr[i2 + 2]);
                        }
                        break;
                    case 10:
                        byte b20 = bArr[i2 + 2];
                        byte b21 = bArr[i2 + 3];
                        qt.y0(117, (b20 >> 7) & 1);
                        qt.y0(118, (b20 >> 6) & 1);
                        qt.y0(119, (b20 >> 5) & 1);
                        qt.y0(120, (b20 >> 4) & 1);
                        qt.y0(121, (b20 >> 3) & 1);
                        qt.y0(122, (b20 >> 2) & 1);
                        qt.y0(123, b20 & 3);
                        qt.y0(124, (b21 >> 7) & 1);
                        qt.y0(125, (b21 >> 6) & 1);
                        qt.y0(126, (b21 >> 5) & 1);
                        qt.y0(127, (b21 >> 4) & 1);
                        qt.y0(128, (b21 >> 3) & 1);
                        qt.y0(129, (b21 >> 2) & 1);
                        qt.y0(185, b21 & 3);
                        byte b22 = bArr[i2 + 4];
                        qt.y0(189, (b22 >> 3) & 1);
                        qt.y0(190, (b22 >> 2) & 1);
                        qt.y0(191, (b22 >> 0) & 1);
                        break;
                    case 11:
                        int i31 = (((bArr[i2 + 2] & 255) << 8) | (bArr[i2 + 3] & 255)) / 16;
                        qt.y0(130, i31);
                        qt.y0(1031, i31);
                        break;
                    default:
                        switch (b2) {
                            case 34:
                                if (nt.a()) {
                                    u0.d.R2(b3(bArr[i2 + 2] & 255));
                                    u0.d.S2(b3(bArr[i2 + 3] & 255));
                                    u0.d.T2(b3(bArr[i2 + 4] & 255));
                                    u0.d.U2(b3(bArr[i2 + 5] & 255));
                                }
                                break;
                            case 35:
                                if (nt.a()) {
                                    u0.d.D2(b3(bArr[i2 + 2] & 255));
                                    u0.d.E2(b3(bArr[i2 + 3] & 255));
                                    u0.d.F2(b3(bArr[i2 + 4] & 255));
                                    u0.d.G2(b3(bArr[i2 + 5] & 255));
                                }
                                break;
                            case 36:
                                byte b23 = bArr[i2 + 2];
                                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                                    qt.y0(2, (b23 >> 6) & 1);
                                    qt.y0(1, (b23 >> 7) & 1);
                                } else {
                                    qt.y0(2, (b23 >> 7) & 1);
                                    qt.y0(1, (b23 >> 6) & 1);
                                }
                                qt.y0(4, (b23 >> 5) & 1);
                                qt.y0(3, (b23 >> 4) & 1);
                                qt.y0(5, (b23 >> 3) & 1);
                                qt.y0(0, (bArr[i2 + 3] >> 7) & 1);
                                break;
                            default:
                                switch (b2) {
                                    case 48:
                                        qt.L(new String(bArr, i2 + 2, i3 - 2));
                                        break;
                                    case 49:
                                        byte b24 = bArr[i2 + 3];
                                        byte b25 = bArr[i2 + 4];
                                        byte b26 = bArr[i2 + 6];
                                        byte b27 = bArr[i2 + 7];
                                        byte b28 = bArr[i2 + 8];
                                        byte b29 = bArr[i2 + 9];
                                        qt.y0(132, b24 & 255);
                                        int i32 = (b25 >> 7) & 1;
                                        int i33 = b25 & 127;
                                        if (i32 == 1) {
                                            i33 = 255 - i33;
                                        }
                                        qt.y0(133, i33);
                                        qt.y0(134, ((b26 & 255) << 24) | ((b27 & 255) << 16) | ((b28 & 255) << 8) | (b29 & 255));
                                        break;
                                    case 50:
                                        byte b30 = bArr[i2 + 2];
                                        byte b31 = bArr[i2 + 3];
                                        byte b32 = bArr[i2 + 4];
                                        byte b33 = bArr[i2 + 5];
                                        byte b34 = bArr[i2 + 6];
                                        int i34 = ((b30 & 255) << 8) | (b31 & 255);
                                        qt.y0(135, i34);
                                        qt.y0(1032, i34);
                                        qt.y0(136, ((b32 & 255) << 8) | (b33 & 255));
                                        qt.y0(137, b34 & 255);
                                        break;
                                    default:
                                        switch (b2) {
                                            case 99:
                                                byte b35 = bArr[i2 + 2];
                                                byte b36 = bArr[i2 + 3];
                                                qt.y0(192, (b35 >> 6) & 3);
                                                qt.y0(193, (b35 >> 4) & 3);
                                                qt.y0(194, (b35 >> 2) & 3);
                                                qt.y0(195, (b36 >> 7) & 1);
                                                qt.y0(196, (b36 >> 6) & 1);
                                                qt.y0(197, (b36 >> 5) & 1);
                                                qt.y0(198, (b36 >> 3) & 3);
                                                qt.y0(199, (b36 >> 2) & 1);
                                                qt.y0(200, (b36 >> 1) & 1);
                                                qt.y0(201, b36 & 1);
                                                break;
                                            case 100:
                                                qt.x0(202, new String(bArr, i2 + 2, i3 - 2));
                                                break;
                                            case 101:
                                                byte b37 = bArr[i2 + 2];
                                                byte b38 = bArr[i2 + 3];
                                                byte b39 = bArr[i2 + 4];
                                                byte b40 = bArr[i2 + 5];
                                                byte b41 = bArr[i2 + 6];
                                                byte b42 = bArr[i2 + 7];
                                                qt.y0(203, (b37 >> 7) & 1);
                                                qt.y0(204, (b37 >> 5) & 1);
                                                qt.y0(205, b37 & 3);
                                                qt.y0(138, b38 & 255);
                                                qt.y0(139, b39 & 255);
                                                qt.y0(140, b40 & 255);
                                                qt.y0(141, b41 & 255);
                                                qt.y0(206, b42 & 255);
                                                break;
                                        }
                                        break;
                                }
                                break;
                        }
                        break;
                }
            } else {
                qt.i(bArr[i2 + 2], bArr[i2 + 3], false, 7700);
            }
        } else if (nt.a()) {
            byte b43 = bArr[i2 + 2];
            byte b44 = bArr[i2 + 3];
            this.f11708e = (b43 | 128) & 255;
            int i35 = nt.f8633a;
            if (i35 == 253 || i35 == 262462 || i35 == 327998 || i35 == 131097 || i35 == 359 || i35 == 65895 || i35 == 131431 || i35 == 379 || i35 == 459131 || i35 == 524667 || i35 == 590203 || i35 == 2359675 || i35 == 655739 || i35 == 2425211 || i35 == 721275 || i35 == 786811 || i35 == 852347 || i35 == 917883 || i35 == 983419 || i35 == 1048955 || i35 == 1114491 || i35 == 1180027 || i35 == 1245563 || i35 == 1311099 || i35 == 1376635 || i35 == 1442171 || i35 == 1507707 || i35 == 1573243 || i35 == 1638779 || i35 == 1704315 || i35 == 1769851 || i35 == 1835387 || i35 == 1900923 || i35 == 2490747 || i35 == 1966459 || i35 == 2031995 || i35 == 2097531) {
                int i36 = 0;
                while (true) {
                    iArr = this.f11709f;
                    if (i36 >= iArr.length) {
                        break;
                    }
                    int i37 = this.f11708e;
                    if (i37 == iArr[i36][0]) {
                        if (i37 == 0) {
                            break;
                        }
                        this.f11707d = i36;
                        break;
                    }
                    i36++;
                }
                int i38 = this.f11708e;
                if (i38 != 134) {
                    if (i38 != 135) {
                        if ((b44 & 255) != 0) {
                            if (i36 < iArr.length) {
                                l0.b0.l0(iArr[i36][1], 0);
                            }
                        } else if (i36 <= iArr.length) {
                            l0.b0.l0(iArr[this.f11707d][1], 1);
                        }
                    } else if ((b44 & 255) == 1) {
                        int i39 = h0.c.E;
                        if (i39 == 3 || i39 == 4 || i39 == 5) {
                            l0.b0.l0(26, 0);
                            l0.b0.l0(26, 1);
                        } else {
                            l0.b0.l0(12, 0);
                            l0.b0.l0(12, 1);
                        }
                    }
                } else if ((b44 & 255) == 1) {
                    if (h0.c.E != 4) {
                        l0.b0.l0(13, 0);
                        l0.b0.l0(13, 1);
                    } else {
                        l0.b0.l0(18, 0);
                        l0.b0.l0(18, 1);
                    }
                }
            } else if (i35 == 65561) {
                int i40 = 0;
                while (true) {
                    iArr3 = this.f11710g;
                    if (i40 >= iArr3.length) {
                        break;
                    }
                    int i41 = this.f11708e;
                    if (i41 == iArr3[i40][0]) {
                        if (i41 == 0) {
                            break;
                        }
                        this.f11707d = i40;
                        break;
                    }
                    i40++;
                }
                if ((b44 & 255) != 0) {
                    if (i40 < iArr3.length) {
                        l0.b0.l0(iArr3[i40][1], 0);
                    }
                } else if (i40 <= iArr3.length) {
                    l0.b0.l0(iArr3[this.f11707d][1], 1);
                }
            } else if (i35 == 196633 || i35 == 393241) {
                int i42 = 0;
                while (true) {
                    iArr2 = this.f11711h;
                    if (i42 >= iArr2.length) {
                        break;
                    }
                    int i43 = this.f11708e;
                    if (i43 == iArr2[i42][0]) {
                        if (i43 == 0) {
                            break;
                        }
                        this.f11707d = i42;
                        break;
                    }
                    i42++;
                }
                int i44 = b44 & 255;
                if (i44 == 1) {
                    if (i42 < iArr2.length) {
                        l0.b0.l0(iArr2[i42][1], 0);
                    }
                } else if (i44 == 0 && i42 <= iArr2.length) {
                    l0.b0.l0(iArr2[this.f11707d][1], 1);
                }
            }
        }
        super.U2(bArr, i2, i3);
    }

    @Override // k0.lt
    public void W2() {
        qt.q0(this.f11713j);
        qt.q0(this.f11717n);
        u0.c.f17386m.d(this.f11715l);
        l0.b0.p0(this.f11716m);
        qt.o0(this.f11713j);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 207) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        switch (i2) {
            case 1:
                if (T2(iArr, 2)) {
                    z.k.s(227, 130, 2, iArr[0], iArr[1]);
                }
                break;
            case 3:
                if (T2(iArr, 2)) {
                    z.k.s(227, 131, 2, iArr[0], iArr[1]);
                }
                break;
            case 4:
                if (T2(iArr, 1)) {
                    z.k.s(227, 132, 1, iArr[0]);
                }
                break;
            case 5:
                if (T2(iArr, 1)) {
                    z.k.s(227, 133, 1, iArr[0]);
                }
                break;
            case 6:
                h3(134, (byte) 10, iArr);
                break;
            case 7:
                if (T2(iArr, 1)) {
                    z.k.s(227, 136, 1, iArr[0]);
                }
                break;
            case 8:
                if (T2(iArr, 1)) {
                    z.k.s(227, 144, 1, iArr[0]);
                }
                break;
            case 9:
                if (T2(iArr, 1)) {
                    z.k.s(227, 139, 1, iArr[0]);
                }
                break;
            case 10:
                if (T2(iArr, 2)) {
                    z.k.s(227, 224, 2, iArr[0], iArr[1]);
                }
                break;
        }
    }

    public final void a3(int i2) {
        z.k.s(227, -32, 2, i2, 1);
        z.k.s(227, -32, 2, i2, 0);
    }

    public final int b3(int i2) {
        if (n0.j4.f16464b == 21) {
            return (i2 == 0 || i2 >= 8) ? 10 : 0;
        }
        if (i2 == 0) {
            return 10;
        }
        return ((i2 * 10) / 7) - 1;
    }

    public final void d3(int i2) {
        z.k.s(227, 226, 1, i2);
    }

    public final boolean e3() {
        return n0.j4.f16464b == 3;
    }

    public final void f3(byte[] bArr, int i2, int i3) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = i2 + i4;
            int i6 = ((bArr[i5] & 240) >> 4) & 255;
            if (i6 == 15) {
                break;
            }
            if (i6 > -1 && i6 < 10) {
                stringBuffer.append((char) (i6 + 48));
            } else if (i6 == 10) {
                stringBuffer.append('*');
            } else if (i6 == 11) {
                stringBuffer.append('#');
            }
            int i7 = bArr[i5] & DhcpPacket.DHCP_DOMAIN_NAME & 255;
            if (i7 == 15) {
                break;
            }
            if (i7 > -1 && i7 < 10) {
                stringBuffer.append((char) (i7 + 48));
            } else if (i7 == 10) {
                stringBuffer.append('*');
            } else if (i7 == 11) {
                stringBuffer.append('#');
            }
        }
        String string = stringBuffer.toString();
        if (qt.B0(115, string, this.f11712i)) {
            this.f11712i = string;
        }
    }

    public final void g3(int i2) {
        int i3;
        qt.y0(116, i2);
        if (i2 == 0) {
            if (this.f11705b == 1 && (i3 = this.f11706c) != 12) {
                u0.b.f17311c.c(i3);
            }
            this.f11705b = 0;
            return;
        }
        if (i2 == 1 || i2 == 2 || i2 == 3 || i2 == 4) {
            int i4 = h0.c.G;
            if (i4 != 0 || this.f11705b != 0) {
                if (i4 == 0 || this.f11705b != 0) {
                    return;
                }
                z.k.s(227, 186, 2, 3, 0);
                return;
            }
            this.f11705b = 1;
            this.f11706c = u0.b.D;
            if (u0.b.f17332j != 0) {
                u0.d.M(0);
            }
            if (u0.b.D == 12 && this.f11705b != 0 && y0.f.f18055i != 0) {
                y0.h.u0(-4);
            }
            if (u0.b.D != 12) {
                u0.b.f17311c.c(12);
            }
            if (o1.u.S(u0.b.J1)) {
                App.c().sendOrderedBroadcast(new Intent("com.syu.onstar.xp.yinglang.showpip"), "com.syu.canbus");
                return;
            }
            Intent intent = new Intent();
            intent.setComponent(new ComponentName("com.syu.canbus", "com.syu.carinfo.xp.yinglang.YLOnStarAct"));
            intent.putExtra("onstar", Camera.Parameters.FLASH_MODE_ON);
            intent.setFlags((intent.getFlags() & (-2097153)) | 268435456);
            try {
                App.c().startActivity(intent);
            } catch (Exception unused) {
            }
        }
    }

    public final void h3(int i2, byte b2, int... iArr) {
        int i3 = b2 & 255;
        if (i3 < iArr.length) {
            throw new IllegalArgumentException("params data length > size!");
        }
        int i4 = i3 + 3;
        int[] iArr2 = new int[i4];
        iArr2[0] = -29;
        iArr2[1] = (byte) i2;
        iArr2[2] = b2;
        int length = iArr.length;
        for (int i5 = 0; i5 < length; i5++) {
            iArr2[3 + i5] = (byte) (iArr[i5] & 255);
        }
        for (int i6 = 3 + length; i6 < i4; i6++) {
            iArr2[i6] = 0;
        }
        StringBuffer stringBuffer = new StringBuffer();
        for (int i7 = 0; i7 < i4; i7++) {
            stringBuffer.append(iArr2[i7] + "\n");
        }
        z.k.s(iArr2);
    }
}
