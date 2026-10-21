package k0;

import android.media.videoeditor.MediaProperties;
import android.net.dhcp.DhcpPacket;
import android.os.BatteryStats;
import android.os.SystemProperties;
import android.provider.CalendarContract;

/* JADX INFO: loaded from: classes2.dex */
public class xi extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f12140b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f12141c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f12142d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 18}, new int[]{10, 26}, new int[]{19, 3}, new int[]{20, 4}, new int[]{21, 6}, new int[]{22, 29}, new int[]{23, 12}, new int[]{129, 7}, new int[]{130, 8}, new int[]{131, 3}, new int[]{132, 4}, new int[]{133, 3}, new int[]{134, 4}, new int[]{135, 0}, new int[]{136, 2}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f12143e = -1;

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
        u0.c.f17386m.a(l0.c0.f13020n, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        int i6;
        int i7;
        byte b2 = bArr[i2];
        if (b2 == 32) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f12141c = b3 & 255;
            int i8 = 0;
            while (true) {
                iArr = this.f12142d;
                if (i8 >= iArr.length) {
                    break;
                }
                int i9 = this.f12141c;
                if (i9 == iArr[i8][0]) {
                    if (i9 == 0) {
                        break;
                    }
                    this.f12140b = i8;
                    break;
                }
                i8++;
            }
            int i10 = b4 & 255;
            if (i10 == 1) {
                if (i8 < iArr.length) {
                    l0.b0.l0(iArr[i8][1], 0);
                    return;
                }
                return;
            } else {
                if (i10 == 0) {
                    int i11 = this.f12140b;
                    if (i11 < iArr.length) {
                        i4 = 255;
                        if (i11 != 255) {
                            l0.b0.l0(iArr[i11][1], 1);
                        }
                    } else {
                        i4 = 255;
                    }
                    this.f12140b = i4;
                    return;
                }
                return;
            }
        }
        if (b2 == 36) {
            int i12 = bArr[i2 + 2] & 255;
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(2, (i12 >> 6) & 1);
                qt.y0(1, (i12 >> 7) & 1);
            } else {
                qt.y0(2, (i12 >> 7) & 1);
                qt.y0(1, (i12 >> 6) & 1);
            }
            qt.y0(4, (i12 >> 5) & 1);
            qt.y0(3, (i12 >> 4) & 1);
            qt.y0(5, (i12 >> 3) & 1);
            qt.y0(0, (i12 >> 0) & 1);
            return;
        }
        if (b2 == 41) {
            int i13 = i2 + 3;
            if ((bArr[i13] & 128) != 0) {
                qt.j(bArr[i2 + 2], bArr[i13] & DhcpPacket.DHCP_DOMAIN_NAME, 0, MediaProperties.HEIGHT_360);
                return;
            } else {
                int i14 = 4096 - ((bArr[i2 + 2] & 255) | ((bArr[i13] << 8) & BatteryStats.HistoryItem.STATE_PHONE_STATE_MASK));
                qt.i(i14 & 255, (i14 >> 8) & 15, true, MediaProperties.HEIGHT_360);
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
        byte b5 = bArr[i2 + 2];
        byte b6 = bArr[i2 + 4];
        byte b7 = bArr[i2 + 6];
        int i15 = b5 & 255;
        if (b5 == 16) {
            qt.y0(27, -2);
        } else if (b5 == 80) {
            qt.y0(27, -3);
        } else {
            qt.y0(27, i15);
        }
        if (b5 == 16) {
            qt.y0(28, -2);
        } else if (b5 == 80) {
            qt.y0(28, -3);
        } else {
            qt.y0(28, i15);
        }
        qt.y0(21, (b6 >> 0) & 15);
        int i16 = (b6 >> 4) & 15;
        qt.y0(77, i16);
        if (i16 != 1) {
            if (i16 == 2) {
                i5 = 0;
                i7 = 1;
            } else if (i16 == 3) {
                i5 = 0;
                i7 = 0;
                i6 = 1;
            } else if (i16 == 4) {
                i7 = 0;
                i5 = 1;
                i6 = 1;
            } else if (i16 != 6) {
                i5 = 0;
                i7 = 0;
            } else {
                i7 = 0;
                i6 = 0;
                i5 = 1;
            }
            i6 = i7;
        } else {
            i5 = 0;
            i6 = 0;
            i7 = 1;
        }
        qt.y0(18, i5);
        qt.y0(19, i7);
        qt.y0(20, i6);
        qt.y0(11, (b7 >> 1) & 1);
        qt.y0(12, (b7 >> 3) & 1);
        qt.y0(16, (b7 >> 6) & 1);
        qt.y0(15, (b7 >> 7) & 1);
        u0.d.A3(((bArr[i2 + 7] & 255) * 10) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(l0.c0.f13020n);
        l0.b0.p0(l0.c0.f13021o);
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
        int i3 = (this.f12143e + 1) % 2;
        this.f12143e = i3;
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
