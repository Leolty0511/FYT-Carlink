package k0;

import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import android.provider.CalendarContract;

/* JADX INFO: loaded from: classes2.dex */
public class fj extends lt {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f5195d;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f5198g;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f5193b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f5194c = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f5196e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int[][] f5197f = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, 13}, new int[]{5, 18}, new int[]{6, 26}, new int[]{7, -1}, new int[]{8, 3}, new int[]{9, 4}, new int[]{10, 2}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f5199h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int[][] f5200i = {new int[]{1, 0}, new int[]{2, 3}, new int[]{3, 4}, new int[]{4, 29}, new int[]{5, 38}, new int[]{6, 6}, new int[]{7, 21}, new int[]{8, 53}, new int[]{9, 12}, new int[]{10, 40}, new int[]{11, 41}, new int[]{12, 42}, new int[]{13, 43}, new int[]{14, 44}, new int[]{15, 45}, new int[]{16, 16}, new int[]{17, 11}, new int[]{18, 58}, new int[]{19, 56}, new int[]{20, 2}, new int[]{21, 39}, new int[]{22, 29}, new int[]{23, 34}, new int[]{24, 35}, new int[]{25, 32}, new int[]{26, 33}, new int[]{27, 34}, new int[]{28, 33}, new int[]{29, 35}, new int[]{30, 32}, new int[]{31, 53}, new int[]{32, 1}, new int[]{33, -1}, new int[]{34, -1}, new int[]{35, -1}, new int[]{36, 54}, new int[]{37, 65}, new int[]{38, 54}, new int[]{39, 1}, new int[]{40, 18}, new int[]{41, -1}, new int[]{42, 29}, new int[]{43, 5}, new int[]{44, 2}, new int[]{45, 54}, new int[]{46, 10}, new int[]{47, 5}, new int[]{48, 18}, new int[]{49, 71}, new int[]{50, -1}, new int[]{51, 24}, new int[]{52, 18}, new int[]{53, 26}, new int[]{54, -1}, new int[]{55, 55}, new int[]{56, 1}, new int[]{57, 25}, new int[]{60, 66}, new int[]{61, -1}, new int[]{62, -1}, new int[]{63, 13}, new int[]{64, 25}, new int[]{65, -1}, new int[]{66, 38}, new int[]{67, 64}, new int[]{69, 7}, new int[]{70, 8}, new int[]{71, 74}, new int[]{72, 75}, new int[]{73, -1}, new int[]{74, -1}, new int[]{75, 21}, new int[]{76, 18}, new int[]{77, 27}, new int[]{78, 28}, new int[]{79, 56}, new int[]{80, 56}, new int[]{81, 63}, new int[]{82, -1}, new int[]{83, 12}, new int[]{84, -1}, new int[]{85, -1}, new int[]{86, 22}, new int[]{87, 4}, new int[]{88, 3}, new int[]{89, 4}, new int[]{90, 3}, new int[]{91, 4}, new int[]{92, 3}, new int[]{93, -1}, new int[]{94, -1}, new int[]{95, -1}, new int[]{96, -1}, new int[]{97, 62}, new int[]{98, 15}, new int[]{99, 10}};

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f5201j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f5202k = new a();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f5203l = new b();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(fj.this.f5203l);
            fj fjVar = fj.this;
            fjVar.f5201j = 5;
            fjVar.f5193b = 0;
            fjVar.f5194c = 0;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            fj fjVar = fj.this;
            int i2 = fjVar.f5201j - 1;
            fjVar.f5201j = i2;
            if (i2 <= 0) {
                l0.b0.p0(fjVar.f5203l);
                fj.this.f5201j = 5;
            }
            if (u0.b.f17306a0 == 1) {
                switch (nt.f8637c) {
                    case 14:
                        z.k.s(227, 2, 36, 1, 21);
                        break;
                    case 15:
                        z.k.s(227, 2, 36, 2, 21);
                        break;
                    case 16:
                        z.k.s(227, 2, 36, 3, 21);
                        break;
                    case 17:
                        z.k.s(227, 2, 36, 4, 21);
                        break;
                    case 18:
                        z.k.s(227, 2, 36, 5, 21);
                        break;
                    case 19:
                        z.k.s(227, 2, 36, 6, 21);
                        break;
                    case 20:
                        z.k.s(227, 2, 36, 7, 21);
                        break;
                    case 21:
                        z.k.s(227, 2, 36, 8, 21);
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
        mt mtVar = this.f7886a;
        mtVar.f8306a = null;
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8320o = 0;
        qt.z(l0.g0.f13049e);
        u0.c.f17386m.a(this.f5202k, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int[][] iArr2;
        int i5;
        byte b2 = bArr[i2 + 1];
        if (b2 == 33) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f5199h = b3 & 255;
            int i6 = 0;
            while (true) {
                iArr = this.f5200i;
                if (i6 >= iArr.length) {
                    break;
                }
                int i7 = this.f5199h;
                if (i7 == iArr[i6][0]) {
                    if (i7 == 0) {
                        break;
                    }
                    this.f5198g = i6;
                    break;
                }
                i6++;
            }
            if (b4 == 1) {
                if (i6 < iArr.length) {
                    l0.b0.l0(iArr[i6][1], 0);
                    return;
                }
                return;
            } else {
                if (b4 == 0) {
                    int i8 = this.f5198g;
                    if (i8 < iArr.length) {
                        l0.b0.l0(iArr[i8][1], 1);
                    }
                    this.f5198g = 255;
                    return;
                }
                return;
            }
        }
        if (b2 == 34) {
            byte b5 = bArr[i2 + 2];
            byte b6 = bArr[i2 + 3];
            if (b5 == 0) {
                this.f5193b = 0;
                this.f5194c = 0;
                return;
            }
            if (b5 != 1) {
                if (b5 == 2 && b6 != (i4 = this.f5194c)) {
                    if (b6 > i4) {
                        for (int i9 = 0; i9 < b6 - this.f5194c; i9++) {
                            l0.b0.l0(31, 0);
                        }
                        l0.b0.l0(31, 1);
                    } else if (b6 < i4) {
                        for (int i10 = 0; i10 < this.f5194c - b6; i10++) {
                            l0.b0.l0(30, 0);
                        }
                        l0.b0.l0(30, 1);
                    }
                    this.f5194c = b6;
                    return;
                }
                return;
            }
            int i11 = this.f5193b;
            if (b6 != i11) {
                if (b6 > i11) {
                    for (int i12 = 0; i12 < b6 - this.f5193b; i12++) {
                        l0.b0.l0(7, 0);
                    }
                    l0.b0.l0(7, 1);
                } else if (b6 < i11) {
                    for (int i13 = 0; i13 < this.f5193b - b6; i13++) {
                        l0.b0.l0(8, 0);
                    }
                    l0.b0.l0(8, 1);
                }
                this.f5193b = b6;
                return;
            }
            return;
        }
        if (b2 == 114) {
            qt.p(bArr[i2 + 6] & 255, bArr[i2 + 7] & 255, 140);
            this.f5196e = bArr[i2 + 4] & 255;
            int i14 = 0;
            while (true) {
                iArr2 = this.f5197f;
                if (i14 >= iArr2.length) {
                    break;
                }
                int i15 = this.f5196e;
                if (i15 == iArr2[i14][0]) {
                    if (i15 == 0) {
                        break;
                    }
                    this.f5195d = i14;
                    break;
                }
                i14++;
            }
            if (this.f5196e != 0 && (i5 = this.f5195d) < iArr2.length) {
                l0.b0.l0(iArr2[i5][1], 0);
                l0.b0.l0(this.f5197f[this.f5195d][1], 1);
            }
            u0.d.R2(bArr[i2 + 8] / 25);
            u0.d.S2(bArr[i2 + 9] / 25);
            u0.d.T2(bArr[i2 + 10] / 25);
            u0.d.U2(bArr[i2 + 11] / 25);
            int i16 = i2 + 12;
            int i17 = bArr[i16] & 255;
            int i18 = i2 + 13;
            int i19 = bArr[i18] & 255;
            int i20 = i2 + 14;
            int i21 = bArr[i20] & 255;
            int i22 = i2 + 15;
            int i23 = bArr[i22] & 255;
            int i24 = i17 / 25;
            int i25 = i19 / 25;
            int i26 = i21 / 25;
            int i27 = i23 / 25;
            if (i17 == 255 && i19 == 255 && i21 == 255 && i23 == 255) {
                u0.d.C2(0);
            } else if ((l0.c0.f13013g != i24 || l0.c0.f13014h != i25 || l0.c0.f13015i != i26 || l0.c0.f13016j != i27) && u0.b.f17347o == 0) {
                u0.d.C2(1);
                l0.c0.f13017k = 4;
                l0.b0.b(l0.c0.f13018l);
            }
            l0.c0.f13013g = i24;
            l0.c0.f13014h = i25;
            l0.c0.f13015i = i26;
            l0.c0.f13016j = i27;
            u0.d.D2(bArr[i16] / 25);
            u0.d.E2(bArr[i18] / 25);
            u0.d.F2(bArr[i20] / 25);
            u0.d.G2(bArr[i22] / 25);
            return;
        }
        if (b2 != 115) {
            return;
        }
        byte b7 = bArr[i2 + 2];
        byte b8 = bArr[i2 + 3];
        int i28 = i2 + 4;
        byte b9 = bArr[i28];
        int i29 = i2 + 5;
        byte b10 = bArr[i29];
        byte b11 = bArr[i2 + 6];
        byte b12 = bArr[i2 + 7];
        byte b13 = bArr[i2 + 8];
        byte b14 = bArr[i2 + 9];
        qt.y0(10, (b7 >> 6) & 1);
        qt.y0(12, (b7 >> 4) & 3);
        qt.y0(13, (b7 >> 3) & 1);
        qt.y0(14, (b7 >> 2) & 1);
        qt.y0(15, (b8 >> 7) & 1);
        qt.y0(11, (b8 >> 6) & 1);
        qt.y0(16, (b8 >> 5) & 1);
        qt.y0(65, (b8 >> 4) & 1);
        qt.y0(30, (b8 >> 2) & 3);
        qt.y0(29, (b8 >> 0) & 3);
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            b9 = bArr[i29];
            b10 = bArr[i28];
        }
        int i30 = b9 & 255;
        if (i30 == 0) {
            qt.y0(27, -1);
        } else if (i30 == 1) {
            qt.y0(27, -2);
        } else if (i30 != 255) {
            qt.y0(27, i30);
        } else {
            qt.y0(27, -3);
        }
        int i31 = b10 & 255;
        if (i31 == 0) {
            qt.y0(28, -1);
        } else if (i31 == 1) {
            qt.y0(28, -2);
        } else if (i31 != 255) {
            qt.y0(28, i31);
        } else {
            qt.y0(28, -3);
        }
        qt.y0(18, (b11 >> 4) & 1);
        qt.y0(19, (b11 >> 5) & 1);
        qt.y0(20, (b11 >> 6) & 1);
        qt.y0(21, b11 & DhcpPacket.DHCP_DOMAIN_NAME);
        qt.y0(22, (b12 >> 4) & 1);
        qt.y0(23, (b12 >> 5) & 1);
        qt.y0(24, (b12 >> 6) & 1);
        qt.y0(25, b12 & DhcpPacket.DHCP_DOMAIN_NAME);
        if ((b13 & 128) == 0) {
            u0.d.A3(0);
        } else {
            u0.d.A3(((b13 & 127) * 10) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
        }
        if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
            qt.y0(1, (b14 >> 6) & 1);
            qt.y0(2, (b14 >> 7) & 1);
        } else {
            qt.y0(1, (b14 >> 7) & 1);
            qt.y0(2, (b14 >> 6) & 1);
        }
        qt.y0(3, (b14 >> 5) & 1);
        qt.y0(4, (b14 >> 4) & 1);
        qt.y0(5, (b14 >> 3) & 1);
    }

    @Override // k0.lt
    public void W2() {
        qt.q0(l0.g0.f13049e);
        u0.c.f17386m.d(this.f5202k);
        l0.b0.p0(this.f5203l);
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
    }
}
