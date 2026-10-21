package k0;

import android.drm.DrmManagerClient;
import android.media.videoeditor.MediaProperties;
import android.net.dhcp.DhcpPacket;
import android.os.BatteryStats;
import android.os.SystemProperties;
import android.text.Spanned;
import android.text.format.DateUtils;
import android.text.format.Time;

/* JADX INFO: loaded from: classes2.dex */
public class fq extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f5278b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f5281e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f5279c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f5280d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 18}, new int[]{10, 26}, new int[]{32, 5}, new int[]{33, 54}, new int[]{34, 18}, new int[]{36, 1}, new int[]{128, 0}, new int[]{160, -1}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f5282f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f5283g = {new int[]{1, 0}, new int[]{2, 5}, new int[]{3, 1}, new int[]{4, 18}, new int[]{5, 54}, new int[]{6, 2}, new int[]{7, 54}, new int[]{8, 3}, new int[]{9, 4}, new int[]{10, 58}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f5284h = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f5285i = new a();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public long f5286j = -1;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f5287k = -1;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            int i2 = time.year + DrmManagerClient.ERROR_UNKNOWN;
            int i3 = time.month + 1;
            int i4 = time.monthDay;
            int i5 = time.hour;
            int i6 = time.minute;
            long millis = time.toMillis(false) / DateUtils.MINUTE_IN_MILLIS;
            if (fq.this.f5286j != millis) {
                z.k.s(227, 133, 3, i2, i3, i4);
                z.k.s(227, 132, 2, i5, i6);
                fq.this.f5286j = millis;
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
        if (i2 == 41) {
            if (iArr[1] != 0) {
                z.k.s(227, -18, 4, 125, 69, 0, 128);
                return;
            }
            z.k.s(227, -18, 4, 125, 69, 0, 129);
        }
        if (i2 == 42) {
            if (iArr[1] != 0) {
                z.k.s(227, -18, 4, 125, 69, 1, 128);
                return;
            } else {
                z.k.s(227, -18, 4, 125, 69, 1, 129);
                return;
            }
        }
        if (i2 == 55) {
            z.k.s(227, -18, 4, 125, 69, 0, iArr[1]);
            return;
        }
        if (i2 == 56) {
            z.k.s(227, -18, 4, 125, 69, 1, iArr[1]);
            return;
        }
        if (i2 == 68) {
            if (iArr[1] == 1) {
                z.k.s(227, -18, 4, 125, 2, 2, 1);
                return;
            }
            if (iArr[1] == 2) {
                z.k.s(227, -18, 4, 125, 2, 2, 11);
                return;
            }
            if (iArr[1] == 3) {
                z.k.s(227, -18, 4, 125, 2, 0, 1);
                return;
            }
            if (iArr[1] == 4) {
                z.k.s(227, -18, 4, 125, 2, 0, 11);
                return;
            }
            if (iArr[1] == 5) {
                z.k.s(227, -18, 4, 125, 2, 3, 1);
                return;
            }
            if (iArr[1] == 6) {
                z.k.s(227, -18, 4, 125, 2, 3, 11);
                return;
            }
            if (iArr[1] == 7) {
                z.k.s(227, -18, 4, 125, 2, 1, 1);
                return;
            }
            if (iArr[1] == 8) {
                z.k.s(227, -18, 4, 125, 2, 1, 11);
                return;
            }
            if (iArr[1] == 9) {
                z.k.s(227, -18, 3, 125, 1, 0);
                return;
            }
            if (iArr[1] == 10) {
                z.k.s(227, -18, 3, 125, 1, 1);
                return;
            } else if (iArr[1] == 11) {
                z.k.s(227, -18, 4, 125, 2, 16, 1);
                return;
            } else {
                if (iArr[1] == 12) {
                    z.k.s(227, -18, 4, 125, 2, 16, 11);
                    return;
                }
                return;
            }
        }
        switch (i2) {
            case 33:
                if (iArr[1] == 0) {
                    z.k.s(227, -18, 3, 125, 64, 0);
                } else {
                    z.k.s(227, -18, 3, 125, 64, 1);
                }
                break;
            case 34:
                if (iArr[1] == 0) {
                    z.k.s(227, -18, 3, 125, 65, 0);
                } else {
                    z.k.s(227, -18, 3, 125, 65, 1);
                }
                break;
            case 35:
                if (iArr[1] == 0) {
                    z.k.s(227, -18, 3, 125, 75, 0);
                } else {
                    z.k.s(227, -18, 3, 125, 75, 1);
                }
                break;
            case 36:
                if (iArr[1] == 0) {
                    z.k.s(227, -18, 3, 125, 71, 0);
                } else {
                    z.k.s(227, -18, 3, 125, 71, 1);
                }
                break;
            case 37:
                if (iArr[1] == 0) {
                    z.k.s(227, -18, 3, 125, 72, 0);
                } else {
                    z.k.s(227, -18, 3, 125, 72, 1);
                }
                break;
            case 38:
                if (iArr[1] == 1) {
                    z.k.s(227, -18, 3, 125, 66, 0);
                } else if (iArr[1] == 0) {
                    z.k.s(227, -18, 3, 125, 66, 1);
                }
                break;
            case 39:
                if (iArr[1] != -1) {
                    z.k.s(227, -18, 3, 125, 68, 129);
                } else {
                    z.k.s(227, -18, 3, 125, 68, 128);
                }
                break;
        }
    }

    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8314i = 1;
        mtVar.f8323r = 1;
        mtVar.f8320o = 0;
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        qt.z(this.f5285i);
        this.f7886a.f8318m = new int[]{33, 34, 35, 36, 37, 38, 39, 41, 42, 68, 67, 55, 56};
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int[][] iArr2;
        int i4;
        int i5;
        int i6;
        byte b2 = bArr[i2];
        if (b2 == 36) {
            int i7 = bArr[i2 + 2] & 255;
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (i7 >> 7) & 1);
                qt.y0(2, (i7 >> 6) & 1);
            } else {
                qt.y0(1, (i7 >> 6) & 1);
                qt.y0(2, (i7 >> 7) & 1);
            }
            qt.y0(3, (i7 >> 4) & 1);
            qt.y0(4, (i7 >> 5) & 1);
            qt.y0(5, (i7 >> 3) & 1);
            qt.y0(0, (i7 >> 2) & 1);
        }
        if (b2 == 39) {
            l0.f0.i(bArr[i2 + 2]);
            return;
        }
        if (b2 == 41) {
            if (this.f5284h) {
                return;
            }
            int i8 = i2 + 3;
            if ((bArr[i8] & 128) != 0) {
                qt.j(bArr[i2 + 2], bArr[i8] & DhcpPacket.DHCP_DOMAIN_NAME, 0, MediaProperties.HEIGHT_360);
                return;
            } else {
                int i9 = 4096 - ((bArr[i2 + 2] & 255) | ((bArr[i8] << 8) & BatteryStats.HistoryItem.STATE_PHONE_STATE_MASK));
                qt.i(i9 & 255, (i9 >> 8) & 15, true, MediaProperties.HEIGHT_360);
                return;
            }
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 96) {
            qt.y0(125, bArr[i2 + 2] & 255);
            qt.y0(126, bArr[i2 + 3] & 255);
            qt.y0(127, bArr[i2 + 4] & 255);
            return;
        }
        if (b2 == 125) {
            int i10 = bArr[i2 + 2] & 255;
            if (i10 == 1) {
                if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                    int i11 = i2 + 3;
                    l0.c0.b((bArr[i11] >> 3) & 1, (bArr[i11] >> 4) & 1, 0);
                    return;
                } else {
                    int i12 = i2 + 3;
                    l0.c0.a((bArr[i12] >> 3) & 1, (bArr[i12] >> 4) & 1, 0);
                    return;
                }
            }
            if (i10 == 3) {
                int i13 = ((bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280)) / 100;
                qt.y0(1031, i13);
                o1.x.C(nt.f8643f, 1049, new int[]{1, i13}, null, null);
                return;
            } else {
                if (i10 != 8) {
                    return;
                }
                qt.i(bArr[i2 + 3], bArr[i2 + 4], true, 540);
                this.f5284h = true;
                return;
            }
        }
        switch (b2) {
            case 29:
                u0.d.D2(l0.c0.E0(bArr[i2 + 2] & 255));
                u0.d.E2(l0.c0.E0(bArr[i2 + 3] & 255));
                u0.d.F2(l0.c0.E0(bArr[i2 + 4] & 255));
                u0.d.G2(l0.c0.E0(bArr[i2 + 5] & 255));
                break;
            case 30:
                u0.d.R2(l0.c0.E0(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.E0(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.E0(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.E0(bArr[i2 + 5] & 255));
                u0.d.C2(bArr[i2 + 6]);
                break;
            case 31:
                int i14 = i2 + 2;
                u0.d.I2(l0.c0.E0(bArr[i14] & 255));
                u0.d.K2(l0.c0.E0(bArr[i14] & 255));
                int i15 = i2 + 3;
                u0.d.J2(l0.c0.E0(bArr[i15] & 255));
                u0.d.H2(l0.c0.E0(bArr[i15] & 255));
                int i16 = i2 + 4;
                u0.d.O2(l0.c0.E0(bArr[i16] & 255));
                u0.d.Q2(l0.c0.E0(bArr[i16] & 255));
                int i17 = i2 + 5;
                u0.d.P2(l0.c0.E0(bArr[i17] & 255));
                u0.d.N2(l0.c0.E0(bArr[i17] & 255));
                break;
            case 32:
                byte b3 = bArr[i2 + 2];
                byte b4 = bArr[i2 + 3];
                this.f5279c = b3 & 255;
                int i18 = 0;
                while (true) {
                    iArr = this.f5280d;
                    if (i18 < iArr.length) {
                        int i19 = this.f5279c;
                        if (i19 != iArr[i18][0]) {
                            i18++;
                        } else if (i19 != 0) {
                            this.f5278b = i18;
                        }
                    }
                }
                int i20 = this.f5279c;
                if (i20 != 9) {
                    if (i20 != 160) {
                        int i21 = b4 & 255;
                        if (i21 == 1) {
                            if (i18 < iArr.length) {
                                l0.b0.l0(iArr[i18][1], 0);
                            }
                        } else if (i21 == 0) {
                            int i22 = this.f5278b;
                            if (i22 < iArr.length && i22 != 255) {
                                l0.b0.l0(iArr[i22][1], 1);
                            }
                            this.f5278b = 255;
                        }
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
                break;
            case 33:
                byte b5 = bArr[i2 + 2];
                byte b6 = bArr[i2 + 3];
                this.f5282f = b5 & 255;
                int i24 = 0;
                while (true) {
                    iArr2 = this.f5283g;
                    if (i24 < iArr2.length) {
                        int i25 = this.f5282f;
                        if (i25 != iArr2[i24][0]) {
                            i24++;
                        } else if (i25 != 0) {
                            this.f5281e = i24;
                        }
                    }
                }
                int i26 = this.f5282f;
                switch (i26) {
                    case 168:
                    case 169:
                    case 170:
                    case 171:
                    case 172:
                    case 173:
                    case 174:
                        for (int i27 = 0; i27 < 175 - this.f5282f; i27++) {
                            l0.b0.l0(8, 0);
                            l0.b0.l0(8, 1);
                        }
                        break;
                    default:
                        switch (i26) {
                            case 176:
                            case 177:
                            case 178:
                            case 179:
                            case 180:
                            case 181:
                            case 182:
                                for (int i28 = 0; i28 < this.f5282f - 175; i28++) {
                                    l0.b0.l0(7, 0);
                                    l0.b0.l0(7, 1);
                                }
                                break;
                            default:
                                switch (i26) {
                                    case 200:
                                    case 201:
                                    case 202:
                                    case 203:
                                    case 204:
                                    case 205:
                                    case 206:
                                        for (int i29 = 0; i29 < 207 - this.f5282f; i29++) {
                                            l0.b0.l0(30, 0);
                                            l0.b0.l0(30, 1);
                                        }
                                        break;
                                    default:
                                        switch (i26) {
                                            case 208:
                                            case 209:
                                            case 210:
                                            case 211:
                                            case 212:
                                            case 213:
                                            case 214:
                                                for (int i30 = 0; i30 < this.f5282f - 207; i30++) {
                                                    l0.b0.l0(31, 0);
                                                    l0.b0.l0(31, 1);
                                                }
                                                break;
                                            default:
                                                int i31 = b6 & 255;
                                                if (i31 == 1) {
                                                    if (i24 < iArr2.length) {
                                                        l0.b0.l0(iArr2[i24][1], 0);
                                                    }
                                                } else if (i31 == 0) {
                                                    int i32 = this.f5281e;
                                                    if (i32 < iArr2.length && i32 != 255) {
                                                        l0.b0.l0(iArr2[i32][1], 1);
                                                    }
                                                    this.f5281e = 255;
                                                }
                                                break;
                                        }
                                        break;
                                }
                                break;
                        }
                        break;
                }
                break;
            default:
                switch (b2) {
                    case 82:
                        qt.y0(98, ((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255));
                        qt.y0(99, bArr[i2 + 4] & 255);
                        qt.y0(100, ((bArr[i2 + 5] << 8) & 65280) | (bArr[i2 + 6] & 255));
                        qt.y0(101, bArr[i2 + 7] & 255);
                        qt.y0(102, ((bArr[i2 + 8] << 8) & 65280) | (bArr[i2 + 9] & 255));
                        qt.y0(103, bArr[i2 + 10] & 255);
                        break;
                    case 83:
                        qt.y0(104, bArr[i2 + 2] & 255);
                        qt.y0(105, bArr[i2 + 3] & 255);
                        qt.y0(106, bArr[i2 + 4] & 255);
                        qt.y0(107, bArr[i2 + 5] & 255);
                        qt.y0(108, bArr[i2 + 6] & 255);
                        qt.y0(109, bArr[i2 + 7] & 255);
                        qt.y0(110, bArr[i2 + 8] & 255);
                        break;
                    case 84:
                        qt.y0(111, ((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255));
                        qt.y0(112, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
                        qt.y0(113, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
                        qt.y0(114, ((bArr[i2 + 8] << 8) & 65280) | (bArr[i2 + 9] & 255));
                        qt.y0(115, ((bArr[i2 + 10] << 8) & 65280) | (bArr[i2 + 11] & 255));
                        qt.y0(116, ((bArr[i2 + 12] << 8) & 65280) | (bArr[i2 + 13] & 255));
                        qt.y0(117, ((bArr[i2 + 14] << 8) & 65280) | (bArr[i2 + 15] & 255));
                        qt.y0(118, bArr[i2 + 16] & 255);
                        break;
                    case 85:
                        int i33 = i2 + 2;
                        int i34 = bArr[i33] & 255;
                        int i35 = i2 + 3;
                        int i36 = bArr[i35] & 255;
                        int i37 = bArr[i2 + 4] & 255;
                        int i38 = bArr[i2 + 5] & 255;
                        int i39 = bArr[i2 + 6] & 255;
                        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                            i34 = bArr[i35] & 255;
                            i36 = bArr[i33] & 255;
                        }
                        if (i34 == 16) {
                            qt.y0(27, -2);
                        } else if (i34 == 80) {
                            qt.y0(27, -3);
                        } else if (i34 < 32 || i34 > 56) {
                            qt.y0(27, -1);
                        } else {
                            qt.y0(27, i34 & 255);
                        }
                        if (i36 == 16) {
                            qt.y0(28, -2);
                        } else if (i36 == 80) {
                            qt.y0(28, -3);
                        } else if (i36 < 32 || i36 > 56) {
                            qt.y0(28, -1);
                        } else {
                            qt.y0(28, i36 & 255);
                        }
                        switch ((i37 >> 4) & 15) {
                            case 1:
                                i4 = 0;
                                i5 = 0;
                                i6 = 1;
                                break;
                            case 2:
                                i5 = 0;
                                i4 = 1;
                                i6 = 1;
                                break;
                            case 3:
                                i6 = 0;
                                i5 = 0;
                                i4 = 1;
                                break;
                            case 4:
                                i6 = 0;
                                i4 = 1;
                                i5 = 1;
                                break;
                            case 5:
                                i4 = 0;
                                i6 = 1;
                                i5 = i6;
                                break;
                            case 6:
                                i4 = 0;
                                i6 = 0;
                                i5 = 1;
                                break;
                            case 7:
                                i4 = 1;
                                i6 = i4;
                                i5 = i6;
                                break;
                            default:
                                i4 = 0;
                                i6 = i4;
                                i5 = i6;
                                break;
                        }
                        qt.y0(20, i4);
                        qt.y0(19, i6);
                        qt.y0(18, i5);
                        qt.y0(21, i37 & 15);
                        qt.y0(44, i38 & 15);
                        qt.y0(15, (i38 >> 5) & 1);
                        qt.y0(67, (i38 >> 6) & 1);
                        qt.y0(42, (i38 >> 7) & 1);
                        qt.y0(13, (i39 >> 0) & 1);
                        qt.y0(11, (i39 >> 1) & 1);
                        qt.y0(62, (i39 >> 2) & 1);
                        qt.y0(12, (i39 >> 3) & 1);
                        qt.y0(53, (i39 >> 4) & 1);
                        qt.y0(65, (i39 >> 5) & 1);
                        qt.y0(16, (i39 >> 6) & 1);
                        qt.y0(52, (i39 >> 7) & 1);
                        int i40 = i2 + 7;
                        qt.y0(29, (bArr[i40] >> 4) & 15);
                        qt.y0(30, (bArr[i40] >> 0) & 15);
                        break;
                    case 86:
                        int i41 = i2 + 2;
                        if ((bArr[i41] & 255) == 0) {
                            qt.y0(128, ((bArr[i2 + 3] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
                            qt.y0(129, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
                            qt.y0(130, ((bArr[i2 + 8] << 8) & 65280) | (bArr[i2 + 9] & 255));
                            qt.y0(131, bArr[i2 + 10] & 255);
                            qt.y0(132, bArr[i2 + 11] & 255);
                            qt.y0(133, bArr[i2 + 12] & 255);
                            qt.y0(134, bArr[i2 + 13] & 255);
                            qt.y0(135, bArr[i2 + 14] & 255);
                            qt.y0(136, bArr[i2 + 15] & 255);
                            qt.y0(137, bArr[i2 + 16] & 255);
                            qt.y0(138, bArr[i2 + 17] & 255);
                            qt.y0(139, bArr[i2 + 18] & 255);
                            qt.y0(140, bArr[i2 + 19] & 255);
                            qt.y0(141, bArr[i2 + 20] & 255);
                        } else if ((bArr[i41] & 255) == 1) {
                            qt.y0(142, ((bArr[i2 + 3] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
                            qt.y0(143, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
                            qt.y0(144, ((bArr[i2 + 8] << 8) & 65280) | (bArr[i2 + 9] & 255));
                            qt.y0(145, bArr[i2 + 10] & 255);
                            qt.y0(146, bArr[i2 + 11] & 255);
                            qt.y0(147, bArr[i2 + 12] & 255);
                            qt.y0(148, bArr[i2 + 13] & 255);
                            qt.y0(149, bArr[i2 + 14] & 255);
                            qt.y0(150, bArr[i2 + 15] & 255);
                            qt.y0(151, bArr[i2 + 16] & 255);
                            qt.y0(152, bArr[i2 + 17] & 255);
                            qt.y0(153, bArr[i2 + 18] & 255);
                            qt.y0(154, bArr[i2 + 19] & 255);
                            qt.y0(155, bArr[i2 + 20] & 255);
                        } else if ((bArr[i41] & 255) == 2) {
                            qt.y0(156, ((bArr[i2 + 3] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
                            qt.y0(157, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
                            qt.y0(158, ((bArr[i2 + 8] << 8) & 65280) | (bArr[i2 + 9] & 255));
                            qt.y0(159, bArr[i2 + 10] & 255);
                            qt.y0(160, bArr[i2 + 11] & 255);
                            qt.y0(161, bArr[i2 + 12] & 255);
                            qt.y0(162, bArr[i2 + 13] & 255);
                            qt.y0(163, bArr[i2 + 14] & 255);
                            qt.y0(164, bArr[i2 + 15] & 255);
                            qt.y0(165, bArr[i2 + 16] & 255);
                            qt.y0(166, bArr[i2 + 17] & 255);
                            qt.y0(167, bArr[i2 + 18] & 255);
                            qt.y0(168, bArr[i2 + 19] & 255);
                            qt.y0(169, bArr[i2 + 20] & 255);
                        } else if ((bArr[i41] & 255) == 3) {
                            qt.y0(170, ((bArr[i2 + 3] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
                            qt.y0(171, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
                            qt.y0(172, ((bArr[i2 + 8] << 8) & 65280) | (bArr[i2 + 9] & 255));
                            qt.y0(173, bArr[i2 + 10] & 255);
                            qt.y0(174, bArr[i2 + 11] & 255);
                            qt.y0(175, bArr[i2 + 12] & 255);
                            qt.y0(176, bArr[i2 + 13] & 255);
                            qt.y0(177, bArr[i2 + 14] & 255);
                            qt.y0(178, bArr[i2 + 15] & 255);
                            qt.y0(179, bArr[i2 + 16] & 255);
                            qt.y0(180, bArr[i2 + 17] & 255);
                            qt.y0(181, bArr[i2 + 18] & 255);
                            qt.y0(182, bArr[i2 + 19] & 255);
                            qt.y0(183, bArr[i2 + 20] & 255);
                        } else if ((bArr[i41] & 255) == 4) {
                            qt.y0(184, ((bArr[i2 + 3] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
                            qt.y0(185, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
                            qt.y0(186, ((bArr[i2 + 8] << 8) & 65280) | (bArr[i2 + 9] & 255));
                            qt.y0(187, bArr[i2 + 10] & 255);
                            qt.y0(188, bArr[i2 + 11] & 255);
                            qt.y0(189, bArr[i2 + 12] & 255);
                            qt.y0(190, bArr[i2 + 13] & 255);
                            qt.y0(191, bArr[i2 + 14] & 255);
                            qt.y0(192, bArr[i2 + 15] & 255);
                            qt.y0(193, bArr[i2 + 16] & 255);
                            qt.y0(194, bArr[i2 + 17] & 255);
                            qt.y0(195, bArr[i2 + 18] & 255);
                            qt.y0(196, bArr[i2 + 19] & 255);
                            qt.y0(197, bArr[i2 + 20] & 255);
                        } else if ((bArr[i41] & 255) == 5) {
                            qt.y0(198, ((bArr[i2 + 3] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
                            qt.y0(199, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
                            qt.y0(200, ((bArr[i2 + 8] << 8) & 65280) | (bArr[i2 + 9] & 255));
                            qt.y0(201, bArr[i2 + 10] & 255);
                            qt.y0(202, bArr[i2 + 11] & 255);
                            qt.y0(203, bArr[i2 + 12] & 255);
                            qt.y0(204, bArr[i2 + 13] & 255);
                            qt.y0(205, bArr[i2 + 14] & 255);
                            qt.y0(206, bArr[i2 + 15] & 255);
                            qt.y0(207, bArr[i2 + 16] & 255);
                            qt.y0(208, bArr[i2 + 17] & 255);
                            qt.y0(209, bArr[i2 + 18] & 255);
                            qt.y0(210, bArr[i2 + 19] & 255);
                            qt.y0(211, bArr[i2 + 20] & 255);
                        } else if ((bArr[i41] & 255) == 6) {
                            qt.y0(212, ((bArr[i2 + 3] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
                            qt.y0(213, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
                            qt.y0(214, ((bArr[i2 + 8] << 8) & 65280) | (bArr[i2 + 9] & 255));
                            qt.y0(215, bArr[i2 + 10] & 255);
                            qt.y0(216, bArr[i2 + 11] & 255);
                            qt.y0(217, bArr[i2 + 12] & 255);
                            qt.y0(218, bArr[i2 + 13] & 255);
                            qt.y0(219, bArr[i2 + 14] & 255);
                            qt.y0(220, bArr[i2 + 15] & 255);
                            qt.y0(221, bArr[i2 + 16] & 255);
                            qt.y0(222, bArr[i2 + 17] & 255);
                            qt.y0(223, bArr[i2 + 18] & 255);
                            qt.y0(224, bArr[i2 + 19] & 255);
                            qt.y0(225, bArr[i2 + 20] & 255);
                        }
                        break;
                    case 87:
                        int i42 = i2 + 2;
                        qt.y0(119, (bArr[i42] >> 7) & 1);
                        qt.y0(120, (bArr[i42] >> 6) & 1);
                        qt.y0(121, (bArr[i42] >> 5) & 1);
                        qt.y0(122, (bArr[i42] >> 4) & 1);
                        qt.y0(123, (bArr[i42] >> 0) & 15);
                        qt.y0(124, (bArr[i2 + 3] >> 0) & 1);
                        break;
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(l0.c0.f13020n);
        qt.q0(this.f5285i);
        l0.b0.p0(l0.c0.f13021o);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 226) {
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
            z.k.s(227, 131, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 1) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            z.k.s(227, 134, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 != 2) {
            if (i2 != 3) {
                return;
            }
            a3(iArr[0]);
        } else {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            z.k.s(227, 144, 2, iArr[0], iArr[1]);
        }
    }

    public final void a3(int i2) {
        int i3 = (this.f5287k + 1) % 2;
        this.f5287k = i3;
        int[] iArr = new int[7];
        iArr[0] = 227;
        iArr[1] = 51;
        iArr[2] = 4;
        iArr[3] = (byte) i2;
        iArr[4] = i3 == 0 ? 34 : 204;
        iArr[5] = 0;
        iArr[6] = 0;
        z.k.s(iArr);
    }
}
