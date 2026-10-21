package k0;

import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import android.text.Spanned;
import android.text.format.Time;

/* JADX INFO: loaded from: classes2.dex */
public class ap extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f3431b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f3434e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3432c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f3433d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 2}, new int[]{4, 18}, new int[]{5, 13}, new int[]{6, 5}, new int[]{7, 3}, new int[]{8, 4}, new int[]{16, 29}, new int[]{129, -1}, new int[]{130, -1}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f3435f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f3436g = {new int[]{1, 54}, new int[]{2, 24}, new int[]{3, 18}, new int[]{4, 1}, new int[]{5, 5}, new int[]{6, 6}, new int[]{7, 55}, new int[]{16, 29}, new int[]{17, 34}, new int[]{18, 35}, new int[]{19, 32}, new int[]{20, 33}, new int[]{129, -1}, new int[]{130, -1}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f3437h = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, 154, 4, 17, (byte) time.hour, (byte) time.minute, (byte) time.second);
            int i2 = time.year;
            z.k.s(227, 154, 4, 19, (byte) ((i2 >> 8) & 255), i2 & 255, (byte) (time.month + 1), (byte) time.monthDay);
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        qt.z(this.f3437h);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 0;
        mtVar.f8312g = 1;
        mtVar.f8314i = 0;
        mtVar.f8315j = 0;
        mtVar.f8320o = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int[][] iArr2;
        byte b2 = bArr[i2];
        if (b2 == 16) {
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                int i4 = i2 + 3;
                qt.y0(1, (bArr[i4] >> 6) & 1);
                qt.y0(2, (bArr[i4] >> 7) & 1);
            } else {
                int i5 = i2 + 3;
                qt.y0(1, (bArr[i5] >> 7) & 1);
                qt.y0(2, (bArr[i5] >> 6) & 1);
            }
            int i6 = i2 + 3;
            qt.y0(3, (bArr[i6] >> 5) & 1);
            qt.y0(4, (bArr[i6] >> 4) & 1);
            qt.y0(5, (bArr[i6] >> 3) & 1);
            qt.y0(0, (bArr[i6] >> 2) & 1);
        }
        if (b2 == 18) {
            int i7 = i2 + 3;
            qt.y0(98, (bArr[i7] >> 7) & 1);
            qt.y0(99, (bArr[i7] >> 6) & 1);
            qt.y0(100, bArr[i2 + 4] & 255);
            int i8 = bArr[i2 + 5] & 255;
            u0.d.B3(SystemProperties.getInt("persist.fyt.temperature", 0) == 1 ? (((i8 & 128) != 0 ? 1320 - ((i8 & 127) * 9) : (i8 * 9) + 1320) | 268435456) & (-1) : (i8 & 128) != 0 ? 1000 - ((i8 & 127) * 5) : (i8 * 5) + 1000);
            return;
        }
        if (b2 == 25) {
            int i9 = i2 + 2;
            qt.y0(163, (bArr[i9] >> 7) & 1);
            qt.y0(164, (bArr[i9] >> 6) & 1);
            qt.y0(165, (bArr[i9] >> 0) & 15);
            int i10 = i2 + 3;
            qt.y0(166, (bArr[i10] >> 7) & 1);
            qt.y0(167, (bArr[i10] >> 6) & 1);
            qt.y0(168, (bArr[i10] >> 5) & 1);
            qt.y0(169, (bArr[i10] >> 4) & 1);
            qt.y0(170, (bArr[i10] >> 3) & 1);
            qt.y0(171, (bArr[i10] >> 2) & 1);
            qt.y0(172, (bArr[i10] >> 1) & 1);
            qt.y0(173, (bArr[i10] >> 0) & 1);
            qt.y0(174, (bArr[i2 + 4] >> 0) & 1);
            qt.y0(175, (bArr[i2 + 5] >> 0) & 255);
            qt.y0(176, (bArr[i2 + 6] >> 0) & 255);
            qt.y0(177, (bArr[i2 + 7] >> 0) & 255);
            return;
        }
        if (b2 == 36) {
            int i11 = i2 + 2;
            qt.j(bArr[i11] & 63, 0, (bArr[i11] >> 7) & 1, 52);
            return;
        }
        if (b2 == 40) {
            int i12 = i2 + 3;
            int i13 = bArr[i12] & 255;
            int i14 = i2 + 4;
            int i15 = bArr[i14] & 255;
            int i16 = i2 + 5;
            int i17 = bArr[i16] & 255;
            int i18 = i2 + 6;
            int i19 = bArr[i18] & 255;
            if (i13 >= 253 && i15 >= 253 && i17 >= 253 && i19 >= 253) {
                u0.d.C2(0);
            } else if ((l0.c0.f13013g != i13 || l0.c0.f13014h != i15 || l0.c0.f13015i != i17 || l0.c0.f13016j != i19) && u0.b.f17347o == 0) {
                u0.d.C2(1);
                l0.c0.f13017k = 4;
                l0.b0.b(l0.c0.f13018l);
            }
            l0.c0.f13013g = i13;
            l0.c0.f13014h = i15;
            l0.c0.f13015i = i17;
            l0.c0.f13016j = i19;
            u0.d.D2(l0.c0.a1(bArr[i12] & 255));
            u0.d.E2(l0.c0.a1(bArr[i14] & 255));
            u0.d.F2(l0.c0.a1(bArr[i16] & 255));
            u0.d.G2(l0.c0.a1(bArr[i18] & 255));
            u0.d.R2(l0.c0.a1(bArr[i2 + 7] & 255));
            u0.d.S2(l0.c0.a1(bArr[i2 + 8] & 255));
            u0.d.T2(l0.c0.a1(bArr[i2 + 9] & 255));
            u0.d.U2(l0.c0.a1(bArr[i2 + 10] & 255));
            return;
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 70) {
            int i20 = i2 + 2;
            qt.y0(103, (bArr[i20] >> 7) & 1);
            qt.y0(104, (bArr[i20] >> 6) & 1);
            qt.y0(105, (bArr[i20] >> 5) & 1);
            qt.y0(106, (bArr[i20] >> 4) & 1);
            qt.y0(107, (bArr[i20] >> 3) & 1);
            int i21 = i2 + 3;
            qt.y0(108, (bArr[i21] >> 7) & 1);
            qt.y0(109, (bArr[i21] >> 4) & 3);
            int i22 = i2 + 4;
            qt.y0(110, (bArr[i22] >> 4) & 15);
            qt.y0(111, (bArr[i22] >> 2) & 3);
            qt.y0(112, (bArr[i22] >> 1) & 1);
            qt.y0(178, (bArr[i22] >> 0) & 1);
            int i23 = i2 + 5;
            qt.y0(113, (bArr[i23] >> 7) & 1);
            qt.y0(114, (bArr[i23] >> 6) & 1);
            qt.y0(115, (bArr[i23] >> 5) & 1);
            qt.y0(116, (bArr[i23] >> 4) & 1);
            qt.y0(117, (bArr[i2 + 6] >> 0) & 255);
            int i24 = i2 + 7;
            qt.y0(118, (bArr[i24] >> 7) & 1);
            qt.y0(119, (bArr[i24] >> 6) & 1);
            qt.y0(120, (bArr[i24] >> 5) & 1);
            qt.y0(121, (bArr[i24] >> 4) & 1);
            qt.y0(122, (bArr[i24] >> 3) & 1);
            qt.y0(123, (bArr[i24] >> 2) & 1);
            qt.y0(179, (bArr[i24] >> 0) & 3);
            int i25 = i2 + 8;
            qt.y0(124, (bArr[i25] >> 7) & 1);
            qt.y0(125, (bArr[i2 + 9] & 255) | ((bArr[i25] & DhcpPacket.DHCP_DOMAIN_NAME) << 8));
            return;
        }
        if (b2 == 80) {
            int i26 = bArr[i2 + 2] & 255;
            if (i26 == 1) {
                int i27 = i2 + 3;
                qt.y0(180, bArr[i27] & 255);
                qt.y0(181, bArr[i27] & 255);
                qt.y0(182, bArr[i27] & 255);
                qt.y0(183, bArr[i27] & 255);
                qt.y0(184, bArr[i27] & 255);
                qt.y0(185, bArr[i27] & 255);
                return;
            }
            if (i26 == 2) {
                int i28 = i2 + 3;
                qt.y0(186, bArr[i28] & 255);
                qt.y0(187, bArr[i28] & 255);
                return;
            }
            if (i26 == 3) {
                int i29 = i2 + 3;
                qt.y0(188, bArr[i29] & 255);
                qt.y0(189, bArr[i29] & 255);
                return;
            } else {
                if (i26 != 4) {
                    return;
                }
                int i30 = i2 + 3;
                qt.y0(190, (bArr[i30] >> 7) & 1);
                qt.y0(191, (bArr[i30] >> 6) & 1);
                qt.y0(192, (bArr[i30] >> 5) & 1);
                qt.y0(193, bArr[i2 + 4] & 255);
                qt.y0(194, bArr[i2 + 5] & 255);
                qt.y0(195, bArr[i2 + 6] & 255);
                qt.y0(196, bArr[i2 + 7] & 255);
                return;
            }
        }
        if (b2 == 64) {
            qt.y0(101, ((bArr[i2 + 2] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 3] << 8) & 65280) | (bArr[i2 + 4] & 255));
            qt.y0(102, (bArr[i2 + 6] & 255) | ((bArr[i2 + 5] << 8) & 65280));
            return;
        }
        if (b2 == 65) {
            int i31 = i2 + 5;
            l0.c0.N1((bArr[i31] >> 6) & 1, (bArr[i31] >> 7) & 1, (bArr[i31] >> 3) & 1);
            return;
        }
        switch (b2) {
            case 32:
                int i32 = i2 + 2;
                qt.y0(10, (bArr[i32] >> 7) & 1);
                qt.y0(11, (bArr[i32] >> 6) & 1);
                qt.y0(12, (bArr[i32] >> 4) & 3);
                qt.y0(16, (bArr[i32] >> 3) & 1);
                qt.y0(13, (bArr[i32] >> 2) & 1);
                qt.y0(14, (bArr[i32] >> 1) & 1);
                qt.y0(15, (bArr[i32] >> 0) & 1);
                int i33 = i2 + 3;
                qt.y0(18, (bArr[i33] >> 7) & 1);
                qt.y0(19, (bArr[i33] >> 6) & 1);
                qt.y0(20, (bArr[i33] >> 5) & 1);
                qt.y0(21, bArr[i33] & DhcpPacket.DHCP_DOMAIN_NAME);
                int i34 = i2 + 4;
                int i35 = bArr[i34] & 255;
                int i36 = i2 + 5;
                int i37 = bArr[i36] & 255;
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    i35 = bArr[i36] & 255;
                    i37 = bArr[i34] & 255;
                }
                if (i35 == 32) {
                    qt.y0(27, -2);
                } else if (i35 == 56) {
                    qt.y0(27, -3);
                } else if (i35 <= 32 || i35 >= 56) {
                    qt.y0(27, -1);
                } else {
                    qt.y0(27, ((i35 - 32) * 5) + 160);
                }
                if (i37 == 32) {
                    qt.y0(28, -2);
                } else if (i37 == 56) {
                    qt.y0(28, -3);
                } else if (i37 <= 32 || i37 >= 56) {
                    qt.y0(28, -1);
                } else {
                    qt.y0(28, ((i37 - 32) * 5) + 160);
                }
                break;
            case 33:
                byte b3 = bArr[i2 + 2];
                byte b4 = bArr[i2 + 3];
                this.f3432c = b3 & 255;
                int i38 = 0;
                while (true) {
                    iArr = this.f3433d;
                    if (i38 < iArr.length) {
                        int i39 = this.f3432c;
                        if (i39 != iArr[i38][0]) {
                            i38++;
                        } else if (i39 != 0) {
                            this.f3431b = i38;
                        }
                    }
                }
                int i40 = this.f3432c;
                if (i40 == 129) {
                    for (int i41 = 0; i41 < (b4 & 255); i41++) {
                        l0.b0.l0(30, 0);
                    }
                    l0.b0.l0(30, 1);
                } else if (i40 != 130) {
                    int i42 = b4 & 255;
                    if (i42 == 1) {
                        if (i38 < iArr.length) {
                            l0.b0.l0(iArr[i38][1], 0);
                        }
                    } else if (i42 == 0) {
                        int i43 = this.f3431b;
                        if (i43 < iArr.length && i43 != 255) {
                            l0.b0.l0(iArr[i43][1], 1);
                        }
                        this.f3431b = 255;
                    }
                } else {
                    for (int i44 = 0; i44 < (b4 & 255); i44++) {
                        l0.b0.l0(31, 0);
                    }
                    l0.b0.l0(31, 1);
                }
                break;
            case 34:
                byte b5 = bArr[i2 + 2];
                byte b6 = bArr[i2 + 3];
                this.f3435f = b5 & 255;
                int i45 = 0;
                while (true) {
                    iArr2 = this.f3436g;
                    if (i45 < iArr2.length) {
                        int i46 = this.f3435f;
                        if (i46 != iArr2[i45][0]) {
                            i45++;
                        } else if (i46 != 0) {
                            this.f3434e = i45;
                        }
                    }
                }
                int i47 = this.f3435f;
                if (i47 == 129) {
                    for (int i48 = 0; i48 < (b6 & 255); i48++) {
                        l0.b0.l0(31, 0);
                    }
                    l0.b0.l0(31, 1);
                } else if (i47 != 130) {
                    int i49 = b6 & 255;
                    if (i49 == 1) {
                        if (i45 < iArr2.length) {
                            l0.b0.l0(iArr2[i45][1], 0);
                        }
                    } else if (i49 == 0) {
                        int i50 = this.f3434e;
                        if (i50 < iArr2.length && i50 != 255) {
                            l0.b0.l0(iArr2[i50][1], 1);
                        }
                        this.f3434e = 255;
                    }
                } else {
                    for (int i51 = 0; i51 < (b6 & 255); i51++) {
                        l0.b0.l0(30, 0);
                    }
                    l0.b0.l0(30, 1);
                }
                break;
            default:
                switch (b2) {
                    case 72:
                        qt.y0(126, ((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255));
                        qt.y0(127, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
                        qt.y0(128, (bArr[i2 + 7] & 255) | ((bArr[i2 + 6] << 8) & 65280));
                        break;
                    case 73:
                        int i52 = i2 + 2;
                        qt.y0(129, (bArr[i52] >> 7) & 1);
                        qt.y0(130, (bArr[i52] >> 4) & 7);
                        qt.y0(130, (bArr[i52] >> 0) & 1);
                        int i53 = i2 + 3;
                        qt.y0(131, (bArr[i53] >> 6) & 3);
                        qt.y0(132, (bArr[i53] >> 4) & 3);
                        qt.y0(133, (bArr[i53] >> 2) & 3);
                        qt.y0(134, (bArr[i53] >> 0) & 3);
                        int i54 = i2 + 4;
                        qt.y0(135, (bArr[i54] >> 6) & 3);
                        qt.y0(136, (bArr[i54] >> 4) & 3);
                        qt.y0(137, (bArr[i54] >> 2) & 3);
                        qt.y0(138, bArr[i2 + 6] & 255);
                        qt.y0(139, ((bArr[i2 + 8] << 8) & 65280) | (bArr[i2 + 7] & 255));
                        qt.y0(140, ((bArr[i2 + 10] << 8) & 65280) | (bArr[i2 + 9] & 255));
                        qt.y0(141, ((bArr[i2 + 12] << 8) & 65280) | (bArr[i2 + 11] & 255));
                        qt.y0(142, ((bArr[i2 + 14] << 8) & 65280) | (bArr[i2 + 13] & 255));
                        qt.y0(143, bArr[i2 + 15] & 255);
                        qt.y0(144, ((bArr[i2 + 17] << 8) & 65280) | (bArr[i2 + 16] & 255));
                        qt.y0(145, ((bArr[i2 + 19] << 8) & 65280) | (bArr[i2 + 18] & 255));
                        qt.y0(146, ((bArr[i2 + 21] << 8) & 65280) | (bArr[i2 + 20] & 255));
                        qt.y0(147, (bArr[i2 + 22] & 255) | ((bArr[i2 + 23] << 8) & 65280));
                        break;
                    case 74:
                        int i55 = i2 + 2;
                        qt.y0(148, (bArr[i55] >> 7) & 1);
                        qt.y0(149, (bArr[i55] >> 4) & 7);
                        qt.y0(150, (bArr[i55] >> 0) & 1);
                        qt.y0(151, bArr[i2 + 3] & 255);
                        break;
                    case 75:
                        qt.y0(152, bArr[i2 + 2] & 255);
                        qt.y0(153, bArr[i2 + 3] & 255);
                        qt.y0(154, bArr[i2 + 4] & 255);
                        qt.y0(155, bArr[i2 + 5] & 255);
                        int i56 = i2 + 6;
                        qt.y0(156, (bArr[i56] >> 7) & 1);
                        qt.y0(157, (bArr[i56] >> 6) & 1);
                        qt.y0(158, (bArr[i56] >> 4) & 3);
                        qt.y0(159, bArr[i2 + 7] & 255);
                        qt.y0(160, bArr[i2 + 8] & 255);
                        qt.y0(161, (bArr[i2 + 9] >> 7) & 1);
                        qt.y0(162, (bArr[i2 + 12] & 255) | (bArr[i2 + 10] & 983040) | (bArr[i2 + 11] & 65280));
                        break;
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(l0.c0.f13020n);
        l0.b0.p0(l0.c0.f13021o);
        qt.q0(this.f3437h);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 197) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, 154, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 1) {
            z.k.s(227, 154, 3, iArr[0], iArr[1], iArr[2]);
            return;
        }
        if (i2 == 2) {
            z.k.s(227, 144, 1, iArr[0]);
            return;
        }
        if (i2 == 3) {
            z.k.s(227, 153, 6, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], iArr[5]);
        } else if (i2 == 4) {
            z.k.s(227, 155, 2, iArr[0], iArr[1]);
        } else {
            if (i2 != 5) {
                return;
            }
            z.k.s(227, 155, 3, iArr[0], iArr[1], iArr[2]);
        }
    }
}
