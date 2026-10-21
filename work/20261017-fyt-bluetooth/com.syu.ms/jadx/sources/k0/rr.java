package k0;

import android.net.dhcp.DhcpPacket;
import android.net.wifi.BatchedScanSettings;
import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class rr extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f10037b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f10038c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f10039d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 18}, new int[]{7, 2}, new int[]{14, 34}, new int[]{15, 35}, new int[]{16, 32}, new int[]{17, 33}, new int[]{18, 29}, new int[]{24, 13}, new int[]{90, 12}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f10040e = new a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f10041f = new b();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f10042g = new c();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f10043h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f10044i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f10045j = new d();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f10046k = new e();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            rr rrVar = rr.this;
            int i2 = rrVar.f10043h;
            if (i2 > 0) {
                rrVar.f10043h = i2 - 1;
            }
            if (rrVar.f10043h == 0) {
                rr.b3();
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            rr rrVar = rr.this;
            int i2 = rrVar.f10043h;
            if (i2 > 0) {
                rrVar.f10043h = i2 - 1;
            }
            if (rrVar.f10043h == 0) {
                rr.a3();
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            rr.this.c3();
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(rr.this.f10046k);
            rr.this.f10044i = 5;
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            rr rrVar = rr.this;
            int i2 = rrVar.f10044i - 1;
            rrVar.f10044i = i2;
            if (i2 <= 0) {
                l0.b0.p0(rrVar.f10046k);
                rr.this.f10044i = 5;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (u0.b.f17306a0 == 1) {
                if (!o1.u.S(a.b.Q) && u0.b.D != 13) {
                    z.k.s(227, 198, 2, 167, 0);
                }
                switch (nt.f8637c) {
                    case 69:
                        z.k.s(227, 139, 2, 2, u0.b.f17357r0);
                        break;
                    case 70:
                        z.k.s(227, 139, 2, 3, u0.b.f17357r0);
                        break;
                    case 71:
                        z.k.s(227, 139, 2, 5, u0.b.f17357r0);
                        break;
                    case 72:
                        z.k.s(227, 139, 2, 5, u0.b.f17357r0);
                        break;
                    case 73:
                        z.k.s(227, 139, 2, 6, u0.b.f17357r0);
                        break;
                    case 74:
                        z.k.s(227, 139, 2, 7, u0.b.f17357r0);
                        break;
                    case 75:
                        z.k.s(227, 139, 2, 8, u0.b.f17357r0);
                        break;
                    case 76:
                        z.k.s(227, 139, 2, 9, u0.b.f17357r0);
                        break;
                    case 77:
                        z.k.s(227, 139, 2, 10, u0.b.f17357r0);
                        break;
                    case 78:
                        z.k.s(227, 139, 2, 11, u0.b.f17357r0);
                        break;
                    case 79:
                        z.k.s(227, 139, 2, 12, u0.b.f17357r0);
                        break;
                    case 80:
                        z.k.s(227, 139, 2, 13, u0.b.f17357r0);
                        break;
                    case 81:
                        z.k.s(227, 139, 2, 14, u0.b.f17357r0);
                        break;
                    case 82:
                        z.k.s(227, 139, 2, 15, u0.b.f17357r0);
                        break;
                    case 83:
                        z.k.s(227, 139, 2, 16, u0.b.f17357r0);
                        break;
                    case 84:
                        z.k.s(227, 139, 2, 17, u0.b.f17357r0);
                        break;
                    case 85:
                        z.k.s(227, 139, 2, 18, u0.b.f17357r0);
                        break;
                    case 86:
                        z.k.s(227, 139, 2, 19, u0.b.f17357r0);
                        break;
                    case 87:
                        z.k.s(227, 139, 2, 20, u0.b.f17357r0);
                        break;
                    case 88:
                        z.k.s(227, 139, 2, 21, u0.b.f17357r0);
                        break;
                    case 89:
                        z.k.s(227, 139, 2, 22, u0.b.f17357r0);
                        break;
                    case 90:
                        z.k.s(227, 139, 2, 23, u0.b.f17357r0);
                        break;
                    case 91:
                        z.k.s(227, 139, 2, 24, u0.b.f17357r0);
                        break;
                    case 92:
                        z.k.s(227, 139, 2, 25, u0.b.f17357r0);
                        break;
                    case 93:
                        z.k.s(227, 139, 2, 26, u0.b.f17357r0);
                        break;
                    case 94:
                        z.k.s(227, 139, 2, 26, u0.b.f17357r0);
                        break;
                    case 95:
                        z.k.s(227, 139, 2, 27, u0.b.f17357r0);
                        break;
                    case 96:
                        z.k.s(227, 139, 2, 28, u0.b.f17357r0);
                        break;
                    case 97:
                        z.k.s(227, 139, 2, 29, u0.b.f17357r0);
                        break;
                    case 98:
                        z.k.s(227, 139, 2, 30, u0.b.f17357r0);
                        break;
                    case 99:
                        z.k.s(227, 139, 2, 31, u0.b.f17357r0);
                        break;
                    case 100:
                        z.k.s(227, 139, 2, 32, u0.b.f17357r0);
                        break;
                }
            }
        }
    }

    public static void a3() {
        int[] iArr = new int[10];
        int i2 = 0;
        iArr[0] = 192;
        int i3 = u0.b.D;
        if (i3 == 8 || i3 == 10) {
            iArr[1] = 8;
            iArr[2] = 2;
            int i4 = u0.b.r3;
            iArr[3] = (i4 >> 0) & 255;
            iArr[4] = (i4 >> 8) & 255;
            int i5 = u0.b.s3;
            iArr[5] = (i5 >> 0) & 255;
            iArr[6] = (i5 >> 8) & 255;
            int i6 = u0.b.t3;
            iArr[7] = i6 / BatchedScanSettings.MAX_INTERVAL_SEC;
            iArr[8] = (i6 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60;
            iArr[9] = i6 % 60;
            int[] iArr2 = new int[11];
            iArr2[0] = 227;
            while (i2 < 10) {
                int i7 = i2 + 1;
                iArr2[i7] = iArr[i2];
                i2 = i7;
            }
            z.k.s(iArr2);
        }
    }

    public static void b3() {
        if (u0.b.D != 1) {
            return;
        }
        int[] iArr = new int[7];
        int i2 = 0;
        iArr[0] = 192;
        iArr[1] = 5;
        iArr[2] = 1;
        int i3 = w0.d.f17798j & 255;
        int i4 = w0.d.f17797i;
        int i5 = w0.d.f17796h;
        if (i5 == 65536) {
            iArr[3] = 0;
        } else if (i5 == 65537) {
            iArr[3] = 1;
        } else if (i5 == 65538) {
            iArr[3] = 2;
        } else if (i5 == 0 || i5 == 1) {
            iArr[3] = 16;
        }
        iArr[4] = i4 & 255;
        iArr[5] = (i4 >> 8) & 255;
        int i6 = i3 % 6;
        if (i6 != 0 || i3 == 0) {
            iArr[6] = i6;
        } else {
            iArr[6] = 6;
        }
        int[] iArr2 = new int[8];
        iArr2[0] = 227;
        while (i2 < 7) {
            int i7 = i2 + 1;
            iArr2[i7] = iArr[i2];
            i2 = i7;
        }
        z.k.s(iArr2);
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
        mtVar.f8317l = 1;
        u0.c.f17386m.a(this.f10045j, 1);
        w0.e.f17815a.a(this.f10040e, 1);
        w0.e.f17819e.a(this.f10040e, 1);
        u0.c.f17393t.a(this.f10041f, 1);
        u0.c.f17392s.a(this.f10041f, 1);
        o1.y yVar = u0.c.f17374a;
        yVar.a(this.f10041f, 1);
        yVar.a(this.f10040e, 1);
        y0.g.f18094d.a(this.f10042g, 1);
        y0.g.f18095e.a(this.f10042g, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5 = bArr[i2] & 255;
        if (i5 == 32) {
            byte b2 = bArr[i2 + 2];
            byte b3 = bArr[i2 + 3];
            this.f10038c = b2 & 255;
            int i6 = 0;
            while (true) {
                iArr = this.f10039d;
                if (i6 >= iArr.length) {
                    break;
                }
                int i7 = this.f10038c;
                if (i7 == iArr[i6][0]) {
                    if (i7 == 0) {
                        break;
                    }
                    this.f10037b = i6;
                    break;
                }
                i6++;
            }
            int i8 = b3 & 255;
            if (i8 == 1) {
                if (i6 < iArr.length) {
                    l0.b0.l0(iArr[i6][1], 0);
                    return;
                }
                return;
            } else {
                if (i8 == 0) {
                    int i9 = this.f10037b;
                    if (i9 < iArr.length && i9 != 255) {
                        l0.b0.l0(iArr[i9][1], 1);
                    }
                    this.f10037b = 255;
                    return;
                }
                return;
            }
        }
        if (i5 == 33) {
            int i10 = bArr[i2 + 2] & 255;
            int i11 = bArr[i2 + 3] & 255;
            int i12 = i2 + 4;
            int i13 = bArr[i12] & 255;
            int i14 = i2 + 5;
            int i15 = bArr[i14] & 255;
            qt.y0(10, (i10 >> 7) & 1);
            qt.y0(11, (i10 >> 6) & 1);
            qt.y0(12, (i10 >> 5) & 1);
            qt.y0(16, (i10 >> 4) & 1);
            qt.y0(13, (i10 >> 3) & 1);
            qt.y0(14, (i10 >> 2) & 1);
            qt.y0(15, (i10 >> 1) & 1);
            qt.y0(18, (i11 >> 7) & 1);
            qt.y0(19, (i11 >> 6) & 1);
            qt.y0(20, (i11 >> 5) & 1);
            qt.y0(21, i11 & 15);
            int i16 = i2 + 6;
            qt.y0(37, (bArr[i16] >> 6) & 1);
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                i13 = bArr[i14] & 255;
                i15 = bArr[i12] & 255;
            }
            if (i13 == 0) {
                qt.y0(27, -2);
            } else if (i13 != 127) {
                qt.y0(27, i13);
            } else {
                qt.y0(27, -3);
            }
            if (i15 == 0) {
                qt.y0(28, -2);
            } else if (i15 != 127) {
                qt.y0(27, i15);
            } else {
                qt.y0(28, -3);
            }
            qt.y0(53, (bArr[i16] >> 7) & 1);
            qt.y0(26, (bArr[i16] >> 5) & 1);
            qt.y0(43, (bArr[i16] >> 4) & 1);
            int i17 = bArr[i2 + 7] & 255;
            if (i17 == 0) {
                u0.d.A3(0);
                return;
            }
            boolean z2 = (i17 & 128) != 0;
            if (nt.f8645g[37] == 1) {
                i4 = ((z2 ? 1320 - ((256 - i17) * 18) : ((i17 & 255) * 18) + 1320) | 268435456) & (-1);
            } else {
                i4 = z2 ? 1000 - ((256 - i17) * 10) : ((i17 & 255) * 10) + 1000;
            }
            u0.d.B3(i4);
            return;
        }
        if (i5 == 36) {
            int i18 = bArr[i2 + 2] & 255;
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(2, (i18 >> 6) & 1);
                qt.y0(1, (i18 >> 7) & 1);
            } else {
                qt.y0(2, (i18 >> 7) & 1);
                qt.y0(1, (i18 >> 6) & 1);
            }
            qt.y0(4, (i18 >> 5) & 1);
            qt.y0(3, (i18 >> 4) & 1);
            qt.y0(5, (i18 >> 3) & 1);
            return;
        }
        if (i5 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (i5 == 80) {
            if (bArr[i2 + 2] == 1) {
                qt.a(1);
                return;
            } else {
                qt.a(0);
                return;
            }
        }
        if (i5 == 103) {
            int i19 = i2 + 3;
            l0.c0.N1((bArr[i19] >> 1) & 1, (bArr[i19] >> 0) & 1, 0);
            return;
        }
        if (i5 != 107) {
            return;
        }
        int i20 = i2 + 2;
        qt.y0(29, (bArr[i20] >> 0) & 3);
        qt.y0(30, (bArr[i20] >> 2) & 3);
        qt.y0(31, (bArr[i20] >> 4) & 3);
        qt.y0(32, (bArr[i20] >> 6) & 3);
        qt.y0(65, (bArr[i2 + 3] >> 0) & 1);
        int i21 = i2 + 4;
        qt.y0(67, (bArr[i21] >> 7) & 1);
        qt.y0(42, (bArr[i21] >> 6) & 1);
        qt.y0(44, bArr[i21] & DhcpPacket.DHCP_DOMAIN_NAME);
        int i22 = i2 + 5;
        if (((bArr[i22] >> 6) & 3) == 0) {
            qt.y0(40, 5);
        } else if (((bArr[i22] >> 6) & 3) == 1) {
            qt.y0(40, 5 - (bArr[i22] & 63));
        } else if (((bArr[i22] >> 6) & 3) == 2) {
            qt.y0(40, (bArr[i22] & 63) + 5);
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f10045j);
        l0.b0.p0(l0.c0.f13021o);
        y0.g.f18094d.d(this.f10042g);
        y0.g.f18095e.d(this.f10042g);
        w0.e.f17815a.d(this.f10040e);
        w0.e.f17819e.d(this.f10040e);
        u0.c.f17393t.d(this.f10041f);
        u0.c.f17392s.d(this.f10041f);
        o1.y yVar = u0.c.f17374a;
        yVar.d(this.f10041f);
        yVar.d(this.f10040e);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 98) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            z.k.s(227, 198, 2, 167, iArr[0]);
            return;
        }
        if (i2 == 1) {
            if (iArr == null || iArr.length < 5) {
                return;
            }
            z.k.s(227, 204, 5, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4]);
            return;
        }
        if (i2 == 2 && iArr != null && iArr.length > 0) {
            z.k.s(227, 198, 2, 172, iArr[0]);
        }
    }

    public void c3() {
        int i2;
        this.f10043h = 4;
        if (y0.f.f18055i == 1 || (i2 = y0.f.C0) == 0) {
            z.k.s(227, -62, 1, 0);
        } else if (i2 >= 30) {
            z.k.s(227, -62, 1, 30);
        } else {
            z.k.s(227, -62, 1, i2);
        }
    }
}
