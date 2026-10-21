package k0;

import android.os.SystemProperties;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;

/* JADX INFO: renamed from: k0.do, reason: invalid class name */
/* JADX INFO: loaded from: classes2.dex */
public class Cdo extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f4563b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f4566e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f4564c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f4565d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{5, 30}, new int[]{6, 31}, new int[]{7, 29}, new int[]{8, 0}, new int[]{10, 54}, new int[]{11, 53}, new int[]{15, 6}, new int[]{16, 25}, new int[]{17, 1}, new int[]{18, 34}, new int[]{19, 35}, new int[]{20, 32}, new int[]{21, 33}, new int[]{26, 18}, new int[]{27, 2}, new int[]{29, 38}, new int[]{49, 40}, new int[]{50, 41}, new int[]{51, 42}, new int[]{52, 43}, new int[]{53, 44}, new int[]{54, 45}, new int[]{63, 13}, new int[]{66, 72}, new int[]{67, 71}, new int[]{68, 81}, new int[]{69, 80}, new int[]{72, 55}, new int[]{75, 1}, new int[]{76, 1}, new int[]{77, 5}, new int[]{78, 4}, new int[]{79, 3}, new int[]{80, 64}, new int[]{81, 53}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f4567f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f4568g = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{7, 2}, new int[]{9, 18}, new int[]{10, 26}, new int[]{21, 6}, new int[]{22, 29}, new int[]{23, 12}, new int[]{24, 13}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f4569h = new a();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f4570i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f4571j = new b();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f4572k = new c();

    /* JADX INFO: renamed from: k0.do$a */
    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            int i2 = !DateFormat.is24HourFormat(App.c()) ? 1 : 0;
            z.k.s(227, 152, 3, (byte) (((i2 << 7) | ((byte) time.hour)) & 255), (byte) time.minute, (byte) time.second);
        }
    }

    /* JADX INFO: renamed from: k0.do$b */
    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(Cdo.this.f4572k);
            Cdo.this.f4570i = 5;
        }
    }

    /* JADX INFO: renamed from: k0.do$c */
    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Cdo cdo = Cdo.this;
            int i2 = cdo.f4570i - 1;
            cdo.f4570i = i2;
            if (i2 <= 0) {
                l0.b0.p0(cdo.f4572k);
                Cdo.this.f4570i = 5;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            switch (nt.f8633a) {
                case 12452293:
                    z.k.s(227, 226, 1, 4);
                    break;
                case 12911044:
                    z.k.s(227, 226, 1, 1);
                    break;
                case 12976580:
                    z.k.s(227, 226, 1, 2);
                    break;
                case 13042116:
                    z.k.s(227, 226, 1, 3);
                    break;
            }
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
        mtVar.f8314i = 1;
        mtVar.f8312g = 0;
        mtVar.f8315j = 0;
        mtVar.f8320o = 0;
        u0.c.f17386m.a(this.f4571j, 1);
        qt.z(this.f4569h);
        if (App.c().getResources().getConfiguration().orientation == 1) {
            this.f7886a.f8314i = 0;
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int[][] iArr2;
        byte b2 = bArr[i2];
        if (b2 == 16) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f4564c = b3 & 255;
            int i4 = 0;
            while (true) {
                iArr = this.f4565d;
                if (i4 >= iArr.length) {
                    break;
                }
                int i5 = this.f4564c;
                if (i5 == iArr[i4][0]) {
                    if (i5 == 0) {
                        break;
                    }
                    this.f4563b = i4;
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
                    int i7 = this.f4563b;
                    if (i7 < iArr.length && i7 != 255) {
                        l0.b0.l0(iArr[i7][1], 1);
                    }
                    this.f4563b = 255;
                }
                return;
            }
        }
        if (b2 == 41) {
            qt.m(bArr[i2 + 2], 0, 64, true, 64);
            return;
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 115) {
            qt.y0(98, bArr[i2 + 2]);
            qt.y0(99, bArr[i2 + 3]);
            qt.y0(100, bArr[i2 + 4]);
            qt.y0(101, bArr[i2 + 5]);
            qt.y0(102, bArr[i2 + 6]);
            int i8 = i2 + 7;
            qt.y0(103, (bArr[i8] >> 3) & 1);
            qt.y0(104, (bArr[i8] >> 0) & 7);
            qt.y0(105, bArr[i2 + 8]);
            qt.y0(106, bArr[i2 + 9]);
            return;
        }
        switch (b2) {
            case 32:
                byte b5 = bArr[i2 + 2];
                byte b6 = bArr[i2 + 3];
                this.f4567f = b5 & 255;
                int i9 = 0;
                while (true) {
                    iArr2 = this.f4568g;
                    if (i9 < iArr2.length) {
                        int i10 = this.f4567f;
                        if (i10 != iArr2[i9][0]) {
                            i9++;
                        } else if (i10 != 0) {
                            this.f4566e = i9;
                        }
                    }
                }
                int i11 = b6 & 255;
                if (i11 != 1) {
                    if (i11 == 0) {
                        int i12 = this.f4566e;
                        if (i12 < iArr2.length && i12 != 255) {
                            l0.b0.l0(iArr2[i12][1], 1);
                        }
                        this.f4566e = 255;
                    }
                } else if (i9 < iArr2.length) {
                    l0.b0.l0(iArr2[i9][1], 0);
                }
                break;
            case 33:
                int i13 = i2 + 2;
                qt.y0(10, (bArr[i13] >> 7) & 1);
                qt.y0(11, (bArr[i13] >> 6) & 1);
                qt.y0(12, (bArr[i13] >> 5) & 1);
                qt.y0(13, (bArr[i13] >> 4) & 1);
                qt.y0(26, (bArr[i13] >> 3) & 1);
                qt.y0(14, (bArr[i13] >> 2) & 1);
                qt.y0(15, (bArr[i13] >> 0) & 1);
                int i14 = i2 + 3;
                qt.y0(18, (bArr[i14] >> 7) & 1);
                qt.y0(19, (bArr[i14] >> 6) & 1);
                qt.y0(20, (bArr[i14] >> 5) & 1);
                qt.y0(23, (bArr[i14] >> 4) & 1);
                qt.y0(24, (bArr[i14] >> 3) & 1);
                qt.y0(21, (bArr[i14] >> 0) & 7);
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    int i15 = i2 + 4;
                    int i16 = bArr[i15] & 255;
                    if (i16 == 0) {
                        qt.y0(28, -2);
                    } else if (i16 != 30) {
                        qt.y0(28, bArr[i15] & 255);
                    } else {
                        qt.y0(28, -3);
                    }
                    int i17 = i2 + 5;
                    int i18 = bArr[i17] & 255;
                    if (i18 == 0) {
                        qt.y0(27, -2);
                    } else if (i18 != 30) {
                        qt.y0(27, bArr[i17] & 255);
                    } else {
                        qt.y0(27, -3);
                    }
                } else {
                    int i19 = i2 + 4;
                    int i20 = bArr[i19] & 255;
                    if (i20 == 0) {
                        qt.y0(27, -2);
                    } else if (i20 != 30) {
                        qt.y0(27, bArr[i19] & 255);
                    } else {
                        qt.y0(27, -3);
                    }
                    int i21 = i2 + 5;
                    int i22 = bArr[i21] & 255;
                    if (i22 == 0) {
                        qt.y0(28, -2);
                    } else if (i22 != 30) {
                        qt.y0(28, bArr[i21] & 255);
                    } else {
                        qt.y0(28, -3);
                    }
                }
                int i23 = i2 + 6;
                qt.y0(38, (bArr[i23] >> 3) & 1);
                qt.y0(16, (bArr[i23] >> 2) & 1);
                break;
            case 34:
                u0.d.R2(l0.c0.l1(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.l1(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.l1(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.l1(bArr[i2 + 5] & 255));
                break;
            case 35:
                int i24 = i2 + 2;
                int i25 = bArr[i24] & 255;
                int i26 = i2 + 3;
                int i27 = bArr[i26] & 255;
                int i28 = i2 + 4;
                int i29 = bArr[i28] & 255;
                int i30 = i2 + 5;
                int i31 = bArr[i30] & 255;
                if (i25 == 0 && i27 == 0 && i29 == 0 && i31 == 0) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i25 || l0.c0.f13014h != i27 || l0.c0.f13015i != i29 || l0.c0.f13016j != i31) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i25;
                l0.c0.f13014h = i27;
                l0.c0.f13015i = i29;
                l0.c0.f13016j = i31;
                u0.d.D2(l0.c0.l1(bArr[i24] & 255));
                u0.d.E2(l0.c0.l1(bArr[i26] & 255));
                u0.d.F2(l0.c0.l1(bArr[i28] & 255));
                u0.d.G2(l0.c0.l1(bArr[i30] & 255));
                break;
            case 36:
                byte b7 = bArr[i2 + 3];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b7 >> 1) & 1);
                    qt.y0(2, (b7 >> 0) & 1);
                } else {
                    qt.y0(1, (b7 >> 0) & 1);
                    qt.y0(2, (b7 >> 1) & 1);
                }
                qt.y0(3, (b7 >> 2) & 1);
                qt.y0(4, (b7 >> 3) & 1);
                qt.y0(5, (b7 >> 4) & 1);
                qt.y0(0, (b7 >> 5) & 1);
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f4571j);
        l0.b0.p0(this.f4572k);
        qt.q0(this.f4569h);
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
            z.k.s(227, -125, 2, iArr[0], iArr[1]);
        } else if (i2 == 1) {
            z.k.s(227, -112, 1, iArr[0]);
        } else {
            if (i2 != 2) {
                return;
            }
            z.k.s(227, -96, 2, iArr[0], iArr[1]);
        }
    }
}
