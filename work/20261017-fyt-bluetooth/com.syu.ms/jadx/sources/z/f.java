package z;

import android.net.dhcp.DhcpPacket;
import android.net.wifi.BatchedScanSettings;
import android.os.BatteryStats;
import android.text.Spanned;
import java.io.UnsupportedEncodingException;
import o1.k0;
import o1.q;
import o1.u;
import o1.w;

/* JADX INFO: loaded from: classes.dex */
public class f implements q {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f18200e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f18201f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte[] f18196a = new byte[1024];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f18197b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f18198c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f18199d = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public k0 f18202g = new k0();

    public final void a(byte[] bArr, int i2, int i3) {
        int iC = (((((c(bArr[i2 + 1] & 255) << 12) & BatteryStats.HistoryItem.STATE_DATA_CONNECTION_MASK) | ((c(bArr[i2 + 2] & 255) << 8) & BatteryStats.HistoryItem.STATE_PHONE_STATE_MASK)) | ((c(bArr[i2 + 3] & 255) << 4) & 240)) | (c(bArr[i2 + 4] & 255) & 15)) - 1;
        if (iC < 0 || iC >= 10240) {
            return;
        }
        String str = null;
        try {
            str = new String(bArr, i2 + 6, i3 - 6, o0.e.f16786l);
        } catch (UnsupportedEncodingException e2) {
            e2.printStackTrace();
        }
        o0.e.U[iC] = str;
        int i4 = iC + 1;
        if (i4 > o0.e.f16796t) {
            o0.g.b(i4);
        }
        int i5 = o0.e.f16802z;
    }

    @Override // o1.q
    public void b(byte[] bArr) {
        int i2;
        int i3;
        int i4;
        if (bArr == null || bArr.length <= 0) {
            return;
        }
        if (this.f18197b + bArr.length > 1024) {
            this.f18197b = 0;
            this.f18198c = 0;
            this.f18199d = 0;
        }
        System.arraycopy(bArr, 0, this.f18196a, this.f18197b, bArr.length);
        int length = this.f18197b + bArr.length;
        this.f18197b = length;
        int i5 = this.f18199d;
        if (i5 != 0) {
            if (i5 >= length) {
                return;
            }
            int i6 = 2;
            byte b2 = 0;
            while (true) {
                i4 = this.f18199d;
                if (i6 >= i4) {
                    break;
                }
                b2 = (byte) (b2 + this.f18196a[i6]);
                i6++;
            }
            byte b3 = (byte) (~b2);
            byte[] bArr2 = this.f18196a;
            if (b3 == bArr2[i4]) {
                i(bArr2, 3, i4 - 3);
                this.f18198c = this.f18199d + 1;
            } else {
                this.f18198c = 2;
            }
            this.f18199d = 0;
        }
        int i7 = this.f18197b - 3;
        while (true) {
            i2 = this.f18198c;
            if (i2 >= i7) {
                break;
            }
            byte[] bArr3 = this.f18196a;
            if (bArr3[i2] == -1 && bArr3[i2 + 1] == 85) {
                int i8 = i2 + 2 + (bArr3[i2 + 2] & 255);
                this.f18199d = i8;
                if (i8 >= this.f18197b) {
                    this.f18199d = i8 - i2;
                    break;
                }
                int i9 = i2 + 2;
                byte b4 = 0;
                while (true) {
                    i3 = this.f18199d;
                    if (i9 >= i3) {
                        break;
                    }
                    b4 = (byte) (b4 + this.f18196a[i9]);
                    i9++;
                }
                byte b5 = (byte) (~b4);
                byte[] bArr4 = this.f18196a;
                if (b5 == bArr4[i3]) {
                    int i10 = this.f18198c;
                    i(bArr4, i10 + 3, (i3 - i10) - 3);
                    this.f18198c = this.f18199d;
                } else {
                    this.f18198c++;
                }
                this.f18199d = 0;
            }
            this.f18198c++;
        }
        if (i2 != 0) {
            int i11 = this.f18197b - i2;
            this.f18197b = i11;
            if (i11 != 0) {
                byte[] bArr5 = this.f18196a;
                System.arraycopy(bArr5, i2, bArr5, 0, i11);
            }
            this.f18198c = 0;
        }
    }

