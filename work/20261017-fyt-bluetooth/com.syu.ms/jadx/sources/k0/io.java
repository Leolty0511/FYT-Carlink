package k0;

import android.media.videoeditor.MediaProperties;
import android.net.dhcp.DhcpPacket;
import android.os.BatteryStats;
import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class io extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f6538b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f6539c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f6540d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{7, 2}, new int[]{9, 18}, new int[]{10, 26}, new int[]{19, 3}, new int[]{20, 4}};

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = null;
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 0;
        mtVar.f8317l = 0;
        mtVar.f8314i = 0;
        mtVar.f8307b = 0;
        mtVar.f8308c = 0;
        mtVar.f8309d = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 32) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f6539c = b3 & 255;
            int i4 = 0;
            while (true) {
                iArr = this.f6540d;
                if (i4 >= iArr.length) {
                    break;
                }
                int i5 = this.f6539c;
                if (i5 == iArr[i4][0]) {
                    if (i5 == 0) {
                        break;
                    }
                    this.f6538b = i4;
                    break;
                }
                i4++;
            }
            int i6 = b4 & 255;
            if (i6 == 1) {
                if (i4 < iArr.length) {
                    l0.b0.l0(iArr[i4][1], 0);
                    return;
                }
                return;
            } else {
                if (i6 == 0) {
                    int i7 = this.f6538b;
                    if (i7 < iArr.length && i7 != 255) {
                        l0.b0.l0(iArr[i7][1], 1);
                    }
                    this.f6538b = 255;
                    return;
                }
                return;
            }
        }
        if (b2 == 36) {
            int i8 = bArr[i2 + 2] & 255;
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(2, (i8 >> 6) & 1);
                qt.y0(1, (i8 >> 7) & 1);
            } else {
                qt.y0(2, (i8 >> 7) & 1);
                qt.y0(1, (i8 >> 6) & 1);
            }
            qt.y0(4, (i8 >> 5) & 1);
            qt.y0(3, (i8 >> 4) & 1);
            qt.y0(5, (i8 >> 3) & 1);
            qt.y0(0, (i8 >> 0) & 1);
            return;
        }
        if (b2 != 39) {
            if (b2 != 41) {
                if (b2 != 48) {
                    return;
                }
                qt.L(new String(bArr, i2 + 2, i3 - 2));
                return;
            } else {
                int i9 = i2 + 3;
                if ((bArr[i9] & 128) != 0) {
                    qt.j(bArr[i2 + 2], bArr[i9] & DhcpPacket.DHCP_DOMAIN_NAME, 0, MediaProperties.HEIGHT_360);
                    return;
                } else {
                    int i10 = 4096 - ((bArr[i2 + 2] & 255) | ((bArr[i9] << 8) & BatteryStats.HistoryItem.STATE_PHONE_STATE_MASK));
                    qt.i(i10 & 255, (i10 >> 8) & 15, true, MediaProperties.HEIGHT_360);
                    return;
                }
            }
        }
        int i11 = i2 + 2;
        qt.y0(10, (bArr[i11] >> 7) & 1);
        qt.y0(11, (bArr[i11] >> 6) & 1);
        qt.y0(12, (bArr[i11] >> 5) & 1);
        qt.y0(79, (bArr[i11] >> 4) & 1);
        qt.y0(13, (bArr[i11] >> 3) & 1);
        qt.y0(62, (bArr[i11] >> 2) & 1);
        qt.y0(65, (bArr[i11] >> 1) & 1);
        qt.y0(16, (bArr[i11] >> 0) & 1);
        int i12 = i2 + 3;
        qt.y0(18, (bArr[i12] >> 7) & 1);
        qt.y0(19, (bArr[i12] >> 6) & 1);
        qt.y0(20, (bArr[i12] >> 5) & 1);
        qt.y0(21, bArr[i12] & DhcpPacket.DHCP_DOMAIN_NAME);
        int i13 = i2 + 4;
        int i14 = bArr[i13] & 255;
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            i14 = bArr[i2 + 5] & 255;
        }
        if (i14 == 0) {
            qt.y0(27, -2);
        } else if (i14 == 127) {
            qt.y0(27, -1);
        } else if (i14 != 255) {
            qt.y0(27, i14);
        } else {
            qt.y0(27, -3);
        }
        int i15 = bArr[i2 + 5] & 255;
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            i15 = bArr[i13] & 255;
        }
        if (i15 == 0) {
            qt.y0(28, -2);
        } else if (i15 == 127) {
            qt.y0(28, -1);
        } else if (i15 != 255) {
            qt.y0(28, i15);
        } else {
            qt.y0(28, -3);
        }
        qt.y0(37, (bArr[i2 + 6] >> 0) & 1);
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
    }
}
