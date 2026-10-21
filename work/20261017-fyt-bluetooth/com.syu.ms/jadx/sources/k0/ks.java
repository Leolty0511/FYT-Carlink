package k0;

import android.drm.DrmManagerClient;
import android.os.SystemProperties;
import android.text.format.Time;

/* JADX INFO: loaded from: classes2.dex */
public class ks extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f7402b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f7403c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f7404d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 18}, new int[]{9, 18}, new int[]{10, 26}, new int[]{16, 13}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public byte f7405e = 10;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f7406f = new a();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f7407g = new b();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f7408h = new c();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(ks.this.f7407g);
            ks.this.f7405e = (byte) 5;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ks ksVar = ks.this;
            byte b2 = (byte) (ksVar.f7405e - 1);
            ksVar.f7405e = b2;
            if (b2 <= 0) {
                l0.b0.p0(ksVar.f7407g);
                ks.this.f7405e = (byte) 5;
            } else {
                z.k.s(227, 129, 1, u0.b.f17306a0);
                if (u0.b.f17306a0 == 1) {
                    z.k.s(227, 144, 2, 127, 0);
                }
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, -90, 6, (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN), (byte) (time.month + 1), (byte) time.monthDay, (byte) time.hour, (byte) time.minute, time.second);
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        qt.z(this.f7408h);
        u0.c.f17386m.a(this.f7406f, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 0;
        mtVar.f8314i = 0;
        mtVar.f8307b = 0;
        mtVar.f8308c = 0;
        mtVar.f8309d = 0;
        mtVar.f8320o = 0;
        mtVar.f8322q = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4 = bArr[i2] & 255;
        if (i4 == 32) {
            byte b2 = bArr[i2 + 2];
            byte b3 = bArr[i2 + 3];
            this.f7403c = b2 & 255;
            int i5 = 0;
            while (true) {
                iArr = this.f7404d;
                if (i5 >= iArr.length) {
                    break;
                }
                int i6 = this.f7403c;
                if (i6 == iArr[i5][0]) {
                    if (i6 == 0) {
                        break;
                    }
                    this.f7402b = i5;
                    break;
                }
                i5++;
            }
            int i7 = b3 & 255;
            if (i7 == 1) {
                if (i5 < iArr.length) {
                    l0.b0.l0(iArr[i5][1], 0);
                }
            } else if (i7 == 0) {
                int i8 = this.f7402b;
                if (i8 < iArr.length && i8 != 255) {
                    l0.b0.l0(iArr[i8][1], 1);
                }
                this.f7402b = 255;
            }
        } else if (i4 != 36) {
            if (i4 == 48) {
                qt.i(bArr[i2 + 3], bArr[i2 + 2], false, 6400);
                return;
            }
            if (i4 == 81) {
                int i9 = i2 + 2;
                qt.y0(7, (bArr[i9] >> 2) & 1);
                qt.y0(8, (bArr[i9] >> 0) & 3);
                int i10 = i2 + 3;
                qt.y0(9, (bArr[i10] >> 3) & 1);
                qt.y0(10, (bArr[i10] >> 2) & 1);
                qt.y0(11, (bArr[i10] >> 1) & 1);
                qt.y0(12, (bArr[i10] >> 0) & 1);
                return;
            }
            if (i4 != 125) {
                if (i4 != 127) {
                    return;
                }
                qt.L(new String(bArr, i2 + 2, i3 - 2));
                return;
            } else {
                if ((bArr[i2 + 2] & 255) != 1) {
                    return;
                }
                if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                    int i11 = i2 + 3;
                    l0.c0.b((bArr[i11] >> 3) & 1, (bArr[i11] >> 4) & 1, 0);
                    return;
                } else {
                    int i12 = i2 + 3;
                    l0.c0.a((bArr[i12] >> 3) & 1, (bArr[i12] >> 4) & 1, 0);
                    return;
                }
            }
        }
        byte b4 = bArr[i2 + 2];
        if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
            qt.y0(2, (b4 >> 6) & 1);
            qt.y0(1, (b4 >> 7) & 1);
        } else {
            qt.y0(2, (b4 >> 7) & 1);
            qt.y0(1, (b4 >> 6) & 1);
        }
        qt.y0(4, (b4 >> 5) & 1);
        qt.y0(3, (b4 >> 4) & 1);
        qt.y0(0, (b4 >> 2) & 1);
        qt.y0(5, (b4 >> 3) & 1);
    }

    @Override // k0.lt
    public void W2() {
        qt.q0(this.f7408h);
        u0.c.f17386m.d(this.f7406f);
        l0.b0.p0(this.f7407g);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 13) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            if (iArr == null || iArr.length < 2) {
                return;
            }
            z.k.s(227, 144, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 1 && iArr != null && iArr.length >= 2) {
            z.k.s(227, 131, 2, iArr[0], iArr[1]);
        }
    }
}
