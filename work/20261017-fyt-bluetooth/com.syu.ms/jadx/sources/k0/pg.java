package k0;

import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class pg extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public byte f9192b = 5;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Runnable f9193c = new a();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Runnable f9194d = new b();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(pg.this.f9194d);
            pg.this.f9192b = (byte) 5;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            pg pgVar = pg.this;
            byte b2 = (byte) (pgVar.f9192b - 1);
            pgVar.f9192b = b2;
            if (b2 > 0) {
                z.k.s(227, 129, 1, 1);
                z.k.s(227, 131, 2, 0, 1);
            } else {
                l0.b0.p0(pgVar.f9194d);
                pg.this.f9192b = (byte) 5;
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
        mtVar.f8311f = 1;
        mtVar.f8317l = 0;
        mtVar.f8312g = 0;
        mtVar.f8320o = 0;
        u0.c.f17386m.a(this.f9193c, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        byte b2 = bArr[i2];
        if (b2 != 5) {
            if (b2 == 9) {
                qt.m(bArr[i2 + 2], 0, 128, true, 127);
                return;
            }
            if (b2 != 10) {
                return;
            }
            byte b3 = bArr[i2 + 3];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b3 >> 6) & 1);
                qt.y0(2, (b3 >> 7) & 1);
            } else {
                qt.y0(1, (b3 >> 7) & 1);
                qt.y0(2, (b3 >> 6) & 1);
            }
            qt.y0(3, (b3 >> 5) & 1);
            qt.y0(4, (b3 >> 4) & 1);
            qt.y0(5, (b3 >> 3) & 1);
            return;
        }
        byte b4 = bArr[i2 + 2];
        byte b5 = bArr[i2 + 3];
        byte b6 = bArr[i2 + 4];
        int i4 = i2 + 5;
        byte b7 = bArr[i4];
        int i5 = i2 + 6;
        byte b8 = bArr[i5];
        qt.y0(10, (b4 >> 7) & 1);
        qt.y0(11, (b4 >> 6) & 1);
        qt.y0(13, (b4 >> 4) & 1);
        int i6 = b4 >> 2;
        qt.y0(12, i6 & 3);
        qt.y0(16, i6 & 1);
        qt.y0(65, (b4 >> 1) & 1);
        qt.y0(14, 3 & (b5 >> 6));
        qt.y0(21, b5 & DhcpPacket.DHCP_DOMAIN_NAME);
        qt.y0(18, (b6 >> 6) & 1);
        qt.y0(19, (b6 >> 4) & 1);
        qt.y0(20, (b6 >> 5) & 1);
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            b7 = bArr[i5];
            b8 = bArr[i4];
        }
        if (b7 < 36) {
            qt.y0(27, -2);
        } else if (b7 > 64) {
            qt.y0(27, -3);
        } else {
            qt.y0(27, b7);
        }
        if (b8 < 36) {
            qt.y0(28, -2);
        } else if (b8 > 64) {
            qt.y0(28, -3);
        } else {
            qt.y0(28, b8);
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f9193c);
        l0.b0.p0(this.f9194d);
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
