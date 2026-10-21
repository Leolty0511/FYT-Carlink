package k0;

import android.media.videoeditor.MediaProperties;
import android.net.dhcp.DhcpPacket;
import android.os.BatteryStats;
import android.os.SystemProperties;
import android.provider.CalendarContract;

/* JADX INFO: loaded from: classes2.dex */
public class wi extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f11749b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f11750c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f11751d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{6, 13}, new int[]{9, 26}, new int[]{11, 18}, new int[]{22, 29}, new int[]{23, 12}, new int[]{136, 2}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f11752e = new a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f11753f = new b();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f11754g = -1;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.c0.m();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            switch (nt.f8637c) {
                case 208:
                    z.k.s(227, 226, 1, 0);
                    break;
                case 209:
                    z.k.s(227, 226, 1, 1);
                    break;
                case 210:
                    z.k.s(227, 226, 1, 2);
                    break;
                case 211:
                    z.k.s(227, 226, 1, 3);
                    break;
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
        mtVar.f8312g = 1;
        mtVar.f8315j = 0;
        mtVar.f8320o = 1;
        l0.b0.b(this.f11752e);
        w0.e.f17815a.a(this.f11752e, 1);
        u0.c.f17374a.a(this.f11752e, 1);
        u0.c.f17393t.a(this.f11752e, 1);
        u0.c.f17392s.a(this.f11752e, 1);
        qt.z(this.f11753f);
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
        byte b2 = bArr[i2];
        if (b2 == 29) {
            u0.d.D2(l0.c0.E0(bArr[i2 + 2] & 255));
            u0.d.E2(l0.c0.E0(bArr[i2 + 3] & 255));
            u0.d.F2(l0.c0.E0(bArr[i2 + 4] & 255));
            u0.d.G2(l0.c0.E0(bArr[i2 + 5] & 255));
            return;
        }
        if (b2 == 30) {
            u0.d.R2(l0.c0.E0(bArr[i2 + 2] & 255));
            u0.d.S2(l0.c0.E0(bArr[i2 + 3] & 255));
            u0.d.T2(l0.c0.E0(bArr[i2 + 4] & 255));
            u0.d.U2(l0.c0.E0(bArr[i2 + 5] & 255));
            return;
        }
        if (b2 == 32) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f11750c = b3 & 255;
            int i10 = 0;
            while (true) {
                iArr = this.f11751d;
                if (i10 >= iArr.length) {
                    break;
                }
                int i11 = this.f11750c;
                if (i11 == iArr[i10][0]) {
                    if (i11 == 0) {
                        break;
                    }
                    this.f11749b = i10;
                    break;
                }
                i10++;
            }
            if (this.f11750c == 9) {
                if ((b4 & 255) == 1) {
                    int i12 = h0.c.E;
                    if (i12 == 3 || i12 == 5) {
                        l0.b0.l0(26, 0);
                        l0.b0.l0(26, 1);
                        return;
                    } else {
                        l0.b0.l0(18, 0);
                        l0.b0.l0(18, 1);
                        return;
                    }
                }
                return;
            }
            int i13 = b4 & 255;
            if (i13 == 1) {
                if (i10 < iArr.length) {
                    l0.b0.l0(iArr[i10][1], 0);
                    return;
                }
                return;
            } else {
                if (i13 == 0) {
                    int i14 = this.f11749b;
                    if (i14 < iArr.length) {
                        i4 = 255;
                        if (i14 != 255) {
                            l0.b0.l0(iArr[i14][1], 1);
                        }
                    } else {
                        i4 = 255;
                    }
                    this.f11749b = i4;
                    return;
                }
                return;
            }
        }
        if (b2 == 36) {
            int i15 = bArr[i2 + 2] & 255;
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(2, (i15 >> 6) & 1);
                qt.y0(1, (i15 >> 7) & 1);
            } else {
                qt.y0(2, (i15 >> 7) & 1);
                qt.y0(1, (i15 >> 6) & 1);
            }
            qt.y0(4, (i15 >> 5) & 1);
            qt.y0(3, (i15 >> 4) & 1);
            qt.y0(5, (i15 >> 3) & 1);
            qt.y0(0, (i15 >> 0) & 1);
            return;
        }
        if (b2 == 41) {
            int i16 = i2 + 3;
            if ((bArr[i16] & 128) != 0) {
                qt.j(bArr[i2 + 2], bArr[i16] & DhcpPacket.DHCP_DOMAIN_NAME, 0, MediaProperties.HEIGHT_360);
                return;
            } else {
                int i17 = 4096 - ((bArr[i2 + 2] & 255) | ((bArr[i16] << 8) & BatteryStats.HistoryItem.STATE_PHONE_STATE_MASK));
                qt.i(i17 & 255, (i17 >> 8) & 15, true, MediaProperties.HEIGHT_360);
                return;
            }
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 53) {
            qt.y0(1032, (bArr[i2 + 3] & 255) | ((bArr[i2 + 2] & 255) << 8));
            return;
        }
        if (b2 != 85) {
            return;
        }
        int i18 = i2 + 2;
        byte b5 = bArr[i18];
        int i19 = i2 + 3;
        byte b6 = bArr[i19];
        byte b7 = bArr[i2 + 4];
        byte b8 = bArr[i2 + 5];
        byte b9 = bArr[i2 + 6];
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            i6 = b5;
            i5 = b6;
            i6 = bArr[i19] & 255;
            i5 = bArr[i18] & 255;
        }
        i6 = b5;
        i5 = b6;
        int i20 = i6 & 255;
        if (i6 == 16) {
            qt.y0(27, -2);
        } else if (i6 == 80) {
            qt.y0(27, -3);
        } else if (i6 < 32 || i6 > 64) {
            qt.y0(27, -1);
        } else {
            qt.y0(27, i20);
        }
        int i21 = i5 & 255;
        if (i5 == 16) {
            qt.y0(28, -2);
        } else if (i5 == 80) {
            qt.y0(28, -3);
        } else if (i5 < 32 || i5 > 64) {
            qt.y0(28, -1);
        } else {
            qt.y0(28, i21);
        }
        qt.y0(21, (b7 >> 0) & 15);
        int i22 = (b7 >> 4) & 15;
        qt.y0(77, i22);
        switch (i22) {
            case 1:
                i7 = 0;
                i8 = 0;
                i9 = 1;
                break;
            case 2:
                i7 = 0;
                i9 = 1;
                i8 = i9;
                break;
            case 3:
                i7 = 0;
                i9 = 0;
                i8 = 1;
                break;
            case 4:
                i9 = 0;
                i7 = 1;
                i8 = 1;
                break;
            case 5:
                i8 = 0;
                i7 = 1;
                i9 = 1;
                break;
            case 6:
                i9 = 0;
                i8 = 0;
                i7 = 1;
                break;
            case 7:
                i7 = 1;
                i9 = i7;
                i8 = i9;
                break;
            default:
                i7 = 0;
                i9 = i7;
                i8 = i9;
                break;
        }
        qt.y0(18, i7);
        qt.y0(19, i9);
        qt.y0(20, i8);
        qt.y0(71, (b8 >> 6) & 1);
        qt.y0(70, (b8 >> 7) & 1);
        qt.y0(13, (b9 >> 0) & 1);
        qt.y0(11, (b9 >> 1) & 1);
        qt.y0(14, (b9 >> 2) & 1);
        qt.y0(12, (b9 >> 3) & 1);
        qt.y0(36, (b9 >> 5) & 1);
        qt.y0(16, (b9 >> 6) & 1);
        qt.y0(15, (b9 >> 7) & 1);
        int i23 = i2 + 7;
        if ((bArr[i23] & 255) == 255) {
            u0.d.A3(0);
        } else {
            u0.d.A3(((bArr[i23] & 255) * 10) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
        }
    }

    @Override // k0.lt
    public void W2() {
        l0.b0.p0(this.f11752e);
        w0.e.f17815a.d(this.f11752e);
        u0.c.f17374a.d(this.f11752e);
        u0.c.f17393t.d(this.f11752e);
        u0.c.f17392s.d(this.f11752e);
        qt.q0(this.f11753f);
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
        if (i2 == 0 && iArr != null && iArr.length > 0) {
            a3(iArr[0]);
        }
    }

    public final void a3(int i2) {
        int i3 = (this.f11754g + 1) % 2;
        this.f11754g = i3;
        int[] iArr = new int[7];
        iArr[0] = 227;
        iArr[1] = 51;
        iArr[2] = 4;
        iArr[3] = (byte) i2;
        iArr[4] = i3 == 0 ? 34 : 204;
        iArr[5] = 0;
        iArr[6] = 0;
        z.k.s(iArr);
    }
}
