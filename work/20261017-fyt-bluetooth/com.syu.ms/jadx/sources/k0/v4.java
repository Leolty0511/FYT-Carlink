package k0;

import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class v4 extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f11229b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f11230c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f11231d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{5, 18}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 18}, new int[]{9, 26}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f11232e = new a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f11233f = new b();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.c0.y();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.c0.v0();
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
        mtVar.f8311f = 0;
        mtVar.f8312g = 0;
        mtVar.f8320o = 0;
        if (nt.a()) {
            l0.b0.b(this.f11232e);
            y0.g.f18094d.a(this.f11233f, 1);
            y0.g.f18095e.a(this.f11233f, 1);
            w0.e.f17815a.a(this.f11232e, 1);
            w0.e.f17819e.a(this.f11232e, 1);
            u0.c.f17374a.a(this.f11232e, 1);
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 1) {
            if (nt.a()) {
                byte b3 = bArr[i2 + 2];
                byte b4 = bArr[i2 + 3];
                this.f11230c = b3 & 255;
                int i4 = 0;
                while (true) {
                    iArr = this.f11231d;
                    if (i4 >= iArr.length) {
                        break;
                    }
                    int i5 = this.f11230c;
                    if (i5 == iArr[i4][0]) {
                        if (i5 == 0) {
                            break;
                        }
                        this.f11229b = i4;
                        break;
                    }
                    i4++;
                }
                if ((b4 & 255) != 0) {
                    if (i4 < iArr.length) {
                        l0.b0.l0(iArr[i4][1], 0);
                        return;
                    }
                    return;
                } else {
                    int i6 = this.f11229b;
                    if (i6 < iArr.length && i6 != 255) {
                        l0.b0.l0(iArr[i6][1], 1);
                    }
                    this.f11229b = 255;
                    return;
                }
            }
            return;
        }
        if (b2 != 2) {
            if (b2 == 3 && nt.a()) {
                byte b5 = bArr[i2 + 2];
                byte b6 = bArr[i2 + 3];
                byte b7 = bArr[i2 + 4];
                byte b8 = bArr[i2 + 5];
                u0.d.R2(a3(b5 & 255));
                u0.d.S2(a3(b6 & 255));
                u0.d.T2(a3(b7 & 255));
                u0.d.U2(a3(b8 & 255));
                u0.d.D2(a3(bArr[i2 + 6] & 255));
                u0.d.E2(a3(bArr[i2 + 7] & 255));
                u0.d.F2(a3(bArr[i2 + 8] & 255));
                u0.d.G2(a3(bArr[i2 + 9] & 255));
                return;
            }
            return;
        }
        byte b9 = bArr[i2 + 2];
        qt.y0(10, (b9 >> 7) & 1);
        qt.y0(11, (b9 >> 6) & 1);
        qt.y0(13, (b9 >> 4) & 1);
        qt.y0(26, (b9 >> 3) & 1);
        qt.y0(14, (b9 >> 2) & 1);
        qt.y0(15, (b9 >> 1) & 1);
        qt.y0(38, (b9 >> 0) & 1);
        byte b10 = bArr[i2 + 3];
        qt.y0(18, (b10 >> 7) & 1);
        qt.y0(19, (b10 >> 6) & 1);
        qt.y0(20, (b10 >> 5) & 1);
        int i7 = b10 & DhcpPacket.DHCP_DOMAIN_NAME;
        if (i7 > 7) {
            i7 = 7;
        }
        qt.y0(21, i7);
        int i8 = i2 + 4;
        int i9 = bArr[i8] & 255;
        int i10 = i2 + 5;
        int i11 = bArr[i10] & 255;
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            i9 = bArr[i10] & 255;
            i11 = bArr[i8] & 255;
        }
        if (i9 == 0) {
            qt.y0(27, -2);
        } else if (i9 == 127) {
            qt.y0(27, -3);
        } else if (i9 > 30 && i9 < 64) {
            qt.y0(27, (i9 / 2) * 10);
        }
        if (i11 == 0) {
            qt.y0(28, -2);
        } else if (i11 == 127) {
            qt.y0(28, -3);
        } else if (i11 > 30 && i11 < 64) {
            qt.y0(28, (i11 / 2) * 10);
        }
        byte b11 = bArr[i2 + 6];
        int i12 = (b11 >> 6) & 3;
        if (i12 == 1) {
            qt.y0(12, 0);
        } else if (i12 == 2) {
            qt.y0(12, 1);
        } else if (i12 == 3) {
            qt.y0(12, 2);
        }
        qt.y0(29, (b11 >> 4) & 3);
        qt.y0(67, (b11 >> 3) & 1);
        qt.y0(53, (b11 >> 2) & 1);
        qt.y0(30, b11 & 3);
    }

    @Override // k0.lt
    public void W2() {
        if (nt.a()) {
            l0.b0.p0(this.f11232e);
            y0.g.f18094d.d(this.f11233f);
            y0.g.f18095e.d(this.f11233f);
            w0.e.f17815a.d(this.f11232e);
            w0.e.f17819e.d(this.f11232e);
            u0.c.f17374a.d(this.f11232e);
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

    public final int a3(int i2) {
        if (i2 == 255) {
            return 10;
        }
        return (i2 * 10) / 160;
    }
}
