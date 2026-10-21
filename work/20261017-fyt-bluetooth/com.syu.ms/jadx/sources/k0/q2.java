package k0;

import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class q2 extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f9442b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f9443c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f9444d = {new int[]{16, 2}, new int[]{17, 67}, new int[]{18, 68}, new int[]{19, 7}, new int[]{20, 8}, new int[]{21, 12}, new int[]{22, 18}, new int[]{23, 26}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f9445e = new a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f9446f = new b();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.e0.c();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.e0.k();
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
        mtVar.f8310e = 0;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8320o = 0;
        if (nt.a()) {
            qt.z(this.f9445e);
            y0.g.f18094d.a(this.f9446f, 1);
            y0.g.f18095e.a(this.f9446f, 1);
            w0.e.f17815a.a(this.f9445e, 1);
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2 + 1];
        if (b2 == 1) {
            if (nt.a()) {
                l0.f0.c(bArr[i2 + 2]);
                return;
            }
            return;
        }
        if (b2 == 2) {
            if (nt.a()) {
                int i4 = bArr[i2 + 2] & 255;
                this.f9443c = i4;
                int i5 = 0;
                while (true) {
                    iArr = this.f9444d;
                    if (i5 >= iArr.length) {
                        break;
                    }
                    int i6 = this.f9443c;
                    if (i6 == iArr[i5][0]) {
                        if (i6 == 0) {
                            break;
                        }
                        this.f9442b = i5;
                        break;
                    }
                    i5++;
                }
                if (i4 != 0) {
                    if (i5 < iArr.length) {
                        l0.b0.l0(iArr[i5][1], 0);
                        return;
                    }
                    return;
                } else {
                    int i7 = this.f9442b;
                    if (i7 < iArr.length && i7 != 255) {
                        l0.b0.l0(iArr[i7][1], 1);
                    }
                    this.f9442b = 255;
                    return;
                }
            }
            return;
        }
        if (b2 != 3) {
            if (b2 == 4 && nt.a()) {
                byte b3 = bArr[i2 + 2];
                byte b4 = bArr[i2 + 3];
                u0.d.R2(l0.e0.n(((b4 & 192) >> 6) & 255, 1));
                int i8 = ((b4 & DhcpPacket.DHCP_HOST_NAME) >> 2) & 255;
                u0.d.S2(l0.e0.n(i8, 2));
                u0.d.T2(l0.e0.n(i8, 2));
                u0.d.U2(l0.e0.n(b4 & 3 & 255, 1));
                u0.d.D2(l0.e0.n(((b3 & 192) >> 6) & 255, 1));
                int i9 = ((b3 & DhcpPacket.DHCP_HOST_NAME) >> 2) & 255;
                u0.d.E2(l0.e0.n(i9, 1));
                u0.d.F2(l0.e0.n(i9, 1));
                u0.d.G2(l0.e0.n(b3 & 3 & 255, 1));
                return;
            }
            return;
        }
        int i10 = i2 + 2;
        int i11 = bArr[i10] & 255;
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            i11 = bArr[i2 + 3] & 255;
        }
        if (i11 > 0 && i11 < 30) {
            qt.y0(27, (i11 * 5) + 170);
        } else if (i11 == 0) {
            qt.y0(27, -2);
        } else if (i11 != 30) {
            qt.y0(27, -1);
        } else {
            qt.y0(27, -3);
        }
        int i12 = (SystemProperties.getBoolean("persist.fyt.reversetemp", false) ? bArr[i10] : bArr[i2 + 3]) & 255;
        if (i12 > 0 && i12 < 30) {
            qt.y0(28, (i12 * 5) + 170);
        } else if (i12 == 0) {
            qt.y0(28, -2);
        } else if (i12 != 30) {
            qt.y0(28, -1);
        } else {
            qt.y0(28, -3);
        }
        qt.y0(21, 255 & bArr[i2 + 4]);
        byte b5 = bArr[i2 + 5];
        qt.y0(12, (b5 >> 7) & 1);
        qt.y0(65, (b5 >> 6) & 1);
        qt.y0(16, (b5 >> 5) & 1);
        qt.y0(20, (b5 >> 4) & 1);
        qt.y0(19, (b5 >> 3) & 1);
        qt.y0(13, (b5 >> 2) & 1);
        qt.y0(14, (b5 >> 1) & 1);
        qt.y0(11, (b5 >> 0) & 1);
    }

    @Override // k0.lt
    public void W2() {
        if (nt.a()) {
            qt.q0(this.f9445e);
            y0.g.f18094d.d(this.f9446f);
            y0.g.f18095e.d(this.f9446f);
            w0.e.f17815a.d(this.f9445e);
        }
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
