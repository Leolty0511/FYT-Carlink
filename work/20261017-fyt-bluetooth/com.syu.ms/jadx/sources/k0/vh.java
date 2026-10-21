package k0;

import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class vh extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public byte f11371b = 5;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Runnable f11372c = new a();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Runnable f11373d = new b();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(vh.this.f11373d);
            vh.this.f11371b = (byte) 5;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            vh vhVar = vh.this;
            byte b2 = (byte) (vhVar.f11371b - 1);
            vhVar.f11371b = b2;
            if (b2 > 0) {
                z.k.s(227, 129, 1, 1);
                z.k.s(227, 131, 2, 2, 0);
            } else {
                l0.b0.p0(vhVar.f11373d);
                vh.this.f11371b = (byte) 5;
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
        mtVar.f8310e = 0;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8320o = 0;
        u0.c.f17386m.a(this.f11372c, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        byte b2 = bArr[i2];
        if (b2 != 2) {
            if (b2 != 125) {
                if (b2 != 127) {
                    return;
                }
                qt.L(new String(bArr, i2 + 2, i3 - 2));
                return;
            } else {
                if ((bArr[i2 + 2] & 255) != 1) {
                    return;
                }
                int i4 = i2 + 3;
                l0.c0.a((bArr[i4] >> 3) & 1, (bArr[i4] >> 4) & 1, 0);
                o1.x.C(nt.f8643f, 1049, new int[]{11, bArr[i4] & 255}, null, null);
                return;
            }
        }
        byte b3 = bArr[i2 + 2];
        byte b4 = bArr[i2 + 3];
        int i5 = i2 + 4;
        byte b5 = bArr[i5];
        int i6 = i2 + 5;
        byte b6 = bArr[i6];
        byte b7 = bArr[i2 + 7];
        qt.y0(10, (b3 >> 7) & 1);
        qt.y0(11, (b3 >> 6) & 1);
        qt.y0(13, (b3 >> 3) & 1);
        qt.y0(65, (b3 >> 1) & 1);
        qt.y0(18, (b4 >> 7) & 1);
        qt.y0(19, (b4 >> 6) & 1);
        qt.y0(20, (b4 >> 5) & 1);
        qt.y0(21, b4 & DhcpPacket.DHCP_DOMAIN_NAME);
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            b5 = bArr[i6];
            b6 = bArr[i5];
        }
        int i7 = b5 & 255;
        if (b5 == -2) {
            qt.y0(27, -2);
        } else if (b5 == -1) {
            qt.y0(27, -3);
        } else if (b5 == 127) {
            qt.y0(27, -1);
        } else {
            qt.y0(27, i7);
        }
        int i8 = b6 & 255;
        if (b6 == -2) {
            qt.y0(28, -2);
        } else if (b6 == -1) {
            qt.y0(28, -3);
        } else if (b6 == 127) {
            qt.y0(28, -1);
        } else {
            qt.y0(28, i8);
        }
        int i9 = b7 >= 80 ? ((b7 * 5) + 1000) - 400 : 1000 - (400 - (b7 * 5));
        if (i9 > 600) {
            u0.d.A3(i9);
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f11372c);
        l0.b0.p0(this.f11373d);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 97) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
    }
}