    public final int c(int i2) {
        if (i2 == 32) {
            return 0;
        }
        if (i2 < 48 || i2 > 57) {
            return (i2 < 65 || i2 > 70) ? i2 : i2 - 55;
        }
        return i2 - 48;
    }

    /* JADX WARN: Code duplicated, block: B:28:0x007b  */
    /* JADX WARN: Code duplicated, block: B:72:0x00ea  */
    public final void d(byte[] bArr, int i2, int i3) {
        int i4;
        int i5;
        int i6 = 0;
        boolean z2 = u0.b.f17320f != 0 && u0.b.f17326h == 0;
        if (this.f18201f != z2) {
            this.f18201f = z2;
            if (z2) {
                o0.e.f16784k = 1;
                o0.e.f16778h = 1;
                o0.e.f16780i = 1;
                o0.e.f16782j = 1;
            }
        }
        if (z2) {
            int i7 = o0.e.f16778h;
            int i8 = o0.e.f16780i;
            int i9 = o0.e.f16782j;
            int i10 = o0.e.f16784k;
            o0.g.n(bArr[i2] & 1);
            o0.g.o(bArr[i2 + 1] & 1);
            o0.g.p(bArr[i2 + 2] & 1);
            if (o0.e.f16784k == 0 && i10 != 0) {
                w wVar = u0.b.N2;
                if (wVar.b(-1) == 16) {
                    wVar.c(-1);
                    int iB = wVar.b(27);
                    u0.d.Z1(iB);
                    k.s(1, 0, iB);
                }
            }
            int i11 = o0.e.f16778h;
            if (i11 == i7) {
                i4 = 0;
                i5 = 0;
            } else if (i11 == 0) {
                i4 = 0;
                i5 = 1;
            } else if (((bArr[i2] >> 4) & 1) == 0) {
                i5 = 0;
                i4 = 1;
            } else {
                i4 = 0;
                i5 = 0;
            }
            int i12 = o0.e.f16780i;
            if (i12 != i8) {
                if (i12 != 0) {
                    i4 = 2;
                } else {
                    i5 = 2;
                }
            }
            int i13 = o0.e.f16782j;
            if (i13 != i9) {
                if (i13 != 0) {
                    i4 = 3;
                } else {
                    i5 = 3;
                }
            }
            if (i4 != 0) {
                if (h0.c.G == 0) {
                    if (i4 == 1) {
                        u.E();
                    } else if (i4 == 2) {
                        u.G("com.syu.dvd.sd");
                    } else if (i4 == 3) {
                        u.G("com.syu.dvd.usb");
                    }
                }
                o0.e.f16766b.z(i4);
                o0.g.z(1);
                return;
            }
            if (i5 == 0 || u0.b.N2.b(-1) != 16) {
                return;
            }
            int i14 = o0.e.H;
            if (i14 == i5 || i14 == 0) {
                o0.g.l();
                boolean z3 = false;
                while (true) {
                    int iC = o0.e.T.c(-132465789);
                    if (iC == -132465789) {
                        break;
                    }
                    if (iC != 1) {
                        if (iC != 2) {
                            if (iC == 3 && o0.e.f16782j != 0) {
                                z3 = true;
                            }
                        } else if (o0.e.f16780i != 0) {
                            z3 = true;
                        }
                    } else if (o0.e.f16778h != 0) {
                        z3 = true;
                    }
                    if (z3) {
                        o0.e.f16766b.z(iC);
                        o0.g.z(1);
                        break;
                    }
                }
                if (z3) {
                    return;
                }
                if (o0.e.f16778h != 0) {
                    i6 = 1;
                } else if (o0.e.f16780i != 0) {
                    i6 = 2;
                } else if (o0.e.f16782j != 0) {
                    i6 = 3;
                }
                if (i6 == 0) {
                    o0.g.k(i5);
                    o0.g.z(2);
                } else {
                    o0.e.f16766b.z(i6);
                    o0.g.z(1);
                }
            }
        }
    }

