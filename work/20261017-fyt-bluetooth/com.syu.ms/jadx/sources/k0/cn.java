package k0;

import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class cn extends lt implements o1.q {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f4148f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f4144b = new byte[1024];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f4145c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f4146d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f4147e = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f4149g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int[][] f4150h = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 18}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 13}};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int[] f4151i = {34, 204};

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f4152j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int[] f4153k = {34, 204};

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f4154l = 0;

    public static void c3(byte[] bArr) {
        if (bArr == null || bArr.length <= 2) {
            return;
        }
        int length = bArr.length - 1;
        byte b2 = 0;
        for (int i2 = 1; i2 <= length; i2++) {
            b2 = (byte) (b2 + bArr[i2]);
        }
        bArr[length] = (byte) (b2 ^ 255);
        z.k.q(bArr);
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
        mtVar.f8314i = 0;
        mtVar.f8317l = 0;
        mtVar.f8312g = 1;
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
        if (b2 == 32) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f4149g = b3 & 255;
            int i7 = 0;
            while (true) {
                iArr = this.f4150h;
                if (i7 >= iArr.length) {
                    break;
                }
                int i8 = this.f4149g;
                if (i8 == iArr[i7][0]) {
                    if (i8 == 0) {
                        break;
                    }
                    this.f4148f = i7;
                    break;
                }
                i7++;
            }
            if (this.f4149g == 5) {
                if ((b4 & 255) == 1) {
                    int i9 = h0.c.E;
                    if (i9 != 3 && i9 != 5) {
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
            int i10 = b4 & 255;
            if (i10 == 1) {
                if (i7 < iArr.length) {
                    l0.b0.l0(iArr[i7][1], 0);
                    return;
                }
                return;
            } else {
                if (i10 == 0) {
                    int i11 = this.f4148f;
                    if (i11 < iArr.length && i11 != 255) {
                        l0.b0.l0(iArr[i11][1], 1);
                    }
                    this.f4148f = 255;
                    return;
                }
                return;
            }
        }
        if (b2 == 38) {
            qt.i(bArr[i2 + 3], bArr[i2 + 2], false, 5560);
            return;
        }
        if (b2 == 85) {
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                int i12 = i2 + 2;
                if ((bArr[i12] & 255) < 10) {
                    qt.y0(28, -1);
                } else {
                    qt.y0(28, bArr[i12] & 255);
                }
                int i13 = i2 + 3;
                if ((bArr[i13] & 255) < 10) {
                    qt.y0(27, -1);
                } else {
                    qt.y0(27, bArr[i13] & 255);
                }
            } else {
                int i14 = i2 + 2;
                if ((bArr[i14] & 255) < 10) {
                    qt.y0(27, -1);
                } else {
                    qt.y0(27, bArr[i14] & 255);
                }
                int i15 = i2 + 3;
                if ((bArr[i15] & 255) < 10) {
                    qt.y0(28, -1);
                } else {
                    qt.y0(28, bArr[i15] & 255);
                }
            }
            int i16 = i2 + 4;
            int i17 = (bArr[i16] >> 4) & 15;
            if (i17 != 1) {
                if (i17 == 2) {
                    i4 = 0;
                    i6 = 1;
                } else if (i17 == 3) {
                    i4 = 0;
                    i6 = 0;
                    i5 = 1;
                } else if (i17 == 4) {
                    i6 = 0;
                    i4 = 1;
                    i5 = 1;
                } else if (i17 != 6) {
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
            qt.y0(21, (bArr[i16] >> 0) & 15);
            int i18 = i2 + 5;
            qt.y0(29, (bArr[i18] >> 0) & 3);
            qt.y0(30, (bArr[i18] >> 4) & 3);
            int i19 = i2 + 6;
            qt.y0(13, (bArr[i19] >> 0) & 1);
            qt.y0(11, (bArr[i19] >> 1) & 1);
            qt.y0(14, (bArr[i19] >> 2) & 1);
            qt.y0(15, (bArr[i19] >> 5) & 1);
            qt.y0(16, (bArr[i19] >> 6) & 1);
            qt.y0(12, (bArr[i2 + 7] >> 0) & 3);
            u0.d.A3(((bArr[i2 + 9] & 255) * 10) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
            return;
        }
        if (b2 == 125) {
            if ((bArr[i2 + 2] & 255) != 1) {
                return;
            }
            int i20 = i2 + 3;
            l0.c0.a((bArr[i20] >> 3) & 1, (bArr[i20] >> 4) & 1, 0);
            o1.x.C(nt.f8643f, 1049, new int[]{11, bArr[i20] & 255}, null, null);
            return;
        }
        if (b2 == 87) {
            qt.L("OD-23-05-20" + ((int) bArr[i2 + 4]) + "_" + ((int) bArr[i2 + 5]) + "_" + ((int) bArr[i2 + 6]) + "_V" + ((int) bArr[i2 + 7]));
            return;
        }
        if (b2 == 88) {
            int i21 = i2 + 2;
            qt.y0(99, (bArr[i21] >> 4) & 1);
            qt.y0(100, (bArr[i21] >> 5) & 1);
            qt.y0(101, (bArr[i21] >> 6) & 1);
            return;
        }
        switch (b2) {
            case 34:
                u0.d.R2(l0.c0.u1(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.u1(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.u1(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.u1(bArr[i2 + 5] & 255));
                break;
            case 35:
                int i22 = i2 + 2;
                int i23 = bArr[i22] & 255;
                int i24 = i2 + 3;
                int i25 = bArr[i24] & 255;
                int i26 = i2 + 4;
                int i27 = bArr[i26] & 255;
                int i28 = i2 + 5;
                int i29 = bArr[i28] & 255;
                if (i23 == 0 && i25 == 0 && i27 == 0 && i29 == 0) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i23 || l0.c0.f13014h != i25 || l0.c0.f13015i != i27 || l0.c0.f13016j != i29) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i23;
                l0.c0.f13014h = i25;
                l0.c0.f13015i = i27;
                l0.c0.f13016j = i29;
                u0.d.D2(l0.c0.u1(bArr[i22] & 255));
                u0.d.E2(l0.c0.u1(bArr[i24] & 255));
                u0.d.F2(l0.c0.u1(bArr[i26] & 255));
                u0.d.G2(l0.c0.u1(bArr[i28] & 255));
                break;
            case 36:
                byte b5 = bArr[i2 + 2];
                if (!SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b5 >> 0) & 1);
                    qt.y0(2, (b5 >> 1) & 1);
                } else {
                    qt.y0(1, (b5 >> 1) & 1);
                    qt.y0(2, (b5 >> 0) & 1);
                }
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
        if (i2 < 0 || i2 >= 102) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            a3(iArr[0]);
        } else {
            if (i2 != 1) {
                return;
            }
            b3(iArr[0]);
        }
    }

    public final void a3(int i2) {
        z.k.s(227, 51, 5, i2, this.f4151i[this.f4152j % 2], 37, 0, 170);
        z.k.s(227, 51, 5, i2, this.f4151i[this.f4152j % 2], 37, 0, 170);
        z.k.s(227, 51, 5, i2, this.f4151i[this.f4152j % 2], 37, 0, 170);
        byte b2 = (byte) i2;
        c3(new byte[]{46, DhcpPacket.DHCP_LEASE_TIME, 5, b2, (byte) this.f4151i[this.f4152j % 2], 37, 0, -86, 0});
        c3(new byte[]{46, DhcpPacket.DHCP_LEASE_TIME, 5, b2, (byte) this.f4151i[this.f4152j % 2], 37, 0, -86, 0});
        c3(new byte[]{46, DhcpPacket.DHCP_LEASE_TIME, 5, b2, (byte) this.f4151i[this.f4152j % 2], 37, 0, -86, 0});
        int i3 = this.f4152j + 1;
        this.f4152j = i3;
        this.f4152j = i3 % 2;
    }

    @Override // o1.q
    public void b(byte[] bArr) {
        int i2;
        int i3;
        int i4;
        if (bArr != null) {
            a.f.p().t(LogType.CANBUS, "OBD Rcv--> " + o1.b0.d(bArr, 0, bArr.length));
        }
        if (bArr == null || bArr.length <= 0) {
            a.i.a0(100L);
            return;
        }
        if (this.f4145c + bArr.length > 1024) {
            this.f4145c = 0;
            this.f4146d = 0;
            this.f4147e = 0;
        }
        System.arraycopy(bArr, 0, this.f4144b, this.f4145c, bArr.length);
        int length = this.f4145c + bArr.length;
        this.f4145c = length;
        int i5 = this.f4147e;
        if (i5 != 0) {
            if (i5 >= length) {
                return;
            }
            byte b2 = this.f4144b[1];
            int i6 = 2;
            while (true) {
                i4 = this.f4147e;
                if (i6 >= i4) {
                    break;
                }
                b2 = (byte) (b2 + this.f4144b[i6]);
                i6++;
            }
            byte b3 = (byte) (b2 ^ 255);
            byte[] bArr2 = this.f4144b;
            if (b3 == bArr2[i4]) {
                U2(bArr2, 1, i4 - 1);
                z.a.f18158i.i(new byte[]{-1});
                this.f4146d = this.f4147e + 1;
            } else {
                this.f4146d = 1;
            }
            this.f4147e = 0;
        }
        int i7 = this.f4145c - 2;
        while (true) {
            i2 = this.f4146d;
            if (i2 >= i7) {
                break;
            }
            byte[] bArr3 = this.f4144b;
            if (bArr3[i2] == 46) {
                int i8 = bArr3[i2 + 2] & 255;
                this.f4147e = i8;
                int i9 = i8 + i2 + 3;
                this.f4147e = i9;
                if (i9 >= this.f4145c) {
                    this.f4147e = i9 - i2;
                    break;
                }
                byte b4 = bArr3[i2 + 1];
                int i10 = i2 + 2;
                while (true) {
                    i3 = this.f4147e;
                    if (i10 >= i3) {
                        break;
                    }
                    b4 = (byte) (b4 + this.f4144b[i10]);
                    i10++;
                }
                byte b5 = (byte) (b4 ^ 255);
                byte[] bArr4 = this.f4144b;
                if (b5 == bArr4[i3]) {
                    int i11 = this.f4146d;
                    U2(bArr4, i11 + 1, (i3 - i11) - 1);
                    z.a.f18158i.i(new byte[]{-1});
                    this.f4146d = this.f4147e;
                } else {
                    this.f4146d++;
                }
                this.f4147e = 0;
            }
            this.f4146d++;
        }
        if (i2 != 0) {
            int i12 = this.f4145c - i2;
            this.f4145c = i12;
            if (i12 != 0) {
                byte[] bArr5 = this.f4144b;
                System.arraycopy(bArr5, i2, bArr5, 0, i12);
            }
            this.f4146d = 0;
        }
    }

    public final void b3(int i2) {
        z.k.s(227, 52, 5, i2, this.f4153k[this.f4154l % 2], 37, 0, 170);
        z.k.s(227, 52, 5, i2, this.f4153k[this.f4154l % 2], 37, 0, 170);
        z.k.s(227, 52, 5, i2, this.f4153k[this.f4154l % 2], 37, 0, 170);
        byte b2 = (byte) i2;
        c3(new byte[]{46, 52, 5, b2, (byte) this.f4151i[this.f4154l % 2], 37, 0, -86, 0});
        c3(new byte[]{46, 52, 5, b2, (byte) this.f4151i[this.f4154l % 2], 37, 0, -86, 0});
        c3(new byte[]{46, 52, 5, b2, (byte) this.f4151i[this.f4154l % 2], 37, 0, -86, 0});
        int i3 = this.f4154l + 1;
        this.f4154l = i3;
        this.f4154l = i3 % 2;
    }
}
