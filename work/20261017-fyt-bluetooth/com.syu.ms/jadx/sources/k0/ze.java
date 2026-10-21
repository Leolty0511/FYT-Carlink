package k0;

import android.net.dhcp.DhcpPacket;
import android.os.BatteryStats;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class ze extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int[] f12775b = {34, 204};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f12776c = 0;

    public static int a3(int i2, int i3) {
        int i4 = i2 | ((i3 << 8) & BatteryStats.HistoryItem.STATE_PHONE_STATE_MASK);
        if (nt.f8649j == 1) {
            return ((i3 >> 3) & 1) == 1 ? ((i4 - 2048) / 11) + 35 : 35 - (i4 / 11);
        }
        return ((i3 >> 3) & 1) == 1 ? 20 - ((i4 - 2048) / 20) : (i4 / 20) + 20;
    }

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
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8320o = 1;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        byte b2 = bArr[i2];
        if (b2 == 3) {
            u0.d.D2(b3(bArr[i2 + 2] & 255));
            u0.d.E2(b3(bArr[i2 + 3] & 255));
            u0.d.F2(b3(bArr[i2 + 4] & 255));
            u0.d.G2(b3(bArr[i2 + 5] & 255));
            u0.d.R2(b3(bArr[i2 + 6] & 255));
            u0.d.S2(b3(bArr[i2 + 7] & 255));
            u0.d.T2(b3(bArr[i2 + 8] & 255));
            u0.d.U2(b3(bArr[i2 + 9] & 255));
            return;
        }
        if (b2 == 36) {
            byte b3 = bArr[i2 + 2];
            qt.y0(0, (b3 >> 5) & 1);
            qt.y0(5, (b3 >> 4) & 1);
            qt.y0(4, (b3 >> 3) & 1);
            qt.y0(3, (b3 >> 2) & 1);
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b3 >> 1) & 1);
                qt.y0(2, (b3 >> 0) & 1);
                return;
            } else {
                qt.y0(1, (b3 >> 0) & 1);
                qt.y0(2, (b3 >> 1) & 1);
                return;
            }
        }
        if (b2 == 38) {
            qt.j0(a3(bArr[i2 + 2] & 255, bArr[i2 + 3] & 255));
            return;
        }
        if (b2 == 65) {
            qt.y0(1032, ((bArr[i2 + 2] << 8) & 65280) + (bArr[i2 + 3] & 255));
            qt.y0(1031, ((bArr[i2 + 4] << 8) & 65280) + (255 & bArr[i2 + 5]));
            return;
        }
        if (b2 != 85) {
            return;
        }
        int i7 = i2 + 2;
        byte b4 = bArr[i7];
        int i8 = i2 + 3;
        byte b5 = bArr[i8];
        byte b6 = bArr[i2 + 4];
        byte b7 = bArr[i2 + 5];
        byte b8 = bArr[i2 + 6];
        byte b9 = bArr[i2 + 7];
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            b4 = bArr[i8];
            b5 = bArr[i7];
        }
        int i9 = b4 & 255;
        if (i9 > 35 && i9 < 65) {
            qt.y0(27, i9);
        } else if (i9 < 10) {
            qt.y0(27, -1);
        }
        int i10 = b5 & 255;
        if (i10 > 35 && i10 < 65) {
            qt.y0(28, i10);
        } else if (i10 < 10) {
            qt.y0(28, -1);
        }
        qt.y0(21, b6 & DhcpPacket.DHCP_DOMAIN_NAME);
        int i11 = (b6 >> 4) & 15;
        if (i11 == 1) {
            i4 = 0;
            i5 = 0;
            i6 = 1;
        } else if (i11 == 2) {
            i5 = 0;
            i6 = 1;
            i4 = 1;
        } else if (i11 != 3) {
            if (i11 == 4) {
                i6 = 0;
                i4 = 1;
            } else if (i11 != 6) {
                i6 = 0;
                i4 = 0;
            } else {
                i6 = 0;
                i4 = 0;
                i5 = 1;
            }
            i5 = i4;
        } else {
            i6 = 0;
            i5 = 0;
            i4 = 1;
        }
        qt.y0(19, i6);
        qt.y0(20, i4);
        qt.y0(18, i5);
        qt.y0(15, i5);
        qt.y0(77, i11);
        qt.y0(29, b7 & 3);
        qt.y0(30, (b7 >> 4) & 3);
        qt.y0(13, b8 & 1);
        qt.y0(11, (b8 >> 1) & 1);
        int[] iArr = new int[1];
        iArr[0] = ((b8 >> 2) & 1) == 1 ? 0 : 1;
        qt.y0(14, iArr);
        qt.y0(16, (b8 >> 6) & 1);
        int[] iArr2 = new int[1];
        iArr2[0] = ((b9 >> 0) & 3) != 1 ? 0 : 1;
        qt.y0(12, iArr2);
        int i12 = bArr[i2 + 9] & 255;
        if (i12 == 255) {
            u0.d.A3(0);
        } else {
            u0.d.A3((i12 * 10) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
        }
    }

    @Override // k0.lt
    public void W2() {
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
        if (i2 == 0 && T2(iArr, 1)) {
            c3(iArr[0]);
        }
    }

    public int b3(int i2) {
        if (i2 != 0) {
            if (i2 == 1) {
                return 0;
            }
            if (i2 == 2) {
                return 3;
            }
            if (i2 == 3) {
                return 6;
            }
            if (i2 == 4) {
                return 9;
            }
        }
        return 10;
    }

    public final void c3(int i2) {
        z.k.s(227, 51, 5, i2, this.f12775b[this.f12776c % 2], 37, 0, 170);
        z.k.s(227, 51, 5, i2, this.f12775b[this.f12776c % 2], 37, 0, 170);
        z.k.s(227, 51, 5, i2, this.f12775b[this.f12776c % 2], 37, 0, 170);
        int i3 = this.f12776c + 1;
        this.f12776c = i3;
        this.f12776c = i3 % 2;
    }
}
