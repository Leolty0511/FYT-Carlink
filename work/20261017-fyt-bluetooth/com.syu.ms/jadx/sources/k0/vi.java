package k0;

import android.os.SystemProperties;
import android.provider.CalendarContract;

/* JADX INFO: loaded from: classes2.dex */
public class vi extends lt {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static int f11376p = 10;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static int f11377q = 10;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static int f11378r = 10;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static int f11379s = 10;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static int f11380t = 10;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static int f11381u = 10;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f11383c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f11382b = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f11384d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[][] f11385e = {new int[]{1, 25}, new int[]{2, 3}, new int[]{3, 4}, new int[]{4, 2}, new int[]{5, 7}, new int[]{6, 8}, new int[]{7, 5}, new int[]{8, 1}, new int[]{9, 18}, new int[]{10, 25}, new int[]{11, 6}, new int[]{12, 13}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public o1.g0 f11386f = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f11387g = 1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f11388h = 2;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f11389i = 3;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f11390j = 4;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f11391k = 5;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f11392l = 6;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f11393m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Runnable f11394n = new a();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Runnable f11395o = new b();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(vi.this.f11395o);
            vi.this.f11393m = 5;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            vi viVar = vi.this;
            int i2 = viVar.f11393m - 1;
            viVar.f11393m = i2;
            if (i2 <= 0) {
                l0.b0.p0(viVar.f11395o);
                vi.this.f11393m = 5;
                return;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (nt.f8637c == 236 && u0.b.f17306a0 == 1) {
                vi viVar2 = vi.this;
                viVar2.c3(viVar2.f11386f.b(1, 10), vi.this.f11386f.b(2, 10), vi.this.f11386f.b(3, 10), vi.this.f11386f.b(4, 10), vi.this.f11386f.b(5, 10), vi.this.f11386f.b(6, 10), 0);
            }
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        int i2 = nt.f8637c;
        if (i2 == 235) {
            this.f7886a.f8306a = null;
        } else if (i2 == 236) {
            this.f7886a.f8306a = new String[]{"com.syu.canbus"};
        }
        this.f11386f.a();
        mt mtVar = this.f7886a;
        mtVar.f8310e = 0;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8314i = 0;
        mtVar.f8321p = 0;
        mtVar.f8315j = 0;
        mtVar.f8320o = 0;
        u0.c.f17386m.a(this.f11394n, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 != 4) {
            if (b2 != 5) {
                if (b2 != 113) {
                    return;
                }
                qt.L(new String(bArr, i2 + 2, i3 - 2));
                return;
            }
            int i4 = i2 + 2;
            qt.y0(10, (bArr[i4] >> 7) & 1);
            qt.y0(11, (bArr[i4] >> 6) & 1);
            qt.y0(13, (bArr[i4] >> 4) & 1);
            qt.y0(12, (bArr[i4] >> 2) & 3);
            qt.y0(65, (bArr[i4] >> 0) & 1);
            int i5 = i2 + 3;
            qt.y0(14, 3 & (bArr[i5] >> 6));
            qt.y0(21, (bArr[i5] >> 0) & 15);
            int i6 = i2 + 4;
            qt.y0(18, (bArr[i6] >> 6) & 1);
            qt.y0(19, (bArr[i6] >> 4) & 1);
            qt.y0(20, (bArr[i6] >> 5) & 1);
            int i7 = i2 + 5;
            int i8 = bArr[i7] & 255;
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                i8 = bArr[i2 + 6] & 255;
            }
            if (i8 == 0) {
                qt.y0(27, -2);
            } else if (i8 == 127) {
                qt.y0(27, -3);
            } else if (i8 == 255) {
                qt.y0(27, -1);
            } else {
                qt.y0(27, i8);
            }
            int i9 = bArr[i2 + 6] & 255;
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                i9 = bArr[i7] & 255;
            }
            if (i9 == 0) {
                qt.y0(28, -2);
            } else if (i9 == 127) {
                qt.y0(28, -3);
            } else if (i9 == 255) {
                qt.y0(28, -1);
            } else {
                qt.y0(28, i9);
            }
            int i10 = bArr[i2 + 9] & 255;
            if (i10 > 125) {
                u0.d.B3(0);
                return;
            } else {
                u0.d.B3(SystemProperties.getInt("persist.fyt.temperature", 0) == 0 ? (i10 * 10) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR : (((i10 * 18) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR) | 268435456) & (-1));
                return;
            }
        }
        byte b3 = bArr[i2 + 2];
        byte b4 = bArr[i2 + 3];
        this.f11384d = b3 & 255;
        int i11 = 0;
        while (true) {
            iArr = this.f11385e;
            if (i11 >= iArr.length) {
                break;
            }
            int i12 = this.f11384d;
            if (i12 == iArr[i11][0]) {
                if (i12 == 0) {
                    break;
                }
                this.f11383c = i11;
                break;
            }
            i11++;
        }
        int i13 = this.f11384d;
        if (i13 == 5) {
            for (int i14 = 0; i14 < (b4 & 255); i14++) {
                l0.b0.l0(8, 0);
            }
            l0.b0.l0(8, 1);
            return;
        }
        if (i13 == 6) {
            for (int i15 = 0; i15 < (b4 & 255); i15++) {
                l0.b0.l0(7, 0);
            }
            l0.b0.l0(7, 1);
            return;
        }
        if (i13 != 9) {
            if ((b4 & 255) != 0) {
                if (i11 < iArr.length) {
                    l0.b0.l0(iArr[i11][1], 0);
                    return;
                }
                return;
            } else {
                int i16 = this.f11383c;
                if (i16 < iArr.length && i16 != 255) {
                    l0.b0.l0(iArr[i16][1], 1);
                }
                this.f11383c = 255;
                return;
            }
        }
        if ((b4 & 255) == 1) {
            int i17 = h0.c.E;
            if (i17 == 3 || i17 == 5) {
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
        this.f11386f.j();
        u0.c.f17386m.d(this.f11394n);
        l0.b0.p0(this.f11395o);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 104) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 != 0) {
            return;
        }
        c3(iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], iArr[5], iArr[6]);
    }

    public final void c3(int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        f11376p = i2;
        f11377q = i3;
        f11378r = i4;
        f11379s = i5;
        f11380t = i6;
        f11381u = i7;
        qt.y0(98, i2);
        qt.y0(99, f11377q);
        qt.y0(100, f11378r);
        qt.y0(101, f11379s);
        qt.y0(102, f11380t);
        qt.y0(103, f11381u);
        z.k.s(227, 147, 7, f11376p, f11377q, f11378r, f11379s, f11380t, f11381u, i8);
        int iB = this.f11386f.b(1, 0);
        int i9 = f11376p;
        if (iB != i9) {
            this.f11386f.g(1, i9);
        }
        int iB2 = this.f11386f.b(2, 0);
        int i10 = f11377q;
        if (iB2 != i10) {
            this.f11386f.g(2, i10);
        }
        int iB3 = this.f11386f.b(3, 0);
        int i11 = f11378r;
        if (iB3 != i11) {
            this.f11386f.g(3, i11);
        }
        int iB4 = this.f11386f.b(4, 0);
        int i12 = f11379s;
        if (iB4 != i12) {
            this.f11386f.g(4, i12);
        }
        int iB5 = this.f11386f.b(5, 0);
        int i13 = f11380t;
        if (iB5 != i13) {
            this.f11386f.g(5, i13);
        }
        int iB6 = this.f11386f.b(6, 0);
        int i14 = f11381u;
        if (iB6 != i14) {
            this.f11386f.g(6, i14);
        }
    }
}
