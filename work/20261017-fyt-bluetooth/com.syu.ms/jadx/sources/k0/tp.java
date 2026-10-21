package k0;

import android.os.SystemProperties;
import android.text.format.Time;

/* JADX INFO: loaded from: classes2.dex */
public class tp extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f10775b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f10776c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f10777d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 18}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 26}, new int[]{20, 13}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f10778e = new a();

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

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        qt.z(this.f10778e);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 0;
        mtVar.f8314i = 0;
        mtVar.f8315j = 0;
        mtVar.f8320o = 0;
        if (nt.f8633a == 10617286) {
            mtVar.f8314i = 1;
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        byte b2 = bArr[i2];
        if (b2 == 32) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f10776c = b3 & 255;
            int i5 = 0;
            while (true) {
                iArr = this.f10777d;
                if (i5 >= iArr.length) {
                    break;
                }
                int i6 = this.f10776c;
                if (i6 == iArr[i5][0]) {
                    if (i6 == 0) {
                        break;
                    }
                    this.f10775b = i5;
                    break;
                }
                i5++;
            }
            int i7 = b4 & 255;
            if (i7 == 1) {
                if (i5 < iArr.length) {
                    l0.b0.l0(iArr[i5][1], 0);
                    return;
                }
                return;
            } else {
                if (i7 == 0) {
                    int i8 = this.f10775b;
                    if (i8 < iArr.length && i8 != 255) {
                        l0.b0.l0(iArr[i8][1], 1);
                    }
                    this.f10775b = 255;
                    return;
                }
                return;
            }
        }
        if (b2 == 34) {
            u0.d.R2(l0.c0.E0(bArr[i2 + 2] & 255));
            u0.d.S2(l0.c0.E0(bArr[i2 + 3] & 255));
            u0.d.T2(l0.c0.E0(bArr[i2 + 4] & 255));
            u0.d.U2(l0.c0.E0(bArr[i2 + 5] & 255));
            return;
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
            qt.y0(3, (b5 >> 4) & 1);
            qt.y0(4, (b5 >> 5) & 1);
            qt.y0(5, (b5 >> 3) & 1);
            qt.y0(0, (b5 >> 2) & 1);
            return;
        }
        if (b2 == 49) {
            qt.y0(98, bArr[i2 + 2] & 255);
            qt.y0(99, bArr[i2 + 3] & 255);
            qt.y0(100, bArr[i2 + 4] & 255);
            qt.y0(101, ((bArr[i2 + 5] << 8) & 65280) | (bArr[i2 + 6] & 255));
            qt.y0(102, (bArr[i2 + 8] & 255) | ((bArr[i2 + 7] << 8) & 65280));
            return;
        }
        if (b2 == 125) {
            int i9 = bArr[i2 + 2] & 255;
            if (i9 != 1) {
                if (i9 != 3) {
                    return;
                }
                int i10 = ((bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280)) / 100;
                qt.y0(1031, i10);
                o1.x.C(nt.f8643f, 1049, new int[]{1, i10}, null, null);
                return;
            }
            int i11 = i2 + 3;
            o1.x.C(nt.f8643f, 1049, new int[]{11, 255 & bArr[i11]}, null, null);
            if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                l0.c0.b((bArr[i11] >> 3) & 1, (bArr[i11] >> 4) & 1, 0);
                return;
            } else {
                l0.c0.a((bArr[i11] >> 3) & 1, (bArr[i11] >> 4) & 1, 0);
                return;
            }
        }
        if (b2 == 127) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 != 40) {
            if (b2 != 41) {
                return;
            }
            qt.i(bArr[i2 + 2] & 255, bArr[i2 + 3] & 255, false, 7799);
            return;
        }
        int i12 = bArr[i2 + 2] & 255;
        int i13 = bArr[i2 + 3] & 255;
        int i14 = bArr[i2 + 4] & 255;
        int i15 = bArr[i2 + 5] & 255;
        qt.y0(10, (i12 >> 7) & 1);
        qt.y0(11, (i12 >> 6) & 1);
        qt.y0(12, (i12 >> 5) & 1);
        qt.y0(65, (i12 >> 1) & 1);
        qt.y0(18, (i13 >> 7) & 1);
        qt.y0(19, (i13 >> 6) & 1);
        qt.y0(20, (i13 >> 5) & 1);
        qt.y0(21, i13 & 15);
        int i16 = -1;
        if (i14 == 0) {
            i4 = -2;
        } else if (i14 != 31) {
            i4 = (i14 < 1 || i14 > 29) ? -1 : ((i14 - 1) * 5) + 180;
        } else {
            i4 = -3;
        }
        qt.y0(27, i4);
        if (i15 == 0) {
            i16 = -2;
        } else if (i15 == 31) {
            i16 = -3;
        } else if (i15 >= 1 && i15 <= 29) {
            i16 = ((i15 - 1) * 5) + 180;
        }
        qt.y0(28, i16);
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(l0.c0.f13020n);
        l0.b0.p0(l0.c0.f13021o);
        qt.q0(this.f10778e);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 103) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 != 0) {
            return;
        }
        z.k.s(227, 224, 2, iArr[0], iArr[1]);
    }
}
