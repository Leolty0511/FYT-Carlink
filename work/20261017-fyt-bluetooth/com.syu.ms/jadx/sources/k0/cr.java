package k0;

import android.net.ProxyProperties;
import android.net.wifi.BatchedScanSettings;
import android.os.SystemProperties;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class cr extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f4207b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f4210e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f4208c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f4209d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 18}, new int[]{10, 26}, new int[]{11, 6}, new int[]{12, 29}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f4211f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f4212g = {new int[]{1, 0}, new int[]{3, 9}, new int[]{4, 2}, new int[]{5, 21}, new int[]{6, 3}, new int[]{7, 4}, new int[]{8, 55}, new int[]{9, 12}, new int[]{10, 1}, new int[]{11, 38}, new int[]{12, 6}, new int[]{13, 18}, new int[]{14, 13}, new int[]{16, 7}, new int[]{17, 8}, new int[]{18, 31}, new int[]{19, 30}, new int[]{44, 16}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f4213h = -1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f4214i = false;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public String f4215j = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f4216k = new a();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f4217l = -1;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f4218m = -1;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f4219n = -1;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Runnable f4220o = new b();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f4221p = new c();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f4222q = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public String f4223r = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public String f4224s = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public Runnable f4225t = new d();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public Runnable f4226u = new e();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public Runnable f4227v = new f();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f4228w = 0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public Runnable f4229x = new g();

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public Runnable f4230y = new h();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2;
            boolean z2;
            int i3 = h0.c.E;
            boolean z3 = true;
            boolean z4 = i3 == 5 || i3 == 3 || i3 == 4;
            switch (i3) {
                case 0:
                default:
                    i2 = 0;
                    break;
                case 1:
                case 2:
                case 6:
                    i2 = 2;
                    break;
                case 3:
                case 4:
                case 5:
                    i2 = 1;
                    break;
            }
            if (cr.this.f4213h != i2) {
                cr.this.f4213h = i2;
                z2 = true;
            } else {
                z2 = false;
            }
            if (cr.this.f4215j.equals(h0.c.f2437h)) {
                z3 = z2;
            } else {
                cr.this.f4215j = h0.c.f2437h;
                if (cr.this.f4215j == null) {
                    cr.this.f4215j = ProxyProperties.LOCAL_EXCL_LIST;
                    z3 = z2;
                }
            }
            if (z3) {
                cr crVar = cr.this;
                crVar.u3(crVar.f4213h, cr.this.f4215j);
                if (cr.this.f4214i != z4) {
                    cr.this.f4214i = z4;
                    cr.this.f4213h = 0;
                }
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
            boolean zIs24HourFormat = DateFormat.is24HourFormat(App.c());
            if (cr.this.f4217l == time.hour && cr.this.f4218m == time.minute && cr.this.f4219n == zIs24HourFormat) {
                return;
            }
            z.k.s(227, -56, 3, time.minute, time.hour, zIs24HourFormat ? 1 : 0);
            cr.this.f4217l = time.hour;
            cr.this.f4218m = time.minute;
            cr.this.f4219n = zIs24HourFormat ? 1 : 0;
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            cr.this.t3((byte) 112, u0.b.i3);
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2;
            cr crVar = cr.this;
            int i3 = crVar.f4222q + 1;
            crVar.f4222q = i3;
            if (i3 % 2 == 1 && ((i2 = u0.b.D) == 9 || i2 == 8 || i2 == 3)) {
                String str = u0.b.i3;
                if (str != null && !crVar.f4223r.equals(str)) {
                    cr.this.t3((byte) 112, u0.b.i3);
                    cr.this.f4223r = u0.b.i3;
                }
                String str2 = u0.b.j3;
                if (str2 != null && !cr.this.f4224s.equals(str2)) {
                    cr.this.t3((byte) 113, u0.b.j3);
                    cr.this.f4224s = u0.b.j3;
                }
            }
            cr crVar2 = cr.this;
            if (crVar2.f4222q > 2) {
                crVar2.f4222q = 0;
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            cr.this.a3();
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            cr.this.c3();
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(cr.this.f4230y);
            cr.this.f4228w = 5;
        }
    }

    public class h implements Runnable {
        public h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            cr crVar = cr.this;
            int i2 = crVar.f4228w - 1;
            crVar.f4228w = i2;
            if (i2 <= 0) {
                l0.b0.p0(crVar.f4230y);
                cr.this.f4228w = 5;
            } else {
                z.k.s(227, 129, 1, u0.b.f17306a0);
                if (u0.b.f17306a0 == 1) {
                    z.k.s(227, 144, 2, 23, 0);
                }
            }
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        u0.c.f17386m.a(this.f4229x, 1);
        qt.z(this.f4226u);
        y0.g.f18094d.a(this.f4227v, 1);
        y0.g.f18095e.a(this.f4227v, 1);
        w0.e.f17815a.a(this.f4226u, 1);
        w0.e.f17819e.a(this.f4226u, 1);
        u0.c.f17374a.a(this.f4226u, 1);
        qt.z(this.f4225t);
        qt.z(this.f4220o);
        u0.c.f17388o.a(this.f4221p, 1);
        h0.d.f2464c.a(this.f4216k, 1);
        h0.d.f2462a.a(this.f4216k, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 0;
        mtVar.f8314i = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int[][] iArr2;
        byte b2 = bArr[i2];
        if (b2 == 23) {
            qt.y0(7, bArr[i2 + 2] & 255);
            qt.y0(8, bArr[i2 + 3] & 255);
            qt.y0(9, bArr[i2 + 4] & 255);
            qt.y0(10, bArr[i2 + 5] & 255);
            qt.y0(11, bArr[i2 + 6] & 255);
            qt.y0(12, bArr[i2 + 7] & 255);
            qt.y0(13, bArr[i2 + 8] & 255);
            qt.y0(14, bArr[i2 + 9] & 255);
            qt.y0(15, bArr[i2 + 10] & 255);
            qt.y0(16, bArr[i2 + 11] & 255);
            qt.y0(17, bArr[i2 + 12] & 255);
            qt.y0(18, bArr[i2 + 13] & 255);
            qt.y0(19, bArr[i2 + 14] & 255);
            qt.y0(20, bArr[i2 + 15] & 255);
            return;
        }
        if (b2 == 32) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f4208c = b3 & 255;
            int i4 = 0;
            while (true) {
                iArr = this.f4209d;
                if (i4 >= iArr.length) {
                    break;
                }
                int i5 = this.f4208c;
                if (i5 == iArr[i4][0]) {
                    if (i5 == 0) {
                        break;
                    }
                    this.f4207b = i4;
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
                    int i7 = this.f4207b;
                    if (i7 < iArr.length && i7 != 255) {
                        l0.b0.l0(iArr[i7][1], 1);
                    }
                    this.f4207b = 255;
                    return;
                }
                return;
            }
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
            return;
        }
        if (b2 != 80) {
            if (b2 == 125) {
                if ((bArr[i2 + 2] & 255) != 1) {
                    return;
                }
                int i8 = i2 + 3;
                l0.c0.a((bArr[i8] >> 3) & 1, (bArr[i8] >> 4) & 1, 0);
                o1.x.C(nt.f8643f, 1049, new int[]{11, bArr[i8] & 255}, null, null);
                return;
            }
            if (b2 == 48) {
                qt.L(new String(bArr, i2 + 2, i3 - 2));
                return;
            } else {
                if (b2 != 49) {
                    return;
                }
                qt.m(bArr[i2 + 3], bArr[i2 + 2], 7680, true, 4864);
                return;
            }
        }
        byte b6 = bArr[i2 + 2];
        byte b7 = bArr[i2 + 3];
        this.f4211f = b6 & 255;
        int i9 = 0;
        while (true) {
            iArr2 = this.f4212g;
            if (i9 >= iArr2.length) {
                break;
            }
            int i10 = this.f4211f;
            if (i10 == iArr2[i9][0]) {
                if (i10 == 0) {
                    break;
                }
                this.f4210e = i9;
                break;
            }
            i9++;
        }
        int i11 = b7 & 255;
        if (i11 == 1) {
            if (i9 < iArr2.length) {
                l0.b0.l0(iArr2[i9][1], 0);
            }
        } else if (i11 == 0) {
            int i12 = this.f4210e;
            if (i12 < iArr2.length && i12 != 255) {
                l0.b0.l0(iArr2[i12][1], 1);
            }
            this.f4210e = 255;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f4229x);
        l0.b0.p0(this.f4230y);
        qt.q0(this.f4226u);
        y0.g.f18094d.d(this.f4227v);
        y0.g.f18095e.d(this.f4227v);
        w0.e.f17815a.d(this.f4226u);
        w0.e.f17819e.d(this.f4226u);
        u0.c.f17374a.d(this.f4226u);
        qt.q0(this.f4225t);
        qt.q0(this.f4220o);
        u0.c.f17388o.d(this.f4221p);
        h0.d.f2464c.d(this.f4216k);
        h0.d.f2462a.d(this.f4216k);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 21) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, 132, 2, iArr[0], iArr[1]);
        } else {
            if (i2 != 1) {
                return;
            }
            z.k.s(227, 144, 2, iArr[0], iArr[1]);
        }
    }

    /* JADX WARN: Code duplicated, block: B:14:0x006b  */
    public final void a3() {
        int[] iArr = new int[10];
        int i2 = 0;
        iArr[0] = 192;
        iArr[1] = 8;
        b3(iArr);
        int i3 = u0.b.D;
        if (i3 == 1) {
            int i4 = w0.d.f17797i;
            int i5 = w0.d.f17798j & 255;
            int i6 = w0.d.f17796h;
            if (i6 == 65536) {
                iArr[4] = 1;
            } else if (i6 == 65537) {
                iArr[4] = 2;
            } else if (i6 == 65538) {
                iArr[4] = 0;
            } else if (i6 == 0) {
                iArr[4] = 17;
            } else if (i6 == 1) {
                iArr[4] = 18;
            }
            iArr[5] = i4 & 255;
            iArr[6] = (i4 >> 8) & 255;
            int i7 = i5 % 6;
            if (i7 != 0 || i5 == 0) {
                iArr[7] = i7;
            } else {
                iArr[7] = 6;
            }
            iArr[8] = 0;
            iArr[9] = 0;
        } else if (i3 == 3) {
            int i8 = u0.b.r3;
            iArr[4] = i8 & 255;
            iArr[5] = (i8 >> 8) & 255;
            int i9 = u0.b.s3;
            iArr[6] = i9 & 255;
            iArr[7] = (i9 >> 8) & 255;
            int i10 = u0.b.t3;
            iArr[8] = i10 / 60;
            iArr[9] = i10 % 60;
        } else if (i3 != 4) {
            if (i3 == 8 || i3 == 9) {
                int i11 = u0.b.r3;
                iArr[4] = i11 & 255;
                iArr[5] = (i11 >> 8) & 255;
                int i12 = u0.b.s3;
                iArr[6] = i12 & 255;
                iArr[7] = (i12 >> 8) & 255;
                int i13 = u0.b.t3;
                iArr[8] = i13 / 60;
                iArr[9] = i13 % 60;
            }
        } else if (o0.e.H == 1) {
            iArr[4] = 0;
            iArr[5] = o0.e.B & 255;
            iArr[6] = o0.e.C & 255;
            int i14 = o0.e.f16794r;
            iArr[7] = i14 / BatchedScanSettings.MAX_INTERVAL_SEC;
            iArr[8] = (i14 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60;
            iArr[9] = i14 % 60;
        } else {
            int i15 = o0.e.C;
            iArr[4] = i15 & 255;
            iArr[5] = (i15 >> 8) & 255;
            int i16 = o0.e.B;
            iArr[6] = i16 & 255;
            iArr[7] = (i16 >> 8) & 255;
            int i17 = o0.e.f16794r;
            iArr[8] = i17 / 60;
            iArr[9] = i17 % 60;
        }
        int[] iArr2 = new int[11];
        iArr2[0] = 227;
        while (i2 < 10) {
            int i18 = i2 + 1;
            iArr2[i18] = iArr[i2];
            i2 = i18;
        }
        z.k.s(iArr2);
    }

    public final void b3(int[] iArr) {
        if (iArr == null || iArr.length < 3) {
            return;
        }
        switch (u0.b.D) {
            case 1:
                iArr[2] = 1;
                iArr[3] = 1;
                break;
            case 2:
                iArr[2] = 11;
                iArr[3] = 0;
                break;
            case 3:
                iArr[2] = 11;
                iArr[3] = 16;
                break;
            case 4:
                int i2 = o0.e.H;
                if (i2 == 1) {
                    iArr[2] = 2;
                    iArr[3] = 16;
                } else if (i2 == 2) {
                    iArr[2] = 9;
                    iArr[3] = 16;
                } else if (i2 == 3) {
                    iArr[2] = 9;
                    iArr[3] = 16;
                }
                break;
            case 5:
                iArr[2] = 7;
                iArr[3] = 48;
                break;
            case 6:
                iArr[2] = 3;
                iArr[3] = 48;
                break;
            case 7:
                iArr[2] = 6;
                iArr[3] = 18;
                break;
            case 8:
            case 9:
            case 10:
                iArr[2] = 8;
                iArr[3] = 255;
                break;
            default:
                int i3 = u0.b.f17306a0;
                if (i3 == 0) {
                    iArr[2] = 0;
                    iArr[3] = 0;
                } else if (i3 == 1) {
                    iArr[2] = 7;
                    iArr[3] = 48;
                }
                break;
        }
    }

    public final void c3() {
        int i2 = 0;
        int[] iArr = {196, 1, y0.f.C0};
        if (y0.f.f18055i == 1 || y0.f.C0 == 0) {
            iArr[2] = 128;
        }
        if (y0.f.C0 > 36) {
            iArr[2] = 36;
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

    public final void t3(byte b2, String str) {
        if (str == null) {
            return;
        }
        int length = str.length();
        int i2 = length << 1;
        byte[] bArr = new byte[i2];
        for (int i3 = 0; i3 < length; i3++) {
            int iCodePointAt = str.codePointAt(i3);
            int i4 = i3 << 1;
            bArr[i4 + 1] = (byte) ((iCodePointAt >> 8) & 255);
            bArr[i4] = (byte) (iCodePointAt & 255);
        }
        int[] iArr = new int[(i2 & 255) + 4];
        iArr[0] = -29;
        iArr[1] = b2;
        iArr[2] = (byte) (i2 + 1);
        iArr[3] = 17;
        for (int i5 = 0; i5 < i2; i5++) {
            iArr[4 + i5] = bArr[i5];
        }
        z.k.s(iArr);
    }

    public final void u3(int i2, String str) {
        if (str == null) {
            return;
        }
        char[] charArray = str.toCharArray();
        int[] iArr = new int[charArray.length + 5];
        iArr[0] = -29;
        iArr[1] = -59;
        iArr[2] = (byte) (charArray.length + 2);
        iArr[3] = (byte) i2;
        iArr[4] = 1;
        if (i2 == 1) {
            for (int i3 = 0; i3 < str.length(); i3++) {
                iArr[5 + i3] = (byte) charArray[i3];
            }
        }
        z.k.s(iArr);
    }
}
