package k0;

import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.format.Time;

/* JADX INFO: loaded from: classes2.dex */
public class gr extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f5647b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f5648c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f5649d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 18}, new int[]{10, 26}, new int[]{11, 29}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f5650e = new a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f5651f = new b();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            byte b2 = (byte) time.year;
            z.k.s(227, 200, 6, b2 & 255, ((b2 >> 8) & 15) | ((((byte) (time.month + 1)) << 4) & 240), (byte) time.monthDay, (byte) time.hour, (byte) time.minute, 0);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.c0.I();
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        qt.z(this.f5650e);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8314i = 1;
        mtVar.f8315j = 0;
        mtVar.f8320o = 0;
        qt.z(this.f5651f);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        int i6;
        int i7;
        byte b2 = bArr[i2];
        if (b2 == 32) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f5648c = b3 & 255;
            int i8 = 0;
            while (true) {
                iArr = this.f5649d;
                if (i8 >= iArr.length) {
                    break;
                }
                int i9 = this.f5648c;
                if (i9 == iArr[i8][0]) {
                    if (i9 == 0) {
                        break;
                    }
                    this.f5647b = i8;
                    break;
                }
                i8++;
            }
            int i10 = b4 & 255;
            if (i10 == 1) {
                if (i8 < iArr.length) {
                    l0.b0.l0(iArr[i8][1], 0);
                    return;
                }
                return;
            } else {
                if (i10 == 0) {
                    int i11 = this.f5647b;
                    if (i11 < iArr.length && i11 != 255) {
                        l0.b0.l0(iArr[i11][1], 1);
                    }
                    this.f5647b = 255;
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
            qt.y0(3, (b5 >> 4) & 1);
            qt.y0(4, (b5 >> 5) & 1);
            qt.y0(5, (b5 >> 3) & 1);
            return;
        }
        if (b2 == 125) {
            int i12 = bArr[i2 + 2] & 255;
            if (i12 != 1) {
                if (i12 != 3) {
                    return;
                }
                int i13 = ((bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280)) / 100;
                qt.y0(1031, i13);
                o1.x.C(nt.f8643f, 1049, new int[]{1, i13}, null, null);
                return;
            }
            int i14 = i2 + 3;
            o1.x.C(nt.f8643f, 1049, new int[]{11, 255 & bArr[i14]}, null, null);
            if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                l0.c0.b((bArr[i14] >> 3) & 1, (bArr[i14] >> 4) & 1, 0);
                return;
            } else {
                l0.c0.a((bArr[i14] >> 3) & 1, (bArr[i14] >> 4) & 1, 0);
                return;
            }
        }
        if (b2 == 127) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        switch (b2) {
            case 39:
                int i15 = i2 + 2;
                qt.y0(98, (bArr[i15] >> 1) & 1);
                qt.y0(99, (bArr[i15] >> 0) & 1);
                break;
            case 40:
                int i16 = bArr[i2 + 2] & 255;
                int i17 = bArr[i2 + 3] & 255;
                int i18 = bArr[i2 + 4] & 255;
                int i19 = bArr[i2 + 5] & 255;
                qt.y0(10, (i16 >> 7) & 1);
                qt.y0(11, (i16 >> 6) & 1);
                qt.y0(12, (i16 >> 5) & 1);
                qt.y0(13, (i16 >> 4) & 1);
                qt.y0(53, (i16 >> 2) & 1);
                qt.y0(65, (i16 >> 1) & 1);
                int i20 = (i17 >> 4) & 15;
                if (i20 != 1) {
                    if (i20 == 2) {
                        i4 = 0;
                        i6 = 1;
                    } else if (i20 == 3) {
                        i4 = 0;
                        i6 = 0;
                        i5 = 1;
                    } else if (i20 != 4) {
                        i4 = 0;
                        i6 = 0;
                    } else {
                        i6 = 0;
                        i4 = 1;
                        i5 = 1;
                    }
                    i5 = i6;
                } else {
                    i4 = 0;
                    i5 = 0;
                    i6 = 1;
                }
                qt.y0(18, i4);
                qt.y0(19, i6);
                qt.y0(20, i5);
                qt.y0(21, i17 & 15);
                if (i18 == 0) {
                    i7 = -2;
                } else if (i18 != 30) {
                    i7 = (i18 < 1 || i18 > 29) ? -1 : (i18 * 5) + 170;
                } else {
                    i7 = -3;
                }
                qt.y0(27, i7);
                if (i19 == 254 || i19 == 255 || i19 == 0) {
                    u0.d.B3(0);
                } else {
                    u0.d.B3((i19 * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
                }
                break;
            case 41:
                qt.i(bArr[i2 + 2] & 255, bArr[i2 + 3] & 255, false, 7799);
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(l0.c0.f13020n);
        l0.b0.p0(l0.c0.f13021o);
        qt.q0(this.f5650e);
        qt.q0(this.f5651f);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 100) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, 224, 2, iArr[0], iArr[1]);
        } else {
            if (i2 != 1) {
                return;
            }
            z.k.s(227, 117, 2, iArr[0], iArr[1]);
        }
    }
}
