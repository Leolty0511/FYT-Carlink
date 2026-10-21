package k0;

import android.drm.DrmManagerClient;
import android.os.SystemProperties;
import android.text.format.Time;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class js extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Runnable f7087b = new a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f7088c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Runnable f7089d = new b();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f7090e = new c();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, 118, 7, time.year + DrmManagerClient.ERROR_UNKNOWN, time.month, time.monthDay + 1, time.hour, time.minute, time.second, 0);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(js.this.f7090e);
            js.this.f7088c = 5;
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            js jsVar = js.this;
            int i2 = jsVar.f7088c - 1;
            jsVar.f7088c = i2;
            if (i2 <= 0) {
                l0.b0.p0(jsVar.f7090e);
                js.this.f7088c = 5;
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
    public void O2(int[] iArr) {
        if (iArr == null || iArr.length < 2) {
            return;
        }
        int i2 = iArr[0];
        a.f.p().t(LogType.CANBUS, "Air codeCmd = " + iArr[0] + "      value = " + iArr[1]);
        if (i2 == 33) {
            if (iArr[1] != 0) {
                if (nt.f8645g[10] == 0) {
                    a3(1);
                    return;
                }
                return;
            } else {
                if (nt.f8645g[10] == 1) {
                    a3(1);
                    return;
                }
                return;
            }
        }
        if (i2 == 34) {
            if (iArr[1] != 0) {
                if (nt.f8645g[11] == 0) {
                    a3(23);
                    return;
                }
                return;
            } else {
                if (nt.f8645g[11] == 1) {
                    a3(23);
                    return;
                }
                return;
            }
        }
        if (i2 == 38) {
            if (iArr[1] != 0) {
                if (nt.f8645g[12] == 0) {
                    a3(25);
                    return;
                }
                return;
            } else {
                if (nt.f8645g[12] == 1) {
                    a3(25);
                    return;
                }
                return;
            }
        }
        if (i2 == 39) {
            int i3 = iArr[1];
            if (i3 == -2) {
                a3(9);
                return;
            } else {
                if (i3 != -1) {
                    return;
                }
                a3(10);
                return;
            }
        }
        if (i2 == 41) {
            if (iArr[1] != 0) {
                a3(3);
                return;
            } else {
                a3(2);
                return;
            }
        }
        if (i2 != 42) {
            return;
        }
        if (iArr[1] != 0) {
            a3(5);
        } else {
            a3(4);
        }
    }

    @Override // k0.lt
    public void S2() {
        u0.c.f17386m.a(this.f7089d, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8314i = 1;
        mtVar.f8312g = 0;
        mtVar.f8307b = 0;
        mtVar.f8308c = 0;
        mtVar.f8309d = 0;
        mtVar.f8320o = 0;
        mtVar.f8313h = 0;
        mtVar.f8321p = 0;
        qt.z(this.f7087b);
        this.f7886a.f8318m = new int[]{33, 34, 35, 36, 37, 38, 39, 39, 41, 42, 55, 56, 67};
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        byte b2 = bArr[i2];
        if (b2 == 36) {
            byte b3 = bArr[i2 + 2];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(2, (b3 >> 6) & 1);
                qt.y0(1, (b3 >> 7) & 1);
            } else {
                qt.y0(2, (b3 >> 7) & 1);
                qt.y0(1, (b3 >> 6) & 1);
            }
            qt.y0(4, (b3 >> 5) & 1);
            qt.y0(3, (b3 >> 4) & 1);
            qt.y0(5, (b3 >> 3) & 1);
            return;
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 != 40) {
            if (b2 != 41) {
                return;
            }
            qt.i(bArr[i2 + 3] & 255, bArr[i2 + 2] & 255, false, 6656);
            return;
        }
        int i4 = i2 + 2;
        qt.y0(10, (bArr[i4] >> 7) & 1);
        qt.y0(11, (bArr[i4] >> 6) & 1);
        qt.y0(12, (bArr[i4] >> 5) & 1);
        qt.y0(15, (bArr[i4] >> 1) & 1);
        int i5 = i2 + 3;
        qt.y0(18, (bArr[i5] >> 7) & 1);
        qt.y0(19, (bArr[i5] >> 6) & 1);
        qt.y0(20, (bArr[i5] >> 5) & 1);
        qt.y0(77, (bArr[i5] >> 5) & 7);
        qt.y0(21, 15 & bArr[i5]);
        int i6 = i2 + 4;
        int i7 = bArr[i6] & 255;
        int i8 = i2 + 5;
        int i9 = bArr[i8] & 255;
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            i7 = bArr[i8] & 255;
            i9 = bArr[i6] & 255;
        }
        if (i7 == 0) {
            qt.y0(27, -2);
        } else if (i7 == 31) {
            qt.y0(27, -3);
        } else {
            qt.y0(27, (i7 * 5) + 175);
        }
        if (i9 == 0) {
            qt.y0(28, -2);
        } else if (i9 == 31) {
            qt.y0(28, -3);
        } else {
            qt.y0(28, (i9 * 5) + 175);
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f7089d);
        l0.b0.p0(this.f7090e);
        qt.q0(this.f7087b);
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
        if (i2 == 0 && iArr != null && iArr.length > 0) {
            z.k.s(227, -32, 2, iArr[0], iArr[1]);
        }
    }

    public final void a3(int i2) {
        z.k.s(227, -32, 2, i2, 1);
        a.i.a0(100L);
        z.k.s(227, -32, 2, i2, 0);
    }
}
