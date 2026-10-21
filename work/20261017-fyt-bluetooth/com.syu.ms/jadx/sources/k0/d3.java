package k0;

import android.net.ProxyProperties;
import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import app.App;
import java.io.UnsupportedEncodingException;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public class d3 extends lt {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static int f4316g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static int f4317h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static int f4318i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static int f4319j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static int f4320k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static int f4321l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static int f4322m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static int f4323n = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static int f4324o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static int f4325p = 0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static int f4326q = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static int f4327r = 0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static int f4328s = -1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f4329b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f4332e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f4330c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f4331d = {new int[]{7, 29}, new int[]{17, 2}, new int[]{18, 4}, new int[]{19, 3}, new int[]{20, 7}, new int[]{21, 8}, new int[]{22, 12}, new int[]{10, 26}, new int[]{23, 3}, new int[]{24, 4}, new int[]{129, 7}, new int[]{130, 8}, new int[]{80, 18}, new int[]{33, 5}, new int[]{34, 11}, new int[]{35, 18}, new int[]{8, 6}, new int[]{48, 18}, new int[]{2, 9}, new int[]{145, 40}, new int[]{146, 41}, new int[]{147, 42}, new int[]{148, 43}, new int[]{149, 44}, new int[]{150, 45}, new int[]{151, 3}, new int[]{152, 4}, new int[]{153, 21}, new int[]{154, 14}, new int[]{155, 5}, new int[]{156, 3}, new int[]{157, 4}, new int[]{158, 55}, new int[]{159, 1}, new int[]{160, 2}, new int[]{161, 54}, new int[]{162, 29}, new int[]{163, 6}, new int[]{164, 12}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f4333f = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d3.this.c3(u0.b.K3);
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
        mtVar.f8320o = 0;
        u0.c.f17397x.a(this.f4333f, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        String str;
        byte b2 = bArr[i2];
        int i4 = 7;
        if (b2 == 32) {
            int i5 = i2 + 2;
            int i6 = bArr[i5] & 255;
            int i7 = i2 + 3;
            int i8 = bArr[i7] & 255;
            if (i6 == 32 && i8 == 1) {
                nt.f8643f[115].s(115, new int[]{1}, null, null);
            }
            if (nt.a()) {
                byte b3 = bArr[i5];
                byte b4 = bArr[i7];
                this.f4330c = b3 & 255;
                int i9 = 0;
                while (true) {
                    iArr = this.f4331d;
                    if (i9 >= iArr.length) {
                        break;
                    }
                    int i10 = this.f4330c;
                    if (i10 == iArr[i9][0]) {
                        if (i10 == 0) {
                            break;
                        }
                        this.f4329b = i9;
                        break;
                    }
                    i9++;
                }
                int i11 = this.f4330c;
                if (i11 == 35 || i11 == 48 || i11 == 80) {
                    if ((b4 & 255) == 1) {
                        int i12 = h0.c.E;
                        if (i12 != 3 && i12 != 5) {
                            l0.b0.l0(18, 0);
                            l0.b0.l0(18, 1);
                            return;
                        } else {
                            l0.b0.l0(26, 0);
                            l0.b0.l0(26, 1);
                        }
                    }
                    return;
                }
                if (i11 == 129) {
                    if ((b4 & 255) != 0) {
                        l0.b0.l0(7, 0);
                        l0.b0.l0(7, 1);
                        return;
                    }
                    return;
                }
                if (i11 == 130) {
                    if ((b4 & 255) != 0) {
                        l0.b0.l0(8, 0);
                        l0.b0.l0(8, 1);
                        return;
                    }
                    return;
                }
                int i13 = b4 & 255;
                if (i13 == 1) {
                    if (i9 < iArr.length) {
                        l0.b0.l0(iArr[i9][1], 0);
                        return;
                    }
                    return;
                } else {
                    if (i13 == 0) {
                        int i14 = this.f4329b;
                        if (i14 < iArr.length && i14 != 255) {
                            l0.b0.l0(iArr[i14][1], 1);
                        }
                        this.f4329b = 255;
                        return;
                    }
                    return;
                }
            }
            return;
        }
        if (b2 == 33) {
            byte b5 = bArr[i2 + 2];
            qt.y0(10, (b5 >> 7) & 1);
            qt.y0(11, (b5 >> 6) & 1);
            int[] iArr2 = new int[1];
            iArr2[0] = (b5 & 32) == 0 ? 0 : 1;
            qt.y0(12, iArr2);
            qt.y0(13, (b5 >> 3) & 1);
            qt.y0(14, (b5 >> 2) & 1);
            qt.y0(16, (b5 >> 0) & 1);
            byte b6 = bArr[i2 + 3];
            qt.y0(18, (b6 >> 7) & 1);
            qt.y0(19, (b6 >> 6) & 1);
            qt.y0(20, (b6 >> 5) & 1);
            int[] iArr3 = new int[1];
            iArr3[0] = (b6 & 224) == 0 ? 0 : 1;
            qt.y0(49, iArr3);
            int i15 = b6 & DhcpPacket.DHCP_DOMAIN_NAME;
            if (i15 > 9) {
                i15 = 9;
            }
            qt.y0(21, i15);
            int i16 = i2 + 4;
            byte b7 = bArr[i16];
            int i17 = i2 + 5;
            byte b8 = bArr[i17];
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                b7 = bArr[i17];
                b8 = bArr[i16];
            }
            int i18 = i2 + 6;
            if ((bArr[i18] & 2) == 0) {
                if (b7 == -1) {
                    qt.y0(27, -3);
                } else if (b7 != 0) {
                    qt.y0(27, (b7 & 255) * 5);
                } else {
                    qt.y0(27, -2);
                }
            }
            if ((bArr[i18] & 2) == 0) {
                if (b8 == -1) {
                    qt.y0(28, -3);
                } else if (b8 != 0) {
                    qt.y0(28, (b8 & 255) * 5);
                } else {
                    qt.y0(28, -2);
                }
            }
            byte b9 = bArr[i18];
            qt.y0(65, (b9 >> 7) & 1);
            qt.y0(53, (b9 >> 3) & 1);
            qt.y0(37, (b9 >> 0) & 1);
            int i19 = (bArr[i2 + 8] >> 6) & 3;
            qt.y0(52, i19 <= 2 ? i19 : 2);
            return;
        }
        if (b2 == 41) {
            qt.i(bArr[i2 + 2], bArr[i2 + 3], false, 5450);
            return;
        }
        if (b2 == 56) {
            byte b10 = bArr[i2 + 2];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b10 >> 6) & 1);
                qt.y0(2, (b10 >> 7) & 1);
            } else {
                qt.y0(1, (b10 >> 7) & 1);
                qt.y0(2, (b10 >> 6) & 1);
            }
            qt.y0(3, (b10 >> 5) & 1);
            qt.y0(4, (b10 >> 4) & 1);
            qt.y0(5, (b10 >> 3) & 1);
            qt.y0(0, (b10 >> 1) & 1);
            qt.y0(107, (bArr[i2 + 3] >> 7) & 1);
            byte b11 = bArr[i2 + 4];
            int i20 = ((b11 & 224) >> 5) & 255;
            if (i20 < 0) {
                i4 = 0;
            } else if (i20 <= 7) {
                i4 = i20;
            }
            qt.y0(119, i4);
            qt.y0(108, (b11 >> 4) & 1);
            qt.y0(117, (b11 >> 3) & 1);
            byte b12 = bArr[i2 + 5];
            qt.y0(113, ((b12 & 192) >> 6) & 255);
            qt.y0(110, ((b12 & 48) >> 4) & 255);
            qt.y0(112, (b12 >> 3) & 1);
            qt.y0(152, ((b12 & 6) >> 1) & 255);
            qt.y0(131, (b12 >> 0) & 1);
            byte b13 = bArr[i2 + 6];
            qt.y0(153, (b13 >> 7) & 1);
            qt.y0(151, (b13 >> 6) & 1);
            qt.y0(129, (b13 >> 5) & 1);
            qt.y0(111, (b13 >> 4) & 1);
            return;
        }
        if (b2 == 58) {
            int i21 = i2 + 3;
            qt.y0(114, bArr[i21] & 255);
            int i22 = bArr[i21] & 255;
            if (i22 == 253) {
                f4328s = -1;
            }
            int i23 = i2 + 2;
            int i24 = bArr[i23] & 255;
            qt.y0(140, bArr[i23] & 255);
            if (i22 == 252) {
                if (f4328s != i24) {
                    f4328s = i24;
                    if (i24 > 0) {
                        for (int i25 = 0; i25 < f4328s; i25++) {
                            if (g3()) {
                                try {
                                    z.k.s(227, -121, 2, (byte) i25, 0);
                                    Thread.sleep(100L);
                                } catch (InterruptedException unused) {
                                }
                            } else {
                                z.k.s(227, -121, 2, (byte) i25, 1);
                                Thread.sleep(100L);
                            }
                        }
                    }
                }
                f4328s = -1;
            }
            try {
                str = new String(bArr, i2 + 4, i3 - 4, "Windows-936");
            } catch (UnsupportedEncodingException e2) {
                e2.printStackTrace();
                str = ProxyProperties.LOCAL_EXCL_LIST;
            }
            qt.B0(165, str, this.f4332e);
            this.f4332e = str;
            return;
        }
        if (b2 == 61) {
            int i26 = bArr[i2 + 2] & 255;
            f4322m = i26;
            qt.y0(146, i26);
            int i27 = bArr[i2 + 3] & 255;
            f4323n = i27;
            qt.y0(147, i27);
            int i28 = bArr[i2 + 4] & 255;
            f4324o = i28;
            qt.y0(148, i28);
            int i29 = bArr[i2 + 5] & 255;
            f4325p = i29;
            qt.y0(149, i29);
            int i30 = bArr[i2 + 6] & 255;
            f4326q = i30;
            qt.y0(150, i30);
            int i31 = bArr[i2 + 7] & 255;
            f4327r = i31;
            qt.y0(117, i31);
            int i32 = bArr[i2 + 8] & 255;
            f4316g = i32;
            qt.y0(120, i32);
            int i33 = bArr[i2 + 9] & 255;
            f4317h = i33;
            qt.y0(121, i33);
            int i34 = bArr[i2 + 10] & 255;
            f4318i = i34;
            qt.y0(122, i34);
            int i35 = bArr[i2 + 11] & 255;
            f4319j = i35;
            qt.y0(123, i35);
            int i36 = bArr[i2 + 12] & 255;
            f4320k = i36;
            qt.y0(124, i36);
            int i37 = bArr[i2 + 13] & 255;
            f4321l = i37;
            qt.y0(125, i37);
            return;
        }
        switch (b2) {
            case 50:
                if (nt.a()) {
                    u0.d.R2(a3(bArr[i2 + 3] & 255));
                    int i38 = i2 + 4;
                    u0.d.S2(a3(bArr[i38] & 255));
                    u0.d.T2(a3(bArr[i38] & 255));
                    u0.d.U2(a3(bArr[i2 + 5] & 255));
                    int i39 = i2 + 6;
                    int i40 = bArr[i39] & 255;
                    int i41 = i2 + 7;
                    int i42 = bArr[i41] & 255;
                    int i43 = bArr[i41] & 255;
                    int i44 = i2 + 8;
                    int i45 = bArr[i44] & 255;
                    if (u0.b.f17347o == 0) {
                        if (l0.c0.f13013g != i40 || l0.c0.f13014h != i42 || l0.c0.f13015i != i43 || l0.c0.f13016j != i45) {
                            if (i40 < 5 || i42 < 5 || i43 < 5 || i45 < 5) {
                                u0.d.C2(1);
                            } else if (u0.b.f17350p == 1) {
                                l0.c0.f13017k = 2;
                                l0.b0.b(l0.c0.f13018l);
                            }
                        }
                        l0.c0.f13013g = i40;
                        l0.c0.f13014h = i42;
                        l0.c0.f13015i = i43;
                        l0.c0.f13016j = i45;
                    }
                    u0.d.D2(a3(bArr[i39] & 255));
                    u0.d.E2(a3(bArr[i41] & 255));
                    u0.d.F2(a3(bArr[i41] & 255));
                    u0.d.G2(a3(bArr[i44] & 255));
                }
                break;
            case 51:
                int i46 = ((bArr[i2 + 8] & 255) << 16) | ((bArr[i2 + 9] & 255) << 8) | (bArr[i2 + 10] & 255);
                qt.y0(102, ((bArr[i2 + 2] & 255) << 8) | (bArr[i2 + 3] & 255));
                qt.y0(103, (bArr[i2 + 5] & 255) | ((bArr[i2 + 4] & 255) << 8));
                qt.y0(98, i46);
                break;
            case 52:
                qt.y0(104, ((bArr[i2 + 2] & 255) << 8) | (bArr[i2 + 3] & 255));
                qt.y0(99, ((bArr[i2 + 4] & 255) << 8) | (bArr[i2 + 5] & 255));
                qt.y0(100, (bArr[i2 + 7] & 255) | ((bArr[i2 + 6] & 255) << 8));
                break;
            case 53:
                qt.y0(101, ((bArr[i2 + 2] & 255) << 8) | (bArr[i2 + 3] & 255));
                qt.y0(105, ((bArr[i2 + 4] & 255) << 8) | (bArr[i2 + 5] & 255));
                qt.y0(106, (bArr[i2 + 7] & 255) | ((bArr[i2 + 6] & 255) << 8));
                break;
            case 54:
                if (nt.a()) {
                    byte b14 = bArr[i2 + 2];
                    int i47 = b14 & 128;
                    int i48 = b14 & 127;
                    u0.d.A3(i47 != 0 ? 1000 - (i48 * 10) : (i48 * 10) + 1000);
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17397x.d(this.f4333f);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 166) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    /* JADX WARN: Code duplicated, block: B:260:0x034a  */
    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        int i3;
        if (i2 >= 256) {
            switch (i2) {
                case 256:
                    if (iArr != null && iArr.length > 0) {
                        if (iArr[0] != 0) {
                            iArr[0] = 1;
                        }
                        e3(2, iArr[0]);
                        break;
                    }
                    break;
                case 257:
                    if (iArr != null && iArr.length > 0) {
                        if (iArr[0] != 0) {
                            iArr[0] = 1;
                        }
                        e3(3, iArr[0]);
                        break;
                    }
                    break;
                case 258:
                    if (iArr != null && iArr.length > 0) {
                        if (iArr[0] != 0) {
                            iArr[0] = 1;
                        }
                        e3(1, iArr[0]);
                        break;
                    }
                    break;
                case 259:
                    if (iArr != null && iArr.length > 0) {
                        if (iArr[0] != 0) {
                            iArr[0] = 1;
                        }
                        e3(5, iArr[0]);
                        break;
                    }
                    break;
                case 260:
                    if (iArr != null && iArr.length > 0) {
                        if (iArr[0] != 0) {
                            iArr[0] = 1;
                        }
                        e3(6, iArr[0]);
                        break;
                    }
                    break;
                case 261:
                    if (iArr != null && iArr.length > 0) {
                        if (iArr[0] != 0) {
                            iArr[0] = 1;
                        }
                        e3(7, iArr[0]);
                        break;
                    }
                    break;
                case 262:
                    if (iArr != null && iArr.length > 0) {
                        if (iArr[0] != 0) {
                            iArr[0] = 1;
                        }
                        e3(7, iArr[0]);
                        break;
                    }
                    break;
                case 263:
                    if (iArr != null && iArr.length > 0) {
                        if (iArr[0] != 0) {
                            iArr[0] = 1;
                        }
                        e3(6, iArr[0]);
                        break;
                    }
                    break;
                case 264:
                    if (iArr != null && iArr.length > 0) {
                        if (iArr[0] != 0) {
                            iArr[0] = 1;
                        }
                        e3(8, iArr[0]);
                        break;
                    }
                    break;
                case 265:
                    if (iArr != null && iArr.length > 0) {
                        if (iArr[0] != 0) {
                            iArr[0] = 1;
                        }
                        iArr[0] = iArr[0] + 1;
                        e3(10, iArr[0]);
                        break;
                    }
                    break;
                case 266:
                    if (iArr != null && iArr.length > 0) {
                        if (iArr[0] != 0) {
                            iArr[0] = 1;
                        }
                        iArr[0] = iArr[0] + 1;
                        e3(4, iArr[0]);
                        break;
                    }
                    break;
                case 267:
                    if (iArr != null && iArr.length > 0) {
                        if (iArr[0] != 0) {
                            iArr[0] = 1;
                        }
                        iArr[0] = iArr[0] + 1;
                        e3(5, iArr[0]);
                        break;
                    }
                    break;
                case 268:
                    if (iArr != null && iArr.length > 0) {
                        if (iArr[0] < 0) {
                            iArr[0] = 0;
                        }
                        if (iArr[0] > 2) {
                            iArr[0] = 2;
                        }
                        e3(9, iArr[0]);
                        break;
                    }
                    break;
                case i.a.Theme_findOnPageNextDrawable /* 269 */:
                    if (iArr != null && iArr.length > 0) {
                        if (iArr[0] != 0) {
                            iArr[0] = 1;
                        }
                        e3(11, iArr[0]);
                        break;
                    }
                    break;
            }
        }
        if (i2 == 0) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (iArr[0] != 0) {
                iArr[0] = 1;
            }
            f3(2, iArr[0]);
        }
        if (i2 == 1) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (iArr[0] != 0) {
                iArr[0] = 1;
            }
            f3(1, iArr[0]);
            return;
        }
        if (i2 == 2) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (iArr[0] != 0) {
                iArr[0] = 1;
            }
            f3(5, iArr[0]);
            return;
        }
        if (i2 == 3) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (iArr[0] != 0) {
                iArr[0] = 1;
            }
            f3(15, iArr[0]);
            return;
        }
        if (i2 == 4) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (iArr[0] != 0) {
                iArr[0] = 1;
            }
            f3(8, iArr[0]);
            return;
        }
        if (i2 == 5) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            f3(6, iArr[0]);
            return;
        }
        if (i2 == 7) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            f3(7, iArr[0]);
            return;
        }
        if (i2 == 8) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            f3(4, iArr[0]);
            return;
        }
        if (i2 == 24) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (iArr[0] == 1) {
                i3 = 0;
            } else if (iArr[0] == 2) {
                i3 = 65;
            } else if (iArr[0] == 3) {
                i3 = 34;
            } else {
                i3 = 0;
            }
            z.k.s(227, -126, 6, 0, 0, 0, (byte) i3, 0, 0);
            return;
        }
        if (i2 == 25) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            f4316g = iArr[0];
            h3();
            return;
        }
        if (i2 == 35) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            f4321l = iArr[0];
            h3();
            return;
        }
        if (i2 == 36) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            f4322m = iArr[0];
            b3();
            return;
        }
        switch (i2) {
            case 13:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    f3(16, iArr[0]);
                    break;
                }
                break;
            case 15:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    f3(14, iArr[0]);
                    break;
                }
                break;
            case 20:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    f3(13, iArr[0]);
                    break;
                }
                break;
            case 27:
                if (iArr != null && iArr.length > 0) {
                    f4317h = iArr[0];
                    h3();
                    break;
                }
                break;
            case 29:
                if (iArr != null && iArr.length > 0) {
                    f4318i = iArr[0];
                    h3();
                    break;
                }
                break;
            case 31:
                if (iArr != null && iArr.length > 0) {
                    f4319j = iArr[0];
                    h3();
                    break;
                }
                break;
            case 33:
                if (iArr != null && iArr.length > 0) {
                    f4320k = iArr[0];
                    h3();
                    break;
                }
                break;
            case 38:
                if (iArr != null && iArr.length > 0) {
                    f4323n = iArr[0];
                    b3();
                    break;
                }
                break;
            case 40:
                if (iArr != null && iArr.length > 0) {
                    f4324o = iArr[0];
                    b3();
                    break;
                }
                break;
            case 42:
                if (iArr != null && iArr.length > 0) {
                    f4325p = iArr[0];
                    b3();
                    break;
                }
                break;
            case 44:
                if (iArr != null && iArr.length > 0) {
                    f4326q = iArr[0];
                    b3();
                    break;
                }
                break;
            default:
                switch (i2) {
                    case 46:
                        if (iArr != null && iArr.length > 0) {
                            f4327r = iArr[0];
                            b3();
                            break;
                        }
                        break;
                    case 47:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            f3(12, iArr[0]);
                            break;
                        }
                        break;
                    case 48:
                        if (iArr != null && iArr.length > 0) {
                            if (!g3()) {
                                z.k.s(227, -121, 2, (byte) iArr[0], 1);
                            } else {
                                z.k.s(227, -121, 2, (byte) iArr[0], 0);
                            }
                            break;
                        }
                        break;
                    case 49:
                        if (iArr != null && iArr.length > 0) {
                            z.k.s(227, -126, 6, 0, 0, 0, (byte) iArr[0], 0, 0);
                            break;
                        }
                        break;
                    case 50:
                        if (iArr != null && iArr.length > 0) {
                            z.k.s(227, -119, 7, (byte) (iArr[0] == 0 ? 160 : iArr[0] == 1 ? 96 : 0), 0, 0, 0, 0, 0, 0);
                            break;
                        }
                        break;
                    case 51:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] < 0) {
                                iArr[0] = 0;
                            } else if (iArr[0] > 2) {
                                iArr[0] = 2;
                            }
                            f3(10, iArr[0]);
                            break;
                        }
                        break;
                    case 52:
                        if (iArr != null && iArr.length > 0) {
                            iArr[0] = iArr[0] + 1;
                            if (iArr[0] < 1) {
                                iArr[0] = 1;
                            } else if (iArr[0] > 4) {
                                iArr[0] = 4;
                            }
                            f3(9, iArr[0]);
                            break;
                        }
                        break;
                    case 53:
                        if (iArr != null && iArr.length > 0) {
                            z.k.s(227, -112, 4, (byte) iArr[0], 0, 0, 0);
                            break;
                        }
                        break;
                }
                break;
        }
    }

    public final int a3(int i2) {
        return i2 * 2;
    }

    public final void b3() {
        z.k.s(227, -119, 7, 80, (byte) f4322m, (byte) f4323n, (byte) f4324o, (byte) f4325p, (byte) f4326q, (byte) f4327r);
    }

    public final void c3(int i2) {
        z.k.s(227, -128, 2, 11, (byte) i2);
    }

    public final void e3(int i2, int i3) {
        z.k.s(227, -118, 2, (byte) i2, (byte) i3);
    }

    public final void f3(int i2, int i3) {
        z.k.s(227, -128, 2, (byte) i2, (byte) i3);
    }

    public final boolean g3() {
        Locale locale = App.c().getResources().getConfiguration().locale;
        return locale.getCountry().equals("CN") || locale.getCountry().equals("TW");
    }

    public final void h3() {
        z.k.s(227, -119, 7, -112, (byte) f4316g, (byte) f4317h, (byte) f4318i, (byte) f4319j, (byte) f4320k, (byte) f4321l);
    }
}
