package k0;

import android.drm.DrmManagerClient;
import android.os.SystemProperties;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class qg extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f9532b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f9533c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f9534d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[][] f9535e = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{5, 2}, new int[]{9, 18}, new int[]{10, 26}, new int[]{21, 6}, new int[]{22, -1}, new int[]{23, 1}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f9536f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f9537g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f9538h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f9539i = new a();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public long f9540j = -1;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f9541k = -1;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f9542l = new b();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f9543m = new c();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Runnable f9544n = new d();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public byte f9545o = 5;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f9546p = new e();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Runnable f9547q = new f();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17306a0 == 1 && u0.b.f17320f == 1) {
                l0.c0.m();
            }
        }
    }

    public class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Time f9549a;

        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            this.f9549a = time;
            time.setToNow();
            long millis = this.f9549a.toMillis(false) / 1000;
            int i2 = !DateFormat.is24HourFormat(App.c()) ? 1 : 0;
            if (qg.this.f9540j == millis && qg.this.f9541k == i2) {
                return;
            }
            qg.this.f9540j = millis;
            qg.this.f9541k = i2;
            Time time2 = this.f9549a;
            byte b2 = (byte) (time2.year + DrmManagerClient.ERROR_UNKNOWN);
            byte b3 = (byte) (time2.month + 1);
            byte b4 = (byte) time2.monthDay;
            byte b5 = (byte) time2.hour;
            byte b6 = (byte) time2.minute;
            byte b7 = (byte) time2.second;
            if (b5 >= 12) {
                z.k.s(227, -58, 7, 1, b5 & 127, b6, ((i2 << 6) & 64) | (b7 & 63) | 128, b2, b3, b4);
            } else {
                z.k.s(227, -58, 7, 1, b5 & 127, b6, (((i2 << 6) & 64) | (b7 & 63)) & 127, b2, b3, b4);
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            qg.this.j3(h0.c.f2437h);
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            qg.this.i3((byte) 112, u0.b.i3);
            qg.this.i3((byte) 113, u0.b.j3);
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17306a0 != 1) {
                z.k.s(227, 192, 8, 0, 0, 0, 0, 0, 0, 0, 0);
            } else {
                l0.b0.b(qg.this.f9547q);
                qg.this.f9545o = (byte) 5;
            }
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            qg qgVar = qg.this;
            byte b2 = (byte) (qgVar.f9545o - 1);
            qgVar.f9545o = b2;
            if (b2 > 0) {
                z.k.s(227, 129, 1, u0.b.f17306a0);
            } else {
                l0.b0.p0(qgVar.f9547q);
                qg.this.f9545o = (byte) 5;
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
        mtVar.f8322q = 1;
        if (nt.f8633a == 2556356) {
            mtVar.f8306a = new String[]{"com.syu.canbus"};
            mtVar.f8319n = 1;
            mtVar.f8313h = 2;
        } else {
            if (App.c().getResources().getConfiguration().orientation == 1) {
                this.f7886a.f8306a = new String[]{"com.syu.canbus"};
            } else {
                this.f7886a.f8306a = null;
            }
            mt mtVar2 = this.f7886a;
            mtVar2.f8319n = 0;
            mtVar2.f8313h = 0;
        }
        mt mtVar3 = this.f7886a;
        mtVar3.f8310e = 1;
        mtVar3.f8311f = 1;
        mtVar3.f8317l = 0;
        mtVar3.f8312g = 1;
        mtVar3.f8320o = 1;
        u0.c.f17386m.a(this.f9546p, 1);
        l0.b0.b(this.f9539i);
        u0.c.f17388o.a(this.f9544n, 1);
        u0.c.f17389p.a(this.f9544n, 1);
        qt.z(this.f9542l);
        h0.d.f2464c.a(this.f9543m, 1);
        h0.d.f2462a.a(this.f9543m, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int i4;
        byte b2 = bArr[i2];
        if (b2 == 40) {
            qt.y0(1032, ((bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280)) & 65535);
        }
        if (b2 == 41) {
            qt.i(bArr[i2 + 2], bArr[i2 + 3], true, 540);
            return;
        }
        if (b2 == 48) {
            this.f9545o = (byte) 0;
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 80) {
            qt.y0(99, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 3] & 255));
            qt.y0(98, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 5] & 255));
            qt.y0(101, ((bArr[i2 + 8] << 8) & 65280) | (bArr[i2 + 7] & 255));
            qt.y0(100, (65280 & (bArr[i2 + 10] << 8)) | (bArr[i2 + 9] & 255));
            qt.y0(102, bArr[i2 + 2] & 255);
            qt.y0(103, bArr[i2 + 11] & 255);
            return;
        }
        if (b2 == 81) {
            this.f9536f = bArr[i2 + 2];
            return;
        }
        switch (b2) {
            case 32:
                byte b3 = bArr[i2 + 2];
                byte b4 = bArr[i2 + 3];
                this.f9533c = b3 & 255;
                int i5 = 0;
                while (true) {
                    int[][] iArr = this.f9535e;
                    if (i5 < iArr.length) {
                        int i6 = this.f9533c;
                        if (i6 != iArr[i5][0]) {
                            i5++;
                        } else if (i6 != 0) {
                            this.f9532b = i5;
                        }
                    }
                }
                int i7 = b4 & 255;
                if (this.f9534d != i7) {
                    this.f9534d = i7;
                    if (i7 == 1 && this.f9533c == 22) {
                        z.k.s(227, -58, 2, 2, 1);
                    }
                }
                if (i7 == 1) {
                    int[][] iArr2 = this.f9535e;
                    if (i5 < iArr2.length) {
                        l0.b0.l0(iArr2[i5][1], 0);
                    }
                } else if (i7 == 0) {
                    int i8 = this.f9532b;
                    int[][] iArr3 = this.f9535e;
                    if (i8 < iArr3.length) {
                        i4 = 255;
                        if (i8 != 255) {
                            l0.b0.l0(iArr3[i8][1], 1);
                        }
                    } else {
                        i4 = 255;
                    }
                    this.f9532b = i4;
                }
                break;
            case 33:
                byte b5 = bArr[i2 + 2];
                byte b6 = bArr[i2 + 3];
                int i9 = i2 + 4;
                byte b7 = bArr[i9];
                int i10 = i2 + 5;
                byte b8 = bArr[i10];
                byte b9 = bArr[i2 + 6];
                byte b10 = bArr[i2 + 7];
                qt.y0(10, (b5 >> 7) & 1);
                qt.y0(11, (b5 >> 6) & 1);
                qt.y0(12, (b5 >> 5) & 1);
                qt.y0(16, (b5 >> 4) & 1);
                qt.y0(13, (b5 >> 3) & 1);
                qt.y0(14, (b5 >> 2) & 1);
                qt.y0(15, (b5 >> 1) & 1);
                qt.y0(18, (b6 >> 7) & 1);
                qt.y0(19, (b6 >> 6) & 1);
                int i11 = b6 >> 5;
                qt.y0(20, i11 & 1);
                qt.y0(77, i11 & 7);
                qt.y0(21, 15 & b6);
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    b7 = bArr[i10];
                    b8 = bArr[i9];
                }
                if (b7 == 0) {
                    qt.y0(27, -2);
                } else if (b7 == 127) {
                    qt.y0(27, -3);
                } else {
                    qt.y0(27, b7);
                }
                if (b8 == 0) {
                    qt.y0(28, -2);
                } else if (b8 == 127) {
                    qt.y0(28, -3);
                } else {
                    qt.y0(28, b8);
                }
                qt.y0(37, (b9 >> 6) & 1);
                qt.y0(65, (b9 >> 4) & 1);
                qt.y0(53, (b9 >> 2) & 1);
                int i12 = b10 & 255;
                if (i12 != 255) {
                    u0.d.A3((i12 & 128) == 128 ? 1000 - ((256 - i12) * 10) : (i12 * 10) + 1000);
                } else {
                    u0.d.A3(0);
                }
                break;
            case 34:
                u0.d.R2(a3(bArr[i2 + 2] & 255));
                u0.d.S2(a3(bArr[i2 + 3] & 255));
                u0.d.T2(a3(bArr[i2 + 4] & 255));
                u0.d.U2(a3(bArr[i2 + 5] & 255));
                break;
            case 35:
                int i13 = i2 + 2;
                int i14 = bArr[i13] & 255;
                int i15 = i2 + 3;
                int i16 = bArr[i15] & 255;
                int i17 = i2 + 4;
                int i18 = bArr[i17] & 255;
                int i19 = i2 + 5;
                int i20 = bArr[i19] & 255;
                if (i14 == 0 && i16 == 0 && i18 == 0 && i20 == 0) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i14 || l0.c0.f13014h != i16 || l0.c0.f13015i != i18 || l0.c0.f13016j != i20) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i14;
                l0.c0.f13014h = i16;
                l0.c0.f13015i = i18;
                l0.c0.f13016j = i20;
                u0.d.D2(a3(bArr[i13] & 255));
                u0.d.E2(a3(bArr[i15] & 255));
                u0.d.F2(a3(bArr[i17] & 255));
                u0.d.G2(a3(bArr[i19] & 255));
                break;
            case 36:
                int i21 = i2 + 2;
                byte b11 = bArr[i21];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b11 >> 7) & 1);
                    qt.y0(2, (b11 >> 6) & 1);
                } else {
                    qt.y0(1, (b11 >> 6) & 1);
                    qt.y0(2, (b11 >> 7) & 1);
                }
                qt.y0(3, (b11 >> 4) & 1);
                qt.y0(4, (b11 >> 5) & 1);
                qt.y0(5, (b11 >> 3) & 1);
                qt.y0(0, (b11 >> 2) & 1);
                if (qt.k0() && !l0.c0.f13022p) {
                    int i22 = (bArr[i21] >> 1) & 1;
                    int i23 = (bArr[i21] >> 0) & 1;
                    boolean z2 = i22 == 0 && i23 == 1;
                    boolean z3 = i22 == 1 && i23 == 0;
                    int i24 = (i22 == 1 && i23 == 1) ? 1 : 0;
                    u0.i.l3().g4(4096, z2);
                    if (z2) {
                        l0.c0.f13026t = 1;
                    } else {
                        l0.c0.f13026t = 0;
                    }
                    u0.i.l3().g4(8192, z3);
                    if (z3) {
                        l0.c0.f13024r = 1;
                    } else {
                        l0.c0.f13024r = 0;
                    }
                    u0.d.I3(139, i24);
                    if (i24 == 0) {
                        l0.c0.f13028v = 0;
                    } else {
                        l0.c0.f13028v = 1;
                    }
                } else if (nt.f8633a == 2556356) {
                    int i25 = i2 + 3;
                    if (this.f9537g != ((bArr[i25] >> 0) & 1)) {
                        int i26 = (bArr[i25] >> 0) & 1;
                        this.f9537g = i26;
                        if (i26 != 1) {
                            qt.a(0);
                        } else {
                            qt.a(1);
                        }
                    }
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f9546p);
        l0.b0.p0(this.f9547q);
        l0.b0.p0(this.f9539i);
        qt.q0(this.f9542l);
        u0.c.f17388o.d(this.f9544n);
        u0.c.f17389p.d(this.f9544n);
        h0.d.f2464c.d(this.f9543m);
        h0.d.f2462a.d(this.f9543m);
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
        if (i2 == 0) {
            z.k.s(227, 232, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 1003) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (iArr[0] == 0) {
                z.k.s(227, -58, 2, 2, 1);
                return;
            } else {
                if (iArr[0] == 1) {
                    z.k.s(227, -58, 2, 2, 2);
                    return;
                }
                return;
            }
        }
        if (i2 == 1005) {
            int i3 = iArr[0] & 255;
            if (i3 == 254) {
                z.k.s(227, -58, 2, 2, 5);
                return;
            } else {
                if (i3 != 255) {
                    return;
                }
                z.k.s(227, -58, 2, 2, 6);
                return;
            }
        }
        if (i2 == 1029 && this.f9536f != 0) {
            int iW = (iArr[1] * 800) / 800;
            int i4 = (iArr[2] * 480) / 480;
            if (u0.b.f17347o == 1) {
                iW = (iArr[1] * 800) / a.f.w();
                i4 = (iArr[2] * 480) / a.f.i();
            }
            int i5 = iW & 255;
            int i6 = (iW >> 8) & 255;
            int i7 = i4 & 255;
            int i8 = 255 & (i4 >> 8);
            z.k.s(227, -48, 5, 1, i5, i6, i7, i8);
            z.k.s(227, -48, 5, 0, i5, i6, i7, i8);
        }
    }

    public final int a3(int i2) {
        if (i2 == 1) {
            return 9;
        }
        if (i2 == 2) {
            return 6;
        }
        if (i2 != 3) {
            return i2 != 4 ? 15 : 0;
        }
        return 3;
    }

    public final void i3(byte b2, String str) {
        if (str == null) {
            str = "Unkown";
        }
        int[] iArr = new int[24];
        for (int i2 = 0; i2 < 24; i2++) {
            iArr[i2] = 0;
        }
        iArr[0] = 227;
        iArr[1] = b2;
        iArr[2] = 21;
        iArr[3] = 17;
        int length = str.length() <= 10 ? str.length() : 10;
        for (int i3 = 0; i3 < length; i3++) {
            int iCodePointAt = str.codePointAt(i3);
            int i4 = i3 << 1;
            iArr[i4 + 4] = (iCodePointAt >> 8) & 255;
            iArr[i4 + 5] = iCodePointAt & 255;
        }
        z.k.s(iArr);
    }

    /* JADX WARN: Code duplicated, block: B:9:0x0014  */
    public final void j3(String str) {
        int i2;
        int i3 = h0.c.E;
        if (i3 == 2) {
            i2 = 2;
        } else if (i3 == 3) {
            i2 = 3;
        } else if (i3 == 4) {
            i2 = 1;
        } else if (i3 != 5) {
            i2 = 0;
        } else {
            i2 = 3;
        }
        if (str == null) {
            z.k.s(227, 197, 2, i2, 1);
            return;
        }
        byte[] bArr = new byte[22];
        byte[] bytes = str.getBytes();
        int length = bytes.length > 22 ? 22 : bytes.length;
        for (int i4 = 0; i4 < length; i4++) {
            bArr[i4] = bytes[i4];
        }
        for (int i5 = length; i5 < 22; i5++) {
            bArr[i5] = 0;
        }
        int[] iArr = new int[27];
        iArr[0] = -29;
        iArr[1] = -59;
        iArr[2] = 24;
        iArr[3] = i2;
        iArr[4] = 1;
        for (int i6 = 0; i6 < length; i6++) {
            iArr[i6 + 5] = bArr[i6];
        }
        z.k.s(iArr);
    }
}
