package k0;

import android.net.dhcp.DhcpPacket;
import android.os.Process;
import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class ji extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f6885b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f6886c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f6887d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{5, 5}, new int[]{6, 13}, new int[]{7, 18}, new int[]{8, 26}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f6888e = 0;

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
        mtVar.f8314i = 1;
        mtVar.f8312g = 0;
        mtVar.f8320o = 0;
        u0.c.f17386m.a(l0.c0.f13020n, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        int i6;
        byte b2 = bArr[i2];
        if (b2 == 39) {
            int i7 = i2 + 2;
            qt.y0(139, (bArr[i7] >> 7) & 1);
            qt.y0(140, (bArr[i7] >> 6) & 1);
            qt.y0(141, (bArr[i7] >> 5) & 1);
            qt.y0(142, (bArr[i7] >> 4) & 1);
            qt.y0(143, (bArr[i7] >> 3) & 1);
            qt.y0(144, (bArr[i7] >> 2) & 1);
            qt.y0(145, bArr[i2 + 3] & 255);
        }
        if (b2 == 40) {
            int i8 = i2 + 2;
            qt.y0(146, (bArr[i8] >> 7) & 1);
            this.f6888e = (bArr[i8] >> 7) & 1;
            qt.y0(147, bArr[i8] & 127);
            qt.y0(Process.MEDIA_UID, (bArr[i8] >> 7) & 1);
            return;
        }
        if (b2 == 127) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        switch (b2) {
            case 33:
                byte b3 = bArr[i2 + 2];
                byte b4 = bArr[i2 + 3];
                this.f6886c = b3 & 255;
                int i9 = 0;
                while (true) {
                    iArr = this.f6887d;
                    if (i9 < iArr.length) {
                        int i10 = this.f6886c;
                        if (i10 != iArr[i9][0]) {
                            i9++;
                        } else if (i10 != 0) {
                            this.f6885b = i9;
                        }
                    }
                }
                int i11 = b4 & 255;
                if (i11 != 1) {
                    if (i11 == 0) {
                        int i12 = this.f6885b;
                        if (i12 < iArr.length && i12 != 255) {
                            l0.b0.l0(iArr[i12][1], 1);
                        }
                        this.f6885b = 255;
                    }
                } else if (i9 < iArr.length) {
                    l0.b0.l0(iArr[i9][1], 0);
                }
                break;
            case 34:
                int i13 = bArr[i2 + 2] & 255;
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (i13 >> 6) & 1);
                    qt.y0(2, (i13 >> 7) & 1);
                } else {
                    qt.y0(1, (i13 >> 7) & 1);
                    qt.y0(2, (i13 >> 6) & 1);
                }
                qt.y0(3, (i13 >> 5) & 1);
                qt.y0(4, (i13 >> 4) & 1);
                qt.y0(5, (i13 >> 3) & 1);
                break;
            case 35:
                byte b5 = bArr[i2 + 2];
                byte b6 = bArr[i2 + 3];
                byte b7 = bArr[i2 + 4];
                byte b8 = bArr[i2 + 5];
                qt.y0(10, (b5 >> 7) & 1);
                qt.y0(11, (b5 >> 6) & 1);
                qt.y0(12, (b5 >> 5) & 1);
                qt.y0(13, (b5 >> 3) & 1);
                qt.y0(15, b5 & 1);
                int i14 = b6 & DhcpPacket.DHCP_DOMAIN_NAME;
                if (i14 != 1) {
                    if (i14 == 2) {
                        i4 = 0;
                        i6 = 1;
                    } else if (i14 == 3) {
                        i4 = 0;
                        i6 = 0;
                        i5 = 1;
                    } else if (i14 == 4) {
                        i6 = 0;
                        i4 = 1;
                        i5 = 1;
                    } else if (i14 != 5) {
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
                qt.y0(18, i4);
                qt.y0(19, i6);
                qt.y0(20, i5);
                qt.y0(21, 15 & b7);
                int i15 = b8 & 255;
                if (i15 == 1) {
                    qt.y0(27, -2);
                } else if (i15 == 31) {
                    qt.y0(27, -3);
                } else {
                    qt.y0(27, i15);
                }
                break;
            case 36:
                byte b9 = bArr[i2 + 2];
                byte b10 = bArr[i2 + 3];
                byte b11 = bArr[i2 + 4];
                byte b12 = bArr[i2 + 5];
                byte b13 = bArr[i2 + 6];
                byte b14 = bArr[i2 + 7];
                byte b15 = bArr[i2 + 8];
                byte b16 = bArr[i2 + 9];
                qt.y0(98, b9 & 255);
                qt.y0(99, b10 & 255);
                qt.y0(100, b11 & 255);
                qt.y0(101, b12 & 255);
                qt.y0(102, b13 & 255);
                qt.y0(103, b14 & 255);
                qt.y0(104, b15 & 255);
                qt.y0(105, b16 & 255);
                break;
            case 37:
                byte b17 = bArr[i2 + 2];
                byte b18 = bArr[i2 + 3];
                byte b19 = bArr[i2 + 4];
                byte b20 = bArr[i2 + 5];
                int i16 = (b17 >> 4) & 15;
                if (i16 == 2) {
                    qt.y0(108, 1);
                    qt.y0(107, 0);
                    qt.y0(109, 0);
                    qt.y0(106, 0);
                } else if (i16 == 4) {
                    qt.y0(108, 0);
                    qt.y0(107, 1);
                    qt.y0(109, 0);
                    qt.y0(106, 0);
                } else if (i16 == 6) {
                    qt.y0(108, 0);
                    qt.y0(107, 0);
                    qt.y0(109, 1);
                    qt.y0(106, 0);
                } else if (i16 == 8) {
                    qt.y0(108, 0);
                    qt.y0(107, 0);
                    qt.y0(109, 0);
                    qt.y0(106, 1);
                }
                int i17 = (b17 >> 0) & 15;
                if (i17 == 2) {
                    qt.y0(116, 1);
                    qt.y0(115, 0);
                    qt.y0(117, 0);
                    qt.y0(114, 0);
                } else if (i17 == 4) {
                    qt.y0(116, 0);
                    qt.y0(115, 1);
                    qt.y0(117, 0);
                    qt.y0(114, 0);
                } else if (i17 == 6) {
                    qt.y0(116, 0);
                    qt.y0(115, 0);
                    qt.y0(117, 1);
                    qt.y0(114, 0);
                } else if (i17 == 8) {
                    qt.y0(116, 0);
                    qt.y0(115, 0);
                    qt.y0(117, 0);
                    qt.y0(114, 1);
                }
                int i18 = (b18 >> 4) & 15;
                if (i18 == 2) {
                    qt.y0(132, 1);
                    qt.y0(131, 0);
                    qt.y0(133, 0);
                    qt.y0(130, 0);
                } else if (i18 == 4) {
                    qt.y0(132, 0);
                    qt.y0(131, 1);
                    qt.y0(133, 0);
                    qt.y0(130, 0);
                } else if (i18 == 6) {
                    qt.y0(132, 0);
                    qt.y0(131, 0);
                    qt.y0(133, 1);
                    qt.y0(130, 0);
                } else if (i18 == 8) {
                    qt.y0(132, 0);
                    qt.y0(131, 0);
                    qt.y0(133, 0);
                    qt.y0(130, 1);
                }
                int i19 = (b18 >> 0) & 15;
                if (i19 == 2) {
                    qt.y0(124, 1);
                    qt.y0(123, 0);
                    qt.y0(125, 0);
                    qt.y0(122, 0);
                } else if (i19 == 4) {
                    qt.y0(124, 0);
                    qt.y0(123, 1);
                    qt.y0(125, 0);
                    qt.y0(122, 0);
                } else if (i19 == 6) {
                    qt.y0(124, 0);
                    qt.y0(123, 0);
                    qt.y0(125, 1);
                    qt.y0(122, 0);
                } else if (i19 == 8) {
                    qt.y0(124, 0);
                    qt.y0(123, 0);
                    qt.y0(125, 0);
                    qt.y0(122, 1);
                }
                qt.y0(118, (b19 >> 4) & 1);
                qt.y0(119, (b19 >> 5) & 1);
                qt.y0(110, (b19 >> 6) & 1);
                qt.y0(111, (b19 >> 7) & 1);
                qt.y0(126, (b19 >> 0) & 1);
                qt.y0(127, (b19 >> 1) & 1);
                qt.y0(134, (b19 >> 2) & 1);
                qt.y0(135, (b19 >> 3) & 1);
                qt.y0(120, (b20 >> 4) & 1);
                qt.y0(121, (b20 >> 5) & 1);
                qt.y0(112, (b20 >> 6) & 1);
                qt.y0(113, (b20 >> 7) & 1);
                qt.y0(128, (b20 >> 0) & 1);
                qt.y0(129, (b20 >> 1) & 1);
                qt.y0(136, (b20 >> 2) & 1);
                qt.y0(137, (b20 >> 3) & 1);
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
        if (i2 < 0 || i2 >= 148) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    /* JADX WARN: Code duplicated, block: B:48:0x0069  */
    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        int i3 = 6;
        if (i2 == 0) {
            if (T2(iArr, 2)) {
                z.k.s(227, 131, 3, iArr[0], iArr[1], 0);
                return;
            }
            return;
        }
        if (i2 == 1) {
            if (T2(iArr, 5)) {
                z.k.s(227, 130, 5, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4]);
                return;
            }
            return;
        }
        if (i2 != 1005) {
            return;
        }
        int i4 = this.f6888e;
        if (i4 == 0) {
            if (iArr[0] == 4) {
                i3 = 3;
            } else if (iArr[0] == 5) {
                i3 = 4;
            } else if (iArr[0] == 6) {
                i3 = 5;
            } else if (iArr[0] != 7) {
                if (iArr[0] == 1) {
                    i3 = 2;
                } else {
                    i3 = 0;
                }
            }
        } else if (i4 != 1) {
            i3 = 0;
        } else if (iArr[0] == 4) {
            i3 = 13;
        } else if (iArr[0] == 5) {
            i3 = 12;
        } else if (iArr[0] == 6) {
            i3 = 9;
        } else if (iArr[0] == 7) {
            i3 = 10;
        } else if (iArr[0] == 8) {
            i3 = 8;
        } else if (iArr[0] == 9) {
            i3 = 11;
        } else if (iArr[0] == 0) {
            i3 = 1;
        } else {
            i3 = 0;
        }
        z.k.s(227, 132, 1, (byte) i3);
    }
}