    public final void e(byte[] bArr, int i2, int i3) {
        String str;
        String str2 = null;
        if (bArr[i2] == 2) {
            int iC = (((((c(bArr[i2 + 6] & 255) << 12) & BatteryStats.HistoryItem.STATE_DATA_CONNECTION_MASK) | ((c(bArr[i2 + 7] & 255) << 8) & BatteryStats.HistoryItem.STATE_PHONE_STATE_MASK)) | ((c(bArr[i2 + 8] & 255) << 4) & 240)) | (c(bArr[i2 + 9] & 255) & 15)) - 1;
            if (iC < 0 || iC >= 2048) {
                return;
            }
            try {
                str2 = new String(bArr, i2 + 11, i3 - 11, o0.e.f16786l);
            } catch (UnsupportedEncodingException e2) {
                e2.printStackTrace();
            }
            int i4 = ((bArr[i2 + 5] << 8) & 65280) | (bArr[i2 + 4] & 255);
            byte b2 = bArr[i2 + 1];
            if (b2 == 0) {
                o0.e.X[iC] = str2;
                o0.e.f16765a0[iC] = i4;
                int i5 = iC + 1;
                if (i5 > o0.e.f16799w) {
                    o0.g.c(i5);
                    return;
                }
                return;
            }
            if (b2 == 1) {
                o0.e.Y[iC] = str2;
                o0.e.f16767b0[iC] = i4;
                int i6 = iC + 1;
                if (i6 > o0.e.f16800x) {
                    o0.g.B(i6);
                    return;
                }
                return;
            }
            if (b2 != 2) {
                return;
            }
            o0.e.Z[iC] = str2;
            o0.e.f16769c0[iC] = i4;
            int i7 = iC + 1;
            if (i7 > o0.e.f16801y) {
                o0.g.Z(i7);
                return;
            }
            return;
        }
        int i8 = (bArr[i2] >> 4) & 15;
        int i9 = bArr[i2] & DhcpPacket.DHCP_DOMAIN_NAME;
        if (i8 < 0 || i8 > 3 || i9 < 5 || i9 > 7) {
            return;
        }
        if (i8 == 0) {
            try {
                str = new String(bArr, i2 + 1, i3 - 1, o0.e.f16786l);
                str2 = str;
            } catch (UnsupportedEncodingException e3) {
                e3.printStackTrace();
            }
        } else if (i8 == 1) {
            try {
                str = new String(bArr, i2 + 1, i3 - 1, "UTF-8");
                str2 = str;
            } catch (UnsupportedEncodingException e4) {
                e4.printStackTrace();
            }
        } else if (i8 == 2) {
            str2 = new String(bArr, i2 + 1, i3 - 1);
        } else if (i8 == 3) {
            int i10 = i2 + 1;
            int i11 = (i2 + i3) - 1;
            for (int i12 = i10; i12 < i11; i12 += 2) {
                byte b3 = bArr[i12];
                int i13 = i12 + 1;
                bArr[i12] = bArr[i13];
                bArr[i13] = b3;
            }
            str2 = new String(bArr, i10, i3 - 1);
        }
        if (i9 == 5) {
            o0.g.v(str2);
        } else if (i9 == 6) {
            o0.g.u(str2);
        } else {
            if (i9 != 7) {
                return;
            }
            o0.g.t(str2);
        }
    }

