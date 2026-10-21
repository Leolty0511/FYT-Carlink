package k0;

import android.drm.DrmManagerClient;
import android.os.SystemProperties;
import android.text.format.Time;

/* JADX INFO: loaded from: classes2.dex */
public class sl extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f10334b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f10335c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f10336d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 18}, new int[]{4, 26}, new int[]{5, 12}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f10337e = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            byte b2 = (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN);
            byte b3 = (byte) (time.month + 1);
            byte b4 = (byte) time.monthDay;
            z.k.s(227, -125, 8, (byte) time.minute, (byte) time.hour, b4, b3, b2, 0, 0, 0);
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
        mtVar.f8320o = 0;
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        qt.z(this.f10337e);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 16) {
            int i4 = i2 + 3;
            qt.y0(12, (bArr[i4] >> 7) & 1);
            qt.y0(65, (bArr[i4] >> 6) & 1);
            qt.y0(16, (bArr[i4] >> 5) & 1);
            qt.y0(20, (bArr[i4] >> 4) & 1);
            qt.y0(19, (bArr[i4] >> 3) & 1);
            qt.y0(18, (bArr[i4] >> 6) & 1);
            qt.y0(13, (bArr[i4] >> 2) & 1);
            qt.y0(11, (bArr[i4] >> 0) & 1);
            int i5 = i2 + 4;
            qt.y0(15, (bArr[i5] >> 7) & 1);
            qt.y0(14, (bArr[i5] >> 6) & 1);
            qt.y0(21, (bArr[i5] >> 0) & 15);
            int i6 = i2 + 5;
            int i7 = bArr[i6] & 255;
            int i8 = i2 + 6;
            int i9 = bArr[i8] & 255;
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                i7 = bArr[i8] & 255;
                i9 = bArr[i6] & 255;
            }
            if (i7 == 0) {
                qt.y0(27, -2);
            } else if (i7 == 30) {
                qt.y0(27, -3);
            } else if (i7 < 1 || i7 > 21) {
                qt.y0(27, -1);
            } else {
                qt.y0(27, i7);
            }
            if (i9 == 0) {
                qt.y0(28, -2);
            }
            if (i9 == 30) {
                qt.y0(28, -3);
                return;
            } else if (i9 < 1 || i9 > 21) {
                qt.y0(28, -1);
                return;
            } else {
                qt.y0(28, i9);
                return;
            }
        }
        if (b2 == 18) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f10335c = b3 & 255;
            int i10 = 0;
            while (true) {
                iArr = this.f10336d;
                if (i10 >= iArr.length) {
                    break;
                }
                int i11 = this.f10335c;
                if (i11 == iArr[i10][0]) {
                    if (i11 == 0) {
                        break;
                    }
                    this.f10334b = i10;
                    break;
                }
                i10++;
            }
            int i12 = b4 & 255;
            if (i12 == 1) {
                if (i10 < iArr.length) {
                    l0.b0.l0(iArr[i10][1], 0);
                    return;
                }
                return;
            } else {
                if (i12 == 0) {
                    int i13 = this.f10334b;
                    if (i13 < iArr.length && i13 != 255) {
                        l0.b0.l0(iArr[i13][1], 1);
                    }
                    this.f10334b = 255;
                    return;
                }
                return;
            }
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 != 82) {
            switch (b2) {
                case 36:
                    int i14 = bArr[i2 + 2] & 255;
                    if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                        qt.y0(1, (i14 >> 7) & 1);
                        qt.y0(2, (i14 >> 6) & 1);
                    } else {
                        qt.y0(1, (i14 >> 6) & 1);
                        qt.y0(2, (i14 >> 7) & 1);
                    }
                    qt.y0(3, (i14 >> 4) & 1);
                    qt.y0(4, (i14 >> 5) & 1);
                    qt.y0(5, (i14 >> 3) & 1);
                    qt.y0(0, (i14 >> 2) & 1);
                    break;
                case 37:
                    qt.y0(98, bArr[i2 + 2] & 255);
                    qt.y0(99, bArr[i2 + 3] & 255);
                    qt.y0(100, bArr[i2 + 4] & 255);
                    qt.y0(101, bArr[i2 + 5] & 255);
                    break;
                case 38:
                    qt.m(bArr[i2 + 3], bArr[i2 + 2], 32768, false, 10740);
                    break;
            }
        }
        switch (bArr[i2 + 2] & 255) {
            case 1:
                qt.y0(102, bArr[i2 + 3] & 255);
                break;
            case 2:
                qt.y0(103, bArr[i2 + 3] & 255);
                break;
            case 3:
                qt.y0(104, bArr[i2 + 3] & 255);
                break;
            case 4:
                qt.y0(105, bArr[i2 + 3] & 255);
                break;
            case 5:
                qt.y0(106, bArr[i2 + 3] & 255);
                break;
            case 6:
                qt.y0(107, bArr[i2 + 3] & 255);
                break;
            case 7:
                qt.y0(108, bArr[i2 + 3] & 255);
                break;
            case 8:
                qt.y0(109, bArr[i2 + 3] & 255);
                break;
            case 9:
                qt.y0(110, bArr[i2 + 3] & 255);
                break;
            case 10:
                qt.y0(111, bArr[i2 + 3] & 255);
                break;
            case 11:
                qt.y0(112, bArr[i2 + 3] & 255);
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(l0.c0.f13020n);
        l0.b0.p0(l0.c0.f13021o);
        qt.q0(this.f10337e);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 113) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, -126, 2, iArr[0], iArr[1]);
        } else {
            if (i2 != 1) {
                return;
            }
            z.k.s(227, -112, 1, iArr[0]);
        }
    }
}
