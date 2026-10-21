package k0;

import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class xf extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f12119b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f12120c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f12121d = 255;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[][] f12122e = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{7, 2}, new int[]{19, 12}, new int[]{20, 18}, new int[]{21, 26}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f12123f = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.c0.A();
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
        mtVar.f8310e = 0;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8320o = 0;
        qt.z(this.f12123f);
        w0.e.f17815a.a(this.f12123f, 1);
        w0.e.f17819e.a(this.f12123f, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 1) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f12120c = b3 & 255;
            int i4 = 0;
            while (true) {
                iArr = this.f12122e;
                if (i4 >= iArr.length) {
                    break;
                }
                int i5 = this.f12120c;
                if (i5 == iArr[i4][0]) {
                    if (i5 == 0) {
                        break;
                    }
                    this.f12119b = i4;
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
                    int i7 = this.f12119b;
                    if (i7 < iArr.length && i7 != 255) {
                        l0.b0.l0(iArr[i7][1], 1);
                    }
                    this.f12119b = 255;
                    return;
                }
                return;
            }
        }
        if (b2 != 2) {
            return;
        }
        byte b5 = bArr[i2 + 2];
        byte b6 = bArr[i2 + 3];
        int i8 = i2 + 4;
        byte b7 = bArr[i8];
        int i9 = i2 + 5;
        byte b8 = bArr[i9];
        qt.y0(10, (b5 >> 7) & 1);
        qt.y0(11, (b5 >> 6) & 1);
        qt.y0(52, (b5 >> 5) & 1);
        qt.y0(13, (b5 >> 4) & 1);
        qt.y0(65, (b5 >> 3) & 1);
        qt.y0(16, (b5 >> 2) & 1);
        qt.y0(14, (b5 >> 1) & 1);
        qt.y0(12, b5 & 1);
        qt.y0(55, (b6 >> 7) & 1);
        qt.y0(18, (b6 >> 6) & 1);
        qt.y0(19, (b6 >> 5) & 1);
        qt.y0(20, (b6 >> 4) & 1);
        qt.y0(21, b6 & DhcpPacket.DHCP_DOMAIN_NAME);
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            b7 = bArr[i9];
            b8 = bArr[i8];
        }
        int i10 = b7 & 255;
        if (b7 == 0) {
            qt.y0(27, -2);
        } else if (b7 == -1) {
            qt.y0(27, -3);
        } else {
            qt.y0(27, i10);
        }
        int i11 = b8 & 255;
        if (b8 == 0) {
            qt.y0(28, -2);
        } else if (b8 == -1) {
            qt.y0(28, -3);
        } else {
            qt.y0(28, i11);
        }
        byte b9 = bArr[i2 + 6];
        int i12 = b9 & 127;
        u0.d.A3((b9 & 128) != 0 ? 1000 - (i12 * 10) : (i12 * 10) + 1000);
    }

    @Override // k0.lt
    public void W2() {
        qt.q0(this.f12123f);
        w0.e.f17815a.d(this.f12123f);
        w0.e.f17819e.d(this.f12123f);
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
