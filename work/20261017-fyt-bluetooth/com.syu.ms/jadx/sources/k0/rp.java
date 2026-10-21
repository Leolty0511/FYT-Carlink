package k0;

import android.os.SystemProperties;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class rp extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f10027b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f10028c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f10029d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{5, 18}, new int[]{6, 26}, new int[]{7, 2}, new int[]{8, 0}, new int[]{9, 12}, new int[]{10, 5}, new int[]{11, 1}, new int[]{12, 24}, new int[]{13, 54}, new int[]{14, 68}, new int[]{15, 67}, new int[]{16, 6}, new int[]{22, 13}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f10030e = new a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f10031f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f10032g = new b();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f10033h = new c();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, 132, 6, time.year - 2020, time.month + 1, time.monthDay, time.hour, time.minute, (byte) (!DateFormat.is24HourFormat(App.c()) ? 1 : 0));
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(rp.this.f10033h);
            rp.this.f10031f = 5;
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            rp rpVar = rp.this;
            int i2 = rpVar.f10031f - 1;
            rpVar.f10031f = i2;
            if (i2 > 0) {
                z.k.s(227, 129, 1, u0.b.f17306a0);
            } else {
                l0.b0.p0(rpVar.f10033h);
                rp.this.f10031f = 5;
            }
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        u0.c.f17386m.a(this.f10032g, 1);
        qt.z(this.f10030e);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 0;
        mtVar.f8314i = 0;
        mtVar.f8315j = 0;
        mtVar.f8320o = 0;
        mtVar.f8317l = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        int i6;
        byte b2 = bArr[i2];
        if (b2 == 33) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f10028c = b3 & 255;
            int i7 = 0;
            while (true) {
                iArr = this.f10029d;
                if (i7 >= iArr.length) {
                    break;
                }
                int i8 = this.f10028c;
                if (i8 == iArr[i7][0]) {
                    if (i8 == 0) {
                        break;
                    }
                    this.f10027b = i7;
                    break;
                }
                i7++;
            }
            int i9 = b4 & 255;
            if (i9 == 1) {
                if (i7 < iArr.length) {
                    l0.b0.l0(iArr[i7][1], 0);
                    return;
                }
                return;
            } else {
                if (i9 == 0) {
                    int i10 = this.f10027b;
                    if (i10 < iArr.length && i10 != 255) {
                        l0.b0.l0(iArr[i10][1], 1);
                    }
                    this.f10027b = 255;
                    return;
                }
                return;
            }
        }
        if (b2 == 125) {
            int i11 = bArr[i2 + 2] & 255;
            if (i11 != 3) {
                if (i11 != 8) {
                    return;
                }
                qt.i(bArr[i2 + 3], bArr[i2 + 4], true, 540);
                return;
            } else {
                int i12 = ((bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280)) / 100;
                qt.y0(1031, i12);
                o1.x.C(nt.f8643f, 1049, new int[]{1, i12}, null, null);
                return;
            }
        }
        if (b2 == 127) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 35) {
            int i13 = i2 + 2;
            qt.y0(10, (bArr[i13] >> 7) & 1);
            qt.y0(11, (bArr[i13] >> 6) & 1);
            qt.y0(12, (bArr[i13] >> 5) & 1);
            qt.y0(13, (bArr[i13] >> 4) & 1);
            qt.y0(16, (bArr[i13] >> 3) & 1);
            byte b5 = bArr[i2 + 3];
            if (b5 != 1) {
                if (b5 == 2) {
                    i4 = 0;
                    i6 = 1;
                } else if (b5 == 3) {
                    i4 = 0;
                    i6 = 0;
                    i5 = 1;
                } else if (b5 == 4) {
                    i6 = 0;
                    i4 = 1;
                    i5 = 1;
                } else if (b5 != 5) {
                    i4 = 0;
                    i6 = 0;
                } else {
                    i6 = 0;
                    i5 = 0;
                    i4 = 1;
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
            qt.y0(21, bArr[i2 + 4] & 255);
            int i14 = bArr[i2 + 5] & 255;
            if (i14 == 0) {
                qt.y0(27, -2);
                return;
            }
            if (i14 == 255) {
                qt.y0(27, -3);
                return;
            } else if (i14 < 1 || i14 > 28) {
                qt.y0(27, -1);
                return;
            } else {
                qt.y0(27, (i14 * 5) + 175);
                return;
            }
        }
        if (b2 == 36) {
            byte b6 = bArr[i2 + 2];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(2, (b6 >> 6) & 1);
                qt.y0(1, (b6 >> 7) & 1);
            } else {
                qt.y0(2, (b6 >> 7) & 1);
                qt.y0(1, (b6 >> 6) & 1);
            }
            qt.y0(4, (b6 >> 5) & 1);
            qt.y0(3, (b6 >> 4) & 1);
            qt.y0(5, (b6 >> 3) & 1);
            return;
        }
        if (b2 == 39) {
            u0.d.R2(l0.c0.E0(bArr[i2 + 2] & 255));
            u0.d.S2(l0.c0.E0(bArr[i2 + 3] & 255));
            u0.d.T2(l0.c0.E0(bArr[i2 + 4] & 255));
            u0.d.U2(l0.c0.E0(bArr[i2 + 5] & 255));
            return;
        }
        if (b2 != 40) {
            return;
        }
        int i15 = i2 + 2;
        int i16 = bArr[i15] & 255;
        int i17 = i2 + 3;
        int i18 = bArr[i17] & 255;
        int i19 = i2 + 4;
        int i20 = bArr[i19] & 255;
        int i21 = i2 + 5;
        int i22 = bArr[i21] & 255;
        if (i16 == 0 && i18 == 0 && i20 == 0 && i22 == 0) {
            u0.d.C2(0);
        } else if ((l0.c0.f13013g != i16 || l0.c0.f13014h != i18 || l0.c0.f13015i != i20 || l0.c0.f13016j != i22) && u0.b.f17347o == 0) {
            u0.d.C2(1);
            l0.c0.f13017k = 4;
            l0.b0.b(l0.c0.f13018l);
        }
        l0.c0.f13013g = i16;
        l0.c0.f13014h = i18;
        l0.c0.f13015i = i20;
        l0.c0.f13016j = i22;
        u0.d.D2(l0.c0.E0(bArr[i15] & 255));
        u0.d.E2(l0.c0.E0(bArr[i17] & 255));
        u0.d.F2(l0.c0.E0(bArr[i19] & 255));
        u0.d.G2(l0.c0.E0(bArr[i21] & 255));
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f10032g);
        l0.b0.p0(this.f10033h);
        qt.q0(this.f10030e);
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
        if (i2 == 0) {
            z.k.s(227, 144, 2, iArr[0], iArr[1]);
        } else {
            if (i2 != 1) {
                return;
            }
            z.k.s(227, 199, 5, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4]);
        }
    }
}
