package k0;

import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class i5 extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f6276b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f6277c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f6278d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 18}, new int[]{7, 2}, new int[]{10, 26}, new int[]{11, 9}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f6279e = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17347o == 1) {
                z.k.s(227, 144, 2, 34, 0);
                z.k.s(227, 144, 2, 35, 0);
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
        mtVar.f8312g = 0;
        mtVar.f8320o = 0;
        if (nt.a()) {
            y0.g.f18094d.a(l0.c0.f13008b, 1);
            y0.g.f18095e.a(l0.c0.f13008b, 1);
            w0.e.f17815a.a(l0.c0.f13007a, 1);
            w0.e.f17819e.a(l0.c0.f13007a, 1);
            u0.c.f17374a.a(l0.c0.f13007a, 1);
            u0.c.f17393t.a(l0.c0.f13007a, 1);
            u0.c.f17392s.a(l0.c0.f13007a, 1);
        }
        qt.y(this.f6279e);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        byte b2 = bArr[i2];
        if (b2 == 37) {
            if (nt.a()) {
                u0.d.C2((bArr[i2 + 2] >> 1) & 1);
            }
            return;
        }
        if (b2 == 38) {
            qt.i(bArr[i2 + 2], bArr[i2 + 3], false, 1260);
            return;
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        switch (b2) {
            case 32:
                if (nt.a()) {
                    byte b3 = bArr[i2 + 2];
                    byte b4 = bArr[i2 + 3];
                    this.f6277c = b3 & 255;
                    int i5 = 0;
                    while (true) {
                        iArr = this.f6278d;
                        if (i5 < iArr.length) {
                            int i6 = this.f6277c;
                            if (i6 != iArr[i5][0]) {
                                i5++;
                            } else if (i6 != 0) {
                                this.f6276b = i5;
                            }
                        }
                    }
                    if ((b4 & 255) == 0) {
                        int i7 = this.f6276b;
                        if (i7 < iArr.length && i7 != 255) {
                            l0.b0.l0(iArr[i7][1], 1);
                        }
                        this.f6276b = 255;
                    } else if (i5 < iArr.length) {
                        l0.b0.l0(iArr[i5][1], 0);
                    }
                }
                break;
            case 33:
                byte b5 = bArr[i2 + 2];
                byte b6 = bArr[i2 + 3];
                qt.y0(10, (b5 >> 7) & 1);
                qt.y0(11, (b5 >> 6) & 1);
                qt.y0(12, (b5 >> 5) & 1);
                qt.y0(13, (b5 >> 3) & 1);
                qt.y0(62, (b5 >> 2) & 1);
                qt.y0(15, (b5 >> 1) & 1);
                qt.y0(18, (b6 >> 7) & 1);
                qt.y0(19, (b6 >> 6) & 1);
                qt.y0(20, (b6 >> 5) & 1);
                qt.y0(21, b6 & DhcpPacket.DHCP_DOMAIN_NAME);
                int i8 = i2 + 4;
                byte b7 = bArr[i8];
                int i9 = i2 + 5;
                byte b8 = bArr[i9];
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    b7 = bArr[i9];
                    b8 = bArr[i8];
                }
                int i10 = -1;
                if (b7 == 31) {
                    i4 = -2;
                } else if (b7 != 57) {
                    i4 = (b7 <= 15 || b7 >= 57) ? -1 : ((b7 - 32) * 5) + 160;
                } else {
                    i4 = -3;
                }
                qt.y0(27, i4);
                if (b8 == 31) {
                    i10 = -2;
                } else if (b8 == 57) {
                    i10 = -3;
                } else if (b8 > 15 && b8 < 57) {
                    i10 = ((b8 - 32) * 5) + 160;
                }
                qt.y0(28, i10);
                break;
            case 34:
                if (nt.a()) {
                    u0.d.R2(l0.c0.O0(bArr[i2 + 2] & 255));
                    u0.d.S2(l0.c0.O0(bArr[i2 + 3] & 255));
                    u0.d.T2(l0.c0.O0(bArr[i2 + 4] & 255));
                    u0.d.U2(l0.c0.O0(bArr[i2 + 5] & 255));
                }
                break;
            case 35:
                if (nt.a()) {
                    u0.d.D2(l0.c0.O0(bArr[i2 + 2] & 255));
                    u0.d.E2(l0.c0.O0(bArr[i2 + 3] & 255));
                    u0.d.F2(l0.c0.O0(bArr[i2 + 4] & 255));
                    u0.d.G2(l0.c0.O0(bArr[i2 + 5] & 255));
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        if (nt.a()) {
            y0.g.f18094d.d(l0.c0.f13008b);
            y0.g.f18095e.d(l0.c0.f13008b);
            w0.e.f17815a.d(l0.c0.f13007a);
            w0.e.f17819e.d(l0.c0.f13007a);
            u0.c.f17374a.d(l0.c0.f13007a);
            u0.c.f17393t.d(l0.c0.f13007a);
            u0.c.f17392s.d(l0.c0.f13007a);
        }
        qt.p0(this.f6279e);
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
