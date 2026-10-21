package k0;

import android.net.wifi.BatchedScanSettings;
import android.os.SystemProperties;
import android.text.format.Time;

/* JADX INFO: loaded from: classes2.dex */
public class fg extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f5160b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f5161c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f5162d = {new int[]{1, 40}, new int[]{2, 41}, new int[]{3, 42}, new int[]{4, 43}, new int[]{5, 44}, new int[]{6, 45}, new int[]{7, 0}, new int[]{8, 26}, new int[]{9, 74}, new int[]{10, 75}, new int[]{11, 22}, new int[]{12, 53}, new int[]{13, 38}, new int[]{14, 64}, new int[]{15, 29}, new int[]{16, 3}, new int[]{17, 4}, new int[]{18, 3}, new int[]{19, 4}, new int[]{20, 28}, new int[]{21, 27}, new int[]{22, 1}, new int[]{23, 1}, new int[]{24, 6}, new int[]{25, 5}, new int[]{26, 54}, new int[]{27, 25}, new int[]{28, 29}, new int[]{29, 34}, new int[]{30, 35}, new int[]{31, 32}, new int[]{32, 33}, new int[]{33, -1}, new int[]{34, -1}, new int[]{35, -1}, new int[]{36, -1}, new int[]{48, 7}, new int[]{49, 35}, new int[]{50, 31}, new int[]{51, 30}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f5163e = new a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f5164f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f5165g = new b();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f5166h = new c();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f5167i = new d();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f5168j = new e();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f5169k = new f();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            fg.this.a3();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            fg fgVar = fg.this;
            fgVar.f5164f = 4;
            l0.b0.b(fgVar.f5166h);
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            fg fgVar = fg.this;
            fgVar.f5164f--;
            fgVar.a3();
            fg fgVar2 = fg.this;
            if (fgVar2.f5164f <= 0) {
                l0.b0.p0(fgVar2.f5166h);
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            fg.b3();
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            fg.c3();
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, 137, 3, 1, fg.d3((byte) time.hour), fg.d3((byte) time.minute));
        }
    }

    public static void b3() {
        int[] iArr = new int[7];
        int i2 = 0;
        iArr[0] = 131;
        iArr[1] = 5;
        if (u0.b.D == 1) {
            int i3 = w0.d.f17798j & 255;
            int i4 = w0.d.f17796h;
            if (i4 != 0 && i4 != 1) {
                switch (i4) {
                    case 65536:
                        iArr[2] = 0;
                        break;
                    case 65537:
                        iArr[2] = 1;
                        break;
                    case 65538:
                        iArr[2] = 2;
                        break;
                }
            } else {
                iArr[2] = 3;
            }
            int i5 = w0.d.f17797i;
            iArr[3] = (i5 >> 8) & 255;
            iArr[4] = i5 & 255;
            iArr[5] = (i3 % 6) + 1;
            if (w0.d.f17814z != 0) {
                iArr[6] = iArr[6] | 128;
            } else {
                iArr[6] = iArr[6] & 0;
            }
        }
        int[] iArr2 = new int[8];
        iArr2[0] = 227;
        while (i2 < 7) {
            int i6 = i2 + 1;
            iArr2[i6] = iArr[i2];
            i2 = i6;
        }
        z.k.s(iArr2);
    }

    public static void c3() {
        int[] iArr = new int[9];
        int i2 = 0;
        iArr[0] = 132;
        iArr[1] = 7;
        iArr[2] = 255;
        int i3 = u0.b.D;
        if (i3 == 4) {
            iArr[3] = d3(o0.e.B / 100);
            iArr[4] = d3((o0.e.f16794r % BatchedScanSettings.MAX_INTERVAL_SEC) / 60);
            iArr[5] = d3(o0.e.f16794r % 60);
            if (o0.e.P != 0) {
                iArr[6] = iArr[6] & 48;
            } else {
                int i4 = o0.e.O;
                if (i4 == 0) {
                    iArr[6] = 0;
                } else if (i4 == 2) {
                    iArr[6] = 32;
                } else if (i4 == 3) {
                    iArr[6] = 16;
                } else if (i4 == 4) {
                    iArr[6] = 96;
                }
            }
            iArr[7] = 0;
            iArr[8] = d3(o0.e.B % 100);
        } else if (i3 == 8 || i3 == 10) {
            iArr[3] = d3(u0.b.r3 / 100);
            iArr[4] = d3((u0.b.t3 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60);
            iArr[5] = d3(u0.b.t3 % 60);
            if (u0.b.o3 == 1) {
                iArr[6] = iArr[6] & 48;
            } else {
                int i5 = u0.b.n3;
                if (i5 == 0) {
                    iArr[6] = 32;
                } else if (i5 == 2) {
                    iArr[6] = 0;
                } else if (i5 == 3) {
                    iArr[6] = 16;
                }
            }
            iArr[7] = 0;
            iArr[8] = d3(u0.b.r3 % 100);
        }
        int[] iArr2 = new int[10];
        iArr2[0] = 227;
        while (i2 < 9) {
            int i6 = i2 + 1;
            iArr2[i6] = iArr[i2];
            i2 = i6;
        }
        z.k.s(iArr2);
    }

    public static int d3(int i2) {
        return (i2 % 10) | (((i2 % 100) / 10) << 4);
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        mtVar.f8306a = null;
        mtVar.f8310e = 1;
        mtVar.f8311f = 0;
        mtVar.f8312g = 0;
        mtVar.f8320o = 0;
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        qt.z(this.f5169k);
        qt.z(this.f5163e);
        u0.c.f17374a.a(this.f5163e, 1);
        y0.g.f18094d.a(this.f5165g, 1);
        y0.g.f18095e.a(this.f5165g, 1);
        qt.z(this.f5167i);
        w0.e.f17815a.a(this.f5167i, 1);
        w0.e.f17819e.a(this.f5167i, 1);
        u0.c.f17392s.a(this.f5168j, 1);
        u0.c.f17393t.a(this.f5168j, 1);
        u0.c.f17394u.a(this.f5168j, 1);
        u0.c.f17395v.a(this.f5168j, 1);
        u0.c.f17391r.a(this.f5168j, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 != 2) {
            if (b2 != 4) {
                if (b2 != 113) {
                    return;
                }
                qt.L(new String(bArr, i2 + 2, i3 - 2));
                return;
            }
            byte b3 = bArr[i2 + 4];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b3 >> 6) & 1);
                qt.y0(2, (b3 >> 7) & 1);
            } else {
                qt.y0(1, (b3 >> 7) & 1);
                qt.y0(2, (b3 >> 6) & 1);
            }
            qt.y0(3, (b3 >> 5) & 1);
            qt.y0(4, (b3 >> 4) & 1);
            return;
        }
        byte b4 = bArr[i2 + 2];
        byte b5 = bArr[i2 + 3];
        this.f5161c = b4 & 255;
        int i4 = 0;
        while (true) {
            iArr = this.f5162d;
            if (i4 >= iArr.length) {
                break;
            }
            int i5 = this.f5161c;
            if (i5 == iArr[i4][0]) {
                if (i5 == 0) {
                    break;
                }
                this.f5160b = i4;
                break;
            }
            i4++;
        }
        switch (this.f5161c) {
            case 48:
                for (int i6 = 0; i6 < (b5 & 255); i6++) {
                    l0.b0.l0(7, 0);
                }
                l0.b0.l0(7, 1);
                break;
            case 49:
                for (int i7 = 0; i7 < (b5 & 255); i7++) {
                    l0.b0.l0(8, 0);
                }
                l0.b0.l0(8, 1);
                break;
            case 50:
                for (int i8 = 0; i8 < (b5 & 255); i8++) {
                    l0.b0.l0(31, 0);
                }
                l0.b0.l0(31, 1);
                break;
            case 51:
                for (int i9 = 0; i9 < (b5 & 255); i9++) {
                    l0.b0.l0(30, 0);
                }
                l0.b0.l0(30, 1);
                break;
            default:
                int i10 = b5 & 255;
                if (i10 == 1) {
                    if (i4 < iArr.length) {
                        l0.b0.l0(iArr[i4][1], 0);
                    }
                } else if (i10 == 0) {
                    int i11 = this.f5160b;
                    if (i11 < iArr.length && i11 != 255) {
                        l0.b0.l0(iArr[i11][1], 1);
                    }
                    this.f5160b = 255;
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(l0.c0.f13020n);
        l0.b0.p0(l0.c0.f13021o);
        qt.q0(this.f5169k);
        qt.q0(this.f5163e);
        u0.c.f17374a.d(this.f5163e);
        y0.g.f18094d.d(this.f5165g);
        y0.g.f18095e.d(this.f5165g);
        qt.q0(this.f5167i);
        w0.e.f17815a.d(this.f5167i);
        w0.e.f17819e.d(this.f5167i);
        u0.c.f17392s.d(this.f5168j);
        u0.c.f17393t.d(this.f5168j);
        u0.c.f17394u.d(this.f5168j);
        u0.c.f17395v.d(this.f5168j);
        u0.c.f17391r.d(this.f5168j);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 7) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
    }

    public final void a3() {
        int[] iArr = new int[4];
        int i2 = 0;
        iArr[0] = 130;
        iArr[1] = 2;
        int i3 = u0.b.D;
        if (i3 == 1) {
            iArr[2] = 0;
        } else if (i3 == 2) {
            iArr[2] = 4;
        } else if (i3 == 4) {
            iArr[2] = 1;
        } else if (i3 == 5) {
            iArr[2] = 2;
        } else if (i3 == 8 || i3 == 10) {
            iArr[2] = 3;
        } else {
            iArr[2] = 8;
        }
        if (u0.b.f17306a0 != 0) {
            iArr[2] = iArr[2] | 128;
        }
        if (u0.b.f17320f == 0) {
            iArr[2] = iArr[2] & 127;
        }
        int i4 = y0.f.C0;
        iArr[3] = i4;
        if (i4 > 36) {
            iArr[3] = 36;
        }
        if (y0.f.f18055i == 1 || y0.f.C0 == 0) {
            iArr[3] = 0;
        }
        if (this.f5164f > 0) {
            iArr[3] = iArr[3] | 128;
        }
        int[] iArr2 = new int[5];
        iArr2[0] = 227;
        while (i2 < 4) {
            int i5 = i2 + 1;
            iArr2[i5] = iArr[i2];
            i2 = i5;
        }
        z.k.s(iArr2);
    }
}
