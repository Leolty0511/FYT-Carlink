package k0;

import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class gf extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f5491b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f5492c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f5493d = {new int[]{18, 67}, new int[]{19, 68}, new int[]{20, 7}, new int[]{21, 8}, new int[]{22, 12}, new int[]{23, 13}, new int[]{80, 18}, new int[]{81, 26}, new int[]{82, 2}, new int[]{83, 5}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f5494e = new a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f5495f = new b();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.c0.u();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            gf.this.b3(h0.c.f2437h);
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
        mtVar.f8311f = 1;
        mtVar.f8312g = 0;
        mtVar.f8314i = 0;
        mtVar.f8320o = 0;
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        l0.b0.b(this.f5494e);
        w0.e.f17815a.a(this.f5494e, 1);
        u0.c.f17374a.a(this.f5494e, 1);
        u0.c.f17392s.a(this.f5494e, 1);
        u0.c.f17393t.a(this.f5494e, 1);
        h0.d.f2464c.a(this.f5495f, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4 = bArr[i2] & 255;
        if (i4 == 1) {
            byte b2 = bArr[i2 + 2];
            byte b3 = bArr[i2 + 3];
            this.f5492c = b2 & 255;
            int i5 = 0;
            while (true) {
                iArr = this.f5493d;
                if (i5 >= iArr.length) {
                    break;
                }
                int i6 = this.f5492c;
                if (i6 == iArr[i5][0]) {
                    if (i6 == 0) {
                        break;
                    }
                    this.f5491b = i5;
                    break;
                }
                i5++;
            }
            int i7 = b3 & 255;
            if (i7 == 1) {
                if (i5 < iArr.length) {
                    l0.b0.l0(iArr[i5][1], 0);
                    return;
                }
                return;
            } else {
                if (i7 == 0) {
                    int i8 = this.f5491b;
                    if (i8 < iArr.length && i8 != 255) {
                        l0.b0.l0(iArr[i8][1], 1);
                    }
                    this.f5491b = 255;
                }
                return;
            }
        }
        switch (i4) {
            case 33:
                byte b4 = bArr[i2 + 2];
                byte b5 = bArr[i2 + 3];
                int i9 = i2 + 4;
                byte b6 = bArr[i9];
                int i10 = i2 + 5;
                byte b7 = bArr[i10];
                byte b8 = bArr[i2 + 6];
                qt.y0(10, (b4 >> 7) & 1);
                qt.y0(11, (b4 >> 6) & 1);
                qt.y0(12, (b4 >> 5) & 1);
                qt.y0(13, (b4 >> 4) & 1);
                qt.y0(16, (b4 >> 3) & 1);
                qt.y0(62, (b4 >> 2) & 1);
                qt.y0(38, (b4 >> 1) & 1);
                qt.y0(65, (b4 >> 0) & 1);
                qt.y0(18, (b5 >> 7) & 1);
                qt.y0(19, (b5 >> 6) & 1);
                qt.y0(20, (b5 >> 5) & 1);
                qt.y0(21, b5 & DhcpPacket.DHCP_DOMAIN_NAME);
                qt.y0(80, (b8 >> 7) & 1);
                int i11 = b6;
                int i12 = b7;
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    i11 = bArr[i10] & 255;
                    i12 = bArr[i9] & 255;
                }
                int i13 = i11 & 255;
                if (i13 == 0) {
                    qt.y0(27, -2);
                } else if (i13 == 255) {
                    qt.y0(27, -3);
                } else {
                    qt.y0(27, i13);
                }
                int i14 = i12 & 255;
                if (i14 == 0) {
                    qt.y0(28, -2);
                } else if (i14 != 255) {
                    qt.y0(28, i14);
                } else {
                    qt.y0(28, -3);
                }
                break;
            case 34:
                byte b9 = bArr[i2 + 2];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(2, (b9 >> 0) & 1);
                    qt.y0(1, (b9 >> 1) & 1);
                } else {
                    qt.y0(2, (b9 >> 1) & 1);
                    qt.y0(1, (b9 >> 0) & 1);
                }
                qt.y0(4, (b9 >> 3) & 1);
                qt.y0(3, (b9 >> 2) & 1);
                qt.y0(0, (b9 >> 5) & 1);
                qt.y0(5, (b9 >> 4) & 1);
                break;
            case 35:
                u0.d.R2(l0.c0.E0(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.E0(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.E0(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.E0(bArr[i2 + 5] & 255));
                break;
            case 36:
                int i15 = i2 + 2;
                if ((bArr[i15] & 128) == 0) {
                    qt.j(bArr[i15], 0, 0, 50);
                } else {
                    qt.m(bArr[i15], 0, 128, true, 50);
                }
                break;
            case 37:
                u0.d.D2(l0.c0.E0(bArr[i2 + 2] & 255));
                u0.d.E2(l0.c0.E0(bArr[i2 + 3] & 255));
                u0.d.F2(l0.c0.E0(bArr[i2 + 4] & 255));
                u0.d.G2(l0.c0.E0(bArr[i2 + 5] & 255));
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(l0.c0.f13020n);
        l0.b0.p0(l0.c0.f13021o);
        l0.b0.p0(this.f5494e);
        w0.e.f17815a.d(this.f5494e);
        u0.c.f17374a.d(this.f5494e);
        u0.c.f17392s.d(this.f5494e);
        u0.c.f17393t.d(this.f5494e);
        h0.d.f2464c.d(this.f5495f);
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

    public final void b3(String str) {
        if (str == null) {
            return;
        }
        int length = str.length() <= 13 ? str.length() : 13;
        int i2 = length + 4;
        int[] iArr = new int[i2];
        iArr[0] = -29;
        iArr[1] = -125;
        iArr[2] = (byte) (length + 1);
        iArr[3] = (byte) (length | 16);
        for (int i3 = 4; i3 < i2; i3++) {
            iArr[i3] = (byte) (str.charAt(i3 - 4) & 255);
        }
        z.k.s(iArr);
    }
}