    public final void f(byte[] bArr, int i2, int i3) {
        int i4 = ((bArr[i2] & 255) * BatchedScanSettings.MAX_INTERVAL_SEC) + ((bArr[i2 + 1] & 255) * 60) + (bArr[i2 + 2] & 255);
        int i5 = ((bArr[i2 + 4] << 24) & 2130706432) | ((bArr[i2 + 5] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255);
        if (i4 > i5) {
            i4 = 0;
        }
        o0.g.G(i4);
        o0.g.O(i5);
        if (bArr[i2 + 3] == 0) {
            o0.g.v(null);
            o0.g.u(null);
            o0.g.t(null);
        }
    }

    public final void g(byte[] bArr, int i2, int i3) {
        int i4 = ((bArr[i2 + 1] << 8) & 65280) | (bArr[i2 + 2] & 255);
        int i5 = ((bArr[i2 + 5] << 8) & 65280) | (bArr[i2 + 6] & 255);
        int i6 = (bArr[i2 + 8] & 255) | (65280 & (bArr[i2 + 9] << 8));
        int i7 = i4 - 1;
        o0.g.I(i7);
        o0.g.P(i5);
        o0.g.C(i6 - 1);
        switch (o0.e.f16773e0) {
            case 1:
            case 2:
                o0.g.R(String.format("%s %d/%d %s %d", "/^_^ChApTeR^_^/", Integer.valueOf(i4), Integer.valueOf(i5), "/^-^LiSt^_^/", Integer.valueOf(i6)));
                break;
            case 3:
            case 4:
                if (i6 >= 1 && i6 <= 2048 && i4 >= 1 && i4 <= 10240) {
                    o0.g.R(String.format("%d/%d %s", Integer.valueOf(i4), Integer.valueOf(o0.e.f16796t), o0.e.U[i7]));
                    break;
                }
                break;
            case 5:
            case 6:
                o0.g.R(String.format("%d/%d", Integer.valueOf(i4), Integer.valueOf(i5)));
                break;
            case 7:
                if (i6 >= 1 && i6 <= 2048 && i4 >= 1 && i4 <= 10240) {
                    o0.g.R(String.format("%d/%d %s", Integer.valueOf(i4), Integer.valueOf(o0.e.f16797u), o0.e.V[i7]));
                    break;
                }
                break;
            case 8:
                if (i6 >= 1 && i6 <= 2048 && i4 >= 1 && i4 <= 10240) {
                    o0.g.R(String.format("%d/%d %s", Integer.valueOf(i4), Integer.valueOf(o0.e.f16798v), o0.e.W[i7]));
                    break;
                }
                break;
            case 9:
            case 10:
                if (i5 > 10240) {
                    i5 = 10240;
                }
                if (o0.e.f16799w != 1) {
                    o0.e.X[0] = "1.\\";
                    o0.e.f16765a0[0] = i5;
                    o0.g.c(1);
                }
                if (o0.e.f16796t != i5) {
                    o0.g.b(0);
                    int i8 = 0;
                    while (i8 < i5) {
                        int i9 = i8 + 1;
                        o0.e.U[i8] = String.format("CD Track %d ", Integer.valueOf(i9));
                        i8 = i9;
                    }
                    o0.g.b(i5);
                }
                o0.g.R(String.format("%d/%d CD Track %d ", Integer.valueOf(i4), Integer.valueOf(i5), Integer.valueOf(i4)));
                break;
        }
    }

    public final void h(byte[] bArr, int i2, int i3) {
        int i4 = bArr[i2] & 255;
        int i5 = bArr[i2 + 1] & 255;
        int i6 = bArr[i2 + 2] & 255;
        o0.e.f16783j0 = 0;
        if (o0.e.f16773e0 != i4) {
            o0.e.f16773e0 = i4;
            switch (i4) {
                case 0:
                    o0.g.D(0);
                    o0.g.w(0);
                    break;
                case 1:
                case 2:
                case 5:
                case 6:
                    o0.g.D(3);
                    o0.g.w(0);
                    break;
                case 3:
                case 4:
                case 9:
                case 10:
                    o0.g.D(1);
                    o0.g.w(1);
                    break;
                case 7:
                    o0.g.D(2);
                    o0.g.w(2);
                    break;
                case 8:
                    o0.g.D(3);
                    o0.g.w(3);
                    break;
            }
            switch (i4) {
                case 0:
                    o0.g.f(0);
                    break;
                case 1:
                case 2:
                    o0.g.f(3);
                    break;
                case 3:
                case 4:
                case 7:
                case 8:
                    o0.g.f(4);
                    break;
                case 5:
                case 6:
                    o0.g.f(2);
                    break;
                case 9:
                case 10:
                    o0.g.f(1);
                    break;
            }
        }
        if (i5 == 1) {
            o0.g.e(1);
        } else if (i5 == 2) {
            o0.g.e(3);
        } else if (i5 == 3) {
            o0.g.e(2);
        } else if (i5 != 4) {
            o0.g.e(0);
        } else {
            o0.g.e(5);
        }
        if (o0.e.I == 1 && o0.e.E != 0) {
            o0.g.z(0);
        }
        o0.g.Q(i6);
    }

    public final void i(byte[] bArr, int i2, int i3) {
        if (bArr[i2] == 1) {
            if (o0.e.f16785k0 == 0) {
                d(bArr, i2 + 1, i3 - 1);
            }
            return;
        }
        if (bArr[i2] == 2) {
            j(bArr, i2 + 1, i3 - 1);
            return;
        }
        byte b2 = bArr[i2];
        if (b2 == -41) {
            m(bArr, i2 + 1, i3 - 1);
            return;
        }
        if (b2 == -37) {
            byte b3 = bArr[i2 + 2];
            if (b3 == 1) {
                o0.g.N(1);
                return;
            }
            if (b3 == 2) {
                o0.g.N(2);
                return;
            }
            if (b3 == 3) {
                o0.g.N(3);
                return;
            }
            if (b3 == 4) {
                o0.g.N(4);
                return;
            }
            if (b3 == 5) {
                o0.g.N(5);
                return;
            }
            switch (b3) {
                case 17:
                    o0.g.N(6);
                    break;
                case 18:
                    o0.g.N(7);
                    break;
                case 19:
                    o0.g.N(8);
                    break;
                case 20:
                    o0.g.N(9);
                    break;
                case 21:
                    o0.g.N(10);
                    break;
            }
        }
        if (b2 == 20) {
            o0.g.z(5);
            return;
        }
        if (b2 == 17) {
            n(bArr, i2 + 1, i3 - 1);
            return;
        }
        if (b2 == 18) {
            try {
                o0.g.j(this.f18200e + new String(bArr, i2 + 1, i3 - 1, o0.e.f16786l));
                return;
            } catch (UnsupportedEncodingException e2) {
                e2.printStackTrace();
                return;
            }
        }
        switch (b2) {
            case -52:
                l(bArr, i2 + 1, i3 - 1);
                break;
            case -51:
                h(bArr, i2 + 1, i3 - 1);
                break;
            case -50:
                f(bArr, i2 + 1, i3 - 1);
                break;
            case -49:
                g(bArr, i2 + 1, i3 - 1);
                break;
            default:
                switch (b2) {
                    case -46:
                        o(bArr, i2 + 1, i3 - 1);
                        break;
                    case -45:
                        k(bArr, i2 + 1, i3 - 1);
                        break;
                    case -44:
                        a(bArr, i2 + 1, i3 - 1);
                        break;
                    case -43:
                        e(bArr, i2 + 1, i3 - 1);
                        break;
                }
                break;
        }
    }

    public final void j(byte[] bArr, int i2, int i3) {
    }

    public final void k(byte[] bArr, int i2, int i3) {
        int iC = (((((c(bArr[i2 + 1] & 255) << 12) & BatteryStats.HistoryItem.STATE_DATA_CONNECTION_MASK) | ((c(bArr[i2 + 2] & 255) << 8) & BatteryStats.HistoryItem.STATE_PHONE_STATE_MASK)) | ((c(bArr[i2 + 3] & 255) << 4) & 240)) | (c(bArr[i2 + 4] & 255) & 15)) - 1;
        if (iC < 0 || iC >= 10240) {
            return;
        }
        String str = null;
        try {
            str = new String(bArr, i2 + 6, i3 - 6, o0.e.f16786l);
        } catch (UnsupportedEncodingException e2) {
            e2.printStackTrace();
        }
        o0.e.V[iC] = str;
        int i4 = iC + 1;
        if (i4 > o0.e.f16797u) {
            o0.g.A(i4);
        }
        int i5 = o0.e.f16802z;
    }

    public final void l(byte[] bArr, int i2, int i3) {
        int i4 = bArr[i2] & 255;
        if (i4 == 0) {
            o0.g.E(0);
        } else if (i4 == 2) {
            o0.g.E(1);
            if (u0.b.f17326h == 0) {
                o0.g.z(0);
            }
        } else if (i4 == 5) {
            o0.g.E(4);
        } else if (i4 == 12) {
            o0.g.E(3);
        } else if (i4 != 13) {
            switch (i4) {
                case 7:
                    o0.g.E(5);
                    break;
                case 8:
                    o0.g.E(2);
                    break;
                case 9:
                    o0.g.z(1);
                    break;
                case 10:
                    o0.g.z(2);
                    break;
            }
        } else {
            o0.g.z(4);
        }
        int i5 = bArr[i2 + 2] & 255;
        if (i5 == 0) {
            o0.g.M(1);
        } else if (i5 == 8) {
            o0.g.M(4);
        } else if (i5 == 3) {
            o0.g.M(2);
        } else if (i5 != 4) {
            o0.g.M(0);
        } else {
            o0.g.M(3);
        }
        o0.g.K(bArr[i2 + 3] & 1);
    }

    public final void m(byte[] bArr, int i2, int i3) {
        byte b2 = bArr[i2];
        if (b2 == -1) {
            if (this.f18202g.c(500)) {
                o0.g.l();
                o0.g.z(1);
                return;
            }
            return;
        }
        if (b2 == 3 || b2 == 16) {
            if (bArr[i2] == 16 && o0.e.K <= 0) {
                o0.e.K = 5;
                o0.g.S(1);
                o0.g.a(o0.g.f16806a);
            }
            int i4 = o0.e.E;
            if (i4 != 1) {
                if (i4 != 2) {
                    if (o0.e.f16798v > 0) {
                        o0.g.z(4);
                    }
                } else if (o0.e.f16797u > 0) {
                    o0.g.z(4);
                }
            }
        }
    }

    public final void n(byte[] bArr, int i2, int i3) {
        int i4 = bArr[i2] & 255;
        int i5 = bArr[i2 + 1] & 255;
        int i6 = bArr[i2 + 5] & 255;
        StringBuilder sb = new StringBuilder(100);
        int i7 = i4 & 240;
        if (i7 == 80) {
            sb.append("9025_");
        } else if (i7 == 96) {
            sb.append("9026_");
        } else if (i7 == 48) {
            sb.append("9000_");
        } else if (i7 == 64) {
            sb.append("9002_");
        } else if (i7 == 16) {
            sb.append("9023_");
        } else if (i7 == 32) {
            sb.append("9024_");
        } else {
            sb.append("9024_");
        }
        int i8 = i4 & 15;
        if (i8 == 1) {
            sb.append("Sanyo_");
        } else if (i8 == 2) {
            sb.append("1200XH_");
        } else if (i8 == 3) {
            sb.append("1200W_");
        }
        if ((i5 & 1) != 0) {
            sb.append("S_");
        } else {
            sb.append("NS_");
        }
        switch (i6) {
            case 1:
                o0.e.f16786l = "Windows-936";
                sb.append("Chs_");
                break;
            case 2:
                o0.e.f16786l = "Windows-950";
                sb.append("Cht_");
                break;
            case 3:
                o0.e.f16786l = "Windows-874";
                sb.append("Thai_");
                break;
            case 4:
                o0.e.f16786l = "Windows-949";
                sb.append("Korea_");
                break;
            case 5:
                o0.e.f16786l = "Windows-932";
                sb.append("Japan_");
                break;
            case 6:
                o0.e.f16786l = "Windows-1256";
                sb.append("Arabia_");
                break;
            case 7:
                o0.e.f16786l = "Windows-1255";
                sb.append("Hebrew_");
                break;
            case 8:
                o0.e.f16786l = "Windows-1251";
                sb.append("Russia_");
                break;
            default:
                o0.e.f16786l = "Windows-1252";
                break;
        }
        int i9 = i2 + 2;
        if (bArr[i9] == 0 && bArr[i2 + 3] == 0) {
            sb.append(" ");
            this.f18200e = sb.toString();
        } else {
            sb.append(String.format("%02d%02d_V%d.%02d ", Integer.valueOf(bArr[i9] & 255), Integer.valueOf(bArr[i2 + 3] & 255), Integer.valueOf(bArr[i2 + 4] & 255), 0));
            this.f18200e = sb.toString();
        }
    }

    public final void o(byte[] bArr, int i2, int i3) {
        int iC = (((((c(bArr[i2 + 1] & 255) << 12) & BatteryStats.HistoryItem.STATE_DATA_CONNECTION_MASK) | ((c(bArr[i2 + 2] & 255) << 8) & BatteryStats.HistoryItem.STATE_PHONE_STATE_MASK)) | ((c(bArr[i2 + 3] & 255) << 4) & 240)) | (c(bArr[i2 + 4] & 255) & 15)) - 1;
        if (iC < 0 || iC >= 10240) {
            return;
        }
        String str = null;
        try {
            str = new String(bArr, i2 + 6, i3 - 6, o0.e.f16786l);
        } catch (UnsupportedEncodingException e2) {
            e2.printStackTrace();
        }
        o0.e.W[iC] = str;
        int i4 = iC + 1;
        if (i4 > o0.e.f16798v) {
            o0.g.Y(i4);
        }
        int i5 = o0.e.f16802z;
    }
}
