package k0;

import android.content.ComponentName;
import android.content.Intent;
import android.hardware.Camera;
import android.net.dhcp.DhcpPacket;
import android.opengl.GLES10;
import android.os.SystemProperties;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class ec extends lt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f4692c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f4693d;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public String f4704o;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f4691b = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f4694e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int[][] f4695f = {new int[]{129, 7}, new int[]{130, 8}, new int[]{131, 3}, new int[]{132, 4}, new int[]{133, 2}, new int[]{134, 13}, new int[]{135, 12}, new int[]{136, 13}, new int[]{137, 12}, new int[]{1, 25}, new int[]{2, 3}, new int[]{3, 4}, new int[]{5, 38}, new int[]{6, 6}, new int[]{7, 21}, new int[]{8, 22}, new int[]{9, 12}, new int[]{10, 40}, new int[]{11, 41}, new int[]{12, 42}, new int[]{13, 43}, new int[]{14, 44}, new int[]{15, 45}, new int[]{16, 11}, new int[]{17, 11}, new int[]{18, 1}, new int[]{19, 56}, new int[]{20, 2}, new int[]{21, 39}, new int[]{22, 5}, new int[]{23, 7}, new int[]{24, 8}, new int[]{25, 33}, new int[]{26, 32}, new int[]{27, 16}, new int[]{28, 35}, new int[]{29, 34}, new int[]{52, 33}, new int[]{53, 32}, new int[]{64, 53}, new int[]{80, 5}, new int[]{81, 2}, new int[]{82, 36}, new int[]{84, 2}, new int[]{85, 1}};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f4696g = {new int[]{129, 7}, new int[]{130, 8}, new int[]{131, 27}, new int[]{132, 28}, new int[]{133, 2}, new int[]{134, 13}, new int[]{135, 12}, new int[]{1, 41}, new int[]{2, 12}, new int[]{3, 6}, new int[]{5, 24}, new int[]{6, 4}, new int[]{7, 0}, new int[]{9, 1}, new int[]{10, 42}, new int[]{11, 43}, new int[]{12, 44}, new int[]{13, 45}, new int[]{16, 39}, new int[]{17, 11}, new int[]{20, 38}, new int[]{21, 40}, new int[]{22, 3}, new int[]{27, 36}, new int[]{54, 22}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int[][] f4697h = {new int[]{129, 33}, new int[]{130, 32}, new int[]{131, 4}, new int[]{132, 3}, new int[]{133, 13}, new int[]{134, 18}, new int[]{135, 26}, new int[]{1, 4}, new int[]{2, 44}, new int[]{3, 43}, new int[]{4, 42}, new int[]{5, 0}, new int[]{6, 1}, new int[]{7, 39}, new int[]{7, 40}, new int[]{9, 41}, new int[]{10, 3}, new int[]{12, 6}, new int[]{13, 38}, new int[]{14, 11}, new int[]{15, 11}, new int[]{18, 13}, new int[]{19, 36}, new int[]{20, 24}, new int[]{21, 12}, new int[]{22, 45}, new int[]{23, 33}, new int[]{24, 32}, new int[]{25, 27}, new int[]{52, 27}, new int[]{26, 28}, new int[]{53, 28}};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public byte f4698i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f4699j = new a();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f4700k = new b();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f4701l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f4702m = new c();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Runnable f4703n = new d();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ec ecVar = ec.this;
            byte b2 = (byte) (ecVar.f4698i + 1);
            ecVar.f4698i = b2;
            if (b2 > 5) {
                l0.b0.o0(ecVar.f4699j);
                ec.this.f4698i = (byte) 0;
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17347o == 1) {
                z.k.s(227, 144, 1, 38);
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(ec.this.f4703n);
            ec.this.f4701l = 5;
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ec ecVar = ec.this;
            int i2 = ecVar.f4701l - 1;
            ecVar.f4701l = i2;
            if (i2 <= 0) {
                l0.b0.p0(ecVar.f4703n);
                ec.this.f4701l = 5;
                return;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (u0.b.f17306a0 == 1) {
                z.k.s(227, 144, 1, 48);
                z.k.s(227, 144, 1, 51);
            }
        }
    }

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
        mtVar.f8314i = 1;
        mtVar.f8320o = 1;
        u0.c.f17379f.a(this.f4700k, 1);
        u0.c.f17386m.a(this.f4702m, 1);
    }

    /* JADX WARN: Code duplicated, block: B:84:0x0635  */
    /* JADX WARN: Code duplicated, block: B:97:0x068a  */
    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int[][] iArr2;
        int i4;
        byte b2;
        int[][] iArr3;
        int[][] iArr4;
        int[][] iArr5;
        int[][] iArr6;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        byte b3 = bArr[i2];
        if (b3 == -46) {
            qt.y0(191, bArr[i2 + 3] & 255);
        } else if (b3 == 13) {
            qt.y0(131, bArr[i2 + 2]);
        } else if (b3 == 26) {
            byte b4 = bArr[i2 + 2];
            byte b5 = bArr[i2 + 3];
            int i10 = b4 & 255;
            if (i10 == 0) {
                qt.y0(154, b5 & 1);
                qt.y0(155, (b5 >> 1) & 1);
                qt.y0(156, (b5 >> 2) & 1);
                qt.y0(157, (b5 >> 3) & 1);
                qt.y0(158, (b5 >> 4) & 1);
                qt.y0(159, (b5 >> 5) & 1);
                qt.y0(160, (b5 >> 6) & 1);
                qt.y0(161, (b5 >> 7) & 1);
            } else if (i10 == 1) {
                qt.y0(162, (b5 & 1) == 0 ? 0 : 1);
                qt.y0(163, ((b5 >> 1) & 1) == 0 ? 0 : 1);
                qt.y0(186, ((b5 >> 2) & 1) == 0 ? 0 : 1);
            } else if (i10 == 2) {
                qt.y0(164, (b5 & 1) == 0 ? 0 : 1);
                qt.y0(165, ((b5 >> 1) & 1) == 0 ? 0 : 1);
                qt.y0(166, ((b5 >> 2) & 1) == 0 ? 0 : 1);
                qt.y0(167, ((b5 >> 3) & 1) == 0 ? 0 : 1);
                qt.y0(168, ((b5 >> 4) & 1) == 0 ? 0 : 1);
                qt.y0(169, ((b5 >> 5) & 1) == 0 ? 0 : 1);
                qt.y0(170, ((b5 >> 6) & 1) == 0 ? 0 : 1);
            } else if (i10 == 3) {
                qt.y0(171, (b5 & 1) == 0 ? 0 : 1);
                qt.y0(172, ((b5 >> 1) & 1) == 0 ? 0 : 1);
            } else if (i10 == 4) {
                qt.y0(173, (b5 & 1) == 0 ? 0 : 1);
                qt.y0(174, ((b5 >> 1) & 1) == 0 ? 0 : 1);
                qt.y0(175, ((b5 >> 2) & 1) == 0 ? 0 : 1);
                qt.y0(172, ((b5 >> 3) & 1) == 0 ? 0 : 1);
            } else if (i10 == 5) {
                qt.y0(177, (b5 & 1) == 0 ? 0 : 1);
                qt.y0(178, ((b5 >> 1) & 1) == 0 ? 0 : 1);
                qt.y0(179, ((b5 >> 2) & 1) == 0 ? 0 : 1);
                qt.y0(180, ((b5 >> 3) & 1) == 0 ? 0 : 1);
                qt.y0(181, ((b5 >> 4) & 1) == 0 ? 0 : 1);
                qt.y0(182, ((b5 >> 5) & 1) == 0 ? 0 : 1);
                qt.y0(183, ((b5 >> 6) & 1) == 0 ? 0 : 1);
            }
        } else if (b3 == 38) {
            qt.i(bArr[i2 + 2], bArr[i2 + 3], false, 7700);
        } else if (b3 != 1) {
            if (b3 == 2) {
                int i11 = i2 + 2;
                int i12 = bArr[i11] & 255;
                int i13 = i2 + 3;
                if ((bArr[i13] & 255) == 1 && i12 == 4) {
                    o1.u.v();
                }
                if (nt.a()) {
                    byte b6 = bArr[i11];
                    byte b7 = bArr[i13];
                    this.f4694e = b6 & 255;
                    int i14 = nt.f8633a;
                    if (i14 == 253 || i14 == 262462 || i14 == 327998 || i14 == 131097 || i14 == 359 || i14 == 65895 || i14 == 131431 || i14 == 196967 || i14 == 262503 || i14 == 379) {
                        int i15 = 0;
                        while (true) {
                            iArr4 = this.f4695f;
                            if (i15 >= iArr4.length) {
                                break;
                            }
                            int i16 = this.f4694e;
                            if (i16 == iArr4[i15][0]) {
                                if (i16 == 0) {
                                    break;
                                }
                                this.f4693d = i15;
                                break;
                            }
                            i15++;
                        }
                        if ((b7 & 255) != 0) {
                            if (i15 < iArr4.length) {
                                l0.b0.l0(iArr4[i15][1], 0);
                            }
                        } else if (i15 <= iArr4.length) {
                            l0.b0.l0(iArr4[this.f4693d][1], 1);
                        }
                    } else if (i14 == 65561) {
                        int i17 = 0;
                        while (true) {
                            iArr6 = this.f4696g;
                            if (i17 >= iArr6.length) {
                                break;
                            }
                            int i18 = this.f4694e;
                            if (i18 == iArr6[i17][0]) {
                                if (i18 == 0) {
                                    break;
                                }
                                this.f4693d = i17;
                                break;
                            }
                            i17++;
                        }
                        if ((b7 & 255) != 0) {
                            if (i17 < iArr6.length) {
                                l0.b0.l0(iArr6[i17][1], 0);
                            }
                        } else if (i17 <= iArr6.length) {
                            l0.b0.l0(iArr6[this.f4693d][1], 1);
                        }
                    } else if (i14 == 196633 || i14 == 393241) {
                        int i19 = 0;
                        while (true) {
                            iArr5 = this.f4697h;
                            if (i19 >= iArr5.length) {
                                break;
                            }
                            int i20 = this.f4694e;
                            if (i20 == iArr5[i19][0]) {
                                if (i20 == 0) {
                                    break;
                                }
                                this.f4693d = i19;
                                break;
                            }
                            i19++;
                        }
                        if ((b7 & 255) != 0) {
                            if (i19 < iArr5.length) {
                                l0.b0.l0(iArr5[i19][1], 0);
                            }
                        } else if (i19 <= iArr5.length) {
                            l0.b0.l0(iArr5[this.f4693d][1], 1);
                        }
                    }
                }
            } else if (b3 != 3) {
                switch (b3) {
                    case 5:
                        byte b8 = bArr[i2 + 2];
                        byte b9 = bArr[i2 + 3];
                        qt.y0(97, (b8 >> 6) & 3);
                        qt.y0(98, (b8 >> 4) & 3);
                        qt.y0(99, (b8 >> 2) & 3);
                        qt.y0(100, (b8 >> 1) & 1);
                        qt.y0(101, b8 & 1);
                        qt.y0(102, (b9 >> 3) & 1);
                        qt.y0(103, b9 & 1);
                        break;
                    case 6:
                        byte b10 = bArr[i2 + 2];
                        byte b11 = bArr[i2 + 3];
                        qt.y0(104, (b10 >> 7) & 1);
                        qt.y0(105, (b10 >> 5) & 3);
                        qt.y0(106, (b10 >> 4) & 1);
                        qt.y0(107, (b10 >> 3) & 1);
                        qt.y0(108, (b10 >> 1) & 3);
                        qt.y0(109, b10 & 1);
                        qt.y0(110, (b11 >> 7) & 1);
                        qt.y0(111, (b11 >> 5) & 3);
                        qt.y0(112, (b11 >> 4) & 1);
                        qt.y0(113, (b11 >> 3) & 1);
                        qt.y0(114, b11 & 1);
                        break;
                    case 7:
                        qt.y0(184, bArr[i2 + 2] & 1);
                        break;
                    case 8:
                        c3(bArr, i2 + 2, i3 - 2);
                        break;
                    case 9:
                        if (nt.R != 0) {
                            d3(bArr[i2 + 2]);
                        }
                        break;
                    case 10:
                        byte b12 = bArr[i2 + 2];
                        byte b13 = bArr[i2 + 3];
                        qt.y0(117, (b12 >> 7) & 1);
                        qt.y0(118, (b12 >> 6) & 1);
                        qt.y0(119, (b12 >> 5) & 1);
                        qt.y0(120, (b12 >> 4) & 1);
                        qt.y0(121, (b12 >> 3) & 1);
                        qt.y0(122, (b12 >> 2) & 1);
                        qt.y0(123, b12 & 3);
                        qt.y0(124, (b13 >> 7) & 1);
                        qt.y0(125, (b13 >> 6) & 1);
                        qt.y0(126, (b13 >> 5) & 1);
                        qt.y0(127, (b13 >> 4) & 1);
                        qt.y0(128, (b13 >> 3) & 1);
                        qt.y0(129, (b13 >> 2) & 1);
                        qt.y0(185, b13 & 3);
                        break;
                    case 11:
                        qt.y0(130, (((bArr[i2 + 2] & 255) << 8) | (bArr[i2 + 3] & 255)) / 16);
                        break;
                    default:
                        switch (b3) {
                            case 34:
                                if (nt.a()) {
                                    u0.d.R2(a3(bArr[i2 + 2] & 255));
                                    u0.d.S2(a3(bArr[i2 + 3] & 255));
                                    u0.d.T2(a3(bArr[i2 + 4] & 255));
                                    u0.d.U2(a3(bArr[i2 + 5] & 255));
                                }
                                break;
                            case 35:
                                if (nt.a()) {
                                    u0.d.D2(a3(bArr[i2 + 2] & 255));
                                    u0.d.E2(a3(bArr[i2 + 3] & 255));
                                    u0.d.F2(a3(bArr[i2 + 4] & 255));
                                    u0.d.G2(a3(bArr[i2 + 5] & 255));
                                }
                                break;
                            case 36:
                                byte b14 = bArr[i2 + 2];
                                byte b15 = bArr[i2 + 3];
                                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                                    qt.y0(2, (b14 >> 6) & 1);
                                    qt.y0(1, (b14 >> 7) & 1);
                                } else {
                                    qt.y0(2, (b14 >> 7) & 1);
                                    qt.y0(1, (b14 >> 6) & 1);
                                }
                                qt.y0(4, (b14 >> 5) & 1);
                                qt.y0(3, (b14 >> 4) & 1);
                                qt.y0(5, (b14 >> 3) & 1);
                                qt.y0(0, (b15 >> 7) & 1);
                                break;
                            default:
                                switch (b3) {
                                    case 49:
                                        byte b16 = bArr[i2 + 2];
                                        byte b17 = bArr[i2 + 3];
                                        byte b18 = bArr[i2 + 4];
                                        byte b19 = bArr[i2 + 6];
                                        byte b20 = bArr[i2 + 7];
                                        byte b21 = bArr[i2 + 8];
                                        byte b22 = bArr[i2 + 9];
                                        qt.y0(187, (b16 >> 7) & 1);
                                        qt.y0(188, (b16 >> 6) & 1);
                                        qt.y0(189, (b16 >> 5) & 1);
                                        qt.y0(190, (b16 >> 4) & 1);
                                        qt.y0(132, b17 & 255);
                                        int i21 = b18 & 127;
                                        if (((b18 >> 7) & 1) == 1) {
                                            i21 = 255 - i21;
                                        }
                                        qt.y0(133, i21);
                                        qt.y0(134, ((b19 & 255) << 24) | ((b20 & 255) << 16) | ((b21 & 255) << 8) | (b22 & 255));
                                        break;
                                    case 50:
                                        byte b23 = bArr[i2 + 2];
                                        byte b24 = bArr[i2 + 3];
                                        byte b25 = bArr[i2 + 4];
                                        byte b26 = bArr[i2 + 5];
                                        byte b27 = bArr[i2 + 6];
                                        int i22 = ((b23 & 255) << 8) | (b24 & 255);
                                        qt.y0(135, i22);
                                        qt.y0(1032, i22);
                                        qt.y0(136, ((b25 & 255) << 8) | (b26 & 255));
                                        qt.y0(137, 255 & b27);
                                        break;
                                    case 51:
                                        int i23 = i2 + 2;
                                        byte b28 = bArr[i23];
                                        byte b29 = bArr[i23 + 1];
                                        byte b30 = bArr[i23 + 2];
                                        byte b31 = bArr[i23 + 3];
                                        byte b32 = bArr[i23 + 4];
                                        byte b33 = bArr[i23 + 5];
                                        byte b34 = bArr[i23 + 6];
                                        byte b35 = bArr[i23 + 7];
                                        byte b36 = bArr[i23 + 10];
                                        byte b37 = bArr[i23 + 11];
                                        byte b38 = bArr[i23 + 12];
                                        byte b39 = bArr[i23 + 13];
                                        int i24 = ((b28 & 255) << 8) | (b29 & 255);
                                        qt.y0(138, i24);
                                        int i25 = ((b30 & 255) << 8) | (b31 & 255);
                                        qt.y0(139, i25);
                                        int i26 = ((b32 & 255) << 8) | (b33 & 255);
                                        qt.y0(140, i26);
                                        int i27 = (255 & b35) | ((b34 & 255) << 8);
                                        qt.y0(141, i27);
                                        o1.x[] xVarArr = nt.f8643f;
                                        o1.x.C(xVarArr, 1049, new int[]{8, ((i24 * 4) / 10) | GLES10.GL_MODULATE}, null, null);
                                        o1.x.C(xVarArr, 1049, new int[]{8, ((i25 * 4) / 10) | GLES10.GL_TEXTURE_ENV_MODE}, null, null);
                                        o1.x.C(xVarArr, 1049, new int[]{8, 8960 | ((i26 * 4) / 10)}, null, null);
                                        o1.x.C(xVarArr, 1049, new int[]{8, ((i27 * 4) / 10) | 9216}, null, null);
                                        qt.y0(142, b36 & 1);
                                        qt.y0(143, (b36 >> 1) & 1);
                                        qt.y0(144, (b36 >> 2) & 1);
                                        qt.y0(145, b37 & 1);
                                        qt.y0(146, (b37 >> 1) & 1);
                                        qt.y0(147, (b37 >> 2) & 1);
                                        qt.y0(148, b38 & 1);
                                        qt.y0(149, (b38 >> 1) & 1);
                                        qt.y0(150, (b38 >> 2) & 1);
                                        qt.y0(151, b39 & 1);
                                        qt.y0(152, (b39 >> 1) & 1);
                                        qt.y0(153, (b39 >> 2) & 1);
                                        break;
                                }
                                break;
                        }
                        break;
                }
            } else {
                byte b40 = bArr[i2 + 2];
                byte b41 = bArr[i2 + 3];
                int i28 = i2 + 4;
                byte b42 = bArr[i28];
                int i29 = i2 + 5;
                byte b43 = bArr[i29];
                byte b44 = bArr[i2 + 6];
                qt.y0(10, (b40 >> 7) & 1);
                qt.y0(11, (b40 >> 6) & 1);
                int[] iArr7 = new int[1];
                iArr7[0] = ((b40 >> 5) & 1) == 0 ? 1 : 0;
                qt.y0(12, iArr7);
                qt.y0(16, (b40 >> 4) & 1);
                qt.y0(54, (b40 >> 3) & 1);
                int i30 = (b41 >> 4) & 1;
                if (i30 == 0) {
                    qt.y0(21, b40 & 7);
                } else if (i30 == 1) {
                    qt.y0(21, 8);
                }
                qt.y0(52, (b41 >> 6) & 1);
                qt.y0(62, (b41 >> 5) & 1);
                switch (b41 & DhcpPacket.DHCP_DOMAIN_NAME & 255) {
                    case 1:
                        i5 = 0;
                        i6 = 0;
                        i7 = 0;
                        i8 = 0;
                        i9 = 1;
                        break;
                    case 2:
                        i9 = 0;
                        i6 = 0;
                        i7 = 0;
                        i8 = 0;
                        i5 = 1;
                        break;
                    case 3:
                        i9 = 0;
                        i5 = 0;
                        i6 = 0;
                        i7 = 0;
                        i8 = 1;
                        break;
                    case 4:
                        i9 = 0;
                        i5 = 0;
                        i6 = 0;
                        i7 = 1;
                        i8 = i7;
                        break;
                    case 5:
                        i9 = 0;
                        i5 = 0;
                        i6 = 0;
                        i8 = 0;
                        i7 = 1;
                        break;
                    case 6:
                        i9 = 0;
                        i5 = 0;
                        i8 = 0;
                        i6 = 1;
                        i7 = 1;
                        break;
                    case 7:
                        i9 = 0;
                        i5 = 0;
                        i7 = 0;
                        i8 = 0;
                        i6 = 1;
                        break;
                    case 8:
                        i9 = 0;
                        i5 = 0;
                        i7 = 0;
                        i6 = 1;
                        i8 = 1;
                        break;
                    case 9:
                        i9 = 0;
                        i5 = 0;
                        i6 = 1;
                        i7 = i6;
                        i8 = i7;
                        break;
                    default:
                        i9 = 0;
                        i5 = 0;
                        i6 = 0;
                        i7 = i6;
                        i8 = i7;
                        break;
                }
                qt.y0(49, i9);
                qt.y0(15, i5);
                qt.y0(18, i6);
                qt.y0(19, i7);
                qt.y0(20, i8);
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    b42 = bArr[i29];
                    b43 = bArr[i28];
                }
                int i31 = b42 & 255;
                if (i31 != 0 && i31 != 255) {
                    switch (i31) {
                        case 29:
                            qt.y0(27, 160);
                            break;
                        case 30:
                            qt.y0(27, i31);
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
                            if (i31 >= 1 && i31 <= 28) {
                                qt.y0(27, (i31 * 5) + 165);
                            }
                            break;
                    }
                } else {
                    qt.y0(27, i31);
                }
                int i32 = b43 & 255;
                if (i32 != 0 && i32 != 255) {
                    switch (i32) {
                        case 29:
                            qt.y0(28, 160);
                            break;
                        case 30:
                            qt.y0(28, i32);
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
                            if (i32 >= 1 && i32 <= 28) {
                                qt.y0(28, (i32 * 5) + 165);
                            }
                            break;
                    }
                } else {
                    qt.y0(28, i32);
                }
                qt.y0(29, (b44 >> 4) & 15);
                qt.y0(30, b44 & DhcpPacket.DHCP_DOMAIN_NAME);
                if (nt.a()) {
                    byte b45 = bArr[i2 + 7];
                    u0.d.A3((b45 & 128) > 0 ? 1000 - ((((~(b45 & 255)) + 1) & 255) * 10) : ((b45 & 255) * 10) + 1000);
                }
            }
        } else if (nt.a()) {
            byte b46 = bArr[i2 + 2];
            byte b47 = bArr[i2 + 3];
            this.f4694e = (b46 | 128) & 255;
            int i33 = nt.f8633a;
            if (i33 == 65561) {
                int i34 = 0;
                while (true) {
                    iArr3 = this.f4696g;
                    if (i34 >= iArr3.length) {
                        break;
                    }
                    int i35 = this.f4694e;
                    if (i35 == iArr3[i34][0]) {
                        if (i35 == 0) {
                            break;
                        }
                        this.f4693d = i34;
                        break;
                    }
                    i34++;
                }
                if ((b47 & 255) != 0) {
                    if (i34 < iArr3.length) {
                        l0.b0.l0(iArr3[i34][1], 0);
                    }
                } else if (i34 <= iArr3.length) {
                    l0.b0.l0(iArr3[this.f4693d][1], 1);
                }
            } else if (i33 == 196633 || i33 == 393241) {
                int i36 = 0;
                while (true) {
                    iArr = this.f4697h;
                    if (i36 >= iArr.length) {
                        break;
                    }
                    int i37 = this.f4694e;
                    if (i37 == iArr[i36][0]) {
                        if (i37 == 0) {
                            break;
                        }
                        this.f4693d = i36;
                        break;
                    }
                    i36++;
                }
                if ((b47 & 255) != 0) {
                    if (i36 < iArr.length) {
                        l0.b0.l0(iArr[i36][1], 0);
                    }
                } else if (i36 <= iArr.length) {
                    l0.b0.l0(iArr[this.f4693d][1], 1);
                }
            } else {
                int i38 = 0;
                while (true) {
                    iArr2 = this.f4695f;
                    if (i38 >= iArr2.length) {
                        break;
                    }
                    int i39 = this.f4694e;
                    if (i39 == iArr2[i38][0]) {
                        if (i39 == 0) {
                            break;
                        }
                        this.f4693d = i38;
                        break;
                    }
                    i38++;
                }
                int i40 = this.f4694e;
                if (i40 != 134) {
                    if (i40 != 135) {
                        if ((b47 & 255) == 0) {
                            int i41 = this.f4693d;
                            if (i41 < iArr2.length) {
                                i4 = 255;
                                if (i41 != 255) {
                                    l0.b0.l0(iArr2[i41][1], 1);
                                    l0.b0.o0(this.f4699j);
                                    this.f4698i = (byte) 0;
                                }
                            } else {
                                i4 = 255;
                            }
                            this.f4693d = i4;
                        } else if (i38 < iArr2.length && (b2 = this.f4698i) == 0) {
                            this.f4698i = (byte) (b2 + 1);
                            l0.b0.l0(iArr2[i38][1], 0);
                            l0.b0.a(this.f4699j);
                        }
                    } else if ((b47 & 255) == 1) {
                        int i42 = h0.c.E;
                        if (i42 == 3 || i42 == 4 || i42 == 5) {
                            l0.b0.l0(26, 0);
                            l0.b0.l0(26, 1);
                        } else {
                            l0.b0.l0(12, 0);
                            l0.b0.l0(12, 1);
                        }
                    }
                } else if ((255 & b47) == 1) {
                    if (h0.c.E != 4) {
                        l0.b0.l0(13, 0);
                        l0.b0.l0(13, 1);
                    } else {
                        l0.b0.l0(18, 0);
                        l0.b0.l0(18, 1);
                    }
                }
            }
        }
        super.U2(bArr, i2, i3);
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17379f.d(this.f4700k);
        u0.c.f17386m.d(this.f4702m);
        l0.b0.p0(this.f4703n);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 192) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 1) {
            if (T2(iArr, 2)) {
                z.k.s(227, 130, 2, iArr[0], iArr[1]);
            }
            return;
        }
        if (i2 == 96) {
            if (T2(iArr, 1)) {
                z.k.s(227, -121, 1, iArr[0]);
                return;
            }
            return;
        }
        switch (i2) {
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
                e3(134, (byte) 10, iArr);
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
        }
    }

    public final int a3(int i2) {
        if (n0.j4.f16464b == 21) {
            return (i2 == 0 || i2 >= 8) ? 10 : 0;
        }
        if (i2 == 0) {
            return 10;
        }
        return ((i2 * 10) / 7) - 1;
    }

    public final void c3(byte[] bArr, int i2, int i3) {
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
        if (qt.B0(115, string, this.f4704o)) {
            this.f4704o = string;
        }
    }

    public final void d3(int i2) {
        int i3;
        qt.y0(116, i2);
        if (i2 == 0) {
            if (this.f4691b == 1 && (i3 = this.f4692c) != 12) {
                u0.b.f17311c.c(i3);
            }
            this.f4691b = 0;
            return;
        }
        if (i2 == 1 || i2 == 2 || i2 == 3 || i2 == 4) {
            int i4 = h0.c.G;
            if (i4 != 0 || this.f4691b != 0) {
                if (i4 == 0 || this.f4691b != 0) {
                    return;
                }
                z.k.s(227, 186, 2, 3, 0);
                return;
            }
            this.f4691b = 1;
            this.f4692c = u0.b.D;
            if (u0.b.f17332j != 0) {
                u0.d.M(0);
            }
            if (u0.b.D == 12 && this.f4691b != 0 && y0.f.f18055i != 0) {
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

    public final void e3(int i2, byte b2, int... iArr) {
        int i3 = b2 & 255;
        if (i3 < iArr.length) {
            throw new IllegalArgumentException("params data length > size!");
        }
        int i4 = i3 + 4;
        int[] iArr2 = new int[i4];
        iArr2[0] = -29;
        iArr2[1] = b2;
        iArr2[2] = (byte) i2;
        int length = iArr.length;
        for (int i5 = 0; i5 < length; i5++) {
            iArr2[3 + i5] = (byte) (iArr[i5] & 255);
        }
        for (int i6 = 3 + length; i6 < i4; i6++) {
            iArr2[i6] = 0;
        }
        z.k.s(iArr2);
    }
}
