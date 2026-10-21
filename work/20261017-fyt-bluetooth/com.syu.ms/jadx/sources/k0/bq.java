package k0;

import android.os.SystemProperties;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class bq extends lt {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static int f3778q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static int f3779r;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f3780b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3781c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f3782d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{6, 12}, new int[]{7, 13}, new int[]{16, 63}, new int[]{17, 5}, new int[]{18, 25}, new int[]{19, 15}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f3783e = 255;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f3784f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f3785g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public byte f3786h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f3787i = new a();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f3788j = 1;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f3789k = 2;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public o1.g0 f3790l = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f3791m = new b();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f3792n = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Runnable f3793o = new c();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f3794p = new d();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            bq bqVar = bq.this;
            byte b2 = (byte) (bqVar.f3786h + 1);
            bqVar.f3786h = b2;
            if (b2 == 20) {
                bqVar.f3784f = true;
                if (bqVar.f3781c == 6) {
                    l0.b0.l0(12, 0);
                    l0.b0.l0(12, 1);
                }
                l0.b0.o0(bq.this.f3787i);
                bq.this.f3786h = (byte) 0;
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, 201, 6, (byte) (time.year - 2018), (byte) (time.month + 1), (byte) time.monthDay, (byte) time.hour, (byte) time.minute, time.second);
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(bq.this.f3794p);
            bq.this.f3792n = 5;
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            bq bqVar = bq.this;
            int i2 = bqVar.f3792n - 1;
            bqVar.f3792n = i2;
            if (i2 <= 0) {
                l0.b0.p0(bqVar.f3794p);
                bq.this.f3792n = 5;
                return;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (u0.b.f17306a0 == 1) {
                bq bqVar2 = bq.this;
                bqVar2.e3(bqVar2.f3790l.b(1, 0));
                bq bqVar3 = bq.this;
                bqVar3.f3(bqVar3.f3790l.b(2, 0));
            }
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        this.f3790l.a();
        u0.c.f17386m.a(this.f3793o, 1);
        qt.z(this.f3791m);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 0;
        mtVar.f8315j = 0;
        mtVar.f8320o = 0;
        mtVar.f8314i = 1;
        if (App.c().getResources().getConfiguration().orientation == 1) {
            this.f7886a.f8314i = 0;
        }
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
            this.f3781c = b3 & 255;
            int i7 = 0;
            while (true) {
                iArr = this.f3782d;
                if (i7 >= iArr.length) {
                    break;
                }
                int i8 = this.f3781c;
                if (i8 == iArr[i7][0]) {
                    if (i8 == 0) {
                        break;
                    }
                    this.f3780b = i7;
                    this.f3783e = i8;
                    break;
                }
                i7++;
            }
            int i9 = this.f3781c;
            if (i9 == 0) {
                if (this.f3783e != 6) {
                    if ((b4 & 255) == 0) {
                        int i10 = this.f3780b;
                        if (i10 < iArr.length && i10 != 255) {
                            l0.b0.l0(iArr[i10][1], 1);
                        }
                        this.f3780b = 255;
                    }
                } else if (!this.f3784f) {
                    l0.b0.l0(16, 0);
                    l0.b0.l0(16, 1);
                }
                l0.b0.o0(this.f3787i);
                this.f3784f = false;
                this.f3786h = (byte) 0;
                this.f3785g = 0;
                this.f3783e = 0;
            }
            if (i9 == 6) {
                if (this.f3785g != b4) {
                    this.f3785g = b4;
                    if (b4 == 1) {
                        this.f3784f = false;
                        this.f3786h = (byte) 0;
                        l0.b0.a(this.f3787i);
                        return;
                    }
                    return;
                }
                return;
            }
            if (i9 == 3) {
                if (b4 == 1) {
                    int i11 = h0.c.E;
                    if (i11 == 3 || i11 == 4 || i11 == 5) {
                        l0.b0.l0(26, 0);
                        l0.b0.l0(26, 1);
                        return;
                    } else {
                        l0.b0.l0(4, 0);
                        l0.b0.l0(4, 1);
                        return;
                    }
                }
                return;
            }
            if (i9 == 4) {
                if (b4 == 1) {
                    if (h0.c.E != 4) {
                        l0.b0.l0(3, 0);
                        l0.b0.l0(3, 1);
                        return;
                    } else {
                        l0.b0.l0(18, 0);
                        l0.b0.l0(18, 1);
                        return;
                    }
                }
                return;
            }
            int i12 = b4 & 255;
            if (i12 == 1) {
                if (i7 < iArr.length) {
                    l0.b0.l0(iArr[i7][1], 0);
                    return;
                }
                return;
            } else {
                if (i12 == 0) {
                    int i13 = this.f3780b;
                    if (i13 < iArr.length && i13 != 255) {
                        l0.b0.l0(iArr[i13][1], 1);
                    }
                    this.f3780b = 255;
                    return;
                }
                return;
            }
        }
        if (b2 == 65) {
            int i14 = i2 + 2;
            qt.y0(112, (bArr[i14] >> 6) & 1);
            qt.y0(113, (bArr[i14] >> 5) & 1);
            qt.y0(114, (bArr[i14] >> 4) & 1);
            qt.y0(115, (bArr[i14] >> 0) & 3);
            qt.y0(116, bArr[i2 + 3] & 255);
            qt.y0(117, bArr[i2 + 4] & 255);
            int i15 = i2 + 5;
            qt.y0(118, (bArr[i15] >> 7) & 1);
            qt.y0(119, (bArr[i15] >> 6) & 1);
            qt.y0(120, (bArr[i15] >> 5) & 1);
            qt.y0(121, (bArr[i15] >> 4) & 1);
            qt.y0(122, (bArr[i15] >> 3) & 1);
            qt.y0(123, (bArr[i15] >> 2) & 1);
            qt.y0(124, (bArr[i15] >> 1) & 1);
            qt.y0(125, (bArr[i15] >> 0) & 1);
            qt.y0(127, (bArr[i2 + 7] >> 0) & 255);
            return;
        }
        if (b2 == 125) {
            if ((bArr[i2 + 2] & 255) != 1) {
                return;
            }
            int i16 = i2 + 3;
            l0.c0.a((bArr[i16] >> 3) & 1, (bArr[i16] >> 4) & 1, 0);
            o1.x.C(nt.f8643f, 1049, new int[]{11, bArr[i16] & 255}, null, null);
            return;
        }
        if (b2 == 127) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 40) {
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
            qt.i(bArr[i2 + 3], bArr[i2 + 2], false, 5560);
            return;
        }
        if (b2 == 56) {
            qt.y0(102, bArr[i2 + 2] & 255);
            qt.y0(103, bArr[i2 + 3] & 255);
            qt.y0(104, bArr[i2 + 4] & 255);
            qt.y0(105, bArr[i2 + 5] & 255);
            qt.y0(98, bArr[i2 + 6] & 255);
            qt.y0(99, bArr[i2 + 7] & 255);
            qt.y0(100, bArr[i2 + 8] & 255);
            qt.y0(101, bArr[i2 + 9] & 255);
            return;
        }
        if (b2 == 57) {
            int i17 = i2 + 2;
            qt.y0(106, (bArr[i17] >> 0) & 15);
            qt.y0(107, (bArr[i17] >> 4) & 15);
            int i18 = i2 + 3;
            qt.y0(108, (bArr[i18] >> 0) & 15);
            qt.y0(109, (bArr[i18] >> 4) & 15);
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
                if (nt.a()) {
                    int i19 = i2 + 2;
                    int i20 = bArr[i19] & 255;
                    int i21 = i2 + 3;
                    int i22 = bArr[i21] & 255;
                    int i23 = i2 + 4;
                    int i24 = bArr[i23] & 255;
                    int i25 = i2 + 5;
                    int i26 = bArr[i25] & 255;
                    if (i20 == 0 && i22 == 0 && i24 == 0 && i26 == 0) {
                        u0.d.C2(0);
                    } else if ((l0.c0.f13013g != i20 || l0.c0.f13014h != i22 || l0.c0.f13015i != i24 || l0.c0.f13016j != i26) && u0.b.f17347o == 0) {
                        u0.d.C2(1);
                        l0.c0.f13017k = 4;
                        l0.b0.b(l0.c0.f13018l);
                    }
                    l0.c0.f13013g = i20;
                    l0.c0.f13014h = i22;
                    l0.c0.f13015i = i24;
                    l0.c0.f13016j = i26;
                    u0.d.D2(l0.c0.E0(bArr[i19] & 255));
                    u0.d.E2(l0.c0.E0(bArr[i21] & 255));
                    u0.d.F2(l0.c0.E0(bArr[i23] & 255));
                    u0.d.G2(l0.c0.E0(bArr[i25] & 255));
                }
                break;
            case 36:
                int i27 = i2 + 2;
                qt.y0(10, (bArr[i27] >> 7) & 1);
                qt.y0(12, (bArr[i27] >> 5) & 1);
                qt.y0(13, (bArr[i27] >> 3) & 1);
                qt.y0(62, (bArr[i27] >> 2) & 1);
                qt.y0(16, (bArr[i27] >> 1) & 1);
                qt.y0(65, (bArr[i27] >> 0) & 1);
                int i28 = bArr[i2 + 3] & 255;
                if (i28 != 1) {
                    if (i28 == 2) {
                        i4 = 0;
                        i6 = 1;
                    } else if (i28 == 3) {
                        i4 = 0;
                        i6 = 0;
                        i5 = 1;
                    } else if (i28 != 4) {
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
                qt.y0(21, bArr[i2 + 4] & 255);
                int i29 = i2 + 5;
                int i30 = bArr[i29] & 255;
                int i31 = i2 + 6;
                int i32 = bArr[i31] & 255;
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    i30 = bArr[i31] & 255;
                    i32 = bArr[i29] & 255;
                }
                if (i30 == 31) {
                    qt.y0(27, -2);
                } else if (i30 == 32) {
                    qt.y0(27, -3);
                } else {
                    qt.y0(27, bArr[i29] & 255);
                }
                if (i32 == 31) {
                    qt.y0(28, -2);
                } else if (i32 == 32) {
                    qt.y0(28, -3);
                } else {
                    qt.y0(28, bArr[i31] & 255);
                }
                qt.y0(68, bArr[i2 + 8] & 255);
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f3790l.j();
        u0.c.f17386m.d(this.f3793o);
        l0.b0.p0(this.f3794p);
        qt.q0(this.f3791m);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 128) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, 144, 1, iArr[0]);
            return;
        }
        if (i2 != 1) {
            if (i2 != 2) {
                return;
            }
            z.k.s(227, 168, 2, iArr[0], iArr[1]);
            return;
        }
        int i3 = iArr[0];
        if (i3 == 1) {
            e3(iArr[1]);
        } else if (i3 != 255) {
            z.k.s(227, 200, 2, iArr[0], iArr[1]);
        } else {
            f3(iArr[1]);
        }
    }

    public final void e3(int i2) {
        qt.y0(111, i2);
        z.k.s(227, 200, 2, 1, i2);
        f3778q = i2;
        int iB = this.f3790l.b(1, 0);
        int i3 = f3778q;
        if (iB != i3) {
            this.f3790l.g(1, i3);
        }
    }

    public final void f3(int i2) {
        qt.y0(126, i2);
        f3779r = i2;
        int iB = this.f3790l.b(2, 0);
        int i3 = f3779r;
        if (iB != i3) {
            this.f3790l.g(2, i3);
        }
    }
}
