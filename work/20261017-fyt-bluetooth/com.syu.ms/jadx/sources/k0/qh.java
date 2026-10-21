package k0;

import android.os.SystemProperties;
import android.text.format.Time;

/* JADX INFO: loaded from: classes2.dex */
public class qh extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f9555b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f9556c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f9557d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 18}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 13}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f9558e = new a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f9559f = -1;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            long millis = time.toMillis(false) / 10000;
            if (qh.this.f9559f != millis) {
                qh.this.f9559f = millis;
                int i2 = time.hour;
                int i3 = time.minute;
                int i4 = time.year;
                z.k.s(227, 130, 6, i4 & 255, ((i4 >> 8) & 15) | (((time.month + 1) << 4) & 240), time.monthDay, i2, i3, 0);
            }
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        qt.z(this.f9558e);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 0;
        mtVar.f8312g = 0;
        mtVar.f8317l = 0;
        mtVar.f8320o = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 != 32) {
            if (b2 == 38) {
                qt.i(bArr[i2 + 2], bArr[i2 + 3], false, 540);
                return;
            }
            if (b2 == 48) {
                qt.L(new String(bArr, i2 + 2, i3 - 2));
                return;
            }
            if (b2 == 65) {
                if ((bArr[i2 + 2] & 255) == 1) {
                    if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                        int i4 = i2 + 3;
                        qt.y0(2, (bArr[i4] >> 0) & 1);
                        qt.y0(1, (bArr[i4] >> 1) & 1);
                    } else {
                        int i5 = i2 + 3;
                        qt.y0(2, (bArr[i5] >> 1) & 1);
                        qt.y0(1, (bArr[i5] >> 0) & 1);
                    }
                    int i6 = i2 + 3;
                    qt.y0(4, (bArr[i6] >> 3) & 1);
                    qt.y0(3, (bArr[i6] >> 2) & 1);
                    qt.y0(5, (bArr[i6] >> 4) & 1);
                    return;
                }
                return;
            }
            if (b2 != 68) {
                if (b2 == 125 && (bArr[i2 + 2] & 255) == 1) {
                    int i7 = i2 + 3;
                    l0.c0.a((bArr[i7] >> 3) & 1, (bArr[i7] >> 4) & 1, 0);
                    o1.x.C(nt.f8643f, 1049, new int[]{11, bArr[i7] & 255}, null, null);
                    return;
                }
                return;
            }
            qt.y0(7, ((bArr[i2 + 3] << 8) & 65280) | (bArr[i2 + 2] & 255));
            qt.y0(8, ((bArr[i2 + 5] << 8) & 65280) | (bArr[i2 + 4] & 255));
            qt.y0(9, ((bArr[i2 + 7] << 8) & 65280) | (bArr[i2 + 6] & 255));
            qt.y0(10, ((bArr[i2 + 9] << 8) & 65280) | (bArr[i2 + 8] & 255));
            qt.y0(11, ((bArr[i2 + 11] << 8) & 65280) | (bArr[i2 + 10] & 255));
            qt.y0(12, bArr[i2 + 12] & 255);
            qt.y0(13, bArr[i2 + 13] & 255);
            return;
        }
        byte b3 = bArr[i2 + 2];
        byte b4 = bArr[i2 + 3];
        this.f9556c = b3 & 255;
        int i8 = 0;
        while (true) {
            iArr = this.f9557d;
            if (i8 >= iArr.length) {
                break;
            }
            int i9 = this.f9556c;
            if (i9 == iArr[i8][0]) {
                if (i9 == 0) {
                    break;
                }
                this.f9555b = i8;
                break;
            }
            i8++;
        }
        if (this.f9556c != 5) {
            if ((b4 & 255) != 0) {
                if (i8 < iArr.length) {
                    l0.b0.l0(iArr[i8][1], 0);
                    return;
                }
                return;
            } else {
                int i10 = this.f9555b;
                if (i10 < iArr.length && i10 != 255) {
                    l0.b0.l0(iArr[i10][1], 1);
                }
                this.f9555b = 255;
                return;
            }
        }
        if ((b4 & 255) == 1) {
            int i11 = h0.c.E;
            if (i11 == 3 || i11 == 5) {
                l0.b0.l0(26, 0);
                l0.b0.l0(26, 1);
            } else {
                l0.b0.l0(18, 0);
                l0.b0.l0(18, 1);
            }
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(l0.c0.f13020n);
        l0.b0.p0(l0.c0.f13021o);
        qt.q0(this.f9558e);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 14) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 != 0) {
            return;
        }
        z.k.s(227, 144, 2, iArr[0], iArr[1]);
    }
}
