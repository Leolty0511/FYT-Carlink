package k0;

import android.content.pm.PackageManager;
import android.net.ProxyProperties;
import android.os.SystemProperties;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;
import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes2.dex */
public class bl extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f3734b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f3737e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3735c = 255;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f3736d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, 13}, new int[]{5, 18}, new int[]{6, 26}, new int[]{8, 3}, new int[]{9, 4}, new int[]{12, 2}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f3738f = 255;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f3739g = {new int[]{1, 0}, new int[]{16, 16}, new int[]{43, 5}, new int[]{44, 2}, new int[]{47, 9}, new int[]{57, 25}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f3740h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f3741i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f3742j = new a();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f3743k = new b();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f3744l = new c();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f3745m = new d();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Runnable f3746n = new e();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f3747o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f3748p = new f();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Runnable f3749q = new g();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            bl.this.a3();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            bl.this.d3((byte) -110, u0.b.i3);
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            bl.this.d3((byte) -109, u0.b.k3);
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            bl.this.d3((byte) -108, u0.b.j3);
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            long millis = time.toMillis(false) / 10000;
            z.k.s(227, 10, -53, 0, (byte) time.hour, (byte) time.minute, (byte) time.second, 0, DateFormat.is24HourFormat(App.c()) ? (byte) 1 : (byte) 0, 0, 0, 0, 0);
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(bl.this.f3749q);
            bl blVar = bl.this;
            blVar.f3747o = 5;
            blVar.f3740h = 0;
            blVar.f3741i = 0;
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            bl blVar = bl.this;
            int i2 = blVar.f3747o - 1;
            blVar.f3747o = i2;
            if (i2 <= 0) {
                l0.b0.p0(blVar.f3749q);
                bl.this.f3747o = 5;
            } else if (u0.b.f17306a0 == 1) {
                if (i2 <= 1) {
                    int i3 = y0.f.f18037c;
                    z.k.s(227, 13, 145, 32, (i3 / 10) + 48, (i3 % 10) + 48, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
                }
                if (nt.f8633a != 4129212) {
                    return;
                }
                z.k.s(227, 2, 36, 1, 83);
            }
        }
    }

    public static int b3() {
        int i2 = 3;
        switch (u0.b.D) {
            case 0:
            case 7:
            default:
                i2 = 9;
                break;
            case 1:
                int i3 = w0.d.f17796h;
                if (i3 - 65536 == 0) {
                    i2 = 1;
                } else if (1 == i3 - 65536) {
                    i2 = 2;
                } else if (2 != i3 - 65536) {
                    if (i3 + 0 != 0) {
                        i2 = 1 != i3 - 0 ? 9 : 5;
                    } else {
                        i2 = 4;
                    }
                }
                break;
            case 2:
                i2 = 10;
                break;
            case 3:
                i2 = 133;
                break;
            case 4:
                int i4 = o0.e.H;
                if (i4 == 1) {
                    i2 = 13;
                } else if (i4 != 2) {
                    i2 = i4 != 3 ? 9 : 13;
                } else {
                    i2 = 25;
                }
                break;
            case 5:
                i2 = 12;
                break;
            case 6:
                i2 = 8;
                break;
            case 8:
            case 9:
            case 10:
                i2 = 13;
                break;
        }
        if (u0.b.f17347o == 1) {
            return 16;
        }
        if (u0.b.f17320f == 0) {
            return 0;
        }
        return i2;
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
        mtVar.f8311f = 0;
        mtVar.f8312g = 0;
        mtVar.f8320o = 1;
        mtVar.f8322q = 0;
        mtVar.f8314i = 1;
        mtVar.f8313h = 0;
        u0.c.f17386m.a(this.f3748p, 1);
        qt.z(this.f3746n);
        u0.c.f17388o.a(this.f3743k, 1);
        u0.c.f17389p.a(this.f3745m, 1);
        u0.c.f17390q.a(this.f3744l, 1);
        w0.e.f17815a.a(this.f3742j, 1);
        w0.e.f17819e.a(this.f3742j, 1);
        u0.c.f17374a.a(this.f3742j, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        int i6;
        int i7;
        int[][] iArr2;
        byte b2 = bArr[i2 + 1];
        if (b2 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
        }
        if (b2 == 65) {
            u0.d.R2(l0.c0.E0(bArr[i2 + 2] & 255));
            u0.d.S2(l0.c0.E0(bArr[i2 + 3] & 255));
            u0.d.T2(l0.c0.E0(bArr[i2 + 4] & 255));
            u0.d.U2(l0.c0.E0(bArr[i2 + 5] & 255));
            int i8 = i2 + 6;
            int i9 = bArr[i8] & 255;
            int i10 = i2 + 7;
            int i11 = bArr[i10] & 255;
            int i12 = i2 + 8;
            int i13 = bArr[i12] & 255;
            int i14 = i2 + 9;
            int i15 = bArr[i14] & 255;
            if (i9 == 255 && i11 == 255 && i13 == 255 && i15 == 255) {
                u0.d.C2(0);
            } else if ((l0.c0.f13013g != i9 || l0.c0.f13014h != i11 || l0.c0.f13015i != i13 || l0.c0.f13016j != i15) && u0.b.f17347o == 0) {
                u0.d.C2(1);
                l0.c0.f13017k = 4;
                l0.b0.b(l0.c0.f13018l);
            }
            l0.c0.f13013g = i9;
            l0.c0.f13014h = i11;
            l0.c0.f13015i = i13;
            l0.c0.f13016j = i15;
            u0.d.D2(l0.c0.E0(bArr[i8] & 255));
            u0.d.E2(l0.c0.E0(bArr[i10] & 255));
            u0.d.F2(l0.c0.E0(bArr[i12] & 255));
            u0.d.G2(l0.c0.E0(bArr[i14] & 255));
            return;
        }
        if (b2 == 97) {
            int i16 = i2 + 2;
            qt.y0(103, (bArr[i16] >> 4) & 7);
            qt.y0(104, (bArr[i16] >> 2) & 3);
            qt.y0(105, (bArr[i16] >> 1) & 1);
            qt.y0(106, (bArr[i16] >> 0) & 1);
            qt.y0(107, 255 & (bArr[i2 + 3] >> 0));
            qt.y0(108, (bArr[i2 + 4] >> 0) & 15);
            int i17 = i2 + 5;
            qt.y0(109, (bArr[i17] >> 4) & 7);
            qt.y0(110, (bArr[i17] >> 3) & 1);
            qt.y0(111, (bArr[i17] >> 2) & 1);
            qt.y0(112, (bArr[i17] >> 0) & 3);
            int i18 = i2 + 6;
            qt.y0(113, (bArr[i18] >> 5) & 1);
            qt.y0(114, (bArr[i18] >> 4) & 1);
            qt.y0(115, (bArr[i18] >> 1) & 7);
            qt.y0(116, (bArr[i18] >> 0) & 1);
            int i19 = i2 + 7;
            qt.y0(117, (bArr[i19] >> 4) & 15);
            qt.y0(118, (bArr[i19] >> 3) & 1);
            int i20 = i2 + 8;
            qt.y0(119, (bArr[i20] >> 7) & 1);
            qt.y0(120, (bArr[i20] >> 6) & 1);
            qt.y0(121, (bArr[i20] >> 5) & 1);
            qt.y0(122, (bArr[i20] >> 4) & 1);
            qt.y0(123, (bArr[i20] >> 3) & 1);
            qt.y0(124, (bArr[i20] >> 2) & 1);
            qt.y0(125, (bArr[i20] >> 1) & 1);
            qt.y0(126, (bArr[i20] >> 0) & 1);
            return;
        }
        if (b2 == 33) {
            this.f3738f = bArr[i2 + 2] & 255;
            int i21 = bArr[i2 + 3] & 255;
            int i22 = 0;
            while (true) {
                iArr = this.f3739g;
                if (i22 >= iArr.length) {
                    break;
                }
                int i23 = this.f3738f;
                if (i23 == iArr[i22][0]) {
                    if (i23 == 0) {
                        break;
                    }
                    this.f3737e = i22;
                    break;
                }
                i22++;
            }
            int i24 = i21 & 255;
            if (i24 == 1) {
                if (i22 < iArr.length) {
                    l0.b0.l0(iArr[i22][1], 0);
                    return;
                }
                return;
            } else {
                if (i24 == 0) {
                    int i25 = this.f3737e;
                    if (i25 < iArr.length && i25 != 255) {
                        l0.b0.l0(iArr[i25][1], 1);
                    }
                    this.f3737e = 255;
                    return;
                }
                return;
            }
        }
        if (b2 == 34) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            if (b3 != 1) {
                if (b3 == 2 && b4 != (i4 = this.f3741i)) {
                    if (b4 > i4) {
                        for (int i26 = 0; i26 < b4 - this.f3741i; i26++) {
                            l0.b0.l0(31, 0);
                        }
                        l0.b0.l0(31, 1);
                    } else if (b4 < i4) {
                        for (int i27 = 0; i27 < this.f3741i - b4; i27++) {
                            l0.b0.l0(30, 0);
                        }
                        l0.b0.l0(30, 1);
                    }
                    this.f3741i = b4;
                    return;
                }
                return;
            }
            int i28 = this.f3740h;
            if (b4 != i28) {
                if (b4 > i28) {
                    for (int i29 = 0; i29 < b4 - this.f3740h; i29++) {
                        l0.b0.l0(7, 0);
                    }
                    l0.b0.l0(7, 1);
                } else if (b4 < i28) {
                    for (int i30 = 0; i30 < this.f3740h - b4; i30++) {
                        l0.b0.l0(8, 0);
                    }
                    l0.b0.l0(8, 1);
                }
                this.f3740h = b4;
                return;
            }
            return;
        }
        if (b2 == 49) {
            int i31 = i2 + 2;
            qt.y0(10, (bArr[i31] >> 6) & 1);
            qt.y0(11, (bArr[i31] >> 0) & 1);
            int i32 = i2 + 3;
            qt.y0(12, (bArr[i32] >> 4) & 1);
            qt.y0(13, (bArr[i32] >> 3) & 1);
            int i33 = i2 + 4;
            qt.y0(65, (bArr[i33] >> 4) & 1);
            qt.y0(16, (bArr[i33] >> 5) & 1);
            byte b5 = bArr[i2 + 6];
            if (b5 != 1) {
                if (b5 == 2) {
                    i5 = 0;
                    i7 = 1;
                } else if (b5 == 3) {
                    i5 = 0;
                    i7 = 0;
                    i6 = 1;
                } else if (b5 != 4) {
                    i5 = 0;
                    i7 = 0;
                } else {
                    i7 = 0;
                    i5 = 1;
                    i6 = 1;
                }
                i6 = i7;
            } else {
                i5 = 0;
                i6 = 0;
                i7 = 1;
            }
            qt.y0(18, i5);
            qt.y0(19, i7);
            qt.y0(20, i6);
            qt.y0(21, bArr[i2 + 7] & 255);
            int i34 = bArr[i2 + 8] & 255;
            if (i34 == 254) {
                qt.y0(27, -2);
                return;
            } else if (i34 == 255) {
                qt.y0(27, -3);
                return;
            } else {
                qt.y0(27, i34 * 5);
                return;
            }
        }
        if (b2 == 50) {
            qt.y0(100, bArr[i2 + 11] & 255);
            qt.y0(101, bArr[i2 + 12] & 255);
            qt.y0(102, bArr[i2 + 13] & 255);
            return;
        }
        switch (b2) {
            case 17:
                byte b6 = bArr[i2 + 4];
                byte b7 = bArr[i2 + 5];
                this.f3735c = b6 & 255;
                int i35 = 0;
                while (true) {
                    iArr2 = this.f3736d;
                    if (i35 < iArr2.length) {
                        int i36 = this.f3735c;
                        if (i36 != iArr2[i35][0]) {
                            i35++;
                        } else if (i36 != 0) {
                            this.f3734b = i35;
                        }
                    }
                }
                int i37 = b7 & 255;
                if (i37 == 1) {
                    if (i35 < iArr2.length) {
                        l0.b0.l0(iArr2[i35][1], 0);
                    }
                } else if (i37 == 0) {
                    int i38 = this.f3734b;
                    if (i38 < iArr2.length && i38 != 255) {
                        l0.b0.l0(iArr2[i38][1], 1);
                    }
                    this.f3734b = 255;
                }
                int i39 = bArr[i2 + 6] & 255;
                qt.y0(1031, i39);
                o1.x.C(nt.f8643f, 1049, new int[]{1, i39}, null, null);
                qt.i(bArr[i2 + 9] & 255, bArr[i2 + 8] & 255, true, 540);
                break;
            case 18:
                byte b8 = bArr[i2 + 4];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b8 >> 6) & 1);
                    qt.y0(2, (b8 >> 7) & 1);
                } else {
                    qt.y0(1, (b8 >> 7) & 1);
                    qt.y0(2, (b8 >> 6) & 1);
                }
                qt.y0(3, (b8 >> 5) & 1);
                qt.y0(4, (b8 >> 4) & 1);
                qt.y0(5, (b8 >> 3) & 1);
                qt.y0(0, (b8 >> 2) & 1);
                break;
            case 19:
                qt.y0(99, (bArr[i2 + 5] & 255) | ((bArr[i2 + 4] << 8) & 65280));
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f3748p);
        l0.b0.p0(this.f3749q);
        qt.q0(this.f3746n);
        u0.c.f17388o.d(this.f3743k);
        u0.c.f17389p.d(this.f3745m);
        u0.c.f17390q.d(this.f3744l);
        w0.e.f17815a.d(this.f3742j);
        w0.e.f17819e.d(this.f3742j);
        u0.c.f17374a.d(this.f3742j);
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
            z.k.s(227, 2, 61, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 1) {
            z.k.s(227, 4, 111, iArr[0], iArr[1], iArr[2], iArr[3]);
        } else if (i2 == 2) {
            z.k.s(227, 3, 106, 5, 1, iArr[0]);
        } else {
            if (i2 != 3) {
                return;
            }
            z.k.s(227, 2, PackageManager.INSTALL_PARSE_FAILED_UNEXPECTED_EXCEPTION, 1, iArr[0]);
        }
    }

    public void a3() {
        int[] iArr = new int[15];
        int i2 = 0;
        for (int i3 = 0; i3 < 15; i3++) {
            iArr[i3] = 32;
        }
        iArr[0] = 13;
        iArr[1] = 145;
        iArr[2] = b3();
        if (u0.b.D == 1) {
            iArr[3] = 48;
            iArr[4] = ((w0.d.f17798j & 255) % 6) + 1 + 48;
            int i4 = w0.d.f17796h;
            if (i4 - 65536 == 0 || 1 == i4 - 65536 || 2 == i4 - 65536) {
                int i5 = w0.d.f17797i;
                iArr[10] = i5 / 10000 == 0 ? (i5 / 10000) + 32 : (i5 / 10000) + 48;
                iArr[11] = ((i5 % 10000) / 1000) + 48;
                iArr[12] = ((i5 % 1000) / 100) + 48;
                iArr[13] = 46;
                iArr[14] = ((i5 % 100) / 10) + 48;
            } else {
                int i6 = w0.d.f17797i;
                if ((i6 % 10000) / 1000 == 1) {
                    iArr[11] = ((i6 % 10000) / 1000) + 48;
                    iArr[12] = ((i6 % 1000) / 100) + 48;
                    iArr[13] = ((i6 % 100) / 10) + 48;
                    iArr[14] = (i6 % 10) + 48;
                } else {
                    iArr[12] = ((i6 % 1000) / 100) + 48;
                    iArr[13] = ((i6 % 100) / 10) + 48;
                    iArr[14] = (i6 % 10) + 48;
                }
            }
        }
        int[] iArr2 = new int[16];
        iArr2[0] = 227;
        while (i2 < 15) {
            int i7 = i2 + 1;
            iArr2[i7] = (byte) iArr[i2];
            i2 = i7;
        }
        z.k.s(iArr2);
    }

    public final void d3(byte b2, String str) {
        if (str == null) {
            str = ProxyProperties.LOCAL_EXCL_LIST;
        }
        int[] iArr = new int[51];
        int i2 = 0;
        iArr[0] = 227;
        iArr[1] = 48;
        iArr[2] = b2;
        try {
            byte[] bytes = str.getBytes("utf-8");
            while (true) {
                if (i2 >= (bytes.length > 48 ? 48 : bytes.length)) {
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
}
