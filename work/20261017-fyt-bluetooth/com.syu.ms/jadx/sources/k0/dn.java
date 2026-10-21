package k0;

import android.drm.DrmManagerClient;
import android.net.ProxyProperties;
import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class dn extends lt implements o1.q {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f4553f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f4549b = new byte[1024];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f4550c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f4551d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f4552e = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f4554g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int[][] f4555h = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 18}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 13}, new int[]{16, 1}, new int[]{17, 55}, new int[]{18, 9}, new int[]{19, 54}, new int[]{20, 62}};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f4556i = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f4557j = new a();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f4558k = new b();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int[] f4559l = {34, 204};

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f4560m = 0;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            byte b2 = DateFormat.is24HourFormat(App.c()) ? (byte) 1 : (byte) 0;
            byte b3 = (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN);
            z.k.s(227, -58, 7, (b3 >> 8) & 255, b3 & 255, (byte) (time.month + 1), (byte) time.monthDay, (byte) time.hour, (byte) time.minute, b2);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.c0.e();
        }
    }

    public static void b3(byte[] bArr) {
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
        mtVar.f8317l = 0;
        mtVar.f8312g = 1;
        mtVar.f8320o = 0;
        mtVar.f8314i = 1;
        if (App.c().getResources().getConfiguration().orientation == 1) {
            this.f7886a.f8314i = 0;
        }
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        qt.z(this.f4558k);
        w0.e.f17815a.a(this.f4558k, 1);
        w0.e.f17819e.a(this.f4558k, 1);
        qt.z(this.f4557j);
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
            this.f4554g = b3 & 255;
            int i7 = 0;
            while (true) {
                iArr = this.f4555h;
                if (i7 >= iArr.length) {
                    break;
                }
                int i8 = this.f4554g;
                if (i8 == iArr[i7][0]) {
                    if (i8 == 0) {
                        break;
                    }
                    this.f4553f = i7;
                    break;
                }
                i7++;
            }
            if (this.f4554g == 5) {
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
                    int i11 = this.f4553f;
                    if (i11 < iArr.length && i11 != 255) {
                        l0.b0.l0(iArr[i11][1], 1);
                    }
                    this.f4553f = 255;
                    return;
                }
                return;
            }
        }
        if (b2 == 38) {
            qt.i(bArr[i2 + 2], bArr[i2 + 3], false, 540);
            return;
        }
        if (b2 == 48) {
            String str = new String(bArr, i2 + 2, i3 - 2);
            String str2 = this.f4556i;
            if (str2 == null || str2.equals(ProxyProperties.LOCAL_EXCL_LIST)) {
                qt.L(str);
                return;
            }
            qt.L(str + "_" + this.f4556i);
            return;
        }
        if (b2 == 125) {
            if ((bArr[i2 + 2] & 255) != 1) {
                return;
            }
            int i12 = i2 + 3;
            l0.c0.a((bArr[i12] >> 3) & 1, (bArr[i12] >> 4) & 1, 0);
            o1.x.C(nt.f8643f, 1049, new int[]{11, bArr[i12] & 255}, null, null);
            return;
        }
        if (b2 == 65) {
            qt.y0(99, ((bArr[i2 + 3] << 8) & 65280) | (bArr[i2 + 2] & 255));
            qt.y0(100, bArr[i2 + 4] & 255);
            qt.y0(101, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 5] & 255));
            qt.y0(102, bArr[i2 + 7] & 255);
            qt.y0(103, ((bArr[i2 + 9] << 8) & 65280) | (bArr[i2 + 8] & 255));
            qt.y0(104, bArr[i2 + 10] & 255);
            return;
        }
        if (b2 == 66) {
            qt.y0(106, bArr[i2 + 2] & 255);
            qt.y0(107, bArr[i2 + 3] & 255);
            qt.y0(108, bArr[i2 + 4] & 255);
            qt.y0(109, bArr[i2 + 5] & 255);
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
                int i13 = i2 + 2;
                int i14 = bArr[i13] & 255;
                int i15 = i2 + 3;
                int i16 = bArr[i15] & 255;
                int i17 = i2 + 4;
                int i18 = bArr[i17] & 255;
                int i19 = i2 + 5;
                int i20 = bArr[i19] & 255;
                if (i14 == 0 && i16 == 0 && i18 == 0 && i20 == 0) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i14 || l0.c0.f13014h != i16 || l0.c0.f13015i != i18 || l0.c0.f13016j != i20) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i14;
                l0.c0.f13014h = i16;
                l0.c0.f13015i = i18;
                l0.c0.f13016j = i20;
                u0.d.D2(l0.c0.u1(bArr[i13] & 255));
                u0.d.E2(l0.c0.u1(bArr[i15] & 255));
                u0.d.F2(l0.c0.u1(bArr[i17] & 255));
                u0.d.G2(l0.c0.u1(bArr[i19] & 255));
                break;
            case 36:
                byte b5 = bArr[i2 + 2];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b5 >> 1) & 1);
                    qt.y0(2, (b5 >> 0) & 1);
                } else {
                    qt.y0(1, (b5 >> 0) & 1);
                    qt.y0(2, (b5 >> 1) & 1);
                }
                qt.y0(3, (b5 >> 2) & 1);
                qt.y0(4, (b5 >> 3) & 1);
                break;
            default:
                switch (b2) {
                    case 85:
                        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                            int i21 = i2 + 2;
                            if ((bArr[i21] & 255) < 10) {
                                qt.y0(28, -1);
                            } else {
                                qt.y0(28, bArr[i21] & 255);
                            }
                            int i22 = i2 + 3;
                            if ((bArr[i22] & 255) < 10) {
                                qt.y0(27, -1);
                            } else {
                                qt.y0(27, bArr[i22] & 255);
                            }
                        } else {
                            int i23 = i2 + 2;
                            if ((bArr[i23] & 255) < 10) {
                                qt.y0(27, -1);
                            } else {
                                qt.y0(27, bArr[i23] & 255);
                            }
                            int i24 = i2 + 3;
                            if ((bArr[i24] & 255) < 10) {
                                qt.y0(28, -1);
                            } else {
                                qt.y0(28, bArr[i24] & 255);
                            }
                        }
                        int i25 = i2 + 4;
                        switch ((bArr[i25] >> 4) & 15) {
                            case 1:
                                i4 = 0;
                                i5 = 0;
                                i6 = 1;
                                break;
                            case 2:
                                i4 = 0;
                                i6 = 1;
                                i5 = i6;
                                break;
                            case 3:
                                i4 = 0;
                                i6 = 0;
                                i5 = 1;
                                break;
                            case 4:
                                i6 = 0;
                                i4 = 1;
                                i5 = 1;
                                break;
                            case 5:
                                i5 = 0;
                                i4 = 1;
                                i6 = 1;
                                break;
                            case 6:
                                i6 = 0;
                                i5 = 0;
                                i4 = 1;
                                break;
                            case 7:
                                i4 = 1;
                                i6 = i4;
                                i5 = i6;
                                break;
                            default:
                                i4 = 0;
                                i6 = i4;
                                i5 = i6;
                                break;
                        }
                        qt.y0(18, i4);
                        qt.y0(19, i6);
                        qt.y0(20, i5);
                        qt.y0(21, (bArr[i25] >> 0) & 15);
                        int i26 = i2 + 5;
                        qt.y0(29, (bArr[i26] >> 0) & 3);
                        qt.y0(30, (bArr[i26] >> 4) & 3);
                        int i27 = i2 + 6;
                        qt.y0(13, (bArr[i27] >> 0) & 1);
                        qt.y0(11, (bArr[i27] >> 1) & 1);
                        qt.y0(14, (bArr[i27] >> 2) & 1);
                        qt.y0(15, (bArr[i27] >> 5) & 1);
                        qt.y0(16, (bArr[i27] >> 6) & 1);
                        qt.y0(12, (bArr[i2 + 7] >> 0) & 3);
                        int i28 = bArr[i2 + 9] & 255;
                        int i29 = (i28 * 10) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR;
                        if (i28 == 255 || i28 == 0) {
                            u0.d.A3(0);
                        } else {
                            u0.d.A3(i29);
                        }
                        break;
                    case 86:
                        qt.y0(105, bArr[i2 + 4] & DhcpPacket.DHCP_DOMAIN_NAME);
                        break;
                    case 87:
                        this.f4556i = new String(bArr, i2 + 2, i3 - 2);
                        break;
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(l0.c0.f13020n);
        l0.b0.p0(l0.c0.f13021o);
        qt.q0(this.f4558k);
        w0.e.f17815a.d(this.f4558k);
        w0.e.f17819e.d(this.f4558k);
        qt.q0(this.f4557j);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 110) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            a3(iArr[0]);
        } else if (i2 == 1) {
            z.k.s(227, 144, 2, iArr[0], iArr[1]);
        } else {
            if (i2 != 2) {
                return;
            }
            z.k.s(227, 200, 2, iArr[0], iArr[1]);
        }
    }

    public final void a3(int i2) {
        z.k.s(227, 51, 5, i2, this.f4559l[this.f4560m % 2], 37, 0, 170);
        byte b2 = (byte) i2;
        b3(new byte[]{46, DhcpPacket.DHCP_LEASE_TIME, 5, b2, (byte) this.f4559l[this.f4560m % 2], 37, 0, -86, 0});
        if (App.c().getResources().getConfiguration().orientation == 1) {
            z.k.s(227, 51, 5, i2, this.f4559l[this.f4560m % 2], 37, 0, 170);
            z.k.s(227, 51, 5, i2, this.f4559l[this.f4560m % 2], 37, 0, 170);
            b3(new byte[]{46, DhcpPacket.DHCP_LEASE_TIME, 5, b2, (byte) this.f4559l[this.f4560m % 2], 37, 0, -86, 0});
            b3(new byte[]{46, DhcpPacket.DHCP_LEASE_TIME, 5, b2, (byte) this.f4559l[this.f4560m % 2], 37, 0, -86, 0});
        }
        int i3 = this.f4560m + 1;
        this.f4560m = i3;
        this.f4560m = i3 % 2;
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
        if (this.f4550c + bArr.length > 1024) {
            this.f4550c = 0;
            this.f4551d = 0;
            this.f4552e = 0;
        }
        System.arraycopy(bArr, 0, this.f4549b, this.f4550c, bArr.length);
        int length = this.f4550c + bArr.length;
        this.f4550c = length;
        int i5 = this.f4552e;
        if (i5 != 0) {
            if (i5 >= length) {
                return;
            }
            byte b2 = this.f4549b[1];
            int i6 = 2;
            while (true) {
                i4 = this.f4552e;
                if (i6 >= i4) {
                    break;
                }
                b2 = (byte) (b2 + this.f4549b[i6]);
                i6++;
            }
            byte b3 = (byte) (b2 ^ 255);
            byte[] bArr2 = this.f4549b;
            if (b3 == bArr2[i4]) {
                U2(bArr2, 1, i4 - 1);
                z.a.f18158i.i(new byte[]{-1});
                this.f4551d = this.f4552e + 1;
            } else {
                this.f4551d = 1;
            }
            this.f4552e = 0;
        }
        int i7 = this.f4550c - 2;
        while (true) {
            i2 = this.f4551d;
            if (i2 >= i7) {
                break;
            }
            byte[] bArr3 = this.f4549b;
            if (bArr3[i2] == 46) {
                int i8 = bArr3[i2 + 2] & 255;
                this.f4552e = i8;
                int i9 = i8 + i2 + 3;
                this.f4552e = i9;
                if (i9 >= this.f4550c) {
                    this.f4552e = i9 - i2;
                    break;
                }
                byte b4 = bArr3[i2 + 1];
                int i10 = i2 + 2;
                while (true) {
                    i3 = this.f4552e;
                    if (i10 >= i3) {
                        break;
                    }
                    b4 = (byte) (b4 + this.f4549b[i10]);
                    i10++;
                }
                byte b5 = (byte) (b4 ^ 255);
                byte[] bArr4 = this.f4549b;
                if (b5 == bArr4[i3]) {
                    int i11 = this.f4551d;
                    U2(bArr4, i11 + 1, (i3 - i11) - 1);
                    z.a.f18158i.i(new byte[]{-1});
                    this.f4551d = this.f4552e;
                } else {
                    this.f4551d++;
                }
                this.f4552e = 0;
            }
            this.f4551d++;
        }
        if (i2 != 0) {
            int i12 = this.f4550c - i2;
            this.f4550c = i12;
            if (i12 != 0) {
                byte[] bArr5 = this.f4549b;
                System.arraycopy(bArr5, i2, bArr5, 0, i12);
            }
            this.f4551d = 0;
        }
    }
}
