package k0;

import android.drm.DrmManagerClient;
import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class yl extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f12553b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f12554c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f12555d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 2}, new int[]{6, 18}, new int[]{7, 13}, new int[]{8, 26}, new int[]{9, 0}, new int[]{10, 7}, new int[]{11, 8}, new int[]{12, 5}, new int[]{13, 1}, new int[]{14, 54}, new int[]{15, 6}, new int[]{16, 31}, new int[]{17, 30}, new int[]{18, 29}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f12556e = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, 198, 6, (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN), (byte) (time.month + 1), (byte) time.monthDay, (byte) time.hour, (byte) time.minute, DateFormat.is24HourFormat(App.c()) ? (byte) 1 : (byte) 0);
        }
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
        mtVar.f8314i = 1;
        mtVar.f8312g = 0;
        mtVar.f8320o = 0;
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        qt.z(this.f12556e);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 32) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f12554c = b3 & 255;
            int i4 = 0;
            while (true) {
                iArr = this.f12555d;
                if (i4 >= iArr.length) {
                    break;
                }
                int i5 = this.f12554c;
                if (i5 == iArr[i4][0]) {
                    if (i5 == 0) {
                        break;
                    }
                    this.f12553b = i4;
                    break;
                }
                i4++;
            }
            int i6 = this.f12554c;
            if (i6 == 10) {
                for (int i7 = 0; i7 < (b4 & 255); i7++) {
                    l0.b0.l0(7, 0);
                }
                l0.b0.l0(7, 1);
            }
            if (i6 == 11) {
                for (int i8 = 0; i8 < (b4 & 255); i8++) {
                    l0.b0.l0(8, 0);
                }
                l0.b0.l0(8, 1);
                return;
            }
            if (i6 == 16) {
                for (int i9 = 0; i9 < (b4 & 255); i9++) {
                    l0.b0.l0(31, 0);
                }
                l0.b0.l0(31, 1);
                return;
            }
            if (i6 == 17) {
                for (int i10 = 0; i10 < (b4 & 255); i10++) {
                    l0.b0.l0(30, 0);
                }
                l0.b0.l0(30, 1);
                return;
            }
            int i11 = b4 & 255;
            if (i11 == 1) {
                if (i4 < iArr.length) {
                    l0.b0.l0(iArr[i4][1], 0);
                    return;
                }
                return;
            } else {
                if (i11 == 0) {
                    int i12 = this.f12553b;
                    if (i12 < iArr.length && i12 != 255) {
                        l0.b0.l0(iArr[i12][1], 1);
                    }
                    this.f12553b = 255;
                    return;
                }
                return;
            }
        }
        if (b2 == 39) {
            byte b5 = bArr[i2 + 2];
            byte b6 = bArr[i2 + 3];
            int i13 = i2 + 4;
            byte b7 = bArr[i13];
            int i14 = i2 + 5;
            byte b8 = bArr[i14];
            byte b9 = bArr[i2 + 6];
            qt.y0(10, (b5 >> 7) & 1);
            qt.y0(11, (b5 >> 6) & 1);
            qt.y0(12, (b5 >> 5) & 1);
            qt.y0(13, (b5 >> 4) & 1);
            qt.y0(62, (b5 >> 2) & 1);
            qt.y0(65, (b5 >> 1) & 1);
            qt.y0(16, (b5 >> 0) & 1);
            qt.y0(18, (b6 >> 7) & 1);
            qt.y0(19, (b6 >> 6) & 1);
            qt.y0(20, (b6 >> 5) & 1);
            qt.y0(21, b6 & DhcpPacket.DHCP_DOMAIN_NAME);
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                b7 = bArr[i14];
                b8 = bArr[i13];
            }
            qt.y0(27, b7 & 255);
            qt.y0(28, b8 & 255);
            qt.y0(52, (b9 >> 1) & 1);
            qt.y0(37, (b9 >> 0) & 1);
            return;
        }
        if (b2 == 41) {
            qt.i(bArr[i2 + 2], bArr[i2 + 3], false, 21620);
            return;
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 56) {
            int i15 = i2 + 2;
            qt.y0(99, (bArr[i15] >> 0) & 3);
            qt.y0(100, (bArr[i15] >> 2) & 3);
            qt.y0(101, (bArr[i15] >> 4) & 1);
            int i16 = i2 + 3;
            qt.y0(102, (bArr[i16] >> 0) & 1);
            qt.y0(103, (bArr[i16] >> 1) & 1);
            qt.y0(104, (bArr[i16] >> 2) & 3);
            qt.y0(105, (bArr[i16] >> 4) & 3);
            qt.y0(106, (bArr[i16] >> 6) & 1);
            qt.y0(107, (bArr[i16] >> 7) & 1);
            int i17 = i2 + 4;
            qt.y0(108, (bArr[i17] >> 0) & 15);
            qt.y0(109, (bArr[i17] >> 4) & 15);
            qt.y0(110, (bArr[i2 + 5] >> 0) & 255);
            return;
        }
        switch (b2) {
            case 34:
                u0.d.R2(l0.c0.U0(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.U0(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.U0(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.U0(bArr[i2 + 5] & 255));
                break;
            case 35:
                int i18 = i2 + 2;
                int i19 = bArr[i18] & 255;
                int i20 = i2 + 3;
                int i21 = bArr[i20] & 255;
                int i22 = i2 + 4;
                int i23 = bArr[i22] & 255;
                int i24 = i2 + 5;
                int i25 = bArr[i24] & 255;
                if (i19 == 0 && i21 == 0 && i23 == 0 && i25 == 0) {
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
                u0.d.D2(l0.c0.U0(bArr[i18] & 255));
                u0.d.E2(l0.c0.U0(bArr[i20] & 255));
                u0.d.F2(l0.c0.U0(bArr[i22] & 255));
                u0.d.G2(l0.c0.U0(bArr[i24] & 255));
                break;
            case 36:
                int i26 = bArr[i2 + 2] & 255;
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(2, (i26 >> 6) & 1);
                    qt.y0(1, (i26 >> 7) & 1);
                } else {
                    qt.y0(2, (i26 >> 7) & 1);
                    qt.y0(1, (i26 >> 6) & 1);
                }
                qt.y0(4, (i26 >> 5) & 1);
                qt.y0(3, (i26 >> 4) & 1);
                qt.y0(5, (i26 >> 3) & 1);
                qt.y0(0, (i26 >> 2) & 1);
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(l0.c0.f13020n);
        l0.b0.p0(l0.c0.f13021o);
        qt.q0(this.f12556e);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 111) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0 && iArr != null && iArr.length > 0) {
            z.k.s(227, 198, 2, iArr[0], iArr[1]);
        }
    }
}
