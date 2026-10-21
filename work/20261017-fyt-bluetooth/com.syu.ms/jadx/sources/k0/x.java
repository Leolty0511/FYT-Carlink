package k0;

import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class x extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f11917b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f11920e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f11918c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f11919d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 18}, new int[]{10, 26}, new int[]{11, 12}, new int[]{12, 18}, new int[]{13, 26}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f11921f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f11922g = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{7, 54}, new int[]{8, 13}, new int[]{9, 18}, new int[]{10, 26}, new int[]{11, 9}, new int[]{12, 1}, new int[]{49, 0}, new int[]{50, 6}, new int[]{51, 74}, new int[]{52, 75}, new int[]{53, -1}, new int[]{54, 53}, new int[]{55, 18}, new int[]{56, 40}, new int[]{57, 41}, new int[]{58, 42}, new int[]{59, 43}, new int[]{60, 44}, new int[]{61, 45}, new int[]{62, 29}, new int[]{63, 25}, new int[]{64, 5}, new int[]{65, 16}, new int[]{66, 54}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f11923h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f11924i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f11925j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f11926k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f11927l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f11928m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f11929n = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f11930o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f11931p = 0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public byte f11932q = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Runnable f11933r = new a();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public Runnable f11934s = new b();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public Runnable f11935t = new c();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public Runnable f11936u = new d();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public Runnable f11937v = new e();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            x xVar = x.this;
            byte b2 = (byte) (xVar.f11932q + 1);
            xVar.f11932q = b2;
            if (b2 > 5) {
                l0.b0.o0(xVar.f11933r);
                x.this.f11932q = (byte) 0;
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            x.this.a3();
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            x.this.c3();
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17347o == 1) {
                z.k.s(227, 144, 2, 34, 0);
                z.k.s(227, 144, 2, 35, 0);
                z.k.s(227, 144, 2, 38, 0);
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, 200, 4, 0, !DateFormat.is24HourFormat(App.c()) ? 1 : 0, time.hour, time.minute);
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
        z.k.s(227, 201, 2, 1, 1);
        qt.z(this.f11937v);
        if (nt.a()) {
            qt.z(this.f11934s);
            y0.g.f18094d.a(this.f11935t, 1);
            y0.g.f18095e.a(this.f11935t, 1);
            w0.e.f17815a.a(this.f11934s, 1);
            u0.c.f17379f.a(this.f11936u, 1);
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int[][] iArr2;
        byte b2;
        byte b3 = bArr[i2];
        if (b3 == -46) {
            byte b4 = bArr[i2 + 2];
            int i4 = bArr[i2 + 3] & 255;
            qt.y0(105, (b4 >> 7) & 1);
            qt.y0(106, (b4 >> 0) & 15);
            qt.y0(107, (i4 * 3) >> 1);
        }
        if (b3 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b3 == 41) {
            nt.a();
            return;
        }
        if (b3 == 42) {
            byte b5 = bArr[i2 + 2];
            byte b6 = bArr[i2 + 3];
            this.f11921f = b5 & 255;
            int i5 = 0;
            while (true) {
                iArr = this.f11922g;
                if (i5 >= iArr.length) {
                    break;
                }
                int i6 = this.f11921f;
                if (i6 == iArr[i5][0]) {
                    if (i6 == 0) {
                        break;
                    }
                    this.f11920e = i5;
                    break;
                }
                i5++;
            }
            int i7 = b6 & 255;
            if (i7 == 1) {
                if (i5 < iArr.length) {
                    l0.b0.l0(iArr[i5][1], 0);
                    return;
                }
                return;
            } else {
                if (i7 == 0) {
                    int i8 = this.f11920e;
                    if (i8 < iArr.length && i8 != 255) {
                        l0.b0.l0(iArr[i8][1], 1);
                    }
                    this.f11920e = 255;
                    return;
                }
                return;
            }
        }
        switch (b3) {
            case 32:
                if (nt.a()) {
                    byte b7 = bArr[i2 + 2];
                    byte b8 = bArr[i2 + 3];
                    this.f11918c = b7 & 255;
                    int i9 = 0;
                    while (true) {
                        iArr2 = this.f11919d;
                        if (i9 < iArr2.length) {
                            int i10 = this.f11918c;
                            if (i10 != iArr2[i9][0]) {
                                i9++;
                            } else if (i10 != 0) {
                                this.f11917b = i9;
                            }
                        }
                    }
                    if (this.f11918c == 10) {
                        if ((b8 & 255) == 1) {
                            int i11 = h0.c.E;
                            if (i11 == 3 || i11 == 4 || i11 == 5) {
                                l0.b0.l0(26, 0);
                                l0.b0.l0(26, 1);
                            } else {
                                l0.b0.l0(6, 0);
                                l0.b0.l0(6, 1);
                            }
                        }
                        break;
                    } else {
                        int i12 = b8 & 255;
                        if (i12 != 1) {
                            if (i12 == 0) {
                                int i13 = this.f11917b;
                                if (i13 < iArr2.length && i13 != 255) {
                                    l0.b0.l0(iArr2[i13][1], 1);
                                    l0.b0.o0(this.f11933r);
                                    this.f11932q = (byte) 0;
                                }
                                this.f11917b = 255;
                            }
                            break;
                        } else if (i9 < iArr2.length && (b2 = this.f11932q) == 0) {
                            this.f11932q = (byte) (b2 + 1);
                            l0.b0.l0(iArr2[i9][1], 0);
                            l0.b0.a(this.f11933r);
                            break;
                        }
                    }
                }
                break;
            case 33:
                byte b9 = bArr[i2 + 2];
                int i14 = i2 + 4;
                byte b10 = bArr[i14];
                int i15 = i2 + 5;
                byte b11 = bArr[i15];
                int i16 = i2 + 6;
                byte b12 = bArr[i16];
                int i17 = i2 + 7;
                byte b13 = bArr[i17];
                int i18 = i2 + 8;
                byte b14 = bArr[i18];
                int i19 = i2 + 9;
                byte b15 = bArr[i19];
                int i20 = i2 + 10;
                byte b16 = bArr[i20];
                int i21 = i2 + 11;
                byte b17 = bArr[i21];
                this.f11923h = b9 & 255;
                this.f11924i = b10 & 255;
                this.f11925j = b11 & 255;
                this.f11926k = b13 & 255;
                this.f11927l = b12 & 255;
                this.f11928m = b15 & 255;
                this.f11929n = b14 & 255;
                this.f11930o = b16 & 255;
                this.f11931p = b17 & 255;
                int i22 = b9 & DhcpPacket.DHCP_DOMAIN_NAME;
                qt.y0(98, i22);
                int i23 = (b9 >> 4) & 3;
                qt.y0(99, i23);
                if (i22 == 2 || i22 == 0) {
                    qt.y0(100, 16777215);
                    qt.y0(101, 16777215);
                    qt.y0(102, 16777215);
                    qt.y0(103, 16777215);
                    qt.y0(104, 0);
                } else {
                    qt.y0(100, ((bArr[i14] << 8) & 65280) | (bArr[i15] & 255));
                    qt.y0(101, ((bArr[i16] << 8) & 65280) | (bArr[i17] & 255));
                    qt.y0(102, ((bArr[i18] << 8) & 65280) | (bArr[i19] & 255));
                    if (i23 == 2) {
                        qt.y0(103, bArr[i20] & 255);
                    } else {
                        qt.y0(103, 16777215);
                    }
                    qt.y0(104, bArr[i21] & 255);
                }
                break;
            case 34:
                nt.a();
                break;
            case 35:
                nt.a();
                break;
            case 36:
                byte b18 = bArr[i2 + 2];
                byte b19 = bArr[i2 + 3];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b18 >> 7) & 1);
                    qt.y0(2, (b18 >> 6) & 1);
                } else {
                    qt.y0(2, (b18 >> 7) & 1);
                    qt.y0(1, (b18 >> 6) & 1);
                }
                qt.y0(4, (b18 >> 5) & 1);
                qt.y0(3, (b18 >> 4) & 1);
                qt.y0(5, (b18 >> 3) & 1);
                qt.y0(0, (b19 >> 7) & 1);
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        qt.q0(this.f11937v);
        qt.q0(this.f11934s);
        y0.g.f18094d.d(this.f11935t);
        y0.g.f18095e.d(this.f11935t);
        w0.e.f17815a.d(this.f11934s);
        u0.c.f17379f.d(this.f11936u);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 108) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 != 0) {
            if (i2 != 1) {
                if (i2 != 2) {
                    return;
                }
                z.k.s(227, 201, 2, 1, 1);
                return;
            } else {
                if (T2(iArr, 1)) {
                    if (iArr[0] < 1) {
                        iArr[0] = 1;
                    } else if (iArr[0] > 15) {
                        iArr[0] = 15;
                    }
                    z.k.s(227, 201, 2, 2, iArr[0]);
                    return;
                }
                return;
            }
        }
        if (T2(iArr, 1)) {
            int i3 = iArr[0];
            if (i3 == 0) {
                z.k.s(227, 197, 2, 0, 0);
                return;
            }
            if (i3 == 1) {
                z.k.s(227, 197, 2, 1, 0);
                return;
            }
            if (i3 == 2) {
                z.k.s(227, 197, 2, 2, 0);
            } else if (i3 == 3) {
                z.k.s(227, 197, 2, 3, 0);
            } else {
                if (i3 != 4) {
                    return;
                }
                z.k.s(227, 197, 2, 4, 0);
            }
        }
    }

    public final void a3() {
        b3();
        int i2 = 0;
        switch (u0.b.D) {
            case 0:
            case 2:
            case 3:
            case 5:
            case 6:
            case 11:
            case 12:
            case 14:
                break;
            case 1:
                int[] iArr = new int[6];
                iArr[0] = 194;
                iArr[1] = 4;
                int i3 = w0.d.f17798j & 255;
                int i4 = w0.d.f17796h;
                if (i4 != 0 && i4 != 1) {
                    switch (i4) {
                        case 65536:
                            iArr[2] = 1;
                            break;
                        case 65537:
                            iArr[2] = 2;
                            break;
                        case 65538:
                            iArr[2] = 0;
                            break;
                    }
                } else {
                    iArr[2] = 16;
                }
                int i5 = w0.d.f17797i;
                iArr[3] = i5 & 255;
                iArr[4] = (i5 >> 8) & 255;
                int i6 = i3 % 6;
                if (i6 == 0) {
                    iArr[5] = 6;
                } else {
                    iArr[5] = i6;
                }
                int[] iArr2 = new int[7];
                iArr2[0] = 227;
                while (i2 < 6) {
                    int i7 = i2 + 1;
                    iArr2[i7] = iArr[i2];
                    i2 = i7;
                }
                z.k.s(iArr2);
                break;
            case 4:
                int[] iArr3 = new int[8];
                iArr3[0] = 195;
                iArr3[1] = 6;
                if (o0.e.H == 1) {
                    iArr3[2] = o0.e.C & 255;
                    iArr3[3] = o0.e.B & 255;
                    iArr3[4] = 0;
                    iArr3[5] = 0;
                    int i8 = o0.e.f16794r;
                    iArr3[6] = i8 / 60;
                    iArr3[7] = i8 % 60;
                } else {
                    int i9 = o0.e.C;
                    iArr3[2] = i9 & 255;
                    iArr3[3] = (i9 >> 8) & 255;
                    int i10 = o0.e.B;
                    iArr3[4] = i10 & 255;
                    iArr3[5] = (i10 >> 8) & 255;
                    int i11 = o0.e.f16794r;
                    iArr3[6] = i11 / 60;
                    iArr3[7] = i11 % 60;
                }
                int[] iArr4 = new int[9];
                iArr4[0] = 227;
                while (i2 < 8) {
                    int i12 = i2 + 1;
                    iArr4[i12] = iArr3[i2];
                    i2 = i12;
                }
                z.k.s(iArr4);
                break;
            case 7:
            case 13:
                int[] iArr5 = new int[8];
                iArr5[0] = 195;
                iArr5[1] = 6;
                if ((this.f11923h & 48) == 16) {
                    iArr5[2] = this.f11926k;
                    iArr5[3] = this.f11927l;
                    iArr5[4] = this.f11928m;
                    iArr5[5] = this.f11929n;
                    iArr5[6] = this.f11931p;
                    iArr5[7] = 0;
                } else {
                    iArr5[2] = this.f11930o;
                    iArr5[3] = this.f11931p;
                    iArr5[4] = this.f11926k;
                    iArr5[5] = this.f11927l;
                    iArr5[6] = this.f11924i;
                    iArr5[7] = this.f11925j;
                }
                int[] iArr6 = new int[9];
                iArr6[0] = 227;
                while (i2 < 8) {
                    int i13 = i2 + 1;
                    iArr6[i13] = iArr5[i2];
                    i2 = i13;
                }
                z.k.s(iArr6);
                break;
            case 8:
            case 10:
                int i14 = u0.b.s3;
                int i15 = u0.b.r3;
                int i16 = u0.b.t3;
                int[] iArr7 = {195, 6, i14 & 255, (i14 >> 8) & 255, i15 & 255, (i15 >> 8) & 255, i16 / 60, i16 % 60};
                int[] iArr8 = new int[9];
                iArr8[0] = 227;
                while (i2 < 8) {
                    int i17 = i2 + 1;
                    iArr8[i17] = iArr7[i2];
                    i2 = i17;
                }
                z.k.s(iArr8);
                break;
            case 9:
            default:
                z.k.s(227, 194, 4, 0, 0, 0, 0);
                z.k.s(227, 195, 6, 0, 0, 0, 0, 0, 0);
                break;
        }
    }

    /* JADX WARN: Code duplicated, block: B:31:0x008a  */
    public final void b3() {
        int[] iArr = new int[4];
        int i2 = 0;
        iArr[0] = 192;
        iArr[1] = 2;
        int i3 = u0.b.D;
        if (i3 == 10) {
            iArr[2] = 8;
            iArr[3] = 17;
        } else if (i3 != 13) {
            switch (i3) {
                case 1:
                    iArr[2] = 1;
                    iArr[3] = 1;
                    break;
                case 2:
                case 3:
                    iArr[2] = 5;
                    iArr[3] = 64;
                    break;
                case 4:
                    int i4 = o0.e.H;
                    if (i4 == 1) {
                        iArr[2] = 2;
                        iArr[3] = 16;
                    } else if (i4 == 2 || i4 == 3) {
                        iArr[2] = 8;
                        iArr[3] = 17;
                    }
                    break;
                case 5:
                    iArr[2] = 7;
                    iArr[3] = 48;
                    break;
                case 6:
                    iArr[2] = 7;
                    iArr[3] = 48;
                    break;
                case 7:
                    if (n0.j4.f16464b == 21 || (this.f11923h & 48) == 16) {
                        iArr[2] = 6;
                        iArr[3] = 18;
                    } else {
                        iArr[2] = 8;
                        iArr[3] = 19;
                    }
                    break;
                case 8:
                    iArr[2] = 8;
                    iArr[3] = 17;
                    break;
                default:
                    iArr[2] = 12;
                    iArr[3] = 48;
                    break;
            }
        } else if ((this.f11923h & 48) == 16) {
            iArr[2] = 6;
            iArr[3] = 18;
        } else {
            iArr[2] = 8;
            iArr[3] = 19;
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

    public final void c3() {
        int i2 = 0;
        int[] iArr = {196, 1, y0.f.C0};
        if (y0.f.f18055i == 1) {
            iArr[2] = 0;
        }
        int[] iArr2 = new int[4];
        iArr2[0] = 227;
        while (i2 < 3) {
            int i3 = i2 + 1;
            iArr2[i3] = iArr[i2];
            i2 = i3;
        }
        z.k.s(iArr2);
    }
}
