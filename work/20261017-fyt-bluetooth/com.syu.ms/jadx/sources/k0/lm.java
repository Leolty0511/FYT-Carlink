package k0;

import android.drm.DrmManagerClient;
import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import android.text.format.Time;

/* JADX INFO: loaded from: classes2.dex */
public class lm extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f7799b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f7800c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f7801d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 18}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 1}, new int[]{10, 40}, new int[]{11, 41}, new int[]{12, 42}, new int[]{13, 43}, new int[]{14, 44}, new int[]{15, 45}, new int[]{16, 46}, new int[]{17, 47}, new int[]{41, 30}, new int[]{42, 31}, new int[]{43, 32}, new int[]{44, 33}, new int[]{45, 34}, new int[]{46, 35}, new int[]{47, 29}, new int[]{48, 54}, new int[]{49, 24}, new int[]{50, 5}, new int[]{51, 18}, new int[]{52, 1}, new int[]{53, 6}, new int[]{70, 55}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f7802e = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, 131, 5, (byte) time.hour, (byte) time.minute, (byte) time.monthDay, (byte) (time.month + 1), (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN));
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8313h = 0;
        qt.z(this.f7802e);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        boolean z2;
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 3) {
            int i4 = ((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255);
            if ((32768 & i4) != 0) {
                i4 = 65536 - i4;
                z2 = true;
            } else {
                z2 = false;
            }
            u0.d.A3(z2 ? 1000 - (i4 * 5) : (i4 * 5) + 1000);
            qt.y0(99, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
            qt.y0(100, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
            qt.y0(101, (65280 & (bArr[i2 + 8] << 8)) | (255 & bArr[i2 + 9]));
        }
        if (b2 == 4) {
            qt.y0(102, bArr[i2 + 2] & 255);
            qt.y0(103, bArr[i2 + 3] & 255);
            qt.y0(104, bArr[i2 + 4] & 255);
            qt.y0(105, bArr[i2 + 5] & 255);
            qt.y0(106, bArr[i2 + 6] & 255);
            qt.y0(115, bArr[i2 + 7] & 255);
            return;
        }
        if (b2 == 41) {
            qt.i(bArr[i2 + 2], bArr[i2 + 3], true, 5400);
            return;
        }
        if (b2 == 64) {
            qt.y0(107, bArr[i2 + 2] & 255);
            qt.y0(108, bArr[i2 + 3] & 255);
            qt.y0(109, bArr[i2 + 4] & 255);
            qt.y0(110, bArr[i2 + 5] & 255);
            qt.y0(111, bArr[i2 + 6] & 255);
            qt.y0(112, bArr[i2 + 7] & 255);
            qt.y0(113, bArr[i2 + 8] & 255);
            qt.y0(114, bArr[i2 + 9] & 255);
            return;
        }
        if (b2 == 125) {
            if ((bArr[i2 + 2] & 255) != 1) {
                return;
            }
            int i5 = i2 + 3;
            l0.c0.a((bArr[i5] >> 3) & 1, (bArr[i5] >> 4) & 1, 0);
            o1.x.C(nt.f8643f, 1049, new int[]{11, bArr[i5] & 255}, null, null);
            return;
        }
        switch (b2) {
            case 32:
                byte b3 = bArr[i2 + 2];
                byte b4 = bArr[i2 + 3];
                this.f7800c = b3 & 255;
                int i6 = 0;
                while (true) {
                    iArr = this.f7801d;
                    if (i6 < iArr.length) {
                        int i7 = this.f7800c;
                        if (i7 != iArr[i6][0]) {
                            i6++;
                        } else if (i7 != 0) {
                            this.f7799b = i6;
                        }
                    }
                }
                int i8 = this.f7800c;
                if (i8 == 41) {
                    for (int i9 = 0; i9 < (b4 & 255); i9++) {
                        l0.b0.l0(30, 0);
                    }
                    l0.b0.l0(30, 1);
                } else if (i8 != 42) {
                    int i10 = b4 & 255;
                    if (i10 == 1) {
                        if (i6 < iArr.length) {
                            l0.b0.l0(iArr[i6][1], 0);
                        }
                    } else if (i10 == 0) {
                        int i11 = this.f7799b;
                        if (i11 < iArr.length && i11 != 255) {
                            l0.b0.l0(iArr[i11][1], 1);
                        }
                        this.f7799b = 255;
                    }
                } else {
                    for (int i12 = 0; i12 < (b4 & 255); i12++) {
                        l0.b0.l0(31, 0);
                    }
                    l0.b0.l0(31, 1);
                }
                break;
            case 33:
                int i13 = i2 + 2;
                qt.y0(10, (bArr[i13] >> 7) & 1);
                qt.y0(11, (bArr[i13] >> 6) & 1);
                qt.y0(12, (bArr[i13] >> 5) & 1);
                qt.y0(53, (bArr[i13] >> 4) & 1);
                qt.y0(13, (bArr[i13] >> 3) & 1);
                qt.y0(14, (bArr[i13] >> 2) & 1);
                qt.y0(65, (bArr[i13] >> 1) & 1);
                int i14 = i2 + 3;
                qt.y0(18, (bArr[i14] >> 7) & 1);
                qt.y0(19, (bArr[i14] >> 6) & 1);
                qt.y0(20, (bArr[i14] >> 5) & 1);
                qt.y0(21, bArr[i14] & DhcpPacket.DHCP_DOMAIN_NAME);
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    int i15 = i2 + 5;
                    if ((bArr[i15] & 255) == 0) {
                        qt.y0(28, -2);
                    } else if ((bArr[i15] & 255) == 31) {
                        qt.y0(28, -3);
                    } else {
                        qt.y0(28, bArr[i15] & 255);
                    }
                    int i16 = i2 + 6;
                    if ((bArr[i16] & 255) == 0) {
                        qt.y0(27, -2);
                    } else if ((bArr[i16] & 255) == 31) {
                        qt.y0(27, -3);
                    } else {
                        qt.y0(27, bArr[i16] & 255);
                    }
                } else {
                    int i17 = i2 + 5;
                    if ((bArr[i17] & 255) == 0) {
                        qt.y0(27, -2);
                    } else if ((bArr[i17] & 255) == 31) {
                        qt.y0(27, -3);
                    } else {
                        qt.y0(27, bArr[i17] & 255);
                    }
                    int i18 = i2 + 6;
                    if ((bArr[i18] & 255) == 0) {
                        qt.y0(28, -2);
                    } else if ((bArr[i18] & 255) == 31) {
                        qt.y0(28, -3);
                    } else {
                        qt.y0(28, bArr[i18] & 255);
                    }
                }
                int i19 = i2 + 7;
                qt.y0(29, (bArr[i19] >> 4) & 7);
                qt.y0(30, (bArr[i19] >> 0) & 7);
                break;
            case 34:
                u0.d.R2(l0.c0.u1(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.u1(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.u1(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.u1(bArr[i2 + 5] & 255));
                break;
            case 35:
                int i20 = i2 + 2;
                int i21 = bArr[i20] & 255;
                int i22 = i2 + 3;
                int i23 = bArr[i22] & 255;
                int i24 = i2 + 4;
                int i25 = bArr[i24] & 255;
                int i26 = i2 + 5;
                int i27 = bArr[i26] & 255;
                if (i21 == 0 && i23 == 0 && i25 == 0 && i27 == 0) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i21 || l0.c0.f13014h != i23 || l0.c0.f13015i != i25 || l0.c0.f13016j != i27) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i21;
                l0.c0.f13014h = i23;
                l0.c0.f13015i = i25;
                l0.c0.f13016j = i27;
                u0.d.D2(l0.c0.u1(bArr[i20] & 255));
                u0.d.E2(l0.c0.u1(bArr[i22] & 255));
                u0.d.F2(l0.c0.u1(bArr[i24] & 255));
                u0.d.G2(l0.c0.u1(bArr[i26] & 255));
                break;
            case 36:
                byte b5 = bArr[i2 + 2];
                if ((b5 & 1) == 1) {
                    if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                        qt.y0(1, (b5 >> 7) & 1);
                        qt.y0(2, (b5 >> 6) & 1);
                    } else {
                        qt.y0(1, (b5 >> 6) & 1);
                        qt.y0(2, (b5 >> 7) & 1);
                    }
                    qt.y0(3, (b5 >> 4) & 1);
                    qt.y0(4, (b5 >> 5) & 1);
                    qt.y0(5, (b5 >> 3) & 1);
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(l0.c0.f13020n);
        l0.b0.p0(l0.c0.f13021o);
        qt.q0(this.f7802e);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 116) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, 192, 2, iArr[0], iArr[1]);
        } else {
            if (i2 != 1) {
                return;
            }
            z.k.s(227, 130, 5, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4]);
        }
    }
}
