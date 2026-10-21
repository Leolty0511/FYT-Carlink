package k0;

import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import android.text.Spanned;
import android.text.format.Time;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class is extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f6584b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f6585c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f6586d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{5, 12}, new int[]{6, 16}, new int[]{7, 2}, new int[]{8, -1}, new int[]{9, 18}, new int[]{10, 26}, new int[]{11, 13}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public byte f6587e = 10;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f6588f = new a();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f6589g = new b();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f6590h = new c();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(is.this.f6589g);
            is.this.f6587e = (byte) 5;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            is isVar = is.this;
            byte b2 = (byte) (isVar.f6587e - 1);
            isVar.f6587e = b2;
            if (b2 <= 0) {
                l0.b0.p0(isVar.f6589g);
                is.this.f6587e = (byte) 5;
            } else {
                z.k.s(227, 129, 1, u0.b.f17306a0);
                if (u0.b.f17306a0 == 1) {
                    z.k.s(227, 238, 1, 0);
                }
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, 131, 3, 1, (byte) time.hour, (byte) time.minute);
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
        a.f.p().t(LogType.CANBUS, "Air codeCmd = " + iArr[0] + "      value = " + iArr[1]);
        switch (i2) {
            case 33:
                if (iArr[1] == 0) {
                    if (nt.f8645g[10] == 1) {
                        a3(1);
                    }
                } else if (nt.f8645g[10] == 0) {
                    a3(2);
                }
                break;
            case 34:
                if (iArr[1] == 0) {
                    if (nt.f8645g[11] == 1) {
                        a3(2);
                    }
                } else if (nt.f8645g[11] == 0) {
                    a3(2);
                }
                break;
            case 36:
                if (iArr[1] == 0) {
                    if (nt.f8645g[65] == 1) {
                        a3(5);
                    }
                } else if (nt.f8645g[65] == 0) {
                    a3(5);
                }
                break;
            case 38:
                if (iArr[1] == 0) {
                    if (nt.f8645g[12] == 1) {
                        a3(3);
                    }
                } else if (nt.f8645g[12] == 0) {
                    a3(3);
                }
                break;
            case 39:
                if (iArr[1] != -1) {
                    a3(11);
                } else {
                    a3(10);
                }
                break;
            case 41:
                if (iArr[1] == 0) {
                    a3(13);
                } else {
                    a3(12);
                }
                break;
            case 42:
                if (iArr[1] == 0) {
                    a3(15);
                } else {
                    a3(14);
                }
                break;
        }
    }

    @Override // k0.lt
    public void S2() {
        qt.z(this.f6590h);
        u0.c.f17386m.a(this.f6588f, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8314i = 1;
        mtVar.f8307b = 0;
        mtVar.f8308c = 0;
        mtVar.f8309d = 0;
        mtVar.f8320o = 0;
        mtVar.f8322q = 0;
        mtVar.f8318m = new int[]{33, 34, 35, 36, 37, 38, 39, 41, 42, 68, 67, 55, 56};
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        int i6;
        int i7 = bArr[i2] & 255;
        if (i7 == 32) {
            byte b2 = bArr[i2 + 2];
            byte b3 = bArr[i2 + 3];
            this.f6585c = b2 & 255;
            int i8 = 0;
            while (true) {
                iArr = this.f6586d;
                if (i8 >= iArr.length) {
                    break;
                }
                int i9 = this.f6585c;
                if (i9 == iArr[i8][0]) {
                    if (i9 == 0) {
                        break;
                    }
                    this.f6584b = i8;
                    break;
                }
                i8++;
            }
            if (this.f6585c == 8) {
                if (b3 == 1) {
                    if (u0.b.f17347o == 0) {
                        qt.a(1);
                        return;
                    } else {
                        qt.a(0);
                    }
                }
                return;
            }
            int i10 = b3 & 255;
            if (i10 == 1) {
                if (i8 < iArr.length) {
                    l0.b0.l0(iArr[i8][1], 0);
                    return;
                }
                return;
            } else {
                if (i10 == 0) {
                    int i11 = this.f6584b;
                    if (i11 < iArr.length && i11 != 255) {
                        l0.b0.l0(iArr[i11][1], 1);
                    }
                    this.f6584b = 255;
                    return;
                }
                return;
            }
        }
        if (i7 == 35) {
            byte b4 = bArr[i2 + 2];
            byte b5 = bArr[i2 + 3];
            byte b6 = bArr[i2 + 4];
            qt.y0(10, (b4 >> 7) & 1);
            qt.y0(11, (b4 >> 6) & 1);
            qt.y0(12, (b4 >> 5) & 1);
            qt.y0(72, (b4 >> 4) & 1);
            qt.y0(63, (b4 >> 3) & 1);
            qt.y0(16, (b4 >> 1) & 1);
            qt.y0(65, (b4 >> 0) & 1);
            int i12 = b5 & 255;
            if (i12 != 1) {
                if (i12 == 2) {
                    i4 = 0;
                    i6 = 1;
                } else if (i12 == 3) {
                    i4 = 0;
                    i6 = 0;
                    i5 = 1;
                } else if (i12 != 4) {
                    i4 = 0;
                    i6 = 0;
                } else {
                    i6 = 0;
                    i4 = 1;
                    i5 = 1;
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
            qt.y0(21, b6 & DhcpPacket.DHCP_DOMAIN_NAME);
            int i13 = i2 + 5;
            int i14 = bArr[i13] & 255;
            int i15 = i2 + 6;
            int i16 = bArr[i15] & 255;
            if (!SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                i14 = bArr[i15] & 255;
                i16 = bArr[i13] & 255;
            }
            int i17 = i14 & 255;
            if (i17 == 0 || i17 == 1) {
                qt.y0(27, -2);
            } else if (i17 == 15) {
                qt.y0(27, -3);
            } else {
                qt.y0(27, (i17 * 10) + 160);
            }
            int i18 = i16 & 255;
            if (i18 == 0 || i18 == 1) {
                qt.y0(28, -2);
                return;
            } else if (i18 == 15) {
                qt.y0(28, -3);
                return;
            } else {
                qt.y0(28, (i18 * 10) + 160);
                return;
            }
        }
        if (i7 == 82) {
            int i19 = i2 + 2;
            qt.y0(143, (bArr[i19] >> 4) & 15);
            qt.y0(144, (bArr[i19] >> 0) & 15);
            int i20 = i2 + 3;
            qt.y0(145, (bArr[i20] >> 4) & 15);
            qt.y0(146, (bArr[i20] >> 0) & 15);
            qt.y0(147, bArr[i2 + 4] & 255);
            qt.y0(148, bArr[i2 + 5] & 255);
            qt.y0(149, bArr[i2 + 6] & 255);
            qt.y0(150, bArr[i2 + 7] & 255);
            return;
        }
        if (i7 == 125) {
            if ((bArr[i2 + 2] & 255) != 1) {
                return;
            }
            if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                int i21 = i2 + 3;
                l0.c0.b((bArr[i21] >> 3) & 1, (bArr[i21] >> 4) & 1, 0);
                return;
            } else {
                int i22 = i2 + 3;
                l0.c0.a((bArr[i22] >> 3) & 1, (bArr[i22] >> 4) & 1, 0);
                return;
            }
        }
        if (i7 == 127) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (i7 == 48) {
            qt.i(bArr[i2 + 3], bArr[i2 + 2], true, 5500);
            return;
        }
        if (i7 == 49) {
            int i23 = i2 + 2;
            qt.y0(98, (bArr[i23] >> 5) & 1);
            qt.y0(99, (bArr[i23] >> 4) & 1);
            qt.y0(100, (bArr[i23] >> 2) & 3);
            qt.y0(101, (bArr[i23] >> 0) & 3);
            qt.y0(102, (bArr[i2 + 3] >> 0) & 255);
            int i24 = i2 + 4;
            qt.y0(103, (bArr[i24] >> 7) & 1);
            qt.y0(104, (bArr[i24] >> 6) & 1);
            qt.y0(105, (bArr[i24] >> 5) & 1);
            qt.y0(106, (bArr[i24] >> 3) & 3);
            qt.y0(107, (bArr[i24] >> 2) & 1);
            qt.y0(108, (bArr[i24] >> 0) & 3);
            int i25 = i2 + 5;
            qt.y0(109, (bArr[i25] >> 7) & 1);
            qt.y0(110, (bArr[i25] >> 6) & 1);
            qt.y0(111, (bArr[i25] >> 5) & 1);
            qt.y0(112, (bArr[i25] >> 4) & 1);
            qt.y0(113, (bArr[i25] >> 3) & 1);
            qt.y0(114, (bArr[i25] >> 0) & 7);
            int i26 = i2 + 6;
            qt.y0(115, (bArr[i26] >> 5) & 1);
            qt.y0(116, (bArr[i26] >> 4) & 1);
            qt.y0(117, (bArr[i26] >> 3) & 1);
            qt.y0(118, (bArr[i26] >> 2) & 1);
            qt.y0(119, (bArr[i26] >> 1) & 1);
            qt.y0(120, (bArr[i26] >> 0) & 1);
            qt.y0(121, (bArr[i2 + 7] >> 0) & 255);
            return;
        }
        if (i7 == 66) {
            qt.y0(122, bArr[i2 + 2] & 255);
            qt.y0(123, bArr[i2 + 3] & 255);
            qt.y0(124, bArr[i2 + 4] & 255);
            qt.y0(125, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 5] & 255));
            qt.y0(126, ((bArr[i2 + 8] << 8) & 65280) | (bArr[i2 + 7] & 255));
            qt.y0(127, (bArr[i2 + 10] & 255) | ((bArr[i2 + 9] << 8) & 65280));
            return;
        }
        if (i7 == 67) {
            qt.y0(128, ((bArr[i2 + 4] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 3] << 8) & 65280) | (bArr[i2 + 2] & 255));
            qt.y0(129, ((bArr[i2 + 5] << 8) & 65280) | (bArr[i2 + 6] & 255));
            qt.y0(130, bArr[i2 + 7] & 255);
            qt.y0(131, bArr[i2 + 8] & 255);
            qt.y0(132, bArr[i2 + 9] & 255);
            qt.y0(133, bArr[i2 + 10] & 255);
            qt.y0(134, ((bArr[i2 + 13] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 12] << 8) & 65280) | (bArr[i2 + 11] & 255));
            qt.y0(135, ((bArr[i2 + 15] << 8) & 65280) | (bArr[i2 + 14] & 255));
            qt.y0(136, bArr[i2 + 16] & 255);
            qt.y0(137, bArr[i2 + 17] & 255);
            qt.y0(138, bArr[i2 + 18] & 255);
            qt.y0(139, bArr[i2 + 19] & 255);
            qt.y0(140, ((bArr[i2 + 22] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 21] << 8) & 65280) | (bArr[i2 + 20] & 255));
            qt.y0(141, ((bArr[i2 + 24] << 8) & 65280) | (bArr[i2 + 23] & 255));
            qt.y0(142, bArr[i2 + 25] & 255);
            return;
        }
        switch (i7) {
            case 38:
                u0.d.R2(l0.c0.E0(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.E0(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.E0(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.E0(bArr[i2 + 5] & 255));
                break;
            case 39:
                int i27 = i2 + 2;
                int i28 = bArr[i27] & 255;
                int i29 = i2 + 3;
                int i30 = bArr[i29] & 255;
                int i31 = i2 + 4;
                int i32 = bArr[i31] & 255;
                int i33 = i2 + 5;
                int i34 = bArr[i33] & 255;
                if ((l0.c0.f13013g != i28 || l0.c0.f13014h != i30 || l0.c0.f13015i != i32 || l0.c0.f13016j != i34) && u0.b.f17347o == 0) {
                    if (i28 != 0 || i30 != 0 || i32 != 0 || i34 != 0) {
                        u0.d.C2(1);
                    } else if (u0.b.f17350p == 1) {
                        l0.c0.f13017k = 2;
                        l0.b0.b(l0.c0.f13018l);
                    }
                }
                l0.c0.f13013g = i28;
                l0.c0.f13014h = i30;
                l0.c0.f13015i = i32;
                l0.c0.f13016j = i34;
                u0.d.D2(l0.c0.E0(bArr[i27] & 255));
                u0.d.E2(l0.c0.E0(bArr[i29] & 255));
                u0.d.F2(l0.c0.E0(bArr[i31] & 255));
                u0.d.G2(l0.c0.E0(bArr[i33] & 255));
                break;
            case 40:
                byte b7 = bArr[i2 + 2];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(2, (b7 >> 6) & 1);
                    qt.y0(1, (b7 >> 7) & 1);
                } else {
                    qt.y0(2, (b7 >> 7) & 1);
                    qt.y0(1, (b7 >> 6) & 1);
                }
                qt.y0(4, (b7 >> 5) & 1);
                qt.y0(3, (b7 >> 4) & 1);
                qt.y0(0, (b7 >> 2) & 1);
                qt.y0(5, (b7 >> 3) & 1);
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        qt.q0(this.f6590h);
        u0.c.f17386m.d(this.f6588f);
        l0.b0.p0(this.f6589g);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 151) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            if (iArr == null || iArr.length < 2) {
                return;
            }
            z.k.s(227, 144, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 1) {
            if (iArr == null || iArr.length < 3) {
                return;
            }
            z.k.s(227, 131, 3, iArr[0], iArr[1], iArr[2]);
            return;
        }
        if (i2 == 2 && iArr != null && iArr.length >= 2) {
            z.k.s(227, 132, 2, iArr[0], iArr[1]);
        }
    }

    public final void a3(int i2) {
        z.k.s(227, -124, 2, i2, 1);
        a.i.a0(200L);
        z.k.s(227, -124, 2, i2, 0);
    }
}
