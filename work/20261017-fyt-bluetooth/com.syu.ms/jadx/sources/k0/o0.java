package k0;

import android.media.MediaPlayer;
import android.net.dhcp.DhcpPacket;
import android.os.Process;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class o0 extends lt {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static int f8677s = 10;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static int f8678t = -2;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static int f8679u = -2;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static int f8680v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static int f8681w;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f8689i;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public o1.g0 f8682b = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f8683c = 1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f8684d = 2;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f8685e = 3;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f8686f = 4;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f8687g = 5;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int[] f8688h = {CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR, 100, 120, 200, 300, 400, 500, CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR, 700, 800, MediaPlayer.MEDIA_INFO_TIMED_TEXT_ERROR, 1000};

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f8690j = 255;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int[][] f8691k = {new int[]{1, 7}, new int[]{2, 8}, new int[]{8, 3}, new int[]{9, 4}, new int[]{10, 2}, new int[]{12, -1}};

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public byte f8692l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f8693m = new a();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f8694n = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Runnable f8695o = new b();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f8696p = new c();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Runnable f8697q = new d();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Runnable f8698r = new e();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            o0 o0Var = o0.this;
            byte b2 = (byte) (o0Var.f8692l + 1);
            o0Var.f8692l = b2;
            if (b2 > 5) {
                l0.b0.o0(o0Var.f8693m);
                o0.this.f8692l = (byte) 0;
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            o0 o0Var = o0.this;
            o0Var.i3(o0Var.f8682b.b(5, 0));
            l0.b0.b(o0.this.f8696p);
            o0.this.f8694n = 5;
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            o0 o0Var = o0.this;
            int i2 = o0Var.f8694n - 1;
            o0Var.f8694n = i2;
            if (i2 <= 0) {
                l0.b0.p0(o0Var.f8696p);
                o0.this.f8694n = 5;
            } else if (u0.b.f17306a0 == 1) {
                z.k.s(227, 2, 36, 66, 2);
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            qt.y0(1021, u0.b.Z);
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, 10, -53, 0, (byte) time.hour, (byte) time.minute, 0, 0, DateFormat.is24HourFormat(App.c()) ? 1 : 0, 0, 0, 0, 0);
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        this.f8682b.a();
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 0;
        mtVar.f8311f = 1;
        mtVar.f8313h = 0;
        mtVar.f8320o = 0;
        f3(this.f8682b.b(1, f8677s), u0.b.f17366w);
        j3(this.f8682b.b(2, f8678t));
        h3(this.f8682b.b(3, f8679u));
        g3(this.f8682b.b(4, 5));
        qt.z(this.f8698r);
        if (nt.f8637c == 2) {
            u0.c.f17382i.a(this.f8697q, 1);
        }
        u0.c.f17386m.a(this.f8695o, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int i7;
        int[][] iArr;
        int i8 = i2 + 1;
        byte b2 = bArr[i8];
        if (b2 == -24) {
            qt.y0(130, bArr[i2 + 2] & 255);
            qt.y0(132, bArr[i2 + 3] & 255);
            qt.y0(131, bArr[i2 + 4] & 255);
            qt.y0(135, bArr[i2 + 5] & 1);
            return;
        }
        if (b2 == -23) {
            qt.y0(Process.MEDIA_UID, (bArr[i2 + 3] & 255) - 1);
            qt.y0(133, bArr[i2 + 4] & 255);
            return;
        }
        if (b2 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        int i9 = 10;
        if (b2 == 49) {
            byte b3 = bArr[i2 + 2];
            qt.y0(10, (b3 >> 6) & 1);
            qt.y0(13, (b3 >> 3) & 1);
            qt.y0(62, (b3 >> 2) & 1);
            qt.y0(11, (b3 >> 0) & 1);
            int[] iArr2 = new int[1];
            iArr2[0] = (bArr[i2 + 3] & 16) == 0 ? 0 : 1;
            qt.y0(12, iArr2);
            switch (bArr[i2 + 6]) {
                case 2:
                    i4 = 0;
                    i5 = 0;
                    i6 = 0;
                    i7 = 1;
                    break;
                case 3:
                    i7 = 0;
                    i4 = 0;
                    i6 = 0;
                    i5 = 1;
                    break;
                case 4:
                    i4 = 0;
                    i6 = 0;
                    i7 = 1;
                    i5 = 1;
                    break;
                case 5:
                    i7 = 0;
                    i6 = 0;
                    i4 = 1;
                    i5 = i4;
                    break;
                case 6:
                    i7 = 0;
                    i5 = 0;
                    i6 = 0;
                    i4 = 1;
                    break;
                case 7:
                    i5 = 0;
                    i6 = 0;
                    i7 = 1;
                    i4 = 1;
                    break;
                case 8:
                    i7 = 0;
                    i4 = 0;
                    i5 = 0;
                    i6 = 1;
                    break;
                case 9:
                default:
                    i7 = 0;
                    i4 = 0;
                    i5 = 0;
                    i6 = 0;
                    break;
                case 10:
                    i6 = 0;
                    i7 = 1;
                    i4 = 1;
                    i5 = i4;
                    break;
            }
            qt.y0(18, i7);
            qt.y0(19, i4);
            qt.y0(20, i5);
            qt.y0(16, i6);
            int i10 = bArr[i2 + 7] & 255;
            qt.y0(21, i10 <= 7 ? i10 : 7);
            int i11 = i2 + 8;
            int i12 = bArr[i11] & 255;
            int i13 = i2 + 9;
            int i14 = bArr[i13] & 255;
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                i12 = bArr[i13] & 255;
                i14 = bArr[i11] & 255;
            }
            if (i12 == 254) {
                qt.y0(27, -2);
            } else if (i12 == 255) {
                qt.y0(27, -3);
            } else {
                qt.y0(27, i12 & 255);
            }
            if (i14 == 254) {
                qt.y0(28, -2);
                return;
            } else if (i14 == 255) {
                qt.y0(28, -3);
                return;
            } else {
                qt.y0(28, i14 & 255);
                return;
            }
        }
        if (b2 == 65) {
            if (nt.a()) {
                u0.d.R2(a3(bArr[i2 + 2] & 255));
                u0.d.S2(a3(bArr[i2 + 3] & 255));
                u0.d.T2(a3(bArr[i2 + 4] & 255));
                u0.d.U2(a3(bArr[i2 + 5] & 255));
                return;
            }
            return;
        }
        if (b2 == 101) {
            int i15 = i2 + 3;
            qt.y0(122, (bArr[i15] >> 6) & 1);
            qt.y0(123, (bArr[i15] >> 4) & 3);
            return;
        }
        if (b2 == 117) {
            int i16 = i2 + 3;
            qt.y0(127, (bArr[i16] >> 4) & 1);
            qt.y0(128, (bArr[i16] >> 2) & 3);
            qt.y0(126, bArr[i16] & 3);
            return;
        }
        if (b2 != 17) {
            if (b2 == 18) {
                byte b4 = bArr[i8 + 3];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b4 >> 6) & 1);
                    qt.y0(2, (b4 >> 7) & 1);
                } else {
                    qt.y0(1, (b4 >> 7) & 1);
                    qt.y0(2, (b4 >> 6) & 1);
                }
                qt.y0(3, (b4 >> 5) & 1);
                qt.y0(4, (b4 >> 4) & 1);
                qt.y0(5, (b4 >> 3) & 1);
                qt.y0(0, (b4 >> 2) & 1);
                qt.y0(118, (b4 >> 1) & 1);
                qt.y0(119, (b4 >> 0) & 1);
                qt.y0(120, bArr[i8 + 4] & 255);
                return;
            }
            if (b2 != 22) {
                if (b2 == 23) {
                    qt.y0(110, ((bArr[i2 + 2] & 255) << 16) | ((bArr[i2 + 3] & 255) << 8) | (bArr[i2 + 4] & 255));
                    qt.y0(111, ((bArr[i2 + 5] & 255) << 8) | (bArr[i2 + 6] & 255));
                    qt.y0(112, ((bArr[i2 + 7] & 255) << 16) | ((bArr[i2 + 8] & 255) << 8) | (bArr[i2 + 9] & 255));
                    qt.y0(113, ((bArr[i2 + 10] & 255) << 8) | (bArr[i2 + 11] & 255));
                    qt.y0(114, ((bArr[i2 + 12] & 255) << 16) | ((bArr[i2 + 13] & 255) << 8) | (bArr[i2 + 14] & 255));
                    qt.y0(115, (bArr[i2 + 16] & 255) | ((bArr[i2 + 15] & 255) << 8));
                    return;
                }
                if (b2 != 103) {
                    if (b2 != 104) {
                        return;
                    }
                    qt.y0(116, bArr[i2 + 3] & DhcpPacket.DHCP_DOMAIN_NAME);
                    return;
                } else {
                    int i17 = i2 + 3;
                    qt.y0(124, (bArr[i17] >> 2) & 3);
                    qt.y0(125, bArr[i17] & 3);
                    return;
                }
            }
            qt.y0(98, bArr[i2 + 2] & 255);
            qt.y0(99, ((bArr[i2 + 3] & 255) << 8) | (bArr[i2 + 4] & 255));
            qt.y0(100, ((bArr[i2 + 5] & 255) << 8) | (bArr[i2 + 6] & 255));
            qt.y0(101, ((bArr[i2 + 7] & 255) << 8) | (bArr[i2 + 8] & 255));
            qt.y0(102, ((bArr[i2 + 9] & 255) << 16) | ((bArr[i2 + 10] & 255) << 8) | (bArr[i2 + 11] & 255));
            qt.y0(103, ((bArr[i2 + 12] & 255) << 8) | (bArr[i2 + 13] & 255));
            byte b5 = bArr[i2 + 14];
            qt.y0(104, b5 & 3 & 255);
            qt.y0(105, (b5 >> 2) & 3 & 255);
            qt.y0(106, (b5 >> 4) & 3 & 255);
            qt.y0(107, (b5 >> 6) & 1 & 255);
            qt.y0(108, (b5 >> 7) & 1 & 255);
            int i18 = bArr[i2 + 15] & 255;
            if (i18 < 0) {
                i9 = 0;
            } else if (i18 <= 10) {
                i9 = i18;
            }
            qt.y0(109, this.f8688h[i9]);
            return;
        }
        qt.y0(121, bArr[i8 + 2] & 255);
        int i19 = i2 + 4;
        byte b6 = bArr[i19];
        int i20 = n0.j4.f16464b;
        if (i20 != 32 && i20 != 5 && i20 != 61 && b6 == 12) {
            if (o1.u.Y0().equals("com.syu.canbus")) {
                o1.u.k();
            } else {
                o1.u.v();
            }
        }
        if (nt.a()) {
            if (nt.f8637c == 2) {
                qt.y0(1021, (bArr[i2 + 2] >> 2) & 1);
            }
            qt.l(bArr[i2 + 9], bArr[i2 + 8], true, 500);
            byte b7 = bArr[i19];
            byte b8 = bArr[i2 + 5];
            this.f8690j = b7 & 255;
            int i21 = 0;
            while (true) {
                iArr = this.f8691k;
                if (i21 >= iArr.length) {
                    break;
                }
                int i22 = this.f8690j;
                if (i22 == iArr[i21][0]) {
                    if (i22 == 0) {
                        break;
                    }
                    this.f8689i = i21;
                    break;
                }
                i21++;
            }
            int i23 = b8 & 255;
            if (i23 == 0) {
                int i24 = this.f8689i;
                if (i24 < iArr.length && i24 != 255) {
                    l0.b0.l0(iArr[i24][1], 1);
                    l0.b0.o0(this.f8693m);
                    this.f8692l = (byte) 0;
                }
                this.f8689i = 255;
                return;
            }
            if (i21 < iArr.length) {
                if (this.f8690j != 6) {
                    byte b9 = this.f8692l;
                    if (b9 == 0) {
                        this.f8692l = (byte) (b9 + 1);
                        l0.b0.l0(iArr[i21][1], 0);
                        l0.b0.a(this.f8693m);
                        return;
                    }
                    return;
                }
                if (i23 == 1) {
                    int i25 = h0.c.E;
                    if (i25 == 3 || i25 == 4 || i25 == 5) {
                        l0.b0.l0(26, 0);
                        l0.b0.l0(26, 1);
                    } else {
                        l0.b0.l0(6, 0);
                        l0.b0.l0(6, 1);
                    }
                }
                this.f8689i = 255;
            }
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f8682b.j();
        qt.q0(this.f8698r);
        u0.c.f17382i.d(this.f8697q);
        u0.c.f17386m.d(this.f8695o);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 136) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 1005) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            iArr[0] = iArr[0] + 1;
            if (iArr[0] < 1) {
                iArr[0] = 1;
            } else if (iArr[0] > 3) {
                iArr[0] = 3;
            }
            g3(iArr[0] + 3);
        }
        switch (i2) {
            case 1:
                z.k.s(227, 2, 106, 3, iArr[0]);
                break;
            case 2:
                z.k.s(227, 2, 106, 4, iArr[0]);
                break;
            case 3:
                z.k.s(227, 2, 108, 1, iArr[0]);
                break;
            case 4:
                z.k.s(227, 2, 108, 2, iArr[0]);
                break;
            case 5:
                z.k.s(227, 2, 109, 1, iArr[0]);
                break;
            case 6:
                z.k.s(227, 2, 122, 1, iArr[0]);
                break;
            case 7:
                z.k.s(227, 2, 122, 2, iArr[0]);
                break;
            case 8:
                z.k.s(227, 2, 122, 3, iArr[0]);
                break;
            case 9:
                z.k.s(227, 2, 27, (iArr[0] >> 8) & 255, iArr[0] & 255);
                break;
            case 10:
                z.k.s(227, 2, 110, (iArr[0] >> 8) & 255, iArr[0] & 255);
                break;
            case 11:
                if (e3(iArr, 1)) {
                    if (iArr[0] == -1) {
                        f8677s++;
                    } else {
                        f8677s--;
                    }
                    int i3 = f8677s;
                    if (i3 >= 10) {
                        f8677s = 10;
                    } else if (i3 <= 0) {
                        f8677s = 0;
                    }
                    f3(f8677s, u0.b.f17366w);
                }
                break;
            case 12:
                if (e3(iArr, 1)) {
                    if (iArr[0] == -1) {
                        f8679u++;
                    } else {
                        f8679u--;
                    }
                    int i4 = f8679u;
                    if (i4 >= 10) {
                        f8679u = 10;
                    } else if (i4 <= 0) {
                        f8679u = 0;
                    }
                    h3(f8679u);
                }
                break;
            case 13:
                if (e3(iArr, 1)) {
                    if (iArr[0] == -1) {
                        f8678t++;
                    } else {
                        f8678t--;
                    }
                    int i5 = f8678t;
                    if (i5 >= 10) {
                        f8678t = 10;
                    } else if (i5 <= 0) {
                        f8678t = 0;
                    }
                    j3(f8678t);
                }
                break;
            case 14:
                z.k.s(227, 2, 75, 4, iArr[0]);
                break;
            case 15:
                if (iArr != null && iArr.length > 1) {
                    z.k.s(227, 2, i.a.Theme_actionModeFindDrawable, iArr[0], iArr[1]);
                    break;
                }
                break;
            case 16:
                if (e3(iArr, 1)) {
                    i3(iArr[0]);
                }
                break;
            case 17:
                z.k.s(227, 2, 154, 1, iArr[0]);
                break;
        }
    }

    public final int a3(int i2) {
        if (i2 == 0) {
            return 15;
        }
        if (i2 == 1) {
            return 0;
        }
        if (i2 == 2) {
            return 3;
        }
        if (i2 != 3) {
            return i2 != 4 ? 15 : 9;
        }
        return 6;
    }

    public final boolean e3(int[] iArr, int i2) {
        return iArr != null && iArr.length >= i2;
    }

    public final void f3(int i2, int i3) {
        f8677s = i2;
        k3(i.a.Theme_actionModeFindDrawable, 1, 255 - (((i3 == 1 ? 15 : 10) - i2) * 14));
        int iB = this.f8682b.b(1, 10);
        int i4 = f8677s;
        if (iB != i4) {
            this.f8682b.g(1, i4);
        }
    }

    public final void g3(int i2) {
        f8681w = i2;
        z.k.s(227, 2, -14, (byte) i2, -1);
        int iB = this.f8682b.b(4, 0);
        int i3 = f8681w;
        if (iB != i3) {
            this.f8682b.g(4, i3);
        }
    }

    public final void h3(int i2) {
        f8679u = i2;
        k3(i.a.Theme_actionModeFindDrawable, 3, i2);
        int iB = this.f8682b.b(3, -2);
        int i3 = f8679u;
        if (iB != i3) {
            this.f8682b.g(3, i3);
        }
    }

    public final void i3(int i2) {
        f8680v = i2;
        qt.y0(135, i2);
        k3(i.a.Theme_actionModeFindDrawable, 16, f8680v);
        int iB = this.f8682b.b(5, 0);
        int i3 = f8680v;
        if (iB != i3) {
            this.f8682b.g(5, i3);
        }
    }

    public final void j3(int i2) {
        f8678t = i2;
        k3(i.a.Theme_actionModeFindDrawable, 2, i2);
        int iB = this.f8682b.b(2, -2);
        int i3 = f8678t;
        if (iB != i3) {
            this.f8682b.g(2, i3);
        }
    }

    public final void k3(int i2, int i3, int i4) {
        z.k.s(227, 2, (byte) i2, (byte) i3, (byte) i4);
    }
}
