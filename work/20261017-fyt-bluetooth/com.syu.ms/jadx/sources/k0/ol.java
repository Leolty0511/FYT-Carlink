package k0;

import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class ol extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int[] f8905b = {34, 204};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f8906c = 0;

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        if (App.c().getResources().getConfiguration().orientation == 1) {
            this.f7886a.f8306a = new String[]{"com.syu.canbus"};
        } else {
            this.f7886a.f8306a = null;
        }
        mt mtVar = this.f7886a;
        mtVar.f8310e = 0;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8320o = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        byte b2 = bArr[i2];
        if (b2 == 3) {
            u0.d.R2(l0.c0.M0(bArr[i2 + 6] & 255));
            u0.d.S2(l0.c0.M0(bArr[i2 + 7] & 255));
            u0.d.T2(l0.c0.M0(bArr[i2 + 8] & 255));
            u0.d.U2(l0.c0.M0(bArr[i2 + 9] & 255));
            int i7 = i2 + 2;
            int i8 = bArr[i7] & 255;
            int i9 = i2 + 3;
            int i10 = bArr[i9] & 255;
            int i11 = i2 + 4;
            int i12 = bArr[i11] & 255;
            int i13 = i2 + 5;
            int i14 = bArr[i13] & 255;
            if (i8 == 0 && i10 == 0 && i12 == 0 && i14 == 0) {
                u0.d.C2(0);
            } else if ((l0.c0.f13013g != i8 || l0.c0.f13014h != i10 || l0.c0.f13015i != i12 || l0.c0.f13016j != i14) && u0.b.f17347o == 0) {
                u0.d.C2(1);
                l0.c0.f13017k = 4;
                l0.b0.b(l0.c0.f13018l);
            }
            l0.c0.f13013g = i8;
            l0.c0.f13014h = i10;
            l0.c0.f13015i = i12;
            l0.c0.f13016j = i14;
            u0.d.D2(l0.c0.M0(bArr[i7] & 255));
            u0.d.E2(l0.c0.M0(bArr[i9] & 255));
            u0.d.F2(l0.c0.M0(bArr[i11] & 255));
            u0.d.G2(l0.c0.M0(bArr[i13] & 255));
            return;
        }
        if (b2 == 36) {
            int i15 = bArr[i2 + 2] & 255;
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(2, (i15 >> 0) & 1);
                qt.y0(1, (i15 >> 1) & 1);
            } else {
                qt.y0(2, (i15 >> 1) & 1);
                qt.y0(1, (i15 >> 0) & 1);
            }
            qt.y0(4, (i15 >> 3) & 1);
            qt.y0(3, (i15 >> 2) & 1);
            qt.y0(5, (i15 >> 4) & 1);
            qt.y0(0, (i15 >> 5) & 1);
            return;
        }
        if (b2 == 38) {
            qt.k(bArr[i2 + 2], bArr[i2 + 3], false, 380);
            return;
        }
        if (b2 != 85) {
            return;
        }
        int i16 = i2 + 2;
        byte b3 = bArr[i16];
        int i17 = i2 + 3;
        byte b4 = bArr[i17];
        byte b5 = bArr[i2 + 4];
        byte b6 = bArr[i2 + 7];
        byte b7 = bArr[i2 + 6];
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            b3 = bArr[i17];
            b4 = bArr[i16];
        }
        qt.y0(27, b3 & 255);
        qt.y0(28, b4 & 255);
        qt.y0(21, b5 & DhcpPacket.DHCP_DOMAIN_NAME);
        int i18 = (b5 >> 4) & 15;
        qt.y0(77, i18);
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
            } else if (i18 != 6) {
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
        qt.y0(13, (b7 >> 0) & 1);
        qt.y0(11, (b7 >> 1) & 1);
        qt.y0(14, (b7 >> 2) & 1);
        qt.y0(65, (b7 >> 5) & 1);
        qt.y0(16, (b7 >> 6) & 1);
        qt.y0(12, (b6 >> 0) & 3);
        qt.y0(38, (b6 >> 3) & 1);
        int i19 = bArr[i2 + 9] & 255;
        if (i19 == 0) {
            u0.d.A3(0);
        } else {
            u0.d.A3((i19 * 10) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
        }
    }

    @Override // k0.lt
    public void W2() {
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 97) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0 && iArr != null && iArr.length > 0) {
            z.k.s(227, 51, 5, iArr[0], this.f8905b[this.f8906c % 2], 37, 0, 170);
            z.k.s(227, 51, 5, iArr[0], this.f8905b[this.f8906c % 2], 37, 0, 170);
            z.k.s(227, 51, 5, iArr[0], this.f8905b[this.f8906c % 2], 37, 0, 170);
            int i3 = this.f8906c + 1;
            this.f8906c = i3;
            this.f8906c = i3 % 2;
        }
    }
}
