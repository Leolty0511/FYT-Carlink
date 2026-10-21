package k0;

import android.net.ProxyProperties;
import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class ws extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f11911b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f11912c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Runnable f11913d = new a();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f11914e = new b();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ws wsVar = ws.this;
            wsVar.f11912c = 10;
            l0.b0.b(wsVar.f11914e);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ws wsVar = ws.this;
            int i2 = wsVar.f11912c - 1;
            wsVar.f11912c = i2;
            if (i2 <= 0) {
                l0.b0.p0(wsVar.f11914e);
                ws.this.f11912c = 10;
                return;
            }
            if (i2 > 5 || u0.b.f17306a0 != 1) {
                return;
            }
            if (i2 % 4 == 0) {
                z.k.s(227, i.a.Theme_actionModeShareDrawable, 1, 113);
            }
            if (ws.this.f11912c % 4 == 1) {
                z.k.s(227, i.a.Theme_actionModeShareDrawable, 1, 35);
            }
            if (ws.this.f11912c % 4 == 2) {
                z.k.s(227, i.a.Theme_actionModeShareDrawable, 1, 48);
            }
            if (ws.this.f11912c % 4 == 3) {
                z.k.s(227, i.a.Theme_actionModeShareDrawable, 1, 49);
            }
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        u0.c.f17386m.a(this.f11913d, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8314i = 0;
        mtVar.f8317l = 1;
        mtVar.f8307b = 0;
        mtVar.f8308c = 0;
        mtVar.f8309d = 0;
        mtVar.f8320o = 0;
        mtVar.f8313h = 0;
        mtVar.f8321p = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        byte b2 = bArr[i2];
        if (b2 == 35) {
            int i4 = i2 + 2;
            qt.y0(7, (bArr[i4] >> 2) & 1);
            qt.y0(8, (bArr[i4] >> 3) & 1);
            qt.y0(9, (bArr[i4] >> 4) & 15);
            int i5 = i2 + 3;
            qt.y0(10, bArr[i5] & 255);
            qt.m(bArr[i2 + 4] & 255, 0, 128, true, 127);
            int i6 = bArr[i2 + 5] & 255;
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(2, (i6 >> 0) & 1);
                qt.y0(1, (i6 >> 1) & 1);
            } else {
                qt.y0(2, (i6 >> 1) & 1);
                qt.y0(1, (i6 >> 0) & 1);
            }
            qt.y0(4, (i6 >> 3) & 1);
            qt.y0(3, (i6 >> 2) & 1);
            qt.y0(5, (i6 >> 4) & 1);
            qt.y0(0, (i6 >> 5) & 1);
            qt.y0(11, (i6 >> 6) & 1);
            int i7 = (i6 >> 7) & 1;
            qt.y0(12, i7);
            if (this.f11911b != i7) {
                this.f11911b = i7;
                if (i7 == 1) {
                    if (!o1.u.T(a.b.X)) {
                        o1.u.f(a.b.Y);
                    }
                } else if (o1.u.T(a.b.X)) {
                    o1.u.k();
                }
            }
            qt.y0(13, 15 & (bArr[i2 + 6] >> 0));
            l0.c0.b((bArr[i5] >> 1) & 1, (bArr[i5] >> 0) & 1, 0);
            qt.y0(26, (bArr[i2 + 7] >> 0) & 255);
            return;
        }
        if (b2 != 113) {
            if (b2 == 48) {
                qt.y0(14, ((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255));
                qt.y0(15, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
                qt.y0(16, bArr[i2 + 6] & 255);
                qt.y0(17, (bArr[i2 + 8] & 255) | ((bArr[i2 + 7] << 8) & 65280));
                return;
            }
            if (b2 != 49) {
                return;
            }
            qt.y0(18, bArr[i2 + 2] & 255);
            qt.y0(19, bArr[i2 + 3] & 255);
            qt.y0(20, bArr[i2 + 4] & 255);
            qt.y0(21, bArr[i2 + 5] & 255);
            qt.y0(22, bArr[i2 + 6] & 255);
            qt.y0(23, bArr[i2 + 7] & 255);
            qt.y0(24, bArr[i2 + 8] & 255);
            qt.y0(25, bArr[i2 + 9] & 255);
            return;
        }
        qt.L(((ProxyProperties.LOCAL_EXCL_LIST + ((int) bArr[i2 + 2]) + ProxyProperties.LOCAL_EXCL_LIST + ((int) bArr[i2 + 3])) + "_20" + ((int) bArr[i2 + 4]) + "_" + ((int) bArr[i2 + 5]) + "_" + ((int) bArr[i2 + 6])) + "_V" + ((int) bArr[i2 + 7]) + ProxyProperties.LOCAL_EXCL_LIST + ((int) bArr[i2 + 8]) + ProxyProperties.LOCAL_EXCL_LIST + ((int) bArr[i2 + 9]));
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f11913d);
        l0.b0.p0(this.f11914e);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 27) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
    }
}
