package k0;

import android.net.ProxyProperties;
import android.os.SystemProperties;
import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes2.dex */
public class a8 extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f3186b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3187c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f3188d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f3189e = 255;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int[][] f3190f = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, 13}, new int[]{5, 18}, new int[]{6, 26}, new int[]{7, 12}, new int[]{8, 3}, new int[]{9, 4}, new int[]{10, 2}, new int[]{12, 25}, new int[]{23, 1}, new int[]{48, 18}};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f3191g = {new int[]{1, 0}, new int[]{2, 3}, new int[]{3, 4}, new int[]{6, 6}, new int[]{9, 12}, new int[]{23, 34}, new int[]{24, 35}, new int[]{25, 32}, new int[]{26, 33}, new int[]{32, 1}, new int[]{36, 54}, new int[]{40, 18}, new int[]{42, 29}, new int[]{43, 5}, new int[]{47, 9}, new int[]{51, 24}, new int[]{52, 18}, new int[]{53, 26}, new int[]{55, 55}, new int[]{57, 25}, new int[]{69, 7}, new int[]{70, 8}, new int[]{97, 63}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f3192h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f3193i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f3194j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f3195k = new a();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f3196l = new b();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f3197m = new c();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Runnable f3198n = new d();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Runnable f3199o = new e();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f3200p = new f();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f3201q = -1;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f3202r = false;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public String f3203s = ProxyProperties.LOCAL_EXCL_LIST;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(a8.this.f3196l);
            a8.this.f3194j = 5;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a8 a8Var = a8.this;
            int i2 = a8Var.f3194j - 1;
            a8Var.f3194j = i2;
            if (i2 <= 0) {
                l0.b0.p0(a8Var.f3196l);
                a8.this.f3194j = 5;
            } else if (u0.b.f17306a0 == 1) {
                a8Var.g3();
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a8.this.f3((byte) -110, u0.b.i3);
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a8.this.f3((byte) -108, u0.b.j3);
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a8.this.h3();
        }
    }

    public static int a3(int i2) {
        if (i2 != 1) {
            return i2 != 2 ? 15 : 8;
        }
        return 3;
    }

    public static int b3(int i2) {
        if (i2 == 1) {
            return 2;
        }
        if (i2 == 2) {
            return 4;
        }
        if (i2 != 3) {
            return i2 != 4 ? 15 : 8;
        }
        return 6;
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        mtVar.f8310e = 1;
        mtVar.f8312g = 0;
        mtVar.f8320o = 0;
        mtVar.f8314i = 0;
        switch (nt.f8637c) {
            case 5:
                mtVar.f8306a = new String[]{"com.syu.canbus"};
                mtVar.f8311f = 1;
                break;
            case 6:
            case 7:
            case 8:
            case 9:
                mtVar.f8306a = new String[]{"com.syu.canbus"};
                mtVar.f8311f = 1;
                mtVar.f8314i = 1;
                break;
            default:
                mtVar.f8306a = null;
                mtVar.f8311f = 0;
                break;
        }
        u0.c.f17386m.a(this.f3195k, 1);
        u0.c.f17388o.a(this.f3197m, 1);
        u0.c.f17389p.a(this.f3199o, 1);
        u0.c.f17390q.a(this.f3198n, 1);
        h0.d.f2464c.a(this.f3200p, 1);
        h0.d.f2462a.a(this.f3200p, 1);
        qt.z(l0.h0.f13058d);
        w0.e.f17815a.a(l0.h0.f13058d, 1);
        w0.e.f17819e.a(l0.h0.f13058d, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int[][] iArr;
        int[][] iArr2;
        int i7;
        byte b2 = bArr[i2 + 1];
        if (b2 == -121) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 4];
            qt.y0(98, (b3 >> 7) & 1);
            qt.y0(99, (b4 >> 7) & 1);
            return;
        }
        if (b2 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 49) {
            int i8 = bArr[i2 + 2] & 255;
            int i9 = bArr[i2 + 3] & 255;
            int i10 = bArr[i2 + 4] & 255;
            int i11 = bArr[i2 + 6] & 255;
            int i12 = bArr[i2 + 7] & 255;
            int i13 = bArr[i2 + 8] & 255;
            int i14 = bArr[i2 + 10] & 255;
            qt.y0(10, (i8 >> 6) & 1);
            qt.y0(11, (i8 >> 0) & 3);
            qt.y0(12, (i9 >> 4) & 1);
            qt.y0(13, (i9 >> 3) & 1);
            qt.y0(16, (i10 >> 5) & 1);
            qt.y0(65, (i10 >> 4) & 1);
            if (i11 != 1) {
                if (i11 == 2) {
                    i4 = 0;
                    i6 = 1;
                } else if (i11 == 3) {
                    i4 = 0;
                    i6 = 0;
                    i5 = 1;
                } else if (i11 != 4) {
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
            qt.y0(21, i12);
            int i15 = i13 & 255;
            if (i15 == 254) {
                qt.y0(27, -2);
            } else if (i15 == 255) {
                qt.y0(27, -3);
            } else {
                qt.y0(27, i15);
            }
            qt.y0(100, (i14 >> 3) & 1);
            qt.y0(101, (i14 >> 2) & 1);
            qt.y0(102, (i14 >> 1) & 1);
            qt.y0(103, (i14 >> 0) & 1);
            return;
        }
        if (b2 == 65) {
            if (nt.a()) {
                u0.d.R2(a3(bArr[i2 + 2] & 255));
                u0.d.S2(b3(bArr[i2 + 3] & 255));
                u0.d.T2(b3(bArr[i2 + 4] & 255));
                u0.d.U2(a3(bArr[i2 + 5] & 255));
                int i16 = i2 + 6;
                u0.d.D2(a3(bArr[i16] & 255));
                u0.d.E2(a3(bArr[i16] & 255));
                int i17 = i2 + 9;
                u0.d.F2(a3(bArr[i17] & 255));
                u0.d.G2(a3(bArr[i17] & 255));
                return;
            }
            return;
        }
        if (b2 == 97) {
            int i18 = i2 + 2;
            qt.y0(104, (bArr[i18] >> 6) & 3);
            qt.y0(105, (bArr[i18] >> 4) & 3);
            qt.y0(106, (bArr[i18] >> 3) & 1);
            qt.y0(107, (bArr[i18] >> 2) & 1);
            qt.y0(108, (bArr[i18] >> 1) & 1);
            qt.y0(109, (bArr[i18] >> 0) & 1);
            int i19 = i2 + 3;
            qt.y0(110, (bArr[i19] >> 1) & 1);
            qt.y0(111, (bArr[i19] >> 0) & 1);
            qt.y0(112, (bArr[i19] >> 6) & 3);
            qt.y0(113, (bArr[i19] >> 5) & 1);
            qt.y0(114, (bArr[i19] >> 4) & 1);
            qt.y0(115, (bArr[i19] >> 2) & 3);
            int i20 = i2 + 4;
            qt.y0(116, (bArr[i20] >> 4) & 15);
            qt.y0(117, (bArr[i20] >> 2) & 3);
            qt.y0(126, (bArr[i20] >> 1) & 1);
            int i21 = i2 + 5;
            qt.y0(118, (bArr[i21] >> 7) & 1);
            qt.y0(119, (bArr[i21] >> 2) & 31);
            int i22 = i2 + 6;
            qt.y0(120, (bArr[i22] >> 6) & 3);
            qt.y0(121, (bArr[i22] >> 4) & 3);
            qt.y0(122, (bArr[i22] >> 3) & 1);
            qt.y0(125, (bArr[i22] >> 2) & 1);
            int i23 = i2 + 7;
            qt.y0(123, (bArr[i23] >> 7) & 1);
            qt.y0(124, (bArr[i23] >> 0) & 127);
            return;
        }
        if (b2 == 17) {
            if (nt.a()) {
                byte b5 = bArr[i2 + 4];
                byte b6 = bArr[i2 + 5];
                this.f3187c = b5 & 255;
                int i24 = 0;
                while (true) {
                    iArr = this.f3190f;
                    if (i24 >= iArr.length) {
                        break;
                    }
                    int i25 = this.f3187c;
                    if (i25 == iArr[i24][0]) {
                        if (i25 == 0) {
                            break;
                        }
                        this.f3186b = i24;
                        break;
                    }
                    i24++;
                }
                if (this.f3187c != 6) {
                    if ((b6 & 255) == 0) {
                        int i26 = this.f3186b;
                        if (i26 < iArr.length && i26 != 255) {
                            l0.b0.l0(iArr[i26][1], 1);
                        }
                        this.f3186b = 255;
                    } else if (i24 < iArr.length) {
                        l0.b0.l0(iArr[i24][1], 0);
                    }
                } else if ((b6 & 255) == 1) {
                    int i27 = h0.c.E;
                    if (i27 == 3 || i27 == 4 || i27 == 5) {
                        l0.b0.l0(26, 0);
                        l0.b0.l0(26, 1);
                    } else {
                        l0.b0.l0(12, 0);
                        l0.b0.l0(12, 1);
                    }
                }
                qt.i(bArr[i2 + 9] & 255, bArr[i2 + 8] & 255, true, 540);
                return;
            }
            return;
        }
        if (b2 == 18) {
            byte b7 = bArr[i2 + 4];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b7 >> 6) & 1);
                qt.y0(2, (b7 >> 7) & 1);
            } else {
                qt.y0(1, (b7 >> 7) & 1);
                qt.y0(2, (b7 >> 6) & 1);
            }
            qt.y0(3, (b7 >> 5) & 1);
            qt.y0(4, (b7 >> 4) & 1);
            qt.y0(5, (b7 >> 3) & 1);
            return;
        }
        if (b2 == 33) {
            this.f3188d = bArr[i2 + 2] & 255;
            int i28 = bArr[i2 + 3] & 255;
            int i29 = 0;
            while (true) {
                iArr2 = this.f3191g;
                if (i29 >= iArr2.length) {
                    break;
                }
                int i30 = this.f3188d;
                if (i30 == iArr2[i29][0]) {
                    if (i30 == 0) {
                        break;
                    }
                    this.f3189e = i29;
                    break;
                }
                i29++;
            }
            int i31 = i28 & 255;
            if (i31 == 1) {
                if (i29 < iArr2.length) {
                    l0.b0.l0(iArr2[i29][1], 0);
                    return;
                }
                return;
            } else {
                if (i31 == 0) {
                    int i32 = this.f3189e;
                    if (i32 < iArr2.length && i32 != 255) {
                        l0.b0.l0(iArr2[i32][1], 1);
                    }
                    this.f3189e = 255;
                    return;
                }
                return;
            }
        }
        if (b2 != 34) {
            return;
        }
        byte b8 = bArr[i2 + 2];
        byte b9 = bArr[i2 + 3];
        if (b8 == 0) {
            this.f3192h = 0;
            this.f3193i = 0;
            return;
        }
        if (b8 != 1) {
            if (b8 == 2 && b9 != (i7 = this.f3193i)) {
                if (b9 > i7) {
                    for (int i33 = 0; i33 < b9 - this.f3193i; i33++) {
                        l0.b0.l0(31, 0);
                    }
                    l0.b0.l0(31, 1);
                } else if (b9 < i7) {
                    for (int i34 = 0; i34 < this.f3193i - b9; i34++) {
                        l0.b0.l0(30, 0);
                    }
                    l0.b0.l0(30, 1);
                }
                this.f3193i = b9;
                return;
            }
            return;
        }
        int i35 = this.f3192h;
        if (b9 != i35) {
            if (b9 > i35) {
                for (int i36 = 0; i36 < b9 - this.f3192h; i36++) {
                    l0.b0.l0(7, 0);
                }
                l0.b0.l0(7, 1);
            } else if (b9 < i35) {
                for (int i37 = 0; i37 < this.f3192h - b9; i37++) {
                    l0.b0.l0(8, 0);
                }
                l0.b0.l0(8, 1);
            }
            this.f3192h = b9;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f3195k);
        l0.b0.p0(this.f3196l);
        u0.c.f17388o.d(this.f3197m);
        u0.c.f17389p.d(this.f3199o);
        u0.c.f17390q.d(this.f3198n);
        h0.d.f2464c.d(this.f3200p);
        h0.d.f2462a.d(this.f3200p);
        qt.q0(l0.h0.f13058d);
        w0.e.f17815a.d(l0.h0.f13058d);
        w0.e.f17819e.d(l0.h0.f13058d);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 127) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            if (qt.l0(iArr, 1)) {
                z.k.s(227, 2, 140, 1, iArr[0]);
            }
        } else if (i2 == 1) {
            if (qt.l0(iArr, 2)) {
                z.k.s(227, 2, 61, iArr[0], iArr[1]);
            }
        } else if (i2 == 2 && qt.l0(iArr, 4)) {
            z.k.s(227, 4, 111, iArr[0], iArr[1], iArr[2], iArr[3]);
        }
    }

    public final void f3(byte b2, String str) {
        if (str == null) {
            str = ProxyProperties.LOCAL_EXCL_LIST;
        }
        int[] iArr = new int[35];
        int i2 = 0;
        iArr[0] = 227;
        iArr[1] = 32;
        iArr[2] = b2;
        int length = str.length() <= 15 ? str.length() : 15;
        try {
            byte[] bytes = str.getBytes("utf-8");
            while (true) {
                if (i2 >= (bytes.length > length ? length : bytes.length)) {
                    break;
                }
                iArr[i2 + 3] = bytes[i2];
                i2++;
            }
        } catch (UnsupportedEncodingException e2) {
            e2.printStackTrace();
        }
        z.k.s(iArr);
    }

    public final void g3() {
        int i2;
        switch (nt.f8637c) {
            case 0:
                i2 = 1;
                break;
            case 1:
                i2 = 2;
                break;
            case 2:
                i2 = 3;
                break;
            case 3:
                i2 = 4;
                break;
            case 4:
                i2 = 5;
                break;
            case 5:
                i2 = 6;
                break;
            case 6:
                i2 = 7;
                break;
            case 7:
                i2 = 8;
                break;
            case 8:
                i2 = 9;
                break;
            case 9:
                i2 = 10;
                break;
            default:
                i2 = 0;
                break;
        }
        z.k.s(227, 2, 36, i2, 0);
    }

    public final void h3() {
        boolean z2;
        int i2 = h0.c.E;
        int i3 = 4;
        boolean z3 = true;
        boolean z4 = i2 == 5 || i2 == 3 || i2 == 4;
        switch (i2) {
            case 0:
                i3 = 6;
                break;
            case 1:
            case 2:
            case 6:
                i3 = 7;
                break;
            case 3:
                i3 = 2;
                break;
            case 4:
                i3 = 1;
                break;
            case 5:
                break;
            default:
                i3 = 0;
                break;
        }
        if (this.f3201q != i3) {
            this.f3201q = i3;
            z2 = true;
        } else {
            z2 = false;
        }
        if (this.f3201q != i3) {
            this.f3201q = i3;
            z2 = true;
        }
        if (this.f3203s.equals(h0.c.f2437h)) {
            z3 = z2;
        } else {
            String str = h0.c.f2437h;
            this.f3203s = str;
            if (str == null) {
                this.f3203s = ProxyProperties.LOCAL_EXCL_LIST;
                z3 = z2;
            }
        }
        if (z3) {
            int i4 = this.f3201q;
            if (i4 != 0) {
                i3(i4, this.f3203s);
            }
            if (this.f3202r != z4) {
                this.f3202r = z4;
                this.f3201q = 0;
            }
        }
    }

    public final void i3(int i2, String str) {
        int[] iArr = new int[30];
        iArr[0] = -29;
        iArr[1] = 27;
        iArr[2] = 205;
        iArr[3] = i2;
        if (i2 == 1 || i2 == 2 || i2 == 4) {
            if (str == null) {
                return;
            }
            try {
                int length = 24;
                if (str.length() <= 24) {
                    length = str.length();
                }
                byte[] bytes = str.getBytes("utf-8");
                for (int i3 = 0; i3 < length; i3++) {
                    iArr[i3 + 6] = bytes[i3];
                }
            } catch (Exception unused) {
            }
        }
        z.k.s(iArr);
    }
}
