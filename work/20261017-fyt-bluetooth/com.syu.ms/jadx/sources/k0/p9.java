package k0;

import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class p9 extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f9125b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f9126c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f9127d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 12}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 18}, new int[]{10, 26}, new int[]{18, 16}, new int[]{19, 12}, new int[]{20, 25}, new int[]{21, 6}, new int[]{22, 16}, new int[]{27, 0}, new int[]{32, 49}, new int[]{33, 40}, new int[]{34, 41}, new int[]{35, 42}, new int[]{36, 43}, new int[]{37, 44}, new int[]{38, 45}, new int[]{39, 46}, new int[]{40, 47}, new int[]{41, 48}, new int[]{49, 5}, new int[]{50, 1}, new int[]{51, 5}, new int[]{52, 1}, new int[]{53, 58}, new int[]{54, 18}, new int[]{55, 62}, new int[]{56, 6}, new int[]{57, 24}, new int[]{58, 54}, new int[]{59, 0}, new int[]{60, 67}, new int[]{61, 68}, new int[]{62, 21}, new int[]{63, 25}, new int[]{64, 38}, new int[]{65, 8}, new int[]{66, 7}, new int[]{67, 30}, new int[]{68, 31}, new int[]{69, 6}, new int[]{70, 5}, new int[]{71, 2}, new int[]{72, 16}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f9128e = new a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f9129f = new b();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f9130g = new c();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public byte f9131h = 8;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f9132i = new d();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f9133j = new e();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.c0.L();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            z.k.s(227, 132, 2, 1, 1);
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17347o == 1 || o1.u.S("com.syu.fourcamera2") || SystemProperties.getBoolean("persist.lsec.fourcamera2.show", false)) {
                z.k.s(227, 144, 4, 41, 0, 0, 0);
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(p9.this.f9133j);
            p9.this.f9131h = (byte) 8;
            int i2 = nt.f8637c;
            if (i2 != 1 && i2 != 3 && i2 != 5 && i2 != 7 && i2 != 20) {
                switch (i2) {
                }
            }
            z.k.s(227, 132, 2, 2, 0);
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            p9 p9Var = p9.this;
            byte b2 = (byte) (p9Var.f9131h - 1);
            p9Var.f9131h = b2;
            if (b2 <= 0) {
                l0.b0.p0(p9Var.f9133j);
                p9.this.f9131h = (byte) 9;
                return;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (u0.b.f17306a0 != 1) {
                z.k.s(227, 132, 2, 2, 0);
                return;
            }
            z.k.s(227, 144, 4, 48, 0, 0, 0);
            int i2 = nt.f8637c;
            if (i2 != 1 && i2 != 3 && i2 != 5 && i2 != 7 && i2 != 20) {
                switch (i2) {
                }
                return;
            }
            if (p9.this.f9131h <= 3) {
                z.k.s(227, 132, 2, 2, 24);
            } else {
                z.k.s(227, 132, 2, 2, 0);
            }
        }
    }

    @Override // k0.lt
    public int[] K2() {
        return new int[]{8, 8};
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x004e  */
    @Override // k0.lt
    public void S2() {
        w0.e.f17815a.a(this.f9128e, 1);
        u0.c.f17374a.a(this.f9128e, 1);
        l0.b0.b(this.f9128e);
        qt.x(this.f9130g);
        u0.c.f17386m.a(this.f9132i, 1);
        mt mtVar = this.f7886a;
        mtVar.f8310e = 1;
        mtVar.f8311f = 0;
        mtVar.f8314i = 0;
        mtVar.f8312g = 0;
        mtVar.f8307b = 0;
        mtVar.f8308c = 0;
        mtVar.f8309d = 0;
        int i2 = nt.f8637c;
        if (i2 != 1 && i2 != 3 && i2 != 5 && i2 != 7 && i2 != 20) {
            switch (i2) {
                case 9:
                case 13:
                case 14:
                case 15:
                case 16:
                case 17:
                case 18:
                    l0.b0.b(this.f9129f);
                    break;
                case 10:
                case 11:
                case 12:
                    mtVar.f8314i = 1;
                    l0.b0.b(this.f9129f);
                    break;
            }
        } else {
            l0.b0.b(this.f9129f);
        }
        switch (nt.f8637c) {
            case 0:
            case 1:
            case 3:
            case 4:
            case 5:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
                this.f7886a.f8306a = new String[]{"com.syu.canbus"};
                break;
            case 2:
            case 6:
            default:
                this.f7886a.f8306a = null;
                break;
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 23) {
            qt.y0(99, bArr[i2 + 2] & 255);
            qt.y0(100, bArr[i2 + 3] & 255);
            qt.y0(101, bArr[i2 + 4] & 255);
            qt.y0(102, bArr[i2 + 5] & 255);
            qt.y0(103, bArr[i2 + 6] & 255);
            qt.y0(104, bArr[i2 + 7] & 255);
            qt.y0(105, bArr[i2 + 8] & 255);
        }
        if (b2 == 32) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f9126c = b3 & 255;
            int i4 = 0;
            while (true) {
                iArr = this.f9127d;
                if (i4 >= iArr.length) {
                    break;
                }
                int i5 = this.f9126c;
                if (i5 == iArr[i4][0]) {
                    if (i5 == 0) {
                        break;
                    }
                    this.f9125b = i4;
                    break;
                }
                i4++;
            }
            switch (this.f9126c) {
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
                        int i11 = this.f9125b;
                        if (i11 < iArr.length && i11 != 255) {
                            l0.b0.l0(iArr[i11][1], 1);
                        }
                        this.f9125b = 255;
                    }
                    break;
            }
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 40) {
            int i12 = i2 + 2;
            qt.y0(29, (bArr[i12] >> 4) & 15);
            qt.y0(30, (bArr[i12] >> 0) & 15);
            int i13 = i2 + 3;
            qt.y0(66, (bArr[i13] >> 7) & 1);
            qt.y0(106, (bArr[i13] >> 6) & 1);
            qt.y0(107, (bArr[i13] >> 5) & 1);
            qt.y0(108, (bArr[i13] >> 4) & 1);
            return;
        }
        if (b2 == 41) {
            qt.i(bArr[i2 + 2], bArr[i2 + 3], false, 1000);
            return;
        }
        if (b2 == 64) {
            if ((bArr[i2 + 2] & 255) != 64) {
                return;
            }
            qt.y0(98, (bArr[i2 + 5] >> 1) & 1);
            return;
        }
        if (b2 == 65) {
            int i14 = i2 + 2;
            l0.c0.a((bArr[i14] >> 6) & 1, (bArr[i14] >> 7) & 1, 0);
            return;
        }
        switch (b2) {
            case 34:
                u0.d.R2(l0.c0.k1(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.m1(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.m1(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.k1(bArr[i2 + 5] & 255));
                break;
            case 35:
                int i15 = i2 + 2;
                int i16 = bArr[i15] & 255;
                int i17 = i2 + 3;
                int i18 = bArr[i17] & 255;
                int i19 = i2 + 4;
                int i20 = bArr[i19] & 255;
                int i21 = i2 + 5;
                int i22 = bArr[i21] & 255;
                if (l0.c0.f13013g != i16 || l0.c0.f13014h != i18 || l0.c0.f13015i != i20 || l0.c0.f13016j != i22) {
                    l0.c0.f13013g = i16;
                    l0.c0.f13014h = i18;
                    l0.c0.f13015i = i20;
                    l0.c0.f13016j = i22;
                    if (u0.b.f17347o == 0) {
                        u0.d.C2(1);
                        l0.c0.f13017k = 4;
                        l0.b0.b(l0.c0.f13018l);
                    }
                }
                u0.d.D2(l0.c0.k1(bArr[i15] & 255));
                u0.d.E2(l0.c0.m1(bArr[i17] & 255));
                u0.d.F2(l0.c0.m1(bArr[i19] & 255));
                u0.d.G2(l0.c0.k1(bArr[i21] & 255));
                break;
            case 36:
                byte b5 = bArr[i2 + 2];
                if ((b5 & 1) != 0) {
                    if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                        qt.y0(1, (b5 >> 7) & 1);
                        qt.y0(2, (b5 >> 6) & 1);
                    } else {
                        qt.y0(1, (b5 >> 6) & 1);
                        qt.y0(2, (b5 >> 7) & 1);
                    }
                    qt.y0(3, (b5 >> 4) & 1);
                    qt.y0(4, (b5 >> 5) & 1);
                    qt.y0(5, (b5 >> 3) & 1);
                }
                switch (nt.f8633a) {
                    case 524575:
                    case 590111:
                    case 655647:
                    case 721183:
                    case 786719:
                    case 852255:
                    case 917791:
                    case 983327:
                    case 1048863:
                    case 1114399:
                    case 1179935:
                        int i23 = i2 + 3;
                        l0.c0.a((bArr[i23] >> 6) & 1, (bArr[i23] >> 7) & 1, 0);
                        break;
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        w0.e.f17815a.d(this.f9128e);
        u0.c.f17374a.d(this.f9128e);
        l0.b0.p0(this.f9128e);
        qt.o0(this.f9130g);
        u0.c.f17386m.d(this.f9132i);
        l0.b0.p0(this.f9133j);
        l0.b0.p0(this.f9129f);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 109) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, -58, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 != 1) {
            if (i2 != 2) {
                return;
            }
            z.k.s(227, -123, 1, iArr[0]);
        } else if (iArr[0] == 8) {
            z.k.s(227, -124, 2, 8, 170);
        } else {
            z.k.s(227, -124, 2, iArr[0], iArr[1]);
        }
    }
}
