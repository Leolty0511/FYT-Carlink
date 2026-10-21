package k0;

import android.os.SystemProperties;
import app.App;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class de extends lt implements o1.q {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f4404b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f4405c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f4406d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{7, 2}, new int[]{8, 12}, new int[]{9, 18}, new int[]{10, 26}, new int[]{11, 22}, new int[]{12, 13}, new int[]{18, 16}, new int[]{19, 3}, new int[]{20, 4}, new int[]{24, 55}, new int[]{32, 49}, new int[]{33, 40}, new int[]{34, 41}, new int[]{35, 42}, new int[]{36, 43}, new int[]{37, 44}, new int[]{38, 45}, new int[]{39, 46}, new int[]{40, 47}, new int[]{41, 48}, new int[]{49, 5}, new int[]{50, 1}, new int[]{51, 5}, new int[]{52, 1}, new int[]{53, 58}, new int[]{54, 18}, new int[]{55, 62}, new int[]{56, 6}, new int[]{57, 24}, new int[]{58, 54}, new int[]{59, 0}, new int[]{60, 67}, new int[]{61, 68}, new int[]{62, 21}, new int[]{63, 25}, new int[]{64, 38}, new int[]{65, 8}, new int[]{66, 7}, new int[]{67, 30}, new int[]{68, 31}, new int[]{69, 6}, new int[]{70, 5}, new int[]{71, 2}, new int[]{72, 16}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f4407e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f4408f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final byte[] f4409g = new byte[1024];

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f4410h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f4411i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f4412j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f4413k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f4414l = new a();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f4415m = new b();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Runnable f4416n = new c();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public z.b f4417o = null;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public z.b f4418p = null;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(de.this.f4415m);
            de.this.f4413k = 5;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            de deVar = de.this;
            int i2 = deVar.f4413k - 1;
            deVar.f4413k = i2;
            if (i2 <= 0) {
                l0.b0.p0(deVar.f4415m);
                de.this.f4413k = 5;
            } else if (nt.f8637c == 7) {
                if (u0.b.f17306a0 == 1) {
                    de.b3(new byte[]{46, -127, 1, 1, 0});
                } else {
                    de.b3(new byte[]{46, -127, 1, 0, 0});
                }
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17347o == 1 || o1.u.S("com.syu.fourcamera2") || SystemProperties.getBoolean("persist.lsec.fourcamera2.show", false)) {
                z.k.s(227, 144, 2, 41, 0);
            }
        }
    }

    public static void b3(byte[] bArr) {
        if (bArr == null || bArr.length <= 2) {
            return;
        }
        int length = bArr.length - 1;
        byte b2 = 0;
        for (int i2 = 1; i2 <= length; i2++) {
            b2 = (byte) (b2 + bArr[i2]);
        }
        bArr[length] = (byte) (b2 ^ 255);
        z.k.q(bArr);
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
        mtVar.f8312g = 1;
        mtVar.f8320o = 0;
        mtVar.f8314i = 0;
        int i2 = nt.f8637c;
        if (i2 == 4 || i2 == 5 || i2 == 6) {
            mtVar.f8306a = new String[]{"com.syu.canbus"};
        } else if (i2 == 7) {
            mtVar.f8306a = new String[]{"com.syu.canbus"};
            mtVar.f8314i = 1;
            if (App.c().getResources().getConfiguration().orientation == 1) {
                this.f7886a.f8314i = 0;
            }
        }
        u0.c.f17386m.a(this.f4414l, 1);
        l0.b0.a(this.f4416n);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 22) {
            qt.y0(98, ((255 & bArr[i2 + 2]) / 16) + ((bArr[i2 + 3] << 8) & 65280));
        }
        if (b2 == 32) {
            if (nt.a()) {
                byte b3 = bArr[i2 + 2];
                byte b4 = bArr[i2 + 3];
                this.f4405c = b3 & 255;
                int i4 = 0;
                while (true) {
                    iArr = this.f4406d;
                    if (i4 >= iArr.length) {
                        break;
                    }
                    int i5 = this.f4405c;
                    if (i5 == iArr[i4][0]) {
                        if (i5 == 0) {
                            break;
                        }
                        this.f4404b = i4;
                        break;
                    }
                    i4++;
                }
                switch (this.f4405c) {
                    case 65:
                        for (int i6 = 0; i6 < (b4 & 255); i6++) {
                            l0.b0.l0(8, 0);
                        }
                        l0.b0.l0(8, 1);
                        break;
                    case 66:
                        for (int i7 = 0; i7 < (b4 & 255); i7++) {
                            l0.b0.l0(7, 0);
                        }
                        l0.b0.l0(7, 1);
                        break;
                    case 67:
                        for (int i8 = 0; i8 < (b4 & 255); i8++) {
                            l0.b0.l0(30, 0);
                        }
                        l0.b0.l0(30, 1);
                        break;
                    case 68:
                        for (int i9 = 0; i9 < (b4 & 255); i9++) {
                            l0.b0.l0(31, 0);
                        }
                        l0.b0.l0(31, 1);
                        break;
                    default:
                        int i10 = b4 & 255;
                        if (i10 == 1) {
                            if (i4 < iArr.length) {
                                l0.b0.l0(iArr[i4][1], 0);
                            }
                        } else if (i10 == 0) {
                            int i11 = this.f4404b;
                            if (i11 < iArr.length && i11 != 255) {
                                l0.b0.l0(iArr[i11][1], 1);
                            }
                            this.f4404b = 255;
                        }
                        break;
                }
            }
            return;
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
            qt.y0(4, (b5 >> 5) & 1);
            qt.y0(3, (b5 >> 4) & 1);
            qt.y0(5, (b5 >> 3) & 1);
            qt.y0(0, (b5 >> 2) & 1);
            int i12 = i2 + 3;
            l0.c0.a((bArr[i12] >> 4) & 1, (bArr[i12] >> 3) & 1, 0);
            return;
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 56) {
            int i13 = i2 + 2;
            qt.y0(99, (bArr[i13] >> 0) & 3);
            qt.y0(100, (bArr[i13] >> 2) & 1);
            qt.y0(101, (bArr[i13] >> 3) & 1);
            qt.y0(102, (bArr[i13] >> 4) & 1);
            qt.y0(103, (bArr[i13] >> 5) & 1);
            qt.y0(104, (bArr[i13] >> 6) & 1);
            qt.y0(105, (bArr[i13] >> 7) & 1);
            int i14 = i2 + 3;
            qt.y0(106, (bArr[i14] >> 0) & 1);
            qt.y0(107, (bArr[i14] >> 1) & 1);
            qt.y0(108, (bArr[i14] >> 2) & 1);
            qt.y0(109, (bArr[i14] >> 3) & 1);
            qt.y0(110, (bArr[i14] >> 4) & 1);
            qt.y0(111, (bArr[i14] >> 5) & 7);
            int i15 = i2 + 4;
            qt.y0(112, (bArr[i15] >> 0) & 1);
            qt.y0(113, (bArr[i15] >> 1) & 1);
            qt.y0(114, (bArr[i15] >> 2) & 1);
            qt.y0(115, (bArr[i15] >> 3) & 1);
            qt.y0(116, (bArr[i15] >> 4) & 1);
            qt.y0(117, bArr[i2 + 5] & 255);
            return;
        }
        if (b2 == 57) {
            if ((bArr[i2 + 2] & 255) == 1) {
                qt.y0(1015, 1);
                return;
            } else {
                qt.y0(1015, 0);
                return;
            }
        }
        switch (b2) {
            case 39:
                if (nt.a()) {
                    int i16 = bArr[i2 + 2] & 255;
                    this.f4407e = i16;
                    this.f4408f = bArr[i2 + 3] & 255;
                    a3(i16);
                }
                break;
            case 40:
                int i17 = bArr[i2 + 2] & 255;
                int i18 = bArr[i2 + 3] & 255;
                int i19 = i2 + 4;
                int i20 = bArr[i19] & 255;
                int i21 = i2 + 5;
                int i22 = bArr[i21] & 255;
                int i23 = i2 + 6;
                byte b6 = bArr[i23];
                qt.y0(10, (i17 >> 7) & 1);
                qt.y0(11, (i17 >> 6) & 1);
                qt.y0(12, (i17 >> 5) & 1);
                qt.y0(13, (i17 >> 4) & 1);
                qt.y0(14, (i17 >> 2) & 1);
                qt.y0(15, (i17 >> 1) & 1);
                qt.y0(16, (i17 >> 0) & 1);
                qt.y0(18, (i18 >> 7) & 1);
                qt.y0(19, (i18 >> 6) & 1);
                qt.y0(20, (i18 >> 5) & 1);
                qt.y0(21, i18 & 15);
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    i20 = bArr[i21] & 255;
                    i22 = bArr[i19] & 255;
                }
                if (((bArr[i23] >> 0) & 1) == 0) {
                    if (i20 == 0) {
                        qt.y0(27, -2);
                    } else if (i20 == 31) {
                        qt.y0(27, -3);
                    } else if (i20 >= 1 && i20 <= 29) {
                        qt.y0(27, (i20 * 5) + 175);
                    } else if (i20 >= 32 && i20 <= 35) {
                        qt.y0(27, ((i20 - 32) * 5) + 160);
                    } else if (i20 < 36 || i20 > 37) {
                        qt.y0(27, -1);
                    } else {
                        qt.y0(27, ((i20 - 36) * 5) + 150);
                    }
                    if (i22 == 0) {
                        qt.y0(28, -2);
                    } else if (i22 == 31) {
                        qt.y0(28, -3);
                    } else if (i22 >= 1 && i22 <= 29) {
                        qt.y0(28, (i22 * 5) + 175);
                    } else if (i22 >= 32 && i22 <= 35) {
                        qt.y0(28, ((i22 - 32) * 5) + 160);
                    } else if (i22 < 36 || i22 > 37) {
                        qt.y0(28, -1);
                    } else {
                        qt.y0(28, ((i22 - 36) * 5) + 150);
                    }
                } else {
                    if (i20 == 0) {
                        qt.y0(27, -2);
                    } else if (i20 != 255) {
                        qt.y0(27, i20 * 10);
                    } else {
                        qt.y0(27, -3);
                    }
                    if (i22 == 0) {
                        qt.y0(28, -2);
                    } else if (i22 != 255) {
                        qt.y0(28, i22 * 10);
                    } else {
                        qt.y0(28, -3);
                    }
                }
                qt.y0(37, (bArr[i23] >> 0) & 1);
                break;
            case 41:
                qt.i(bArr[i2 + 2], bArr[i2 + 3], true, 4500);
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f4414l);
        l0.b0.p0(this.f4415m);
        l0.b0.o0(this.f4416n);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 118) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, 198, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 1) {
            z.k.s(227, 144, 2, iArr[0], iArr[1]);
        } else if (i2 == 2) {
            b3(new byte[]{46, -32, 2, (byte) iArr[0], (byte) iArr[1], 0});
        } else {
            if (i2 != 3) {
                return;
            }
            b3(new byte[]{46, -122, 2, (byte) iArr[0], (byte) iArr[1], 0});
        }
    }

    public final void a3(int i2) {
        int i3;
        int i4 = this.f4408f;
        if ((i4 & 1) != 0) {
            i3 = ((i4 & 2) != 0 ? 1000 - (i2 * 10) : (i2 * 10) + 1000) | 32768;
        } else {
            i3 = (i2 & 128) != 0 ? 1000 - ((((~i2) + 1) & 255) * 10) : (i2 * 10) + 1000;
        }
        u0.d.A3(i3);
    }

    @Override // o1.q
    public void b(byte[] bArr) {
        int i2;
        int i3;
        int i4;
        if (bArr != null) {
            a.f.p().t(LogType.CANBUS, "OBD Rcv--> " + o1.b0.d(bArr, 0, bArr.length));
        }
        if (bArr == null || bArr.length <= 0) {
            a.i.a0(100L);
            return;
        }
        if (this.f4410h + bArr.length > 1024) {
            this.f4410h = 0;
            this.f4411i = 0;
            this.f4412j = 0;
        }
        System.arraycopy(bArr, 0, this.f4409g, this.f4410h, bArr.length);
        int length = this.f4410h + bArr.length;
        this.f4410h = length;
        int i5 = this.f4412j;
        if (i5 != 0) {
            if (i5 >= length) {
                return;
            }
            byte b2 = this.f4409g[1];
            int i6 = 2;
            while (true) {
                i4 = this.f4412j;
                if (i6 >= i4) {
                    break;
                }
                b2 = (byte) (b2 + this.f4409g[i6]);
                i6++;
            }
            byte b3 = (byte) (b2 ^ 255);
            byte[] bArr2 = this.f4409g;
            if (b3 == bArr2[i4]) {
                U2(bArr2, 1, i4 - 1);
                z.a.f18158i.i(new byte[]{-1});
                this.f4411i = this.f4412j + 1;
            } else {
                this.f4411i = 1;
            }
            this.f4412j = 0;
        }
        int i7 = this.f4410h - 2;
        while (true) {
            i2 = this.f4411i;
            if (i2 >= i7) {
                break;
            }
            byte[] bArr3 = this.f4409g;
            if (bArr3[i2] == 46) {
                int i8 = bArr3[i2 + 2] & 255;
                this.f4412j = i8;
                int i9 = i8 + i2 + 3;
                this.f4412j = i9;
                if (i9 >= this.f4410h) {
                    this.f4412j = i9 - i2;
                    break;
                }
                byte b4 = bArr3[i2 + 1];
                int i10 = i2 + 2;
                while (true) {
                    i3 = this.f4412j;
                    if (i10 >= i3) {
                        break;
                    }
                    b4 = (byte) (b4 + this.f4409g[i10]);
                    i10++;
                }
                byte b5 = (byte) (b4 ^ 255);
                byte[] bArr4 = this.f4409g;
                if (b5 == bArr4[i3]) {
                    int i11 = this.f4411i;
                    U2(bArr4, i11 + 1, (i3 - i11) - 1);
                    z.a.f18158i.i(new byte[]{-1});
                    this.f4411i = this.f4412j;
                } else {
                    this.f4411i++;
                }
                this.f4412j = 0;
            }
            this.f4411i++;
        }
        if (i2 != 0) {
            int i12 = this.f4410h - i2;
            this.f4410h = i12;
            if (i12 != 0) {
                byte[] bArr5 = this.f4409g;
                System.arraycopy(bArr5, i2, bArr5, 0, i12);
            }
            this.f4411i = 0;
        }
    }
}
