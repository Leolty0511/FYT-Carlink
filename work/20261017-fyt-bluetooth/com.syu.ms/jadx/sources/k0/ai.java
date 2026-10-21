package k0;

import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class ai extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f3337b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3338c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f3339d = {new int[]{0, -1}, new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{7, 2}, new int[]{19, 12}, new int[]{20, 18}, new int[]{21, 26}, new int[]{32, 0}, new int[]{33, 29}, new int[]{34, 18}, new int[]{35, 54}, new int[]{36, 1}, new int[]{37, 21}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f3340e = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.c0.A();
        }
    }

    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        mtVar.f8306a = null;
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8320o = 1;
        mtVar.f8314i = 0;
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        if (App.c().getResources().getConfiguration().orientation != 1) {
            qt.z(this.f3340e);
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 1) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f3338c = b3 & 255;
            int i4 = 0;
            while (true) {
                iArr = this.f3339d;
                if (i4 >= iArr.length) {
                    break;
                }
                int i5 = this.f3338c;
                if (i5 == iArr[i4][0]) {
                    if (i5 == 0) {
                        break;
                    }
                    this.f3337b = i4;
                    break;
                }
                i4++;
            }
            if ((b4 & 255) != 1 || i4 >= iArr.length) {
                return;
            }
            l0.b0.l0(iArr[i4][1], 0);
            l0.b0.l0(this.f3339d[i4][1], 1);
            return;
        }
        if (b2 != 2) {
            if (b2 == 101) {
                qt.y0(1032, ((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255));
                qt.y0(1031, (bArr[i2 + 5] & 255) | ((bArr[i2 + 4] << 8) & 65280));
                return;
            } else {
                if (b2 != 127) {
                    return;
                }
                qt.L(new String(bArr, i2 + 2, i3 - 2));
                return;
            }
        }
        int i6 = i2 + 2;
        qt.y0(10, (bArr[i6] >> 7) & 1);
        qt.y0(11, (bArr[i6] >> 6) & 1);
        qt.y0(52, (bArr[i6] >> 5) & 1);
        qt.y0(13, (bArr[i6] >> 4) & 1);
        qt.y0(65, (bArr[i6] >> 3) & 1);
        qt.y0(16, (bArr[i6] >> 2) & 1);
        qt.y0(14, (bArr[i6] >> 1) & 1);
        qt.y0(12, (bArr[i6] >> 0) & 1);
        int i7 = i2 + 3;
        qt.y0(18, (bArr[i7] >> 6) & 1);
        qt.y0(19, (bArr[i7] >> 5) & 1);
        qt.y0(20, (bArr[i7] >> 4) & 1);
        qt.y0(21, bArr[i7] & DhcpPacket.DHCP_DOMAIN_NAME);
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            int i8 = i2 + 4;
            int i9 = bArr[i8] & 255;
            if (i9 == 0) {
                qt.y0(28, -2);
            } else if (i9 == 127) {
                qt.y0(28, -1);
            } else if (i9 != 255) {
                qt.y0(28, bArr[i8] & 255);
            } else {
                qt.y0(28, -3);
            }
            int i10 = i2 + 5;
            int i11 = bArr[i10] & 255;
            if (i11 == 0) {
                qt.y0(27, -2);
            } else if (i11 == 127) {
                qt.y0(27, -1);
            } else if (i11 != 255) {
                qt.y0(27, bArr[i10] & 255);
            } else {
                qt.y0(27, -3);
            }
        } else {
            int i12 = i2 + 4;
            int i13 = bArr[i12] & 255;
            if (i13 == 0) {
                qt.y0(27, -2);
            } else if (i13 == 127) {
                qt.y0(27, -1);
            } else if (i13 != 255) {
                qt.y0(27, bArr[i12] & 255);
            } else {
                qt.y0(27, -3);
            }
            int i14 = i2 + 5;
            int i15 = bArr[i14] & 255;
            if (i15 == 0) {
                qt.y0(28, -2);
            } else if (i15 == 127) {
                qt.y0(28, -1);
            } else if (i15 != 255) {
                qt.y0(28, bArr[i14] & 255);
            } else {
                qt.y0(28, -3);
            }
        }
        if (((bArr[i7] >> 7) & 1) != 1) {
            u0.d.A3(0);
            return;
        }
        int i16 = i2 + 6;
        int i17 = bArr[i16] & 127;
        u0.d.A3((bArr[i16] & 128) <= 0 ? (i17 * 10) + 1000 : 1000 - (i17 * 10));
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(l0.c0.f13020n);
        qt.q0(this.f3340e);
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
