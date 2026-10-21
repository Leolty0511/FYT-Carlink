package k0;

import android.content.pm.PackageManager;
import android.drm.DrmManagerClient;
import android.media.MediaPlayer;
import android.net.dhcp.DhcpPacket;
import android.opengl.GLES10;
import android.os.Process;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.Spanned;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class l6 extends lt {
    public static int A = 1;
    public static int B;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f7550g;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int[] f7545b = {CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR, 100, 120, 200, 300, 400, 500, CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR, 700, 800, MediaPlayer.MEDIA_INFO_TIMED_TEXT_ERROR, 1000};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f7546c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f7547d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f7548e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f7549f = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f7551h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int[][] f7552i = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 18}, new int[]{10, 26}, new int[]{23, 12}, new int[]{24, 18}, new int[]{48, 12}, new int[]{19, 3}, new int[]{20, 16}, new int[]{22, 29}, new int[]{129, 7}, new int[]{130, 8}, new int[]{134, 12}, new int[]{177, 7}, new int[]{178, 8}, new int[]{179, 4}, new int[]{180, 3}, new int[]{181, 5}, new int[]{182, 16}, new int[]{184, 6}, new int[]{185, 16}, new int[]{186, 38}, new int[]{189, 3}, new int[]{190, 4}, new int[]{145, 0}, new int[]{146, 3}, new int[]{147, 4}, new int[]{148, 3}, new int[]{149, 4}, new int[]{150, 2}};

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int[][] f7553j = {new int[]{17, 74}, new int[]{18, 75}, new int[]{19, 4}, new int[]{20, 3}, new int[]{21, 2}, new int[]{25, 26}, new int[]{29, 4}, new int[]{30, 3}, new int[]{48, 12}};

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public byte f7554k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f7555l = new a();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f7556m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f7557n = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Runnable f7558o = new b();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f7559p = new c();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Runnable f7560q = new d();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Runnable f7561r = new e();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f7562s = false;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public byte f7563t = 5;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public Runnable f7564u = new f();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public Runnable f7565v = new g();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public Runnable f7566w = new h();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public o1.g0 f7567x = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final int f7568y = 1;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final int f7569z = 2;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l6 l6Var = l6.this;
            byte b2 = (byte) (l6Var.f7554k + 1);
            l6Var.f7554k = b2;
            if (b2 > 5) {
                l0.b0.o0(l6Var.f7555l);
                l6.this.f7554k = (byte) 0;
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l6 l6Var = l6.this;
            int i2 = l6Var.f7549f;
            if (i2 > 0) {
                l6Var.f7549f = i2 - 1;
            }
            if (l6Var.f7549f == 0) {
                l0.c0.e();
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l6.this.f7549f = 4;
            l0.c0.s0();
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.D == 11) {
                z.k.s(227, -17, 1, 0);
            } else {
                z.k.s(227, -17, 1, 1);
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            z.k.s(227, -112, 2, 123, 0);
            z.k.s(227, -112, 2, 124, 0);
            z.k.s(227, -112, 2, 48, 0);
            z.k.s(227, -112, 2, 35, 0);
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l6 l6Var = l6.this;
            l6Var.f7563t = (byte) 5;
            l0.b0.b(l6Var.f7565v);
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l6 l6Var = l6.this;
            byte b2 = (byte) (l6Var.f7563t - 1);
            l6Var.f7563t = b2;
            if (b2 <= 0) {
                l0.b0.p0(l6Var.f7565v);
                l6.this.f7563t = (byte) 5;
                return;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (u0.b.f17306a0 == 1) {
                l6 l6Var2 = l6.this;
                l6Var2.g3(l6Var2.f7567x.b(2, 1));
                z.k.s(227, 144, 2, 48, 0);
            }
        }
    }

    public class h implements Runnable {
        public h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, -124, 7, (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN), (byte) (time.month + 1), (byte) time.monthDay, (byte) time.hour, (byte) time.minute, (byte) time.second, !DateFormat.is24HourFormat(App.c()) ? 1 : 0);
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        this.f7567x.a();
        qt.z(this.f7566w);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        u0.c.f17386m.a(this.f7564u, 1);
        y0.g.f18094d.a(this.f7559p, 1);
        y0.g.f18095e.a(this.f7559p, 1);
        w0.e.f17815a.a(this.f7558o, 1);
        w0.e.f17819e.a(this.f7558o, 1);
        o1.y yVar = u0.c.f17374a;
        yVar.a(this.f7558o, 1);
        u0.c.f17392s.a(this.f7558o, 1);
        u0.c.f17393t.a(this.f7558o, 1);
        if (nt.f8633a == 196811) {
            yVar.a(this.f7560q, 1);
            qt.z(this.f7561r);
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        byte b2;
        int[][] iArr2;
        int i5;
        int i6;
        int i7;
        byte b3 = bArr[i2];
        if (b3 == -47) {
            int i8 = h0.c.E;
            if (i8 == 4 || i8 == 5 || A == 0) {
                return;
            }
            if (u0.b.f17347o == 0) {
                if (nt.W == 0) {
                    int i9 = i2 + 3;
                    if (this.f7546c != ((bArr[i9] >> 7) & 1)) {
                        int i10 = (bArr[i9] >> 7) & 1;
                        this.f7546c = i10;
                        if (i10 == 1) {
                            if (!o1.u.T(a.b.O)) {
                                qt.t();
                            }
                        } else if (o1.u.T(a.b.O)) {
                            qt.f();
                        }
                    }
                } else {
                    int i11 = (bArr[i2 + 3] >> 3) & 1;
                    if (this.f7546c != i11) {
                        this.f7546c = i11;
                        if (i11 == 1) {
                            if (!o1.u.T(a.b.O)) {
                                qt.t();
                            }
                        } else if (o1.u.T(a.b.O)) {
                            qt.f();
                        }
                    }
                }
            }
            int i12 = (bArr[i2 + 3] >> 6) & 1;
            if (u0.b.f17347o == 0 && i12 == 1) {
                if (!o1.u.T(a.b.O)) {
                    qt.t();
                    return;
                } else {
                    if (o1.u.T(a.b.O)) {
                        qt.f();
                    }
                    return;
                }
            }
            return;
        }
        if (b3 == 32) {
            if (!nt.a() && nt.f8633a != 196811) {
                byte b4 = bArr[i2 + 2];
                byte b5 = bArr[i2 + 3];
                if (b4 == 24 && b5 == 1) {
                    if (o1.u.Y0().equals("com.syu.canbus")) {
                        o1.u.k();
                        return;
                    } else {
                        o1.u.v();
                        return;
                    }
                }
                return;
            }
            byte b6 = bArr[i2 + 2];
            byte b7 = bArr[i2 + 3];
            this.f7551h = b6 & 255;
            int i13 = 0;
            while (true) {
                iArr = this.f7552i;
                if (i13 >= iArr.length) {
                    break;
                }
                int i14 = this.f7551h;
                if (i14 == iArr[i13][0]) {
                    if (i14 == 0) {
                        break;
                    }
                    this.f7550g = i13;
                    break;
                }
                i13++;
            }
            if (this.f7551h == 10) {
                if ((b7 & 255) == 1) {
                    int i15 = h0.c.E;
                    if (i15 == 3 || i15 == 4 || i15 == 5) {
                        l0.b0.l0(26, 0);
                        l0.b0.l0(26, 1);
                        return;
                    } else {
                        l0.b0.l0(6, 0);
                        l0.b0.l0(6, 1);
                        return;
                    }
                }
                return;
            }
            if ((b7 & 255) != 0) {
                if (i13 >= iArr.length || (b2 = this.f7554k) != 0) {
                    return;
                }
                this.f7554k = (byte) (b2 + 1);
                l0.b0.l0(iArr[i13][1], 0);
                l0.b0.a(this.f7555l);
                return;
            }
            int i16 = this.f7550g;
            if (i16 < iArr.length) {
                i4 = 255;
                if (i16 != 255) {
                    l0.b0.l0(iArr[i16][1], 1);
                    l0.b0.o0(this.f7555l);
                    this.f7554k = (byte) 0;
                }
            } else {
                i4 = 255;
            }
            this.f7550g = i4;
            return;
        }
        if (b3 == 41) {
            if (this.f7562s) {
                return;
            }
            qt.i(bArr[i2 + 2], bArr[i2 + 3], true, GLES10.GL_AMBIENT);
            return;
        }
        if (b3 == 48) {
            if (nt.f8633a == 196811) {
                qt.L(new String(bArr, i2 + 2, i3 - 2));
                return;
            }
            return;
        }
        if (b3 == 51) {
            byte b8 = bArr[i2 + 2];
            if (b8 == 1) {
                qt.y0(98, bArr[i2 + 3] & 255);
                qt.y0(99, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
                qt.y0(100, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
                qt.y0(101, ((bArr[i2 + 8] << 8) & 65280) | (bArr[i2 + 9] & 255));
                qt.y0(102, (16711680 & (bArr[i2 + 10] << 16)) | ((bArr[i2 + 11] << 8) & 65280) | (bArr[i2 + 12] & 255));
                qt.y0(103, ((bArr[i2 + 13] << 8) & 65280) | (bArr[i2 + 14] & 255));
                byte b9 = bArr[i2 + 15];
                qt.y0(104, b9 & 3);
                qt.y0(105, (b9 >> 2) & 3);
                qt.y0(106, (b9 >> 4) & 3);
                qt.y0(107, (b9 >> 6) & 1);
                qt.y0(108, (b9 >> 7) & 1);
                int i17 = bArr[i2 + 16] & 255;
                qt.y0(109, this.f7545b[i17 < 0 ? 0 : i17 > 11 ? 11 : i17]);
                return;
            }
            if (b8 != 2) {
                return;
            }
            qt.y0(110, ((bArr[i2 + 3] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
            qt.y0(111, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
            qt.y0(112, ((bArr[i2 + 8] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 9] << 8) & 65280) | (bArr[i2 + 10] & 255));
            qt.y0(113, ((bArr[i2 + 11] << 8) & 65280) | (bArr[i2 + 12] & 255));
            qt.y0(114, (16711680 & (bArr[i2 + 13] << 16)) | ((bArr[i2 + 14] << 8) & 65280) | (bArr[i2 + 15] & 255));
            qt.y0(115, ((bArr[i2 + 16] << 8) & 65280) | (bArr[i2 + 17] & 255));
            byte b10 = bArr[i2 + 18];
            qt.y0(104, b10 & 3);
            qt.y0(105, (b10 >> 2) & 3);
            qt.y0(106, (b10 >> 4) & 3);
            qt.y0(107, (b10 >> 6) & 1);
            qt.y0(108, (b10 >> 7) & 1);
            int i18 = bArr[i2 + 19] & 255;
            qt.y0(109, this.f7545b[i18 < 0 ? 0 : i18 > 11 ? 11 : i18]);
            return;
        }
        if (b3 == 120) {
            byte b11 = bArr[i2 + 2];
            byte b12 = bArr[i2 + 3];
            this.f7551h = b11 & 255;
            int i19 = 0;
            while (true) {
                iArr2 = this.f7552i;
                if (i19 >= iArr2.length) {
                    break;
                }
                int i20 = this.f7551h;
                if (i20 == iArr2[i19][0]) {
                    if (i20 == 0) {
                        break;
                    }
                    this.f7550g = i19;
                    break;
                }
                i19++;
            }
            int i21 = this.f7551h;
            if ((i21 == 29 || i21 == 30) && u0.b.D == 11) {
                return;
            }
            if ((b12 & 255) != 0) {
                if (i19 < iArr2.length) {
                    l0.b0.l0(iArr2[i19][1], 0);
                    return;
                }
                return;
            } else {
                if (i19 <= iArr2.length) {
                    l0.b0.l0(iArr2[this.f7550g][1], 1);
                    return;
                }
                return;
            }
        }
        if (b3 == 121) {
            qt.y0(122, (bArr[i2 + 3] & 255) | ((bArr[i2 + 2] & 1) << 8));
            return;
        }
        if (b3 == 124) {
            byte b13 = bArr[i2 + 2];
            byte b14 = bArr[i2 + 3];
            byte b15 = bArr[i2 + 4];
            byte b16 = bArr[i2 + 5];
            byte b17 = bArr[i2 + 6];
            byte b18 = bArr[i2 + 7];
            byte b19 = bArr[i2 + 8];
            byte b20 = bArr[i2 + 9];
            byte b21 = bArr[i2 + 10];
            byte b22 = bArr[i2 + 11];
            qt.y0(118, b13);
            qt.y0(119, (b14 << 16) | ((b15 & 255) << 8) | (b16 & 255));
            qt.y0(120, (b17 & 255) | ((b18 & 255) << 8) | ((b19 & 255) << 16));
            qt.y0(121, ((b22 & 255) << 16) | (b20 & 255) | ((b21 & 255) << 8));
            if (this.f7557n != b13) {
                if (b13 == 1 || b13 == 2) {
                    if (this.f7556m != 11 && (i5 = u0.b.D) != 11) {
                        this.f7556m = i5;
                    }
                    o1.u.v();
                } else {
                    if (o1.u.S(a.b.D)) {
                        o1.u.k();
                    }
                    int i22 = this.f7556m;
                    if (i22 != 11) {
                        u0.d.s(i22);
                        u0.b.f17311c.c(this.f7556m);
                    }
                }
                this.f7557n = b13;
                return;
            }
            return;
        }
        if (b3 == 125) {
            int i23 = bArr[i2 + 2] & 255;
            if (i23 == 1) {
                if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                    int i24 = i2 + 3;
                    l0.c0.b((bArr[i24] >> 3) & 1, (bArr[i24] >> 4) & 1, 0);
                    return;
                } else {
                    int i25 = i2 + 3;
                    l0.c0.a((bArr[i25] >> 3) & 1, (bArr[i25] >> 4) & 1, 0);
                    return;
                }
            }
            if (i23 == 3) {
                int i26 = ((bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280)) / 100;
                qt.y0(1031, i26);
                o1.x.C(nt.f8643f, 1049, new int[]{1, i26}, null, null);
                return;
            } else {
                if (i23 != 8) {
                    return;
                }
                qt.i(bArr[i2 + 3], bArr[i2 + 4], true, 540);
                this.f7562s = true;
                return;
            }
        }
        switch (b3) {
            case 34:
                if (nt.a()) {
                    u0.d.R2(a3(bArr[i2 + 2] & 255));
                    u0.d.S2(a3(bArr[i2 + 3] & 255));
                    u0.d.T2(a3(bArr[i2 + 4] & 255));
                    u0.d.U2(a3(bArr[i2 + 5] & 255));
                }
                break;
            case 35:
                if (nt.f8633a == 196811) {
                    byte b23 = bArr[i2 + 2];
                    byte b24 = bArr[i2 + 3];
                    byte b25 = bArr[i2 + 6];
                    qt.y0(10, (b23 >> 7) & 1);
                    qt.y0(11, (b23 >> 6) & 1);
                    qt.y0(12, (b23 >> 5) & 1);
                    qt.y0(13, (b23 >> 3) & 1);
                    qt.y0(14, (b23 >> 2) & 1);
                    qt.y0(18, (b24 >> 7) & 1);
                    qt.y0(19, (b24 >> 6) & 1);
                    qt.y0(20, (b24 >> 5) & 1);
                    qt.y0(21, b24 & DhcpPacket.DHCP_DOMAIN_NAME);
                    int i27 = i2 + 4;
                    byte b26 = bArr[i27];
                    int i28 = i2 + 5;
                    byte b27 = bArr[i28];
                    if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                        b26 = bArr[i28];
                        b27 = bArr[i27];
                    }
                    int i29 = b26 & 255;
                    if (i29 == 0) {
                        i6 = -2;
                    } else if (i29 == 31) {
                        i6 = -3;
                    } else if (i29 < 1 || i29 > 28) {
                        i6 = -1;
                    } else {
                        i6 = (b25 & 1) == 0 ? (i29 * 5) + 155 : (i29 * 10) + 590;
                    }
                    qt.y0(27, i6);
                    int i30 = b27 & 255;
                    if (i30 == 0) {
                        i7 = -2;
                    } else if (i30 == 31) {
                        i7 = -3;
                    } else if (i30 < 1 || i30 > 28) {
                        i7 = -1;
                    } else {
                        i7 = (b25 & 1) == 0 ? (i30 * 5) + 155 : (i30 * 10) + 590;
                    }
                    qt.y0(28, i7);
                    qt.y0(65, (b25 >> 7) & 1);
                    qt.y0(16, (b25 >> 6) & 1);
                    qt.y0(37, b25 & 1);
                } else if (nt.a()) {
                    int i31 = i2 + 2;
                    int i32 = bArr[i31] & 255;
                    int i33 = i2 + 3;
                    int i34 = bArr[i33] & 255;
                    int i35 = i2 + 4;
                    int i36 = bArr[i35] & 255;
                    int i37 = i2 + 5;
                    int i38 = bArr[i37] & 255;
                    if (i32 == 0 && i34 == 0 && i36 == 0 && i38 == 0) {
                        u0.d.C2(0);
                    } else if ((l0.c0.f13013g != i32 || l0.c0.f13014h != i34 || l0.c0.f13015i != i36 || l0.c0.f13016j != i38) && u0.b.f17347o == 0) {
                        u0.d.C2(1);
                        l0.c0.f13017k = 4;
                        l0.b0.b(l0.c0.f13018l);
                    }
                    l0.c0.f13013g = i32;
                    l0.c0.f13014h = i34;
                    l0.c0.f13015i = i36;
                    l0.c0.f13016j = i38;
                    u0.d.D2(a3(bArr[i31] & 255));
                    u0.d.E2(a3(bArr[i33] & 255));
                    u0.d.F2(a3(bArr[i35] & 255));
                    u0.d.G2(a3(bArr[i37] & 255));
                }
                break;
            case 36:
                byte b28 = bArr[i2 + 2];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b28 >> 7) & 1);
                    qt.y0(2, (b28 >> 6) & 1);
                } else {
                    qt.y0(1, (b28 >> 6) & 1);
                    qt.y0(2, (b28 >> 7) & 1);
                }
                qt.y0(3, (b28 >> 4) & 1);
                qt.y0(4, (b28 >> 5) & 1);
                qt.y0(5, (b28 >> 3) & 1);
                qt.y0(0, (b28 >> 2) & 1);
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f7567x.j();
        qt.q0(this.f7566w);
        o1.y yVar = u0.c.f17374a;
        yVar.d(this.f7560q);
        qt.q0(this.f7561r);
        y0.g.f18094d.d(this.f7559p);
        y0.g.f18095e.d(this.f7559p);
        w0.e.f17815a.d(this.f7558o);
        w0.e.f17819e.d(this.f7558o);
        yVar.d(this.f7558o);
        u0.c.f17392s.d(this.f7558o);
        u0.c.f17393t.d(this.f7558o);
        u0.c.f17386m.d(this.f7564u);
        l0.b0.p0(this.f7565v);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 124) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 1) {
            if (T2(iArr, 2)) {
                z.k.s(227, PackageManager.INSTALL_FAILED_USER_RESTRICTED, 2, (byte) iArr[0], iArr[1]);
            }
        } else {
            if (i2 != 100) {
                if (i2 == 1005 && T2(iArr, 1)) {
                    f3(iArr[0]);
                    return;
                }
                return;
            }
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            z.k.s(227, -112, 2, 51, (byte) iArr[0]);
        }
    }

    public final int a3(int i2) {
        if (i2 == 0) {
            return 15;
        }
        if (i2 != 1) {
            if (i2 == 2) {
                return 3;
            }
            if (i2 == 3) {
                return 7;
            }
            if (i2 == 4) {
                return 9;
            }
        }
        return 0;
    }

    public final void f3(int i2) {
        if (i2 < 0) {
            i2 = 0;
        } else if (i2 > 2) {
            i2 = 2;
        }
        B = i2;
        if (i2 == 0) {
            z.k.s(227, -58, 2, 64, 1);
        } else if (i2 == 1) {
            z.k.s(227, -58, 2, 64, 0);
        }
        if (i2 == 2) {
            z.k.s(227, -58, 2, 64, 2);
        }
        qt.y0(Process.MEDIA_UID, B);
        int iB = this.f7567x.b(1, 0);
        int i3 = B;
        if (iB != i3) {
            this.f7567x.g(1, i3);
        }
    }

    public final void g3(int i2) {
        A = i2;
        qt.y0(123, i2);
        int iB = this.f7567x.b(2, 1);
        int i3 = A;
        if (iB != i3) {
            this.f7567x.g(2, i3);
        }
    }
}
