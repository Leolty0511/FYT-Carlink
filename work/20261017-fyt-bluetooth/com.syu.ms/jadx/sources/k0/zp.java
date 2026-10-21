package k0;

import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import android.provider.CalendarContract;

/* JADX INFO: loaded from: classes2.dex */
public class zp extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f12944b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f12945c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f12946d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{5, 18}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 5}, new int[]{9, 6}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f12947e = new a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f12948f = new b();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f12949g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f12950h = new c();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f12951i = new d();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.c0.L();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            switch (nt.f8633a) {
                case 8520134:
                    z.k.s(227, 226, 1, 0);
                    break;
                case 8585670:
                    z.k.s(227, 226, 1, 1);
                    break;
                case 8651206:
                    z.k.s(227, 226, 1, 2);
                    break;
                case 8716742:
                    z.k.s(227, 226, 1, 5);
                    break;
                case 8782278:
                case 8847814:
                    z.k.s(227, 226, 1, 3);
                    break;
                case 8913350:
                    z.k.s(227, 226, 1, 4);
                    break;
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(zp.this.f12951i);
            zp.this.f12949g = 5;
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            zp zpVar = zp.this;
            int i2 = zpVar.f12949g - 1;
            zpVar.f12949g = i2;
            if (i2 > 0) {
                z.k.s(227, 129, 1, u0.b.f17306a0);
            } else {
                l0.b0.p0(zpVar.f12951i);
                zp.this.f12949g = 5;
            }
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        u0.c.f17386m.a(this.f12950h, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8314i = 1;
        mtVar.f8315j = 0;
        mtVar.f8320o = 0;
        mtVar.f8317l = 0;
        qt.z(this.f12947e);
        qt.z(this.f12948f);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        int i6;
        byte b2 = bArr[i2];
        if (b2 == 32) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f12945c = b3 & 255;
            int i7 = 0;
            while (true) {
                iArr = this.f12946d;
                if (i7 >= iArr.length) {
                    break;
                }
                int i8 = this.f12945c;
                if (i8 == iArr[i7][0]) {
                    if (i8 == 0) {
                        break;
                    }
                    this.f12944b = i7;
                    break;
                }
                i7++;
            }
            int i9 = b4 & 255;
            if (i9 == 1) {
                if (i7 < iArr.length) {
                    l0.b0.l0(iArr[i7][1], 0);
                    return;
                }
                return;
            } else {
                if (i9 == 0) {
                    int i10 = this.f12944b;
                    if (i10 < iArr.length && i10 != 255) {
                        l0.b0.l0(iArr[i10][1], 1);
                    }
                    this.f12944b = 255;
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
            return;
        }
        if (b2 == 125) {
            int i11 = bArr[i2 + 2] & 255;
            if (i11 != 1) {
                if (i11 != 3) {
                    return;
                }
                int i12 = ((bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280)) / 100;
                qt.y0(1031, i12);
                o1.x.C(nt.f8643f, 1049, new int[]{1, i12}, null, null);
                return;
            }
            if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                int i13 = i2 + 3;
                l0.c0.b((bArr[i13] >> 3) & 1, (bArr[i13] >> 4) & 1, 0);
                return;
            } else {
                int i14 = i2 + 3;
                l0.c0.a((bArr[i14] >> 3) & 1, (bArr[i14] >> 4) & 1, 0);
                return;
            }
        }
        if (b2 == 127) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        switch (b2) {
            case 39:
                qt.y0(98, bArr[i2 + 2] & 255);
                int i15 = i2 + 3;
                qt.y0(99, (bArr[i15] >> 1) & 1);
                qt.y0(100, (bArr[i15] >> 0) & 1);
                break;
            case 40:
                int i16 = i2 + 2;
                qt.y0(10, (bArr[i16] >> 7) & 1);
                qt.y0(11, (bArr[i16] >> 6) & 1);
                qt.y0(12, (bArr[i16] >> 5) & 1);
                qt.y0(13, (bArr[i16] >> 4) & 1);
                qt.y0(15, (bArr[i16] >> 1) & 1);
                qt.y0(52, (bArr[i16] >> 0) & 1);
                int i17 = i2 + 3;
                int i18 = (bArr[i17] >> 4) & 15;
                if (i18 != 1) {
                    if (i18 == 2) {
                        i4 = 0;
                        i6 = 1;
                    } else if (i18 == 3) {
                        i4 = 0;
                        i6 = 0;
                        i5 = 1;
                    } else if (i18 == 4) {
                        i6 = 0;
                        i4 = 1;
                        i5 = 1;
                    } else if (i18 != 5) {
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
                qt.y0(21, bArr[i17] & DhcpPacket.DHCP_DOMAIN_NAME);
                int i19 = bArr[i2 + 4] & 255;
                if (i19 == 0) {
                    qt.y0(27, -2);
                } else if (i19 == 30) {
                    qt.y0(27, -3);
                } else if (i19 < 1 || i19 > 29) {
                    qt.y0(27, -1);
                } else {
                    qt.y0(27, (i19 * 5) + 170);
                }
                int i20 = bArr[i2 + 5] & 255;
                if (i20 == 254 || i20 == 255 || i20 == 0) {
                    u0.d.A3(0);
                } else {
                    u0.d.A3((i20 * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
                }
                break;
            case 41:
                qt.i(bArr[i2 + 2], bArr[i2 + 3], false, 7800);
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f12950h);
        l0.b0.p0(this.f12951i);
        qt.q0(this.f12947e);
        qt.q0(this.f12948f);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 101) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, 144, 2, iArr[0], iArr[1]);
        } else if (i2 == 1) {
            z.k.s(227, 224, 2, iArr[0], iArr[1]);
        } else {
            if (i2 != 2) {
                return;
            }
            z.k.s(227, 117, 2, iArr[0], iArr[1]);
        }
    }
}
