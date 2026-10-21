package k0;

import android.net.dhcp.DhcpPacket;
import android.os.Process;
import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class y2 extends lt {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static int f12334i;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f12339f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int[][] f12335b = new int[5][];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int[][] f12336c = new int[30][];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public o1.g0 f12337d = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f12338e = 1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f12340g = 255;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int[][] f12341h = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, -1}, new int[]{4, 12}, new int[]{5, 18}, new int[]{6, 26}, new int[]{7, -1}, new int[]{8, 27}, new int[]{9, 28}, new int[]{12, 2}, new int[]{13, 3}, new int[]{14, 4}, new int[]{15, 29}, new int[]{16, 6}};

    public static int a3(int i2) {
        if (i2 == 0) {
            return 15;
        }
        if (i2 == 1) {
            return 0;
        }
        if (i2 == 2) {
            return 3;
        }
        if (i2 != 3) {
            return i2 != 4 ? 15 : 9;
        }
        return 6;
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
        mtVar.f8320o = 0;
        this.f12337d.a();
        b3(this.f12337d.b(1, 0));
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2 + 1];
        if (b2 == -126) {
            qt.y0(13, bArr[i2 + 2] & 8);
            int i4 = i2 + 3;
            qt.y0(11, bArr[i4] & 64);
            qt.y0(65, bArr[i4] & 16);
            qt.y0(16, bArr[i4] & 32);
            int i5 = i2 + 6;
            qt.y0(20, bArr[i5] & 64);
            qt.y0(19, bArr[i5] & 32);
            qt.y0(18, bArr[i5] & 16);
            qt.y0(21, bArr[i5] & DhcpPacket.DHCP_DOMAIN_NAME);
            int i6 = i2 + 4;
            int i7 = bArr[i6] & 255;
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                i7 = bArr[i2 + 5] & 255;
            }
            if (i7 == 1) {
                qt.y0(27, -2);
            } else if (i7 == 255) {
                qt.y0(27, -3);
            } else if (i7 == 0 || i7 < 116 || i7 > 144) {
                qt.y0(27, -1);
            } else {
                qt.y0(27, (i7 * 5) - 400);
            }
            int i8 = (SystemProperties.getBoolean("persist.fyt.reversetemp", false) ? bArr[i6] : bArr[i2 + 5]) & 255;
            if (i8 == 1) {
                qt.y0(28, -2);
                return;
            }
            if (i8 == 255) {
                qt.y0(28, -3);
                return;
            } else if (i8 == 0 || i8 < 116 || i8 > 144) {
                qt.y0(28, -1);
                return;
            } else {
                qt.y0(28, (i8 * 5) - 400);
                return;
            }
        }
        if (b2 == -24) {
            if (nt.a()) {
                if ((bArr[i2 + 5] & 255) != 0) {
                    qt.a(1);
                    return;
                } else {
                    qt.a(0);
                    return;
                }
            }
            return;
        }
        if (b2 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 17) {
            byte b3 = bArr[i2 + 6];
            qt.y0(5, (b3 >> 3) & 1);
            qt.y0(3, (b3 >> 4) & 1);
            qt.y0(4, (b3 >> 5) & 1);
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(2, (b3 >> 6) & 1);
                qt.y0(1, (b3 >> 7) & 1);
            } else {
                qt.y0(1, (b3 >> 6) & 1);
                qt.y0(2, (b3 >> 7) & 1);
            }
            if (nt.a()) {
                byte b4 = bArr[i2 + 4];
                byte b5 = bArr[i2 + 5];
                this.f12340g = b4 & 255;
                int i9 = 0;
                while (true) {
                    iArr = this.f12341h;
                    if (i9 >= iArr.length) {
                        break;
                    }
                    int i10 = this.f12340g;
                    if (i10 == iArr[i9][0]) {
                        if (i10 == 0) {
                            break;
                        }
                        this.f12339f = i9;
                        break;
                    }
                    i9++;
                }
                if ((b5 & 255) == 0) {
                    int i11 = this.f12339f;
                    if (i11 < iArr.length && i11 != 255) {
                        l0.b0.l0(iArr[i11][1], 1);
                    }
                    this.f12339f = 255;
                } else if (i9 < iArr.length) {
                    l0.b0.l0(iArr[i9][1], 0);
                }
                qt.i(bArr[i2 + 9], bArr[i2 + 8], true, 540);
                return;
            }
            return;
        }
        if (b2 == 19) {
            int i12 = (bArr[i2 + 12] & 255) << 24;
            int i13 = (bArr[i2 + 13] & 255) << 24;
            qt.y0(98, ((bArr[i2 + 2] & 255) << 8) | (bArr[i2 + 3] & 255) | i12);
            qt.y0(99, i13 | ((bArr[i2 + 4] & 255) << 8) | (bArr[i2 + 5] & 255));
            qt.y0(117, i12 | ((bArr[i2 + 6] & 255) << 8) | (bArr[i2 + 7] & 255));
            qt.y0(100, ((bArr[i2 + 8] & 255) << 8) | (bArr[i2 + 9] & 255));
            qt.y0(99, (bArr[i2 + 11] & 255) | ((bArr[i2 + 10] & 255) << 8));
            return;
        }
        if (b2 == 65) {
            if (nt.a()) {
                u0.d.R2(a3(bArr[i2 + 2] & 255));
                int i14 = i2 + 3;
                u0.d.S2(a3(bArr[i14] & 255));
                u0.d.T2(a3(bArr[i14] & 255));
                u0.d.U2(a3(bArr[i2 + 5] & 255));
                u0.d.D2(a3(bArr[i2 + 6] & 255));
                int i15 = i2 + 7;
                u0.d.E2(a3(bArr[i15] & 255));
                u0.d.F2(a3(bArr[i15] & 255));
                u0.d.G2(a3(bArr[i2 + 9] & 255));
                return;
            }
            return;
        }
        if (b2 != 98) {
            if (b2 == 22) {
                int i16 = (bArr[i2 + 14] & 255) << 24;
                qt.y0(114, ((bArr[i2 + 2] & 255) << 8) | (bArr[i2 + 3] & 255) | i16);
                for (int i17 = 0; i17 < 5; i17++) {
                    int i18 = (i17 * 2) + i2;
                    int[] iArr2 = {i17, (bArr[i18 + 5] & 255) | ((bArr[i18 + 4] & 255) << 8) | i16};
                    if (qt.C0(115, iArr2, this.f12335b[i17])) {
                        this.f12335b[i17] = iArr2;
                    }
                }
                return;
            }
            if (b2 != 23) {
                return;
            }
            int i19 = (bArr[i2 + 62] & 255) << 24;
            for (int i20 = 0; i20 < 30; i20++) {
                int i21 = (i20 * 2) + i2;
                int[] iArr3 = {i20, (bArr[i21 + 3] & 255) | ((bArr[i21 + 2] & 255) << 8) | i19};
                if (qt.C0(116, iArr3, this.f12336c[i20])) {
                    this.f12336c[i20] = iArr3;
                }
            }
            return;
        }
        byte b6 = bArr[i2 + 2];
        qt.y0(118, b6 & 128);
        qt.y0(119, (b6 & 112) >> 4);
        qt.y0(121, (b6 & DhcpPacket.DHCP_HOST_NAME) >> 2);
        qt.y0(122, b6 & 3);
        byte b7 = bArr[i2 + 3];
        qt.y0(102, b7 & 64);
        int[] iArr4 = new int[1];
        iArr4[0] = (b7 & 32) != 0 ? 1 : 0;
        qt.y0(112, iArr4);
        qt.y0(110, b7 & 16);
        qt.y0(104, b7 & 8);
        qt.y0(103, b7 & 4);
        qt.y0(105, b7 & 2);
        qt.y0(106, b7 & 1);
        byte b8 = bArr[i2 + 4];
        qt.y0(111, b8 & 128);
        qt.y0(107, b8 & 64);
        qt.y0(113, b8 & 32);
        qt.y0(109, b8 & 16);
        byte b9 = bArr[i2 + 5];
        int i22 = b9 & 7 & 255;
        qt.y0(108, i22 <= 4 ? i22 : 4);
        qt.y0(101, (b9 & 24) >> 3);
        qt.y0(Process.MEDIA_UID, (bArr[i2 + 6] & 3) - 1);
    }

    @Override // k0.lt
    public void W2() {
        this.f12337d.j();
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 125) {
            return;
        }
        int i4 = 0;
        if (i2 == 115) {
            while (i4 < 5) {
                o1.x.v(bVar, i2, this.f12335b[i4]);
                i4++;
            }
        } else {
            if (i2 != 116) {
                o1.x.v(bVar, i2, nt.f8645g[i2]);
                return;
            }
            while (i4 < 30) {
                o1.x.v(bVar, i2, this.f12336c[i4]);
                i4++;
            }
        }
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 1005) {
            b3(iArr[0]);
        }
        switch (i2) {
            case 0:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    c3((byte) 1, (byte) 1, (byte) iArr[0]);
                    break;
                }
                break;
            case 1:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    c3((byte) 1, (byte) 2, (byte) iArr[0]);
                    break;
                }
                break;
            case 2:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    c3((byte) 1, (byte) 3, (byte) iArr[0]);
                    break;
                }
                break;
            case 3:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    c3((byte) 1, (byte) 4, (byte) iArr[0]);
                    break;
                }
                break;
            case 4:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    c3((byte) 1, (byte) 5, (byte) iArr[0]);
                    break;
                }
                break;
            case 5:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    c3((byte) 2, (byte) 1, (byte) iArr[0]);
                    break;
                }
                break;
            case 6:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    c3((byte) 2, (byte) 2, (byte) iArr[0]);
                    break;
                }
                break;
            case 7:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    c3((byte) 2, (byte) 3, (byte) iArr[0]);
                    break;
                }
                break;
            case 8:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    c3((byte) 2, (byte) 4, (byte) iArr[0]);
                    break;
                }
                break;
            case 9:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    c3((byte) 1, (byte) 6, (byte) iArr[0]);
                    break;
                }
                break;
            case 10:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    c3((byte) 1, (byte) 7, (byte) iArr[0]);
                    break;
                }
                break;
            case 11:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] < 0) {
                        iArr[0] = 0;
                    } else if (iArr[0] > 4) {
                        iArr[0] = 4;
                    }
                    c3((byte) 3, (byte) 1, (byte) iArr[0]);
                    break;
                }
                break;
            case 12:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] < 0) {
                        iArr[0] = 0;
                    } else if (iArr[0] > 3) {
                        iArr[0] = 3;
                    }
                    c3((byte) 3, (byte) 2, (byte) iArr[0]);
                    break;
                }
                break;
            case 13:
                c3((byte) 3, (byte) 2, (byte) iArr[0]);
                break;
            case 14:
                c3((byte) 4, (byte) 1, (byte) 1);
                break;
            case 15:
                c3((byte) 4, (byte) 2, (byte) 2);
                break;
            case 16:
                c3((byte) 4, (byte) 2, (byte) 1);
                break;
        }
    }

    public final void b3(int i2) {
        f12334i = i2;
        z.k.s(227, 3, 106, 6, 1, i2 + 1);
        int iB = this.f12337d.b(1, 0);
        int i3 = f12334i;
        if (iB != i3) {
            this.f12337d.g(1, i3);
        }
    }

    public final void c3(byte b2, byte b3, byte b4) {
        z.k.s(227, 3, 106, b2, b3, b4);
    }
}
