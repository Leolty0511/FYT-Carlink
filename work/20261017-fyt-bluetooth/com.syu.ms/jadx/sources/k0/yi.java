package k0;

import android.media.videoeditor.MediaProperties;
import android.net.dhcp.DhcpPacket;
import android.os.BatteryStats;
import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class yi extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f12519b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f12520c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f12521d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 18}, new int[]{10, 26}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f12522e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f12523f = new a();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f12524g = new b();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int[] f12525h = {34, 204};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f12526i = 0;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(yi.this.f12524g);
            yi.this.f12522e = 5;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            yi yiVar = yi.this;
            int i2 = yiVar.f12522e - 1;
            yiVar.f12522e = i2;
            if (i2 <= 0) {
                l0.b0.p0(yiVar.f12524g);
                yi.this.f12522e = 5;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (u0.b.f17306a0 == 1) {
                switch (nt.f8637c) {
                    case 76:
                        z.k.s(227, 226, 1, 0);
                        break;
                    case 77:
                        z.k.s(227, 226, 1, 1);
                        break;
                    case 78:
                        z.k.s(227, 226, 1, 2);
                        break;
                    case 79:
                        z.k.s(227, 226, 1, 3);
                        break;
                    case 80:
                        z.k.s(227, 226, 1, 4);
                        break;
                    case 81:
                        z.k.s(227, 226, 1, 5);
                        break;
                }
            }
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        u0.c.f17386m.a(this.f12523f, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 0;
        mtVar.f8312g = 0;
        mtVar.f8314i = 0;
        mtVar.f8307b = 0;
        mtVar.f8308c = 0;
        mtVar.f8309d = 0;
        mtVar.f8320o = 0;
        mtVar.f8313h = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        int i6;
        byte b2 = bArr[i2];
        if (b2 == 30) {
            int i7 = nt.f8637c;
            if (i7 == 76 || i7 == 77 || i7 == 79 || i7 == 80) {
                u0.d.R2(l0.c0.k1(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.k1(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.k1(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.k1(bArr[i2 + 5] & 255));
                return;
            }
            if (i7 == 78 || i7 == 81) {
                u0.d.R2(l0.c0.Q0(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.Q0(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.Q0(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.Q0(bArr[i2 + 5] & 255));
                return;
            }
            return;
        }
        if (b2 == 32) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f12520c = b3 & 255;
            int i8 = 0;
            while (true) {
                iArr = this.f12521d;
                if (i8 >= iArr.length) {
                    break;
                }
                int i9 = this.f12520c;
                if (i9 == iArr[i8][0]) {
                    if (i9 == 0) {
                        break;
                    }
                    this.f12519b = i8;
                    break;
                }
                i8++;
            }
            int i10 = b4 & 255;
            if (i10 == 1) {
                if (i8 < iArr.length) {
                    l0.b0.l0(iArr[i8][1], 0);
                    return;
                }
                return;
            } else {
                if (i10 == 0) {
                    int i11 = this.f12519b;
                    if (i11 < iArr.length && i11 != 255) {
                        l0.b0.l0(iArr[i11][1], 1);
                    }
                    this.f12519b = 255;
                    return;
                }
                return;
            }
        }
        if (b2 == 36) {
            byte b5 = bArr[i2 + 2];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(2, (b5 >> 6) & 1);
                qt.y0(1, (b5 >> 7) & 1);
            } else {
                qt.y0(2, (b5 >> 7) & 1);
                qt.y0(1, (b5 >> 6) & 1);
            }
            qt.y0(4, (b5 >> 5) & 1);
            qt.y0(3, (b5 >> 4) & 1);
            qt.y0(5, (b5 >> 3) & 1);
            qt.y0(0, (b5 >> 0) & 1);
            return;
        }
        if (b2 == 41) {
            int i12 = i2 + 3;
            if ((bArr[i12] & 128) != 0) {
                qt.j(bArr[i2 + 2], bArr[i12] & DhcpPacket.DHCP_DOMAIN_NAME, 0, MediaProperties.HEIGHT_360);
                return;
            } else {
                int i13 = 4096 - ((bArr[i2 + 2] & 255) | ((bArr[i12] << 8) & BatteryStats.HistoryItem.STATE_PHONE_STATE_MASK));
                qt.i(i13 & 255, (i13 >> 8) & 15, true, MediaProperties.HEIGHT_360);
                return;
            }
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 65) {
            qt.y0(111, bArr[i2 + 2] & 255);
            qt.y0(112, bArr[i2 + 3] & 255);
            qt.y0(113, bArr[i2 + 4] & 255);
            qt.y0(114, bArr[i2 + 5] & 255);
            qt.y0(115, bArr[i2 + 6] & 255);
            qt.y0(116, bArr[i2 + 7] & 255);
            qt.y0(117, bArr[i2 + 8] & 255);
            qt.y0(118, bArr[i2 + 9] & 255);
            qt.y0(119, bArr[i2 + 10] & 255);
            qt.y0(120, bArr[i2 + 11] & 255);
            qt.y0(121, bArr[i2 + 12] & 255);
            qt.y0(122, bArr[i2 + 13] & 255);
            qt.y0(123, bArr[i2 + 14] & 255);
            qt.y0(124, bArr[i2 + 15] & 255);
            return;
        }
        if (b2 != 85) {
            if (b2 != 96) {
                return;
            }
            int i14 = bArr[i2 + 2] & 255;
            if (i14 == 1) {
                qt.y0(98, bArr[i2 + 4] & 255);
                qt.y0(99, bArr[i2 + 5] & 255);
                qt.y0(100, bArr[i2 + 6] & 255);
                return;
            }
            if (i14 == 2) {
                qt.y0(101, bArr[i2 + 4] & 255);
                qt.y0(102, bArr[i2 + 5] & 255);
                qt.y0(103, bArr[i2 + 6] & 255);
                return;
            } else if (i14 == 3) {
                qt.y0(104, bArr[i2 + 4] & 255);
                qt.y0(105, bArr[i2 + 5] & 255);
                qt.y0(106, bArr[i2 + 6] & 255);
                return;
            } else {
                if (i14 != 4) {
                    return;
                }
                qt.y0(107, bArr[i2 + 4] & 255);
                qt.y0(108, bArr[i2 + 5] & 255);
                qt.y0(109, bArr[i2 + 6] & 255);
                return;
            }
        }
        int i15 = i2 + 2;
        int i16 = bArr[i15] & 255;
        int i17 = i2 + 3;
        int i18 = bArr[i17] & 255;
        int i19 = bArr[i2 + 4] & 255;
        int i20 = bArr[i2 + 6] & 255;
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            i16 = bArr[i17] & 255;
            i18 = bArr[i15] & 255;
        }
        if (i16 == 16) {
            qt.y0(27, -2);
        } else if (i16 == 80) {
            qt.y0(27, -3);
        } else if (i16 == 255) {
            qt.y0(27, -1);
        } else {
            qt.y0(27, i16 & 255);
        }
        if (i18 == 16) {
            qt.y0(28, -2);
        } else if (i18 == 80) {
            qt.y0(28, -3);
        } else if (i18 == 255) {
            qt.y0(28, -1);
        } else {
            qt.y0(28, i18 & 255);
        }
        qt.y0(21, i19 & 15);
        int i21 = (i19 >> 4) & 15;
        if (i21 != 1) {
            if (i21 == 2) {
                i4 = 0;
                i6 = 1;
            } else if (i21 == 3) {
                i4 = 0;
                i6 = 0;
                i5 = 1;
            } else if (i21 == 4) {
                i6 = 0;
                i4 = 1;
                i5 = 1;
            } else if (i21 != 6) {
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
        qt.y0(77, i21);
        qt.y0(15, (i20 >> 7) & 1);
        qt.y0(16, (i20 >> 6) & 1);
        qt.y0(12, (i20 >> 3) & 1);
        qt.y0(14, (i20 >> 2) & 1);
        qt.y0(11, (i20 >> 1) & 1);
        qt.y0(13, (i20 >> 0) & 1);
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f12523f);
        l0.b0.p0(this.f12524g);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 125) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 != 0) {
            if (i2 == 1 && iArr != null && iArr.length > 0) {
                z.k.s(227, 132, 2, iArr[0], iArr[1]);
                return;
            }
            return;
        }
        if (iArr == null || iArr.length <= 0) {
            return;
        }
        z.k.s(227, 51, 4, iArr[0], this.f12525h[this.f12526i % 2], 0, 0);
        int i3 = this.f12526i + 1;
        this.f12526i = i3;
        this.f12526i = i3 % 2;
    }
}
