package k0;

import android.os.SystemProperties;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class xr extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f12277b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Runnable f12278c = new a();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Runnable f12279d = new b();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(xr.this.f12279d);
            xr.this.f12277b = 5;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            xr xrVar = xr.this;
            int i2 = xrVar.f12277b - 1;
            xrVar.f12277b = i2;
            if (i2 <= 0) {
                l0.b0.p0(xrVar.f12279d);
                xr.this.f12277b = 5;
            } else {
                z.k.s(227, 129, 1, u0.b.f17306a0);
                if (u0.b.f17306a0 == 1) {
                    z.k.s(227, 144, 1, 48);
                }
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
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 0;
        mtVar.f8314i = 0;
        mtVar.f8320o = 0;
        u0.c.f17386m.a(this.f12278c, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        byte b2 = bArr[i2];
        if (b2 != 8) {
            if (b2 != 48) {
                return;
            }
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        int i4 = bArr[i2 + 2] & 255;
        int i5 = bArr[i2 + 3] & 255;
        qt.y0(10, (i4 >> 7) & 1);
        qt.y0(53, (i4 >> 6) & 1);
        qt.y0(62, (i4 >> 5) & 1);
        qt.y0(19, (i5 >> 6) & 1);
        qt.y0(20, (i5 >> 5) & 1);
        qt.y0(49, (i5 >> 4) & 1);
        qt.y0(23, (i5 >> 2) & 1);
        qt.y0(24, (i5 >> 1) & 1);
        qt.y0(50, (i5 >> 0) & 1);
        int i6 = i2 + 4;
        qt.y0(21, (bArr[i6] >> 4) & 15);
        qt.y0(25, (bArr[i6] >> 0) & 15);
        int i7 = i2 + 5;
        int i8 = bArr[i7] & 255;
        int i9 = i2 + 6;
        int i10 = bArr[i9] & 255;
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            i8 = bArr[i9] & 255;
            i10 = bArr[i7] & 255;
        }
        if (i8 == 0) {
            qt.y0(27, -2);
        } else if (i8 == 31) {
            qt.y0(27, -3);
        } else {
            qt.y0(27, (i8 * 5) + 155);
        }
        if (i10 == 0) {
            qt.y0(28, -2);
        } else if (i10 == 31) {
            qt.y0(28, -3);
        } else {
            qt.y0(28, (i10 * 5) + 155);
        }
        int i11 = i2 + 7;
        qt.y0(31, (bArr[i11] >> 4) & 15);
        qt.y0(29, (bArr[i11] >> 0) & 15);
        int i12 = i2 + 8;
        qt.y0(32, (bArr[i12] >> 4) & 15);
        qt.y0(30, (bArr[i12] >> 0) & 15);
        qt.y0(98, (bArr[i2 + 9] >> 7) & 1);
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f12278c);
        l0.b0.p0(this.f12279d);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 99) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, 130, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 1) {
            z.k.s(227, 144, 1, iArr[0]);
            return;
        }
        if (i2 != 1040) {
            return;
        }
        a.f.p().t(LogType.CANBUS, "FinalCanbus.C_CMD_6606 --- " + o1.b0.e(iArr, 0, iArr.length));
        if (iArr[0] != 0) {
            return;
        }
        z.k.s(227, 130, 2, iArr[1], iArr[2]);
    }
}
