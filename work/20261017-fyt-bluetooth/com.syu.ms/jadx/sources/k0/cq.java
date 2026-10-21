package k0;

import android.os.SystemProperties;
import android.text.format.Time;

/* JADX INFO: loaded from: classes2.dex */
public class cq extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f4197b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f4198c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f4199d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 18}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 26}, new int[]{20, 13}, new int[]{21, 6}, new int[]{22, 1}, new int[]{23, 5}, new int[]{24, 0}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f4200e = new a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f4201f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f4202g = new b();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f4203h = new c();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            byte b2 = (byte) time.year;
            z.k.s(227, 130, 6, b2 & 255, ((b2 >> 8) & 15) | ((((byte) (time.month + 1)) << 4) & 240), (byte) time.monthDay, (byte) time.hour, (byte) time.minute, 0);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(cq.this.f4203h);
            cq.this.f4201f = 5;
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            cq cqVar = cq.this;
            int i2 = cqVar.f4201f - 1;
            cqVar.f4201f = i2;
            if (i2 <= 0) {
                l0.b0.p0(cqVar.f4203h);
                cq.this.f4201f = 5;
            } else {
                z.k.s(227, 129, 1, u0.b.f17306a0);
                if (u0.b.f17306a0 == 1) {
                    z.k.s(227, 144, 1, 49);
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
        u0.c.f17386m.a(this.f4202g, 1);
        qt.z(this.f4200e);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 0;
        mtVar.f8312g = 0;
        mtVar.f8314i = 0;
        mtVar.f8315j = 0;
        mtVar.f8320o = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 32) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f4198c = b3 & 255;
            int i4 = 0;
            while (true) {
                iArr = this.f4199d;
                if (i4 >= iArr.length) {
                    break;
                }
                int i5 = this.f4198c;
                if (i5 == iArr[i4][0]) {
                    if (i5 == 0) {
                        break;
                    }
                    this.f4197b = i4;
                    break;
                }
                i4++;
            }
            int i6 = b4 & 255;
            if (i6 == 1) {
                if (i4 < iArr.length) {
                    l0.b0.l0(iArr[i4][1], 0);
                    return;
                }
                return;
            } else {
                if (i6 == 0) {
                    int i7 = this.f4197b;
                    if (i7 < iArr.length && i7 != 255) {
                        l0.b0.l0(iArr[i7][1], 1);
                    }
                    this.f4197b = 255;
                    return;
                }
                return;
            }
        }
        if (b2 == 36) {
            byte b5 = bArr[i2 + 2];
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
            return;
        }
        if (b2 == 41) {
            qt.i(bArr[i2 + 2], bArr[i2 + 3], false, 5220);
            return;
        }
        if (b2 == 125) {
            if ((bArr[i2 + 2] & 255) != 1) {
                return;
            }
            int i8 = i2 + 3;
            l0.c0.a((bArr[i8] >> 3) & 1, (bArr[i8] >> 4) & 1, 0);
            o1.x.C(nt.f8643f, 1049, new int[]{11, bArr[i8] & 255}, null, null);
            return;
        }
        if (b2 != 49) {
            if (b2 != 50) {
                return;
            }
            qt.y0(14, bArr[i2 + 2] & 255);
            qt.y0(15, bArr[i2 + 3] & 255);
            qt.y0(16, (bArr[i2 + 5] & 255) | (65280 & (bArr[i2 + 4] << 8)));
            return;
        }
        qt.y0(7, bArr[i2 + 2] & 255);
        qt.y0(8, bArr[i2 + 3] & 255);
        qt.y0(9, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
        qt.y0(10, bArr[i2 + 6] & 255);
        qt.y0(11, bArr[i2 + 7] & 255);
        qt.y0(12, (65280 & (bArr[i2 + 8] << 8)) | (bArr[i2 + 9] & 255));
        qt.y0(13, bArr[i2 + 10] & 255);
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f4202g);
        l0.b0.p0(this.f4203h);
        qt.q0(this.f4200e);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 17) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 != 0) {
            return;
        }
        z.k.s(227, 144, 1, iArr[0]);
    }
}
