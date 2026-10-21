package k0;

import android.os.SystemProperties;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class ls extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f7876b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f7877c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f7878d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{6, 12}, new int[]{7, 2}, new int[]{9, 18}, new int[]{10, 26}, new int[]{11, 13}, new int[]{12, 5}, new int[]{13, 6}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f7879e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f7880f = new a();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f7881g = new b();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f7882h = new c();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(ls.this.f7881g);
            ls.this.f7879e = 5;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ls lsVar = ls.this;
            int i2 = lsVar.f7879e - 1;
            lsVar.f7879e = i2;
            if (i2 <= 0) {
                l0.b0.p0(lsVar.f7881g);
                ls.this.f7879e = 5;
            } else {
                z.k.s(227, 129, 1, u0.b.f17306a0);
                if (u0.b.f17306a0 == 1) {
                    z.k.s(227, 144, 1, 36);
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
            z.k.s(227, 201, 3, (byte) time.hour, (byte) time.minute, DateFormat.is24HourFormat(App.c()) ? (byte) 1 : (byte) 0);
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        u0.c.f17386m.a(this.f7880f, 1);
        qt.z(this.f7882h);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8314i = 1;
        mtVar.f8307b = 0;
        mtVar.f8308c = 0;
        mtVar.f8309d = 0;
        mtVar.f8320o = 0;
        mtVar.f8313h = 0;
        mtVar.f8321p = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        int i6;
        byte b2 = bArr[i2];
        if (b2 == 32) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f7877c = b3 & 255;
            int i7 = 0;
            while (true) {
                iArr = this.f7878d;
                if (i7 >= iArr.length) {
                    break;
                }
                int i8 = this.f7877c;
                if (i8 == iArr[i7][0]) {
                    if (i8 == 0) {
                        break;
                    }
                    this.f7876b = i7;
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
                    int i10 = this.f7876b;
                    if (i10 < iArr.length && i10 != 255) {
                        l0.b0.l0(iArr[i10][1], 1);
                    }
                    this.f7876b = 255;
                }
                return;
            }
        }
        if (b2 == 65) {
            qt.y0(99, ((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255));
            qt.y0(100, bArr[i2 + 4] & 255);
            qt.y0(101, bArr[i2 + 5] & 255);
            qt.y0(102, bArr[i2 + 6] & 255);
            qt.y0(103, ((bArr[i2 + 7] << 8) & 65280) | (bArr[i2 + 8] & 255));
            qt.y0(104, ((bArr[i2 + 9] << 8) & 65280) | (bArr[i2 + 10] & 255));
            qt.y0(105, bArr[i2 + 11] & 255);
            qt.y0(106, bArr[i2 + 12] & 255);
            return;
        }
        if (b2 == 125) {
            if ((bArr[i2 + 2] & 255) != 1) {
                return;
            }
            int i11 = i2 + 3;
            l0.c0.a((bArr[i11] >> 3) & 1, (bArr[i11] >> 4) & 1, 0);
            o1.x.C(nt.f8643f, 1049, new int[]{11, bArr[i11] & 255}, null, null);
            return;
        }
        if (b2 == 127) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 40) {
            byte b5 = bArr[i2 + 2];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(2, (b5 >> 6) & 1);
                qt.y0(1, (b5 >> 7) & 1);
            } else {
                qt.y0(2, (b5 >> 7) & 1);
                qt.y0(1, (b5 >> 6) & 1);
            }
            qt.y0(4, (b5 >> 5) & 1);
            qt.y0(3, (b5 >> 4) & 1);
            qt.y0(5, (b5 >> 3) & 1);
            return;
        }
        if (b2 == 41) {
            qt.i(bArr[i2 + 3], bArr[i2 + 2], false, 5570);
            return;
        }
        switch (b2) {
            case 34:
                u0.d.R2(l0.c0.E0(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.E0(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.E0(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.E0(bArr[i2 + 5] & 255));
                break;
            case 35:
                int i12 = i2 + 2;
                int i13 = bArr[i12] & 255;
                int i14 = i2 + 3;
                int i15 = bArr[i14] & 255;
                int i16 = i2 + 4;
                int i17 = bArr[i16] & 255;
                int i18 = i2 + 5;
                int i19 = bArr[i18] & 255;
                if (i13 == 0 && i15 == 0 && i17 == 0 && i19 == 0) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i13 || l0.c0.f13014h != i15 || l0.c0.f13015i != i17 || l0.c0.f13016j != i19) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i13;
                l0.c0.f13014h = i15;
                l0.c0.f13015i = i17;
                l0.c0.f13016j = i19;
                u0.d.D2(l0.c0.E0(bArr[i12] & 255));
                u0.d.E2(l0.c0.E0(bArr[i14] & 255));
                u0.d.F2(l0.c0.E0(bArr[i16] & 255));
                u0.d.G2(l0.c0.E0(bArr[i18] & 255));
                break;
            case 36:
                int i20 = bArr[i2 + 2] & 255;
                int i21 = bArr[i2 + 3] & 255;
                int i22 = bArr[i2 + 4] & 255;
                int i23 = bArr[i2 + 5] & 255;
                qt.y0(10, (i20 >> 7) & 1);
                qt.y0(11, (i20 >> 6) & 1);
                qt.y0(12, (i20 >> 5) & 1);
                qt.y0(13, (i20 >> 3) & 1);
                qt.y0(63, (i20 >> 2) & 1);
                qt.y0(65, (i20 >> 0) & 1);
                qt.y0(16, (i20 >> 1) & 1);
                if (i21 != 1) {
                    if (i21 == 2) {
                        i4 = 0;
                        i6 = 1;
                    } else if (i21 == 3) {
                        i4 = 0;
                        i6 = 0;
                        i5 = 1;
                    } else if (i21 != 4) {
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
                qt.y0(21, i22);
                int i24 = i23 & 255;
                if (i24 == 0) {
                    qt.y0(27, -1);
                } else if (i24 < 38) {
                    qt.y0(27, -2);
                } else if (i24 >= 38) {
                    qt.y0(27, -3);
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f7880f);
        qt.q0(this.f7882h);
        l0.b0.p0(this.f7881g);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 107) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            z.k.s(227, -57, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 1 && iArr != null && iArr.length > 0) {
            z.k.s(227, -112, 1, iArr[0]);
        }
    }
}
