package k0;

import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class ha extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f5844b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f5845c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f5846d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{7, 2}, new int[]{14, 34}, new int[]{15, 35}, new int[]{16, 32}, new int[]{17, 33}, new int[]{18, 29}, new int[]{20, 2}, new int[]{30, 2}, new int[]{240, 7}, new int[]{i.a.Theme_actionModeShareDrawable, 8}, new int[]{52, 21}, new int[]{51, 1}, new int[]{63, 0}, new int[]{84, 11}, new int[]{87, 1}, new int[]{90, 12}, new int[]{91, 25}, new int[]{86, 39}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f5847e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f5848f = new a();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f5849g = new b();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f5850h = new c();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.c0.f();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.c0.B0();
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ha.this.b3(u0.b.K3);
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        if (nt.a()) {
            y0.g.f18094d.a(this.f5849g, 1);
            y0.g.f18095e.a(this.f5849g, 1);
            w0.e.f17815a.a(this.f5848f, 1);
            w0.e.f17819e.a(this.f5848f, 1);
            u0.c.f17393t.a(this.f5848f, 1);
            u0.c.f17392s.a(this.f5848f, 1);
            u0.c.f17374a.a(this.f5848f, 1);
        }
        mt mtVar = this.f7886a;
        mtVar.f8306a = null;
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8314i = 0;
        mtVar.f8312g = 1;
        mtVar.f8320o = 1;
        u0.c.f17397x.a(this.f5850h, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 22) {
            int i4 = i2 + 2;
            int i5 = i2 + 3;
            qt.y0(113, ((bArr[i4] & 255) + ((bArr[i5] << 8) & 65280)) / 100);
            qt.y0(1031, ((bArr[i4] & 255) + ((bArr[i5] << 8) & 65280)) / 100);
            return;
        }
        if (b2 != 41) {
            if (b2 == 48) {
                qt.L(new String(bArr, i2 + 2, i3 - 2));
                return;
            }
            if (b2 == 53) {
                qt.i(bArr[i2 + 2], bArr[i2 + 3], true, 12600);
                return;
            }
            if (b2 == 101) {
                int i6 = i2 + 2;
                int i7 = i2 + 3;
                qt.y0(114, (bArr[i6] & 255) + ((bArr[i7] << 8) & 65280));
                qt.y0(1032, (bArr[i6] & 255) + ((bArr[i7] << 8) & 65280));
                return;
            }
            if (b2 == 103) {
                qt.y0(17, bArr[i2 + 2] & 1);
                int i8 = i2 + 3;
                qt.y0(29, bArr[i8] & 3);
                qt.y0(30, (bArr[i8] >> 2) & 3);
                qt.y0(31, (bArr[i8] >> 4) & 3);
                qt.y0(32, (bArr[i8] >> 6) & 3);
                return;
            }
            switch (b2) {
                case 32:
                    if (nt.a()) {
                        byte b3 = bArr[i2 + 2];
                        byte b4 = bArr[i2 + 3];
                        this.f5845c = b3 & 255;
                        int i9 = 0;
                        while (true) {
                            iArr = this.f5846d;
                            if (i9 < iArr.length) {
                                int i10 = this.f5845c;
                                if (i10 != iArr[i9][0]) {
                                    i9++;
                                } else if (i10 != 0) {
                                    this.f5844b = i9;
                                }
                            }
                        }
                        if ((b4 & 255) == 0) {
                            if (i9 <= iArr.length) {
                                l0.b0.l0(iArr[this.f5844b][1], 1);
                            }
                        } else if (i9 < iArr.length) {
                            l0.b0.l0(iArr[i9][1], 0);
                        }
                    }
                    break;
                case 34:
                    if (nt.a()) {
                        u0.d.R2(a3(bArr[i2 + 2] & 255));
                        u0.d.S2(a3(bArr[i2 + 3] & 255));
                        u0.d.T2(a3(bArr[i2 + 4] & 255));
                        u0.d.U2(a3(bArr[i2 + 5] & 255));
                    }
                    break;
                case 35:
                    if (nt.a()) {
                        u0.d.D2(a3(bArr[i2 + 2] & 255));
                        u0.d.E2(a3(bArr[i2 + 3] & 255));
                        u0.d.F2(a3(bArr[i2 + 4] & 255));
                        u0.d.G2(a3(bArr[i2 + 5] & 255));
                    }
                    break;
                case 36:
                    byte b5 = bArr[i2 + 2];
                    byte b6 = bArr[i2 + 4];
                    byte b7 = bArr[i2 + 5];
                    byte b8 = bArr[i2 + 7];
                    if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                        qt.y0(1, (b5 >> 7) & 1);
                        qt.y0(2, (b5 >> 6) & 1);
                    } else {
                        qt.y0(1, (b5 >> 6) & 1);
                        qt.y0(2, (b5 >> 7) & 1);
                    }
                    qt.y0(4, (b5 >> 5) & 1);
                    qt.y0(3, (b5 >> 4) & 1);
                    qt.y0(5, (b5 >> 3) & 1);
                    qt.y0(0, (b5 >> 2) & 1);
                    qt.y0(119, (b6 >> 7) & 1);
                    qt.y0(120, (b6 >> 4) & 7);
                    qt.y0(117, (b6 >> 3) & 1);
                    qt.y0(116, (b6 >> 2) & 1);
                    qt.y0(121, (b6 >> 1) & 1);
                    qt.y0(115, (b6 >> 0) & 1);
                    qt.y0(118, (b7 >> 7) & 1);
                    o1.x.B(nt.f8643f, 123, new int[]{(b7 >> 6) & 1});
                    qt.y0(124, (b8 >> 0) & 1);
                    qt.y0(122, (b8 >> 1) & 1);
                    break;
            }
            return;
        }
        byte b9 = bArr[i2 + 2];
        byte b10 = bArr[i2 + 3];
        byte b11 = bArr[i2 + 4];
        byte b12 = bArr[i2 + 5];
        int i11 = i2 + 6;
        byte b13 = bArr[i11];
        int i12 = i2 + 7;
        byte b14 = bArr[i12];
        byte b15 = bArr[i2 + 8];
        byte b16 = bArr[i2 + 9];
        int[] iArr2 = new int[1];
        iArr2[0] = (b9 & 128) == 0 ? 0 : 1;
        qt.y0(10, iArr2);
        int[] iArr3 = new int[1];
        iArr3[0] = (b9 & 64) == 0 ? 0 : 1;
        qt.y0(11, iArr3);
        int[] iArr4 = new int[1];
        iArr4[0] = (b9 & 32) == 0 ? 0 : 1;
        qt.y0(12, iArr4);
        int[] iArr5 = new int[1];
        iArr5[0] = (b9 & 8) == 0 ? 0 : 1;
        qt.y0(13, iArr5);
        int[] iArr6 = new int[1];
        iArr6[0] = (b9 & 4) == 0 ? 0 : 1;
        qt.y0(14, iArr6);
        int[] iArr7 = new int[1];
        iArr7[0] = (b9 & 2) == 0 ? 0 : 1;
        qt.y0(15, iArr7);
        int[] iArr8 = new int[1];
        iArr8[0] = (b9 & 1) == 0 ? 0 : 1;
        qt.y0(16, iArr8);
        int[] iArr9 = new int[1];
        iArr9[0] = (b10 & 128) == 0 ? 0 : 1;
        qt.y0(18, iArr9);
        int[] iArr10 = new int[1];
        iArr10[0] = (b10 & 64) == 0 ? 0 : 1;
        qt.y0(19, iArr10);
        int[] iArr11 = new int[1];
        iArr11[0] = (b10 & 32) == 0 ? 0 : 1;
        qt.y0(20, iArr11);
        int i13 = b10 & DhcpPacket.DHCP_DOMAIN_NAME;
        qt.y0(21, i13 <= 7 ? i13 : 7);
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            qt.y0(27, b12 & 255);
            qt.y0(28, b11 & 255);
        } else {
            qt.y0(27, b11 & 255);
            qt.y0(28, b12 & 255);
        }
        qt.y0(53, (b13 >> 2) & 1);
        qt.y0(37, (b13 >> 6) & 1);
        if (nt.a()) {
            l0.f0.e(bArr[i11], bArr[i12]);
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17397x.d(this.f5850h);
        y0.g.f18094d.d(this.f5849g);
        y0.g.f18095e.d(this.f5849g);
        w0.e.f17815a.d(this.f5848f);
        w0.e.f17819e.d(this.f5848f);
        u0.c.f17393t.d(this.f5848f);
        u0.c.f17392s.d(this.f5848f);
        u0.c.f17374a.d(this.f5848f);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 132) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
    }

    public final int a3(int i2) {
        if (i2 == 0) {
            return 15;
        }
        return (i2 * 10) / 30;
    }

    public final void b3(int i2) {
        if (i2 == 1 || i2 == 2) {
            z.k.s(227, 39, 2, 27, 0);
        } else if (i2 == 6) {
            z.k.s(227, 39, 2, 4, 0);
        } else {
            z.k.s(227, 39, 2, 2, 0);
        }
    }
}
