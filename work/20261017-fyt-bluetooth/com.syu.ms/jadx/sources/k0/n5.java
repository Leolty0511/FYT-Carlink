package k0;

import android.drm.DrmManagerClient;
import android.net.dhcp.DhcpPacket;
import android.os.Process;
import android.os.SystemProperties;
import android.text.format.Time;

/* JADX INFO: loaded from: classes2.dex */
public class n5 extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f8389b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f8390c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f8391d = {new int[]{1, 7}, new int[]{4, 8}, new int[]{7, 20}, new int[]{8, 68}, new int[]{10, 19}, new int[]{11, 67}, new int[]{12, 18}, new int[]{13, 18}, new int[]{14, 38}, new int[]{15, 38}, new int[]{16, 2}, new int[]{17, 2}, new int[]{19, 13}, new int[]{20, 13}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f8392e = new a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f8393f = new b();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public float f8394g = 0.0f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f8395h = 255;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f8396i = 255;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f8397j = new c();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            n5 n5Var = n5.this;
            int[] iArr = new int[1];
            iArr[0] = u0.b.f17347o == 1 ? 96 : 0;
            n5Var.j3(9, 1, iArr);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            n5.this.j3(118, 7, (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN), (byte) (time.month + 1), (byte) time.monthDay, (byte) time.hour, (byte) time.minute, (byte) time.second, (((byte) time.weekDay) & DhcpPacket.DHCP_DOMAIN_NAME) | 224);
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            n5.this.f8394g = u0.b.f17359s0;
            if (n5.this.f8394g > 360.0f) {
                n5.e3(n5.this, 360.0f);
            }
            if (n5.this.f8394g < 0.0f) {
                n5.e3(n5.this, 360.0f);
                n5 n5Var = n5.this;
                n5Var.f8394g = 360.0f - Math.abs(n5Var.f8394g);
            }
            if ((n5.this.f8394g <= 22.5d && n5.this.f8394g >= 0.0f) || (n5.this.f8394g >= 337.5d && n5.this.f8394g <= 360.0f)) {
                n5.this.f8396i = 0;
            } else if (n5.this.f8394g > 22.5d && n5.this.f8394g < 67.5d) {
                n5.this.f8396i = 1;
            } else if (n5.this.f8394g >= 67.5d && n5.this.f8394g <= 112.5d) {
                n5.this.f8396i = 2;
            } else if (n5.this.f8394g > 112.5d && n5.this.f8394g < 157.5d) {
                n5.this.f8396i = 3;
            } else if (n5.this.f8394g >= 157.5d && n5.this.f8394g <= 202.5d) {
                n5.this.f8396i = 4;
            } else if (n5.this.f8394g > 202.5d && n5.this.f8394g < 247.5d) {
                n5.this.f8396i = 5;
            } else if (n5.this.f8394g >= 247.5d && n5.this.f8394g <= 292.5d) {
                n5.this.f8396i = 6;
            } else if (n5.this.f8394g <= 292.5d || n5.this.f8394g >= 337.5d) {
                n5.this.f8396i = 15;
            } else {
                n5.this.f8396i = 7;
            }
            if (n5.this.f8396i != n5.this.f8395h) {
                n5.this.j3(202, 4, (int) n5.this.f8394g, (int) ((n5.this.f8394g * 10.0f) % 10.0f), 0, 128);
                n5 n5Var2 = n5.this;
                n5Var2.f8395h = n5Var2.f8396i;
            }
        }
    }

    public static /* synthetic */ float e3(n5 n5Var, float f2) {
        float f3 = n5Var.f8394g % f2;
        n5Var.f8394g = f3;
        return f3;
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        mtVar.f8306a = null;
        mtVar.f8310e = 0;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8320o = 0;
        int i2 = nt.f8633a;
        if (i2 != 196786 && i2 != 262322) {
            qt.y0(1029, 1);
        }
        int i3 = nt.f8633a;
        if (i3 == 196786 || i3 == 262322) {
            mt mtVar2 = this.f7886a;
            mtVar2.f8306a = new String[]{"com.syu.canbus"};
            mtVar2.f8310e = 1;
            mtVar2.f8311f = 1;
            mtVar2.f8312g = 1;
            o1.h.f16865a.a(this.f8397j, 1);
            u0.c.f17379f.a(this.f8392e, 1);
            qt.z(this.f8393f);
        } else if (i3 == 131250) {
            this.f7886a.f8312g = 0;
        }
        u0.c.f17386m.a(l0.c0.f13020n, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int i4;
        int[][] iArr;
        int i5;
        int i6;
        int i7;
        int i8;
        byte b2 = bArr[i2];
        if (b2 == 2) {
            int i9 = nt.f8633a;
            if (i9 == 196786 || i9 == 262322) {
                return;
            }
            int i10 = bArr[i2 + 2] & 255;
            int i11 = bArr[i2 + 3] & 255;
            int i12 = bArr[i2 + 4] & 255;
            qt.y0(10, (i10 >> 7) & 1);
            qt.y0(11, (i10 >> 6) & 1);
            qt.y0(13, (i10 >> 4) & 1);
            qt.y0(12, (i10 >> 2) & 1);
            qt.y0(16, (i10 >> 1) & 1);
            qt.y0(14, i10 & 1);
            qt.y0(79, (i11 >> 7) & 1);
            qt.y0(65, (i11 >> 5) & 1);
            qt.y0(21, 31 & i11);
            qt.y0(49, (i12 >> 7) & 1);
            qt.y0(18, (i12 >> 6) & 1);
            qt.y0(20, (i12 >> 5) & 1);
            qt.y0(19, (i12 >> 4) & 1);
            int i13 = (i12 >> 3) & 1;
            qt.y0(37, i13);
            int i14 = i2 + 5;
            int i15 = bArr[i14] & 255;
            int i16 = i2 + 6;
            int i17 = bArr[i16] & 255;
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                i15 = bArr[i16] & 255;
                i17 = bArr[i14] & 255;
            }
            int i18 = i15 & 255;
            if (i18 == 0) {
                qt.y0(27, -2);
            } else if (i18 == 255) {
                qt.y0(27, -3);
            } else if (i13 != 0) {
                qt.y0(27, i18);
            } else if (i18 < 18 || i18 > 32) {
                qt.y0(27, -1);
            } else {
                qt.y0(27, i18);
            }
            int i19 = i17 & 255;
            if (i19 == 0) {
                i4 = -1;
                qt.y0(28, -2);
            } else if (i19 == 255) {
                i4 = -1;
                qt.y0(28, -3);
            } else if (i13 != 0) {
                i4 = -1;
                qt.y0(28, i19);
            } else if (i19 < 18 || i19 > 32) {
                i4 = -1;
                qt.y0(28, -1);
            } else {
                qt.y0(28, i19);
                i4 = -1;
            }
            qt.y0(120, bArr[i2 + 7]);
            int i20 = i2 + 8;
            qt.y0(121, bArr[i20]);
            int i21 = bArr[i20] & 127;
            if (bArr[i20] != 255 && bArr[i20] != 208 && bArr[i20] != 216) {
                if (((bArr[i20] >> 7) & 1) != 1) {
                    i4 = 1;
                }
                u0.d.A3(i21 * i4);
            }
            int i22 = (bArr[i2 + 9] << 8) | (bArr[i2 + 10] & DhcpPacket.DHCP_DOMAIN_NAME);
            qt.y0(118, i22);
            qt.y0(Process.NFC_UID, i22);
            int i23 = i2 + 12;
            int i24 = ((bArr[i2 + 11] & 240) << 4) | bArr[i23];
            qt.y0(119, i24);
            qt.y0(1028, i24);
            qt.y0(122, bArr[i23] & 8);
            qt.y0(123, (bArr[i23] >> 3) & 8);
            return;
        }
        if (b2 == 32) {
            if (nt.a()) {
                byte b3 = bArr[i2 + 2];
                byte b4 = bArr[i2 + 3];
                this.f8390c = b3 & 255;
                int i25 = 0;
                while (true) {
                    iArr = this.f8391d;
                    if (i25 >= iArr.length) {
                        break;
                    }
                    int i26 = this.f8390c;
                    if (i26 == iArr[i25][0]) {
                        if (i26 == 0) {
                            break;
                        }
                        this.f8389b = i25;
                        break;
                    }
                    i25++;
                }
                if ((b4 & 255) != 0) {
                    if (i25 < iArr.length) {
                        l0.b0.l0(iArr[i25][1], 0);
                        return;
                    }
                    return;
                }
                int i27 = this.f8389b;
                if (i27 < iArr.length) {
                    i5 = 255;
                    if (i27 != 255) {
                        l0.b0.l0(iArr[i27][1], 1);
                    }
                } else {
                    i5 = 255;
                }
                this.f8389b = i5;
                return;
            }
            return;
        }
        if (b2 == 36) {
            byte b5 = bArr[i2 + 2];
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
            return;
        }
        if (b2 == 6) {
            qt.y0(98, bArr[i2 + 2] & 255);
            return;
        }
        if (b2 == 7) {
            int i28 = i2 + 2;
            int i29 = bArr[i28] & 255;
            int i30 = bArr[i2 + 3] & 255;
            qt.y0(99, (i29 >> 7) & 1);
            qt.y0(100, (i29 >> 6) & 1);
            qt.y0(101, (i29 >> 3) & 1);
            qt.y0(102, (i29 >> 2) & 1);
            qt.y0(117, bArr[i28] & 255);
            qt.y0(103, (i30 << 7) & 1);
            qt.y0(104, (i30 << 6) & 1);
            return;
        }
        if (b2 == 20) {
            byte b6 = bArr[i2 + 2];
            byte b7 = bArr[i2 + 3];
            byte b8 = bArr[i2 + 4];
            byte b9 = bArr[i2 + 5];
            byte b10 = bArr[i2 + 6];
            byte b11 = bArr[i2 + 7];
            qt.y0(113, b6);
            qt.y0(118, (b7 & 255) | ((b8 & DhcpPacket.DHCP_DOMAIN_NAME) << 8));
            qt.y0(119, ((b8 >> 4) & 15) | ((b9 & 255) << 4));
            qt.y0(122, b10 & DhcpPacket.DHCP_DOMAIN_NAME);
            qt.y0(123, (b10 >> 4) & 15);
            qt.y0(114, (b10 >> 6) & 15);
            qt.y0(115, (b10 >> 7) & 15);
            qt.y0(116, b11 & 7);
            return;
        }
        if (b2 == 21) {
            qt.y0(Process.MEDIA_UID, bArr[i2 + 2] & DhcpPacket.DHCP_DOMAIN_NAME);
            return;
        }
        if (b2 == 29) {
            byte b12 = bArr[i2 + 2];
            byte b13 = bArr[i2 + 3];
            byte b14 = bArr[i2 + 4];
            byte b15 = bArr[i2 + 5];
            u0.d.D2(a3(b12 & 255));
            u0.d.E2(a3(b13 & 255));
            u0.d.F2(a3(b14 & 255));
            u0.d.G2(a3(b15 & 255));
            return;
        }
        if (b2 == 30) {
            byte b16 = bArr[i2 + 2];
            byte b17 = bArr[i2 + 3];
            byte b18 = bArr[i2 + 4];
            byte b19 = bArr[i2 + 5];
            u0.d.R2(a3(b16 & 255));
            u0.d.S2(a3(b17 & 255));
            u0.d.T2(a3(b18 & 255));
            u0.d.U2(a3(b19 & 255));
            return;
        }
        if (b2 != 40) {
            if (b2 != 41) {
                return;
            }
            qt.k(bArr[i2 + 2], bArr[i2 + 3], false, 780);
            return;
        }
        int i31 = nt.f8633a;
        if (i31 == 196786 || i31 == 262322) {
            byte b20 = bArr[i2 + 2];
            byte b21 = bArr[i2 + 3];
            byte b22 = bArr[i2 + 4];
            byte b23 = bArr[i2 + 5];
            byte b24 = bArr[i2 + 6];
            int i32 = bArr[i2 + 7] & 255;
            byte b25 = bArr[i2 + 8];
            byte b26 = bArr[i2 + 9];
            qt.y0(10, (b20 >> 7) & 1);
            qt.y0(11, (b20 >> 6) & 1);
            qt.y0(12, (b20 >> 5) & 1);
            qt.y0(13, (b20 >> 3) & 1);
            qt.y0(14, (b20 >> 2) & 1);
            qt.y0(65, (b20 >> 1) & 1);
            qt.y0(16, b20 & 1);
            qt.y0(18, (b21 >> 7) & 1);
            qt.y0(19, (b21 >> 6) & 1);
            qt.y0(20, (b21 >> 5) & 1);
            qt.y0(21, b21 & DhcpPacket.DHCP_DOMAIN_NAME);
            if (b22 == 0) {
                i6 = -2;
            } else if (b22 != 31) {
                i6 = (b22 < 1 || b22 > 29) ? -1 : ((b22 - 1) * 5) + 180;
            } else {
                i6 = -3;
            }
            qt.y0(27, i6);
            if (b23 == 0) {
                i7 = -2;
            } else if (b23 != 31) {
                i7 = (b23 < 1 || b23 > 29) ? -1 : ((b23 - 1) * 5) + 180;
            } else {
                i7 = -3;
            }
            qt.y0(28, i7);
            qt.y0(49, (b24 >> 7) & 1);
            qt.y0(67, (b24 >> 2) & 1);
            qt.y0(38, (b24 >> 1) & 1);
            qt.y0(37, (b24 >> 0) & 1);
            u0.d.A3((((255 & i32) * 5) - 400) + 1000);
            if (b25 == 0) {
                i8 = -2;
            } else if (b25 != 31) {
                i8 = (b25 < 1 || b25 > 29) ? -1 : ((b25 - 1) * 5) + 180;
            } else {
                i8 = -3;
            }
            qt.y0(40, i8);
            qt.y0(42, (b26 >> 7) & 1);
            qt.y0(46, (b26 >> 6) & 1);
            qt.y0(47, (b26 >> 5) & 1);
            qt.y0(43, (b26 >> 4) & 1);
            qt.y0(44, b26 & DhcpPacket.DHCP_DOMAIN_NAME);
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(l0.c0.f13020n);
        o1.h.f16865a.d(this.f8397j);
        qt.q0(this.f8393f);
        l0.b0.p0(l0.c0.f13021o);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 124) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            if (T2(iArr, 2)) {
                j3(224, 2, iArr);
                return;
            }
            return;
        }
        if (i2 == 1) {
            if (T2(iArr, 1)) {
                j3(121, 1, iArr);
            }
        } else if (i2 == 3) {
            if (T2(iArr, 1)) {
                j3(120, 1, iArr);
            }
        } else if (i2 == 1016 && T2(iArr, 1)) {
            int[] iArr2 = new int[1];
            iArr2[0] = iArr[0] == 1 ? 128 : 0;
            j3(9, 1, iArr2);
        }
    }

    public final int a3(int i2) {
        return l0.c0.E0(i2);
    }

    public final void j3(int i2, int i3, int... iArr) {
        int[] iArr2 = new int[iArr.length + 5];
        iArr2[0] = 227;
        iArr2[1] = 46;
        iArr2[2] = i2;
        iArr2[3] = i3;
        byte b2 = (byte) (i2 + i3);
        for (int i4 = 0; i4 < iArr.length; i4++) {
            b2 = (byte) (b2 + iArr[i4]);
            iArr2[i4 + 4] = iArr[i4];
        }
        iArr2[iArr.length + 4] = b2 ^ 255;
        z.k.s(iArr2);
    }
}
