package k0;

import android.media.videoeditor.MediaProperties;
import android.os.SystemProperties;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class np extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f8598b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f8599c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f8600d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 12}, new int[]{6, 2}, new int[]{7, 18}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f8601e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f8602f = new a();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f8603g = new b();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(np.this.f8603g);
            np.this.f8601e = 5;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            np npVar = np.this;
            int i2 = npVar.f8601e - 1;
            npVar.f8601e = i2;
            if (i2 > 0) {
                z.k.s(227, 129, 1, u0.b.f17306a0);
            } else {
                l0.b0.p0(npVar.f8603g);
                np.this.f8601e = 5;
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
        mtVar.f8311f = 0;
        mtVar.f8314i = 0;
        mtVar.f8312g = 0;
        mtVar.f8315j = 0;
        mtVar.f8320o = 0;
        if (nt.f8637c == 192) {
            mtVar.f8313h = 2;
        } else {
            mtVar.f8313h = 0;
        }
        u0.c.f17386m.a(this.f8602f, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 != 32) {
            if (b2 == 34) {
                int i4 = bArr[i2 + 2] & 255;
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (i4 >> 6) & 1);
                    qt.y0(2, (i4 >> 7) & 1);
                } else {
                    qt.y0(1, (i4 >> 7) & 1);
                    qt.y0(2, (i4 >> 6) & 1);
                }
                qt.y0(3, (i4 >> 5) & 1);
                qt.y0(4, (i4 >> 4) & 1);
                qt.y0(5, (i4 >> 3) & 1);
                qt.y0(0, (i4 >> 2) & 1);
                return;
            }
            if (b2 == 127) {
                qt.L(new String(bArr, i2 + 2, i3 - 2));
                return;
            }
            if (b2 == 48) {
                qt.i(bArr[i2 + 3] & 255, bArr[i2 + 2] & 255, false, 5445);
                return;
            } else {
                if (b2 != 49) {
                    return;
                }
                if (bArr[i2 + 2] != 0) {
                    qt.a(1);
                    return;
                } else {
                    qt.a(0);
                    return;
                }
            }
        }
        byte b3 = bArr[i2 + 2];
        byte b4 = bArr[i2 + 3];
        this.f8599c = b3 & 255;
        int i5 = 0;
        while (true) {
            iArr = this.f8600d;
            if (i5 >= iArr.length) {
                break;
            }
            int i6 = this.f8599c;
            if (i6 == iArr[i5][0]) {
                if (i6 == 0) {
                    break;
                }
                this.f8598b = i5;
                break;
            }
            i5++;
        }
        int i7 = b4 & 255;
        if (i7 == 1) {
            if (i5 < iArr.length) {
                l0.b0.l0(iArr[i5][1], 0);
            }
        } else if (i7 == 0) {
            int i8 = this.f8598b;
            if (i8 < iArr.length && i8 != 255) {
                l0.b0.l0(iArr[i8][1], 1);
            }
            this.f8598b = 255;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f8602f);
        l0.b0.p0(this.f8603g);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 7) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 1003) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (u0.b.f17347o == 1) {
                z.k.s(227, -91, 1, 0);
                return;
            } else {
                z.k.s(227, -91, 1, 1);
                return;
            }
        }
        if (i2 == 1029 && T2(iArr, 2)) {
            int iW = (iArr[1] * 1280) / a.f.w();
            int i3 = (iArr[2] * MediaProperties.HEIGHT_720) / a.f.i();
            a.f.p().t(LogType.CANBUS, " touch_x = " + iW + "touch_y ==" + i3 + " ObjApp.getHeight()" + a.f.i());
            if (iArr[0] == 0) {
                z.k.s(227, 164, 5, 1, (iW >> 8) & 255, iW & 255, (i3 >> 8) & 255, i3 & 255);
            } else if (iArr[0] == 1) {
                z.k.s(227, 164, 5, 0, (iW >> 8) & 255, iW & 255, (i3 >> 8) & 255, i3 & 255);
            }
        }
    }
}
