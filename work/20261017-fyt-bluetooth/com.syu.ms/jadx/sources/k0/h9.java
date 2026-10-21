package k0;

import android.drm.DrmManagerClient;
import android.media.MediaMetadataEditor;
import android.net.dhcp.DhcpPacket;
import android.net.wifi.BatchedScanSettings;
import android.os.SystemProperties;
import android.text.Spanned;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class h9 extends lt {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f5830e;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f5833h;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public String f5839n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public String f5840o;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int[][] f5827b = new int[3][];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int[][] f5828c = new int[6][];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f5829d = new int[7][];

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f5831f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f5832g = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 18}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 13}};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f5834i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int[][] f5835j = {new int[]{1, 3}, new int[]{2, 4}, new int[]{3, 28}, new int[]{4, 27}, new int[]{5, 16}, new int[]{17, 18}, new int[]{18, 26}, new int[]{21, 16}};

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f5836k = new a();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f5837l = new b();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f5838m = new c();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h9.this.a3();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h9.this.c3();
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, 166, 7, (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN), (byte) (time.month + 1), (byte) time.monthDay, (byte) ((((!DateFormat.is24HourFormat(App.c()) ? 1 : 0) << 7) | time.hour) & 255), (byte) time.minute, (byte) time.second, 1);
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        if (nt.a()) {
            qt.z(this.f5836k);
            y0.g.f18094d.a(this.f5837l, 1);
            y0.g.f18095e.a(this.f5837l, 1);
            w0.e.f17815a.a(this.f5836k, 1);
            w0.e.f17819e.a(this.f5836k, 1);
        }
        qt.z(this.f5838m);
    }

    /* JADX WARN: Code duplicated, block: B:194:0x0544  */
    /* JADX WARN: Code duplicated, block: B:226:0x0597  */
    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int i4;
        int[][] iArr;
        int[][] iArr2;
        byte b2 = bArr[i2];
        int i5 = 4;
        if (b2 == 39) {
            int[] iArr3 = new int[1];
            int i6 = i2 + 2;
            iArr3[0] = (bArr[i6] & 255) == 0 ? 1 : 0;
            qt.y0(174, iArr3);
            if (nt.a()) {
                byte b3 = bArr[i6];
                int i7 = (bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280);
                if ((32768 & i7) == 0) {
                    i4 = (b3 & 1) == 1 ? 1000 + i7 : ((i7 / 10) * 10) + 1000 + (i7 % 10);
                } else if ((b3 & 1) == 1) {
                    i4 = 1000 - ((~i7) + 1);
                } else {
                    int i8 = (~i7) + 1;
                    i4 = (1000 - ((i8 / 10) * 10)) - (i8 % 10);
                }
                u0.d.A3(i4);
            }
            return;
        }
        if (b2 == 41) {
            qt.i(bArr[i2 + 2], bArr[i2 + 3], true, 19918);
            return;
        }
        if (b2 == 47) {
            if (nt.a()) {
                byte b4 = bArr[i2 + 2];
                byte b5 = bArr[i2 + 3];
                this.f5834i = b4 & 255;
                int i9 = 0;
                while (true) {
                    iArr = this.f5835j;
                    if (i9 >= iArr.length) {
                        break;
                    }
                    int i10 = this.f5834i;
                    if (i10 == iArr[i9][0]) {
                        if (i10 == 0) {
                            break;
                        }
                        this.f5833h = i9;
                        break;
                    }
                    i9++;
                }
                l0.b0.l0(iArr[i9][1], 0);
                l0.b0.l0(this.f5835j[i9][1], 1);
                return;
            }
            return;
        }
        if (b2 == 64) {
            byte b6 = bArr[i2 + 2];
            if (b6 == -128) {
                int i11 = i2 + 3;
                qt.y0(153, bArr[i11] & 1);
                qt.y0(154, bArr[i11] & 2);
                qt.y0(155, bArr[i11] & 4);
                qt.y0(156, bArr[i11] & 8);
                qt.y0(157, bArr[i11] & 16);
                qt.y0(158, bArr[i11] & 32);
                qt.y0(159, bArr[i11] & 64);
                qt.y0(160, bArr[i11] & 128);
                int i12 = i2 + 4;
                qt.y0(161, bArr[i12] & 1);
                qt.y0(182, bArr[i12] & 2);
                return;
            }
            if (b6 == -112) {
                int i13 = i2 + 3;
                qt.y0(180, bArr[i13] & 1);
                qt.y0(181, (bArr[i13] & 2) >> 1);
                int[] iArr4 = new int[1];
                iArr4[0] = ((bArr[i13] & 4) >> 2) == 0 ? 0 : 1;
                qt.y0(163, iArr4);
                qt.y0(164, ((bArr[i13] & 240) >> 4) & 255);
                int i14 = i2 + 4;
                qt.y0(165, bArr[i14] & DhcpPacket.DHCP_DOMAIN_NAME & 255);
                qt.y0(166, ((bArr[i14] & 240) >> 4) & 255);
                return;
            }
            if (b6 == 16) {
                qt.y0(162, bArr[i2 + 3] & 1);
                return;
            }
            if (b6 == 32) {
                int i15 = i2 + 3;
                qt.y0(125, ((2 & bArr[i15]) << 7) | (bArr[i2 + 4] & 255));
                qt.y0(124, bArr[i15] & 1);
                return;
            }
            if (b6 == 64) {
                qt.y0(116, bArr[i2 + 3] & 1);
                int i16 = i2 + 4;
                qt.y0(117, h3(bArr[i16] & DhcpPacket.DHCP_DOMAIN_NAME) - 1);
                qt.y0(118, h3((bArr[i16] & 240) >> 4) - 1);
                int i17 = i2 + 5;
                qt.y0(119, h3(bArr[i17] & DhcpPacket.DHCP_DOMAIN_NAME) - 1);
                qt.y0(120, h3((bArr[i17] & 240) >> 4) - 1);
                return;
            }
            if (b6 == 96) {
                int i18 = i2 + 3;
                qt.y0(148, bArr[i18] & 1);
                qt.y0(149, 2 & bArr[i18]);
                qt.y0(151, bArr[i18] & 4);
                qt.y0(152, bArr[i18] & 8);
                qt.y0(150, bArr[i2 + 4] & 1);
                return;
            }
            if (b6 == 112) {
                int i19 = i2 + 3;
                qt.y0(136, bArr[i19] & DhcpPacket.DHCP_DOMAIN_NAME & 255);
                qt.y0(137, ((bArr[i19] & 240) >> 4) & 255);
                qt.y0(138, bArr[i2 + 4] & 1);
                return;
            }
            if (b6 == 48) {
                int i20 = i2 + 3;
                qt.y0(132, bArr[i20] & 1);
                qt.y0(134, bArr[i20] & 2);
                return;
            }
            if (b6 == 49) {
                int i21 = i2 + 3;
                qt.y0(127, bArr[i21] & 1);
                qt.y0(129, 2 & bArr[i21]);
                qt.y0(130, bArr[i21] & 4);
                qt.y0(131, bArr[i21] & 8);
                int i22 = i2 + 4;
                qt.y0(126, bArr[i22] & DhcpPacket.DHCP_DOMAIN_NAME);
                qt.y0(128, ((bArr[i22] & 240) >> 4) & 255);
                return;
            }
            if (b6 != 80) {
                if (b6 != 81) {
                    return;
                }
                qt.y0(142, bArr[i2 + 3] & 1);
                qt.y0(144, bArr[i2 + 4] & 255);
                qt.y0(145, bArr[i2 + 5] & 255);
                return;
            }
            int i23 = i2 + 3;
            qt.y0(139, bArr[i23] & DhcpPacket.DHCP_DOMAIN_NAME & 255);
            qt.y0(140, bArr[i23] & 16);
            qt.y0(141, bArr[i23] & 32);
            qt.y0(175, bArr[i23] & 64);
            qt.y0(143, bArr[i2 + 4] & 255);
            qt.y0(146, bArr[i2 + 5] & 255);
            qt.y0(147, bArr[i2 + 6] & 255);
            return;
        }
        if (b2 == 80) {
            switch (bArr[i2 + 2]) {
                case 16:
                    int i24 = (((bArr[i2 + 4] & 255) | ((bArr[i2 + 5] << 8) & 65280)) & 65535) | (536870912 & (bArr[i2 + 3] << 29));
                    qt.y0(98, i24);
                    qt.y0(103, i24);
                    qt.y0(108, i24);
                    break;
                case 32:
                    qt.y0(99, ((((((bArr[i2 + 4] & 255) | ((bArr[i2 + 5] << 8) & 65280)) | 0) | 0) / 10) & MediaMetadataEditor.KEY_EDITABLE_MASK) | (536870912 & (bArr[i2 + 3] << 29)));
                    break;
                case 33:
                    qt.y0(109, ((((((bArr[i2 + 4] & 255) | ((bArr[i2 + 5] << 8) & 65280)) | 0) | 0) / 10) & MediaMetadataEditor.KEY_EDITABLE_MASK) | (536870912 & (bArr[i2 + 3] << 29)));
                    break;
                case 34:
                    qt.y0(104, ((((((bArr[i2 + 4] & 255) | ((bArr[i2 + 5] << 8) & 65280)) | 0) | 0) / 10) & MediaMetadataEditor.KEY_EDITABLE_MASK) | (536870912 & (bArr[i2 + 3] << 29)));
                    break;
                case 48:
                    qt.y0(97, ((((bArr[i2 + 4] & 255) | ((bArr[i2 + 5] << 8) & 65280)) / 10) & 65535) | ((bArr[i2 + 3] << 29) & (-536870912)));
                    break;
                case 49:
                    qt.y0(107, ((((bArr[i2 + 4] & 255) | ((bArr[i2 + 5] << 8) & 65280)) / 10) & 65535) | ((bArr[i2 + 3] << 29) & (-536870912)));
                    break;
                case 50:
                    qt.y0(102, ((((bArr[i2 + 4] & 255) | ((bArr[i2 + 5] << 8) & 65280)) / 10) & 65535) | ((bArr[i2 + 3] << 29) & (-536870912)));
                    break;
                case 64:
                    qt.y0(101, ((((bArr[i2 + 4] & 255) | ((bArr[i2 + 5] << 8) & 65280)) / 10) & 65535) | (536870912 & (bArr[i2 + 3] << 29)));
                    break;
                case 65:
                    qt.y0(111, ((((bArr[i2 + 4] & 255) | ((bArr[i2 + 5] << 8) & 65280)) / 10) & 65535) | (536870912 & (bArr[i2 + 3] << 29)));
                    break;
                case 66:
                    qt.y0(106, ((((bArr[i2 + 4] & 255) | ((bArr[i2 + 5] << 8) & 65280)) / 10) & 65535) | (536870912 & (bArr[i2 + 3] << 29)));
                    break;
                case 80:
                    qt.y0(100, ((bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280) | ((bArr[i2 + 5] << 16) & Spanned.SPAN_PRIORITY)) & 16777215);
                    break;
                case 81:
                    qt.y0(110, ((bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280) | ((bArr[i2 + 5] << 16) & Spanned.SPAN_PRIORITY)) & 16777215);
                    break;
                case 82:
                    qt.y0(105, ((bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280) | ((bArr[i2 + 5] << 16) & Spanned.SPAN_PRIORITY)) & 16777215);
                    break;
                case 96:
                    int i25 = i2 + 3;
                    boolean z2 = (bArr[i25] & 1) != 0;
                    qt.y0(115, bArr[i25] & 1);
                    int i26 = ((bArr[i2 + 4] & 255) | ((bArr[i2 + 5] << 8) & 65280)) & 65535;
                    if (z2) {
                        if (i26 > -1 && i26 < 166) {
                            i5 = 0;
                        } else if (i26 >= 166 && i26 < 332) {
                            i5 = 1;
                        } else if (i26 >= 332 && i26 < 498) {
                            i5 = 2;
                        } else if (i26 >= 498 && i26 < 664) {
                            i5 = 3;
                        } else if (i26 < 664 || i26 >= 830) {
                            if (i26 >= 830) {
                                i5 = 5;
                            } else {
                                i5 = 0;
                            }
                        }
                        qt.y0(113, i5);
                        qt.y0(114, ((i26 > 1000 ? 1000 : i26) * 100) / 1000);
                    } else {
                        if (i26 > -1 && i26 < 41) {
                            i5 = 0;
                        } else if (i26 >= 41 && i26 < 82) {
                            i5 = 1;
                        } else if (i26 >= 82 && i26 < 123) {
                            i5 = 2;
                        } else if (i26 >= 123 && i26 < 164) {
                            i5 = 3;
                        } else if (i26 < 164 || i26 >= 205) {
                            if (i26 >= 205) {
                                i5 = 5;
                            } else {
                                i5 = 0;
                            }
                        }
                        qt.y0(113, i5);
                        if (i26 > 250) {
                            i26 = 250;
                        }
                        qt.y0(114, (i26 * 100) / 250);
                    }
                    break;
            }
        }
        switch (b2) {
            case 32:
                if (nt.a()) {
                    byte b7 = bArr[i2 + 2];
                    byte b8 = bArr[i2 + 3];
                    this.f5831f = b7 & 255;
                    int i27 = 0;
                    while (true) {
                        iArr2 = this.f5832g;
                        if (i27 < iArr2.length) {
                            int i28 = this.f5831f;
                            if (i28 != iArr2[i27][0]) {
                                i27++;
                            } else if (i28 != 0) {
                                this.f5830e = i27;
                            }
                        }
                    }
                    int i29 = b8 & 255;
                    if (i29 == 1) {
                        if (i27 < iArr2.length) {
                            l0.b0.l0(iArr2[i27][1], 0);
                        }
                    } else if (i29 == 0) {
                        int i30 = this.f5830e;
                        if (i30 < iArr2.length && i30 != 255) {
                            l0.b0.l0(iArr2[i30][1], 1);
                        }
                        this.f5830e = 255;
                    }
                }
                break;
            case 33:
                int i31 = i2 + 2;
                qt.y0(10, bArr[i31] & 128);
                qt.y0(53, bArr[i31] & 64);
                qt.y0(13, bArr[i31] & 8);
                qt.y0(14, bArr[i31] & 4);
                qt.y0(15, bArr[i31] & 2);
                int i32 = i2 + 3;
                qt.y0(18, bArr[i32] & 128);
                qt.y0(19, bArr[i32] & 64);
                qt.y0(20, bArr[i32] & 32);
                qt.y0(21, bArr[i32] & DhcpPacket.DHCP_DOMAIN_NAME);
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    qt.y0(27, bArr[i2 + 5] & 255);
                    qt.y0(28, bArr[i2 + 4] & 255);
                } else {
                    qt.y0(27, bArr[i2 + 4] & 255);
                    qt.y0(28, bArr[i2 + 5] & 255);
                }
                int i33 = i2 + 6;
                qt.y0(66, bArr[i33] & 64);
                qt.y0(54, bArr[i33] & 32);
                qt.y0(37, bArr[i33] & 1);
                int i34 = i2 + 7;
                qt.y0(29, (bArr[i34] >> 4) & 3);
                qt.y0(30, bArr[i34] & 3);
                int i35 = i2 + 8;
                qt.y0(80, (bArr[i35] & 4) >> 2);
                qt.y0(73, bArr[i35] & 3);
                break;
            case 34:
                if (nt.a()) {
                    byte b9 = bArr[i2 + 2];
                    byte b10 = bArr[i2 + 3];
                    byte b11 = bArr[i2 + 4];
                    byte b12 = bArr[i2 + 5];
                    int i36 = ((b9 & 255) * 10) / 60;
                    u0.d.R2(i36 > 10 ? 10 : i36);
                    int i37 = ((b10 & 255) * 10) / 165;
                    u0.d.S2(i37 > 10 ? 10 : i37);
                    int i38 = ((b11 & 255) * 10) / 165;
                    u0.d.T2(i38 > 10 ? 10 : i38);
                    int i39 = ((b12 & 255) * 10) / 60;
                    u0.d.U2(i39 > 10 ? 10 : i39);
                }
                break;
            case 35:
                if (nt.a()) {
                    byte b13 = bArr[i2 + 2];
                    byte b14 = bArr[i2 + 3];
                    byte b15 = bArr[i2 + 4];
                    byte b16 = bArr[i2 + 5];
                    int i40 = ((b13 & 255) * 10) / 60;
                    u0.d.D2(i40 > 10 ? 10 : i40);
                    int i41 = ((b14 & 255) * 10) / 120;
                    u0.d.E2(i41 > 10 ? 10 : i41);
                    int i42 = ((b15 & 255) * 10) / 120;
                    u0.d.F2(i42 > 10 ? 10 : i42);
                    int i43 = ((b16 & 255) * 10) / 60;
                    u0.d.G2(i43 > 10 ? 10 : i43);
                }
                break;
            case 36:
                byte b17 = bArr[i2 + 2];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b17 >> 7) & 1);
                    qt.y0(2, (b17 >> 6) & 1);
                } else {
                    qt.y0(1, (b17 >> 6) & 1);
                    qt.y0(2, (b17 >> 7) & 1);
                }
                qt.y0(3, (b17 >> 4) & 1);
                qt.y0(4, (b17 >> 5) & 1);
                qt.y0(5, (b17 >> 3) & 1);
                qt.y0(0, (b17 >> 2) & 1);
                break;
            case 37:
                int i44 = i2 + 2;
                qt.y0(121, 2 & bArr[i44]);
                qt.y0(122, bArr[i44] & 1);
                if (nt.a()) {
                    u0.d.C2((bArr[i44] >> 1) & 1);
                }
                break;
            default:
                switch (b2) {
                    case 96:
                        int i45 = i2 + 2;
                        int i46 = bArr[i45] & 255;
                        int i47 = i46 <= 6 ? i46 : 6;
                        int[] iArr5 = new int[2];
                        iArr5[0] = 0;
                        iArr5[1] = (bArr[i2 + 9] & 255) == 0 ? 50 : 49;
                        if (qt.C0(172, iArr5, this.f5828c[0])) {
                            this.f5828c[0] = iArr5;
                        }
                        for (int i48 = 1; i48 < i47; i48++) {
                            int[] iArr6 = {i48, (bArr[i45 + i48] + 1) & 255};
                            if (qt.C0(172, iArr6, this.f5828c[i48])) {
                                this.f5828c[i48] = iArr6;
                            }
                        }
                        break;
                    case 97:
                        int i49 = i2 + 2;
                        int i50 = ((bArr[i2 + 3] & 255) << 8) | (bArr[i49] & 255);
                        if (i50 > 7) {
                            i50 = 7;
                        }
                        if (i50 > 0) {
                            int i51 = 0;
                            while (i51 < i50) {
                                int i52 = i51 + 1;
                                int[] iArr7 = {i51, (bArr[(i52 * 2) + i49] & 255) + 1};
                                if (qt.C0(171, iArr7, this.f5829d[i51])) {
                                    this.f5829d[i51] = iArr7;
                                }
                                i51 = i52;
                            }
                            while (i50 < 7) {
                                int[] iArr8 = {i50, 0};
                                if (qt.C0(171, iArr8, this.f5829d[i50])) {
                                    this.f5829d[i50] = iArr8;
                                }
                                i50++;
                            }
                        } else {
                            for (int i53 = 0; i53 < 7; i53++) {
                                int[] iArr9 = {i53, 0};
                                if (qt.C0(171, iArr9, this.f5829d[i53])) {
                                    this.f5829d[i53] = iArr9;
                                }
                            }
                        }
                        break;
                    case 98:
                        int i54 = bArr[i2 + 2] & 255;
                        if (i54 > 0) {
                            if (i54 > 3) {
                                i54 = 3;
                            }
                            if (i54 == 1) {
                                int i55 = i2 + 3;
                                if (qt.C0(173, new int[]{0, bArr[i55] & 255}, this.f5827b[0])) {
                                    this.f5827b[0] = new int[]{0, bArr[i55] & 255};
                                }
                                for (int i56 = 1; i56 < 3; i56++) {
                                    int[] iArr10 = {i56, 0};
                                    if (qt.C0(173, iArr10, this.f5827b[i56])) {
                                        this.f5827b[i56] = iArr10;
                                    }
                                }
                            } else if (i54 == 2) {
                                for (int i57 = 0; i57 < 2; i57++) {
                                    int[] iArr11 = {i57, bArr[i2 + 3 + i57] & 255};
                                    if (qt.C0(173, iArr11, this.f5827b[i57])) {
                                        this.f5827b[i57] = iArr11;
                                    }
                                    if (qt.C0(173, new int[]{2, 0}, this.f5827b[2])) {
                                        this.f5827b[0] = new int[]{2, 0};
                                    }
                                }
                            } else if (i54 == 3) {
                                for (int i58 = 0; i58 < 3; i58++) {
                                    int[] iArr12 = {i58, bArr[i2 + 3 + i58] & 255};
                                    if (qt.C0(173, iArr12, this.f5827b[i58])) {
                                        this.f5827b[i58] = iArr12;
                                    }
                                }
                            } else {
                                for (int i59 = 0; i59 < 3; i59++) {
                                    int[] iArr13 = {i59, 0};
                                    if (qt.C0(173, iArr13, this.f5827b[i59])) {
                                        this.f5827b[i59] = iArr13;
                                    }
                                }
                            }
                        }
                        break;
                    case 99:
                        byte b18 = bArr[i2 + 2];
                        if (b18 == 0) {
                            StringBuilder sb = new StringBuilder();
                            for (int i60 = 0; i60 < i3 - 3; i60++) {
                                sb.append((char) bArr[i2 + 3 + i60]);
                            }
                            this.f5840o = this.f5839n;
                            g3(sb.toString());
                            qt.B0(179, this.f5839n, this.f5840o);
                            break;
                        } else if (b18 == 16) {
                            qt.y0(167, ((bArr[i2 + 3] & DhcpPacket.DHCP_DOMAIN_NAME) << 24) | (bArr[i2 + 4] & 255) | ((bArr[i2 + 5] & 255) << 8));
                            break;
                        } else if (b18 == 17) {
                            int i61 = i2 + 3;
                            qt.y0(168, ((bArr[i61] & 240) << 12) | ((bArr[i61] & DhcpPacket.DHCP_DOMAIN_NAME) << 24) | (bArr[i2 + 4] & 255) | ((bArr[i2 + 5] & 255) << 8));
                            break;
                        } else if (b18 == 32) {
                            qt.y0(169, ((bArr[i2 + 3] & DhcpPacket.DHCP_DOMAIN_NAME) << 24) | (bArr[i2 + 4] & 255) | ((bArr[i2 + 5] & 255) << 8));
                            break;
                        } else if (b18 == 33) {
                            int i62 = i2 + 3;
                            qt.y0(170, ((bArr[i62] & 240) << 12) | (bArr[i62] << 24) | (bArr[i2 + 4] & 255) | ((bArr[i2 + 5] & 255) << 8));
                            break;
                        }
                        break;
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        qt.q0(this.f5836k);
        y0.g.f18094d.d(this.f5837l);
        y0.g.f18095e.d(this.f5837l);
        w0.e.f17815a.d(this.f5836k);
        w0.e.f17819e.d(this.f5836k);
        qt.q0(this.f5838m);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 461) {
            return;
        }
        if (i2 == 179) {
            o1.x.u(bVar, i2, this.f5839n);
        }
        int i4 = 0;
        switch (i2) {
            case 171:
                while (i4 < 7) {
                    o1.x.v(bVar, i2, this.f5829d[i4]);
                    i4++;
                }
                break;
            case 172:
                while (i4 < 6) {
                    o1.x.v(bVar, i2, this.f5828c[i4]);
                    i4++;
                }
                break;
            case 173:
                while (i4 < 3) {
                    o1.x.v(bVar, i2, this.f5827b[i4]);
                    i4++;
                }
                break;
            default:
                o1.x.v(bVar, i2, nt.f8645g[i2]);
                break;
        }
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (iArr[0] != 0) {
                iArr[0] = 1;
            }
            d3(137, iArr[0]);
            return;
        }
        if (i2 == 1) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (iArr[0] != 0) {
                iArr[0] = 1;
            }
            d3(144, iArr[0]);
            return;
        }
        if (i2 == 2) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (iArr[0] != 0) {
                iArr[0] = 1;
            }
            d3(145, iArr[0]);
            return;
        }
        if (i2 == 13) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (iArr[0] != 0) {
                iArr[0] = 1;
            }
            d3(200, iArr[0]);
            return;
        }
        if (i2 == 53) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (iArr[0] != 0) {
                iArr[0] = 1;
            }
            d3(49, iArr[0]);
            return;
        }
        if (i2 == 98) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (iArr[0] == 0) {
                z.k.s(227, -112, 2, 64, 0);
                z.k.s(227, -112, 2, 64, 16);
                z.k.s(227, -112, 2, 64, 32);
                z.k.s(227, -112, 2, 64, 48);
                z.k.s(227, -112, 2, 64, 49);
                z.k.s(227, -112, 2, 64, 64);
                z.k.s(227, -112, 2, 64, 80);
                z.k.s(227, -112, 2, 64, 81);
                z.k.s(227, -112, 2, 64, 96);
                z.k.s(227, -112, 2, 64, 112);
                z.k.s(227, -112, 2, 64, -128);
                z.k.s(227, -112, 2, 64, -112);
                z.k.s(227, -112, 2, 64, -96);
                z.k.s(227, -112, 2, 64, -80);
                return;
            }
            if (iArr[0] == 1) {
                z.k.s(227, -112, 2, 65, 0);
                z.k.s(227, -112, 2, 65, 16);
                z.k.s(227, -112, 2, 65, 32);
                z.k.s(227, -112, 2, 65, 48);
                z.k.s(227, -112, 2, 65, 49);
                z.k.s(227, -112, 2, 65, 64);
                z.k.s(227, -112, 2, 65, 80);
                z.k.s(227, -112, 2, 65, 81);
                z.k.s(227, -112, 2, 65, 96);
                z.k.s(227, -112, 2, 65, 112);
                z.k.s(227, -112, 2, 65, -128);
                z.k.s(227, -112, 2, 65, -112);
                z.k.s(227, -112, 2, 65, -80);
                return;
            }
            if (iArr[0] != 2) {
                if (iArr[0] != 3) {
                    if (iArr[0] == 255) {
                        z.k.s(227, -112, 2, -1, 0);
                        return;
                    }
                    return;
                } else {
                    z.k.s(227, -112, 2, 99, 0);
                    z.k.s(227, -112, 2, 99, 16);
                    z.k.s(227, -112, 2, 99, 17);
                    z.k.s(227, -112, 2, 99, 32);
                    z.k.s(227, -112, 2, 99, 33);
                    return;
                }
            }
            z.k.s(227, -112, 2, 80, 16);
            z.k.s(227, -112, 2, 65, 32);
            z.k.s(227, -112, 2, 65, 33);
            z.k.s(227, -112, 2, 65, 34);
            z.k.s(227, -112, 2, 65, 48);
            z.k.s(227, -112, 2, 65, 49);
            z.k.s(227, -112, 2, 65, 50);
            z.k.s(227, -112, 2, 65, 64);
            z.k.s(227, -112, 2, 65, 65);
            z.k.s(227, -112, 2, 65, 66);
            z.k.s(227, -112, 2, 65, 80);
            z.k.s(227, -112, 2, 65, 81);
            z.k.s(227, -112, 2, 65, 82);
            z.k.s(227, -112, 2, 65, 96);
            z.k.s(227, -112, 2, 65, 97);
            return;
        }
        if (i2 == 101) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (iArr[0] < 0) {
                iArr[0] = 0;
            } else if (iArr[0] > 2) {
                iArr[0] = 2;
            }
            d3(177, iArr[0]);
            return;
        }
        switch (i2) {
            case 30:
                break;
            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                int i3 = iArr[0];
                switch (i2) {
                    case 31:
                        d3(199, 1);
                        break;
                    case 32:
                        d3(193, 1);
                        break;
                    case 33:
                        d3(194, 1);
                        break;
                    case 34:
                        d3(195, 1);
                        break;
                    case 35:
                        d3(196, 1);
                        break;
                    case 36:
                        d3(197, 1);
                        break;
                    case 37:
                        d3(198, 1);
                        break;
                }
                return;
            case 38:
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                if (iArr[0] != 0) {
                    iArr[0] = 1;
                }
                d3(178, iArr[0]);
                return;
            case 39:
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                if (iArr[0] != 0) {
                    iArr[0] = 1;
                }
                d3(64, iArr[0]);
                return;
            case 40:
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                iArr[0] = iArr[0] + 1;
                if (iArr[0] < 1) {
                    iArr[0] = 1;
                } else if (iArr[0] > 9) {
                    iArr[0] = 9;
                }
                d3(65, iArr[0]);
                return;
            case 41:
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                iArr[0] = iArr[0] + 1;
                if (iArr[0] < 1) {
                    iArr[0] = 1;
                } else if (iArr[0] > 9) {
                    iArr[0] = 9;
                }
                d3(66, iArr[0]);
                return;
            case 42:
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                iArr[0] = iArr[0] + 1;
                if (iArr[0] < 1) {
                    iArr[0] = 1;
                } else if (iArr[0] > 9) {
                    iArr[0] = 9;
                }
                d3(67, iArr[0]);
                return;
            case 43:
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                iArr[0] = iArr[0] + 1;
                if (iArr[0] < 1) {
                    iArr[0] = 1;
                } else if (iArr[0] > 9) {
                    iArr[0] = 9;
                }
                d3(68, iArr[0]);
                return;
            case 44:
                if (iArr != null && iArr.length > 0 && iArr[0] != 0) {
                    iArr[0] = 1;
                }
                break;
            case 45:
                d3(34, 1);
                return;
            case 46:
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                if (iArr[0] != 0) {
                    iArr[0] = 1;
                }
                d3(32, iArr[0]);
                return;
            case 47:
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                d3(33, iArr[0]);
                return;
            case 48:
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                if (iArr[0] != 0) {
                    iArr[0] = 1;
                }
                d3(51, iArr[0]);
                return;
            case 49:
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                if (iArr[0] != 0) {
                    iArr[0] = 1;
                }
                d3(52, iArr[0]);
                return;
            case 50:
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                if (iArr[0] != 0) {
                    iArr[0] = 1;
                }
                d3(53, iArr[0]);
                return;
            case 51:
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                if (iArr[0] != 0) {
                    iArr[0] = 1;
                }
                d3(48, iArr[0]);
                return;
            default:
                switch (i2) {
                    case 55:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] < 0) {
                                iArr[0] = 0;
                            } else if (iArr[0] > 4) {
                                iArr[0] = 4;
                            }
                            d3(56, iArr[0]);
                            break;
                        }
                        break;
                    case 56:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] < 1) {
                                iArr[0] = 1;
                            } else if (iArr[0] > 3) {
                                iArr[0] = 3;
                            }
                            d3(55, iArr[0]);
                            break;
                        }
                        break;
                    case 57:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            d3(50, iArr[0]);
                            break;
                        }
                        break;
                    case 58:
                        if (iArr != null && iArr.length > 0) {
                            d3(80, iArr[0]);
                            break;
                        }
                        break;
                    case 59:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            d3(81, iArr[0]);
                            break;
                        }
                        break;
                    case 60:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            d3(82, iArr[0]);
                            break;
                        }
                        break;
                    case 61:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            d3(86, iArr[0]);
                            break;
                        }
                        break;
                    case 62:
                        if (iArr != null && iArr.length > 0) {
                            d3(83, iArr[0]);
                            break;
                        }
                        break;
                    case 63:
                        if (iArr != null && iArr.length > 0) {
                            d3(87, iArr[0]);
                            break;
                        }
                        break;
                    case 64:
                        if (iArr != null && iArr.length > 0) {
                            d3(88, iArr[0]);
                            break;
                        }
                        break;
                    case 65:
                        if (iArr != null && iArr.length > 0) {
                            d3(84, iArr[0]);
                            break;
                        }
                        break;
                    case 66:
                        if (iArr != null && iArr.length > 0) {
                            d3(85, iArr[0]);
                            break;
                        }
                        break;
                    case 67:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            d3(96, iArr[0]);
                            break;
                        }
                        break;
                    case 68:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            d3(97, iArr[0]);
                            break;
                        }
                        break;
                    case 69:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            d3(100, iArr[0]);
                            break;
                        }
                        break;
                    case 70:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            d3(98, iArr[0]);
                            break;
                        }
                        break;
                    case 71:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            d3(99, iArr[0]);
                            break;
                        }
                        break;
                    case 72:
                        if (iArr != null && iArr.length > 0) {
                            d3(112, iArr[0]);
                            break;
                        }
                        break;
                    case 73:
                        if (iArr != null && iArr.length > 0) {
                            d3(113, iArr[0]);
                            break;
                        }
                        break;
                    case 74:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            d3(114, iArr[0]);
                            break;
                        }
                        break;
                    case 75:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            d3(128, iArr[0]);
                            break;
                        }
                        break;
                    case 76:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            d3(129, iArr[0]);
                            break;
                        }
                        break;
                    case 77:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            d3(130, iArr[0]);
                            break;
                        }
                        break;
                    case 78:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            d3(131, iArr[0]);
                            break;
                        }
                        break;
                    case 79:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            d3(132, iArr[0]);
                            break;
                        }
                        break;
                    case 80:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            d3(133, iArr[0]);
                            break;
                        }
                        break;
                    case 81:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            d3(134, iArr[0]);
                            break;
                        }
                        break;
                    case 82:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            d3(135, iArr[0]);
                            break;
                        }
                        break;
                    case 83:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            d3(136, iArr[0]);
                            break;
                        }
                        break;
                    case 84:
                        if (iArr != null && iArr.length > 0) {
                            d3(138, iArr[0]);
                            break;
                        }
                        break;
                    case 85:
                        if (iArr != null && iArr.length > 0) {
                            d3(139, iArr[0]);
                            break;
                        }
                        break;
                    case 86:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            d3(16, iArr[0]);
                            break;
                        }
                        break;
                    case 87:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            d3(146, iArr[0]);
                            break;
                        }
                        break;
                    case 88:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] < 0) {
                                iArr[0] = 0;
                            } else if (iArr[0] > 2) {
                                iArr[0] = 2;
                            }
                            d3(147, iArr[0]);
                            break;
                        }
                        break;
                    case 89:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] < 0) {
                                iArr[0] = 0;
                            } else if (iArr[0] > 3) {
                                iArr[0] = 3;
                            }
                            d3(148, iArr[0]);
                            break;
                        }
                        break;
                    case 90:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] < 0) {
                                iArr[0] = 0;
                            } else if (iArr[0] > 2) {
                                iArr[0] = 2;
                            }
                            d3(149, iArr[0]);
                            break;
                        }
                        break;
                }
                return;
        }
        if (iArr == null || iArr.length <= 0) {
            return;
        }
        if (iArr[0] != 0) {
            iArr[0] = 1;
        }
        d3(171, iArr[0]);
    }

    public final void a3() {
        int[] iArr = new int[10];
        iArr[0] = 192;
        iArr[1] = 8;
        b3(iArr);
        int i2 = u0.b.D;
        if (i2 == 1) {
            int i3 = w0.d.f17797i;
            int i4 = w0.d.f17796h;
            if (i4 == 65536) {
                iArr[4] = 1;
            } else if (i4 == 65537) {
                iArr[4] = 2;
            } else if (i4 == 65538) {
                iArr[4] = 3;
            } else if (i4 == 0) {
                iArr[4] = 17;
            } else if (i4 == 1) {
                iArr[4] = 18;
            }
            iArr[5] = i3 & 255;
            iArr[6] = (i3 >> 8) & 255;
            iArr[7] = w0.d.f17798j & 255;
            iArr[8] = 0;
            iArr[9] = 0;
            return;
        }
        if (i2 == 2) {
            int i5 = h0.c.E;
            if (i5 == 0) {
                iArr[4] = 0;
                return;
            } else if (i5 <= 3) {
                iArr[4] = 1;
                return;
            } else {
                iArr[4] = 2;
                return;
            }
        }
        if (i2 == 4) {
            int i6 = o0.e.B;
            iArr[4] = i6 & 255;
            iArr[5] = (i6 >> 8) & 255;
            iArr[6] = 0;
            int i7 = o0.e.f16794r;
            iArr[7] = i7 / BatchedScanSettings.MAX_INTERVAL_SEC;
            iArr[8] = (i7 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60;
            iArr[9] = i7 % 60;
            return;
        }
        if (i2 == 8 || i2 == 9) {
            if (n0.j4.f16464b == 11) {
                int i8 = u0.b.r3;
                iArr[4] = (i8 >> 8) & 255;
                iArr[5] = i8 & 255;
                iArr[6] = 0;
                int i9 = u0.b.t3;
                iArr[7] = i9 / BatchedScanSettings.MAX_INTERVAL_SEC;
                iArr[8] = (i9 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60;
                iArr[9] = i9 % 60;
                return;
            }
            iArr[4] = 0;
            iArr[5] = 0;
            int i10 = u0.b.r3;
            iArr[6] = (i10 >> 8) & 255;
            iArr[7] = i10 & 255;
            int i11 = u0.b.t3;
            iArr[8] = (i11 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60;
            iArr[9] = i11 % 60;
        }
    }

    public final void b3(int[] iArr) {
        if (iArr == null || iArr.length < 3) {
            return;
        }
        iArr[2] = 7;
        iArr[3] = 48;
        switch (u0.b.D) {
            case 0:
                iArr[2] = 0;
                iArr[3] = 0;
                break;
            case 1:
                iArr[2] = 1;
                iArr[3] = 1;
                break;
            case 2:
                iArr[2] = 5;
                iArr[3] = 64;
                break;
            case 3:
                iArr[2] = 11;
                iArr[3] = 0;
                break;
            case 4:
                int i2 = o0.e.H;
                if (i2 == 1) {
                    iArr[2] = 2;
                    iArr[3] = 19;
                } else if (i2 == 2) {
                    iArr[2] = 9;
                    iArr[3] = 19;
                } else if (i2 == 3) {
                    iArr[2] = 8;
                    iArr[3] = 17;
                }
                break;
            case 5:
            case 11:
            case 12:
            case 13:
            case 14:
                break;
            case 6:
                if (d1.d.f1570c != 1) {
                    iArr[2] = 10;
                } else {
                    iArr[2] = 3;
                }
                break;
            case 7:
                iArr[2] = 6;
                iArr[3] = 18;
                break;
            case 8:
            case 10:
                if (n0.j4.f16464b != 11) {
                    iArr[2] = 9;
                    iArr[3] = 17;
                } else {
                    iArr[2] = 9;
                    iArr[3] = 19;
                }
                break;
            case 9:
            default:
                iArr[2] = 0;
                iArr[3] = 0;
                break;
        }
    }

    public final void c3() {
        int[] iArr = new int[3];
        int i2 = 0;
        iArr[0] = 196;
        iArr[1] = 1;
        if (y0.f.f18055i == 1 || y0.f.C0 == 0) {
            iArr[2] = 128;
        }
        if (y0.f.C0 > 30) {
            y0.f.C0 = 30;
        }
        int[] iArr2 = new int[4];
        iArr2[0] = 227;
        while (i2 < 3) {
            int i3 = i2 + 1;
            iArr2[i3] = iArr[i2];
            i2 = i3;
        }
        z.k.s(iArr2);
    }

    public final void d3(int i2, int i3) {
        z.k.s(227, 198, 2, (byte) i2, (byte) i3);
    }

    public final void g3(String str) {
        if (str == null) {
            if (this.f5839n != str) {
                this.f5839n = str;
            }
        } else {
            if (str.equals(this.f5839n)) {
                return;
            }
            this.f5839n = str;
        }
    }

    public final int h3(int i2) {
        if (i2 < 1) {
            return 1;
        }
        if (i2 > 9) {
            return 9;
        }
        return i2;
    }
}
