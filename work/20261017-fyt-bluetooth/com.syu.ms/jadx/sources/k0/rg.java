package k0;

import android.content.pm.PackageManager;
import android.os.SystemProperties;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class rg extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f9889b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f9890c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f9891d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{7, 2}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f9892e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f9893f = new a();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f9894g = new b();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f9895h = -1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f9896i = -1;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = rg.this.f9892e;
            int i3 = u0.b.D;
            if (i2 != i3) {
                if (i3 == 13 && i2 != 13) {
                    z.k.s(227, -126, 2, 16, 0);
                } else if (i3 != 13 && i2 == 13) {
                    z.k.s(227, -126, 2, 16, 1);
                }
                rg.this.f9892e = u0.b.D;
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            byte b2 = (byte) time.minute;
            int i2 = !DateFormat.is24HourFormat(App.c()) ? 1 : 0;
            if (rg.this.f9895h == b2 && rg.this.f9896i == i2) {
                return;
            }
            rg.this.f9895h = b2;
            rg.this.f9896i = i2;
            z.k.s(227, PackageManager.INSTALL_PARSE_FAILED_INCONSISTENT_CERTIFICATES, 3, (((byte) time.hour) & 127) | ((i2 << 7) & 128), b2, 0);
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        if (App.c().getResources().getConfiguration().orientation == 1) {
            this.f7886a.f8306a = new String[]{"com.syu.canbus"};
        } else {
            this.f7886a.f8306a = null;
        }
        mt mtVar = this.f7886a;
        mtVar.f8310e = 1;
        mtVar.f8311f = 0;
        mtVar.f8312g = 0;
        mtVar.f8315j = 0;
        mtVar.f8320o = 1;
        mtVar.f8307b = 0;
        qt.z(this.f9894g);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        byte b2 = bArr[i2];
        if (b2 == 32) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f9890c = b3 & 255;
            int i6 = 0;
            while (true) {
                iArr = this.f9891d;
                if (i6 >= iArr.length) {
                    break;
                }
                int i7 = this.f9890c;
                if (i7 == iArr[i6][0]) {
                    if (i7 == 0) {
                        break;
                    }
                    this.f9889b = i6;
                    break;
                }
                i6++;
            }
            int i8 = b4 & 255;
            if (i8 == 1) {
                if (i6 < iArr.length) {
                    l0.b0.l0(iArr[i6][1], 0);
                    return;
                }
                return;
            } else {
                if (i8 == 0) {
                    int i9 = this.f9889b;
                    if (i9 < iArr.length && i9 != 255) {
                        l0.b0.l0(iArr[i9][1], 1);
                    }
                    this.f9889b = 255;
                    return;
                }
                return;
            }
        }
        if (b2 != 33) {
            if (b2 != 36) {
                if (b2 != 48) {
                    if (b2 != 104) {
                        return;
                    } else {
                        qt.y0(1032, ((bArr[i2 + 4] << 8) & 65280) | (255 & bArr[i2 + 3]));
                    }
                }
                qt.L(new String(bArr, i2 + 2, i3 - 2));
                return;
            }
            int i10 = bArr[i2 + 3] & 255;
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(2, (i10 >> 0) & 1);
                qt.y0(1, (i10 >> 1) & 1);
            } else {
                qt.y0(2, (i10 >> 1) & 1);
                qt.y0(1, (i10 >> 0) & 1);
            }
            qt.y0(4, (i10 >> 3) & 1);
            qt.y0(3, (i10 >> 2) & 1);
            qt.y0(5, (i10 >> 4) & 1);
            qt.y0(0, (i10 >> 5) & 1);
            return;
        }
        byte b5 = bArr[i2 + 2];
        byte b6 = bArr[i2 + 3];
        int i11 = i2 + 4;
        byte b7 = bArr[i11];
        int i12 = i2 + 5;
        byte b8 = bArr[i12];
        byte b9 = bArr[i2 + 6];
        qt.y0(10, (b5 >> 7) & 1);
        qt.y0(11, (b5 >> 6) & 1);
        qt.y0(12, (b5 >> 5) & 1);
        qt.y0(26, (b5 >> 4) & 1);
        qt.y0(13, (b5 >> 3) & 1);
        qt.y0(14, (b5 >> 2) & 1);
        qt.y0(65, (b5 >> 0) & 1);
        int i13 = (b6 >> 7) & 1;
        qt.y0(18, i13);
        qt.y0(22, i13);
        qt.y0(19, (b6 >> 6) & 1);
        qt.y0(20, (b6 >> 5) & 1);
        qt.y0(23, (b6 >> 4) & 1);
        qt.y0(24, (b6 >> 3) & 1);
        qt.y0(21, (b6 >> 0) & 7);
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            i5 = b7;
            i4 = b8;
            i5 = bArr[i12] & 255;
            i4 = bArr[i11] & 255;
        }
        i5 = b7;
        i4 = b8;
        int i14 = i5 & 255;
        if (i5 == 0) {
            qt.y0(27, -2);
        } else if (i5 == 30) {
            qt.y0(27, -3);
        } else {
            qt.y0(27, i14);
        }
        int i15 = i4 & 255;
        if (i4 == 0) {
            qt.y0(28, -2);
        } else if (i4 == 30) {
            qt.y0(28, -3);
        } else {
            qt.y0(28, i15);
        }
        qt.y0(16, (b9 >> 2) & 1);
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(l0.c0.f13020n);
        qt.q0(this.f9894g);
        l0.b0.p0(l0.c0.f13021o);
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
        if (i2 == 0 && iArr != null && iArr.length > 0) {
            z.k.s(227, 160, 2, iArr[0], iArr[1]);
        }
    }
}
