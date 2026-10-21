package k0;

import android.bluetooth.BluetoothClass;
import android.media.MediaPlayer;
import android.net.dhcp.DhcpPacket;
import android.os.Process;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class hk extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f6040b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f6041c = 255;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f6042d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, 13}, new int[]{5, 18}, new int[]{6, 26}, new int[]{8, 3}, new int[]{9, 4}, new int[]{12, 2}, new int[]{13, 34}, new int[]{14, 35}, new int[]{15, 29}, new int[]{16, 6}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f6043e = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f6044f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f6045g = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f6046h = new b();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(hk.this.f6046h);
            hk.this.f6044f = 5;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            hk hkVar = hk.this;
            int i2 = hkVar.f6044f - 1;
            hkVar.f6044f = i2;
            if (i2 <= 0) {
                l0.b0.p0(hkVar.f6046h);
                hk.this.f6044f = 5;
            }
            if (u0.b.f17306a0 == 1) {
                switch (nt.f8633a) {
                    case 5833148:
                        z.k.s(227, 2, 36, 2, 81);
                        break;
                    case 5898684:
                        z.k.s(227, 2, 36, 3, 81);
                        break;
                    case 5964220:
                        z.k.s(227, 2, 36, 4, 81);
                        break;
                    case 6029756:
                        z.k.s(227, 2, 36, 5, 81);
                        break;
                    case 14942651:
                    case 15008187:
                        z.k.s(227, 2, 36, 1, 81);
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
        mtVar.f8311f = 0;
        mtVar.f8312g = 0;
        mtVar.f8320o = 0;
        mtVar.f8322q = 0;
        mtVar.f8314i = 0;
        mtVar.f8313h = 0;
        u0.c.f17386m.a(this.f6045g, 1);
        switch (nt.f8633a) {
            case 5833148:
                mt mtVar2 = this.f7886a;
                mtVar2.f8306a = new String[]{"com.syu.canbus"};
                mtVar2.f8314i = 1;
                break;
            case 5898684:
            case 5964220:
            case 6029756:
                this.f7886a.f8306a = new String[]{"com.syu.canbus"};
                break;
            case 15008187:
                this.f7886a.f8313h = 2;
                break;
        }
        if (App.c().getResources().getConfiguration().orientation == 1) {
            this.f7886a.f8314i = 0;
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        byte b2 = bArr[i2 + 1];
        if (b2 == -90) {
            qt.y0(98, bArr[i2 + 2] & 255);
            qt.y0(99, bArr[i2 + 3] & 255);
            qt.y0(100, bArr[i2 + 4] & 255);
            qt.y0(101, bArr[i2 + 5] & 255);
            qt.y0(102, bArr[i2 + 6] & 255);
            qt.y0(103, 255 & bArr[i2 + 7]);
            int i12 = i2 + 8;
            qt.y0(104, (bArr[i12] >> 1) & 1);
            qt.y0(105, (bArr[i12] >> 0) & 1);
            return;
        }
        if (b2 == -24) {
            if (nt.f8633a == 15008187) {
                int i13 = i2 + 5;
                if (this.f6043e != (bArr[i13] & 255)) {
                    this.f6043e = bArr[i13] & 255;
                    if (qt.k0()) {
                        if (this.f6043e == 1) {
                            u0.i.l3().g4(131072, true);
                            return;
                        } else {
                            u0.i.l3().g4(131072, false);
                            return;
                        }
                    }
                    if (this.f6043e == 1) {
                        qt.a(1);
                        return;
                    } else {
                        qt.a(0);
                        return;
                    }
                }
                return;
            }
            return;
        }
        if (b2 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 17) {
            byte b3 = bArr[i2 + 4];
            byte b4 = bArr[i2 + 5];
            this.f6041c = b3 & 255;
            int i14 = 0;
            while (true) {
                iArr = this.f6042d;
                if (i14 >= iArr.length) {
                    break;
                }
                int i15 = this.f6041c;
                if (i15 == iArr[i14][0]) {
                    if (i15 == 0) {
                        break;
                    }
                    this.f6040b = i14;
                    break;
                }
                i14++;
            }
            int i16 = b4 & 255;
            if (i16 == 1) {
                if (i14 < iArr.length) {
                    l0.b0.l0(iArr[i14][1], 0);
                }
            } else if (i16 == 0) {
                int i17 = this.f6040b;
                if (i17 < iArr.length && i17 != 255) {
                    l0.b0.l0(iArr[i17][1], 1);
                }
                this.f6040b = 255;
            }
            byte b5 = bArr[i2 + 6];
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
            qt.y0(0, (b5 >> 2) & 1);
            qt.i(bArr[i2 + 9] & 255, bArr[i2 + 8] & 255, true, 540);
            return;
        }
        if (b2 != 49) {
            if (b2 != 65) {
                return;
            }
            u0.d.R2(l0.c0.s1(bArr[i2 + 2] & 255));
            u0.d.S2(l0.c0.K0(bArr[i2 + 3] & 255));
            u0.d.T2(l0.c0.K0(bArr[i2 + 4] & 255));
            u0.d.U2(l0.c0.s1(bArr[i2 + 5] & 255));
            int i18 = i2 + 6;
            int i19 = bArr[i18] & 255;
            int i20 = i2 + 7;
            int i21 = bArr[i20] & 255;
            int i22 = i2 + 8;
            int i23 = bArr[i22] & 255;
            int i24 = i2 + 9;
            int i25 = bArr[i24] & 255;
            if (i19 == 255 && i21 == 255 && i23 == 255 && i25 == 255) {
                u0.d.C2(0);
            } else if ((l0.c0.f13013g != i19 || l0.c0.f13014h != i21 || l0.c0.f13015i != i23 || l0.c0.f13016j != i25) && u0.b.f17347o == 0) {
                u0.d.C2(1);
                l0.c0.f13017k = 4;
                l0.b0.b(l0.c0.f13018l);
            }
            l0.c0.f13013g = i19;
            l0.c0.f13014h = i21;
            l0.c0.f13015i = i23;
            l0.c0.f13016j = i25;
            u0.d.D2(l0.c0.s1(bArr[i18] & 255));
            u0.d.E2(l0.c0.K0(bArr[i20] & 255));
            u0.d.F2(l0.c0.K0(bArr[i22] & 255));
            u0.d.G2(l0.c0.s1(bArr[i24] & 255));
            return;
        }
        int i26 = i2 + 2;
        qt.y0(10, (bArr[i26] >> 6) & 1);
        qt.y0(53, (bArr[i26] >> 5) & 1);
        qt.y0(13, (bArr[i26] >> 3) & 1);
        qt.y0(62, (bArr[i26] >> 2) & 1);
        int i27 = i2 + 3;
        qt.y0(11, (bArr[i27] >> 6) & 1);
        qt.y0(12, (bArr[i27] >> 4) & 1);
        int i28 = i2 + 4;
        qt.y0(16, (bArr[i28] >> 5) & 1);
        qt.y0(65, (bArr[i28] >> 4) & 1);
        qt.y0(29, (bArr[i28] >> 0) & 3);
        qt.y0(30, (bArr[i28] >> 2) & 3);
        int i29 = i2 + 5;
        qt.y0(31, (bArr[i29] >> 4) & 3);
        qt.y0(32, (bArr[i29] >> 6) & 3);
        int i30 = i2 + 6;
        int i31 = bArr[i30] & DhcpPacket.DHCP_DOMAIN_NAME;
        if (i31 == 1) {
            i4 = 0;
            i5 = 0;
            i6 = 0;
            i7 = 1;
        } else if (i31 != 3) {
            if (i31 == 5) {
                i7 = 0;
                i4 = 0;
                i5 = 1;
            } else if (i31 != 6) {
                switch (i31) {
                    case 11:
                        i7 = 0;
                        i5 = 0;
                        i6 = 0;
                        i4 = 1;
                        break;
                    case 12:
                        i7 = 0;
                        i5 = 0;
                        i4 = 1;
                        i6 = 1;
                        break;
                    case 13:
                        i7 = 0;
                        i6 = 0;
                        i4 = 1;
                        i5 = 1;
                        break;
                    case 14:
                        i7 = 0;
                        i4 = 1;
                        i5 = i4;
                        break;
                    default:
                        i7 = 0;
                        i4 = 0;
                        i5 = i4;
                        break;
                }
            } else {
                i7 = 0;
                i4 = 0;
                i6 = 0;
                i5 = 1;
            }
            i6 = i5;
        } else {
            i7 = 0;
            i4 = 0;
            i5 = 0;
            i6 = 1;
        }
        qt.y0(49, i7);
        qt.y0(18, i4);
        qt.y0(19, i5);
        qt.y0(20, i6);
        qt.y0(77, bArr[i30] & DhcpPacket.DHCP_DOMAIN_NAME);
        int i32 = bArr[i30] & DhcpPacket.DHCP_DOMAIN_NAME;
        if (i32 == 1) {
            i8 = 0;
            i9 = 0;
            i10 = 0;
            i11 = 1;
        } else if (i32 != 3) {
            if (i32 == 5) {
                i11 = 0;
                i8 = 0;
                i9 = 1;
            } else if (i32 != 6) {
                switch (i32) {
                    case 11:
                        i11 = 0;
                        i9 = 0;
                        i10 = 0;
                        i8 = 1;
                        break;
                    case 12:
                        i11 = 0;
                        i9 = 0;
                        i8 = 1;
                        i10 = 1;
                        break;
                    case 13:
                        i11 = 0;
                        i10 = 0;
                        i8 = 1;
                        i9 = 1;
                        break;
                    case 14:
                        i11 = 0;
                        i8 = 1;
                        i9 = i8;
                        break;
                    default:
                        i11 = 0;
                        i8 = 0;
                        i9 = i8;
                        break;
                }
            } else {
                i11 = 0;
                i8 = 0;
                i10 = 0;
                i9 = 1;
            }
            i10 = i9;
        } else {
            i11 = 0;
            i8 = 0;
            i9 = 0;
            i10 = 1;
        }
        qt.y0(50, i11);
        qt.y0(22, i8);
        qt.y0(23, i9);
        qt.y0(24, i10);
        qt.y0(21, bArr[i2 + 7] & 255);
        int i33 = i2 + 8;
        int i34 = bArr[i33] & 255;
        int i35 = i2 + 9;
        int i36 = bArr[i35] & 255;
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            i34 = bArr[i35] & 255;
            i36 = bArr[i33] & 255;
        }
        if (i34 == 254) {
            qt.y0(27, -2);
        } else if (i34 == 255) {
            qt.y0(27, -3);
        } else {
            qt.y0(27, i34 * 5);
        }
        if (i36 == 254) {
            qt.y0(28, -2);
        } else if (i36 == 255) {
            qt.y0(28, -3);
        } else {
            qt.y0(28, i36 * 5);
        }
        int i37 = bArr[i2 + 13] & 255;
        if (i37 == 255 || i37 == 0) {
            u0.d.A3(0);
        } else {
            u0.d.A3((i37 * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f6045g);
        l0.b0.p0(this.f6046h);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 106) {
            return;
        }
        y.e.a(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, 2, 61, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 1) {
            z.k.s(227, 2, 173, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 1003) {
            z.k.s(227, 3, 250, 255, 6, 1);
            a.i.a0(150L);
            z.k.s(227, 3, 250, 255, 6, 0);
            return;
        }
        if (i2 == 1029 && T2(iArr, 2)) {
            int iW = (iArr[1] * Process.MEDIA_RW_GID) / a.f.w();
            int i3 = (iArr[2] * 1000) / a.f.i();
            if (App.c().getResources().getConfiguration().orientation == 1) {
                i3 = (iArr[2] * 1000) / BluetoothClass.Device.PHONE_CORDLESS;
                if (a.f.w() == 1200) {
                    i3 = (iArr[2] * 1000) / MediaPlayer.MEDIA_INFO_TIMED_TEXT_ERROR;
                }
            }
            if (iArr[0] == 0) {
                z.k.s(227, 6, 44, 1, (iW >> 8) & 255, iW & 255, (i3 >> 8) & 255, i3 & 255, 0);
            } else if (iArr[0] == 1) {
                z.k.s(227, 6, 44, 0, (iW >> 8) & 255, iW & 255, (i3 >> 8) & 255, i3 & 255, 0);
            }
        }
    }
}
