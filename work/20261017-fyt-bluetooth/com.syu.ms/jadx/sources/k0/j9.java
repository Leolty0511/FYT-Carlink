package k0;

import android.app.ActivityManager;
import android.content.Intent;
import android.drm.DrmManagerClient;
import android.graphics.Paint;
import android.net.ProxyProperties;
import android.net.dhcp.DhcpPacket;
import android.net.wifi.BatchedScanSettings;
import android.os.SystemProperties;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public class j9 extends lt {
    public static int A = 0;
    public static int B = 0;
    public static int C = 0;
    public static int D = 0;
    public static int E = 0;
    public static int F = 0;
    public static int G = 0;
    public static int H = 0;
    public static int I = -1;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static int f6753w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static int f6754x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static int f6755y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static int f6756z;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f6757b;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public String f6765j;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f6758c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f6759d = {new int[]{2, 5}, new int[]{3, 3}, new int[]{4, 4}, new int[]{7, 29}, new int[]{8, 6}, new int[]{17, 2}, new int[]{18, 4}, new int[]{19, 3}, new int[]{20, 7}, new int[]{21, 8}, new int[]{22, 12}, new int[]{10, 26}, new int[]{23, 4}, new int[]{24, 3}, new int[]{31, 13}, new int[]{129, 7}, new int[]{130, 8}, new int[]{80, 2}, new int[]{33, 5}, new int[]{34, 11}, new int[]{35, 18}, new int[]{36, 16}, new int[]{8, 6}, new int[]{48, 18}, new int[]{2, 9}, new int[]{145, 40}, new int[]{146, 41}, new int[]{147, 42}, new int[]{148, 43}, new int[]{149, 44}, new int[]{150, 45}, new int[]{151, 3}, new int[]{152, 4}, new int[]{153, 21}, new int[]{154, 14}, new int[]{155, 5}, new int[]{156, 3}, new int[]{157, 4}, new int[]{158, 55}, new int[]{159, 1}, new int[]{160, 2}, new int[]{161, 54}, new int[]{162, 29}, new int[]{163, 6}, new int[]{164, 12}, new int[]{165, 62}, new int[]{166, 9}, new int[]{176, 18}, new int[]{177, 26}, new int[]{178, 6}, new int[]{179, 1}, new int[]{180, 63}, new int[]{181, 24}, new int[]{182, 54}, new int[]{183, 55}, new int[]{184, 1}, new int[]{185, 34}, new int[]{186, 35}, new int[]{187, 32}, new int[]{188, 33}, new int[]{189, 29}, new int[]{190, 31}, new int[]{191, 30}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[][] f6760e = {new int[]{2, 5}, new int[]{3, 3}, new int[]{4, 4}, new int[]{7, 29}, new int[]{8, 6}, new int[]{17, 2}, new int[]{18, 4}, new int[]{19, 3}, new int[]{20, 7}, new int[]{21, 8}, new int[]{22, 12}, new int[]{10, 26}, new int[]{23, 4}, new int[]{24, 3}, new int[]{31, 13}, new int[]{129, 7}, new int[]{130, 8}, new int[]{80, 2}, new int[]{33, 5}, new int[]{34, 11}, new int[]{35, 18}, new int[]{36, 16}, new int[]{8, 6}, new int[]{48, 18}, new int[]{2, 9}, new int[]{145, 40}, new int[]{146, 41}, new int[]{147, 42}, new int[]{148, 43}, new int[]{149, 44}, new int[]{150, 45}, new int[]{151, 3}, new int[]{152, 4}, new int[]{153, 55}, new int[]{154, 14}, new int[]{155, 2}, new int[]{156, 72}, new int[]{157, 71}, new int[]{158, 1}, new int[]{159, 18}, new int[]{160, 54}, new int[]{161, 12}, new int[]{162, 29}, new int[]{163, 63}, new int[]{164, 69}, new int[]{165, 62}, new int[]{166, 9}, new int[]{176, 18}, new int[]{177, 26}, new int[]{178, 6}, new int[]{179, 1}, new int[]{180, 63}, new int[]{181, 24}, new int[]{182, 54}, new int[]{183, 55}, new int[]{184, 1}, new int[]{185, 34}, new int[]{186, 35}, new int[]{187, 32}, new int[]{188, 33}, new int[]{189, 29}, new int[]{190, 31}, new int[]{191, 30}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f6761f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f6762g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f6763h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f6764i = new d();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f6766k = new e();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public byte f6767l = 5;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f6768m = new f();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Runnable f6769n = new g();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Runnable f6770o = new h();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f6771p = new i();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Runnable f6772q = new j();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Runnable f6773r = new k();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public Runnable f6774s = new l();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public Runnable f6775t = new a();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public Runnable f6776u = new b();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f6777v = 0;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            j9.this.n3((byte) 2, u0.b.i3);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            j9.this.n3((byte) 4, u0.b.j3);
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            z.k.s(227, -116, 1, 0);
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            j9 j9Var = j9.this;
            int i2 = j9Var.f6763h;
            if (i2 <= 0) {
                if (i2 == -1) {
                    a.f.k().m("ECO_MODE");
                    return;
                } else {
                    a.f.k().m("ECO_MODE");
                    u0.d.u3(1);
                    return;
                }
            }
            j9Var.f6763h = i2 - 1;
            a.f.k().l(0, "ECO_MODE", "Enter ECO Mode in " + j9.this.f6763h + "s", Paint.Align.CENTER, 28, -1, 60, -1878982912);
            o1.m.a().postDelayed(j9.this.f6764i, 1000L);
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
            DateFormat.is24HourFormat(App.c());
            z.k.s(227, 166, 5, (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN), (byte) (time.month + 1), (byte) time.monthDay, (byte) time.hour, (byte) time.minute);
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            j9 j9Var = j9.this;
            j9Var.f6767l = (byte) 5;
            l0.b0.b(j9Var.f6769n);
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            j9 j9Var = j9.this;
            byte b2 = (byte) (j9Var.f6767l - 1);
            j9Var.f6767l = b2;
            if (b2 <= 0) {
                l0.b0.p0(j9Var.f6769n);
                j9.this.f6767l = (byte) 5;
                return;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            z.k.s(227, 144, 2, 113, 0);
            if (u0.b.f17306a0 == 1) {
                j9.this.a3();
                j9.this.c3();
                int i2 = nt.f8637c;
                if (i2 == 5) {
                    z.k.s(227, 202, 1, 1);
                } else if (i2 != 6) {
                    z.k.s(227, 202, 1, 0);
                } else {
                    z.k.s(227, 202, 1, 2);
                }
            }
        }
    }

    public class h implements Runnable {
        public h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int iIntValue;
            int i2 = h0.c.E;
            int i3 = (i2 == 2 || i2 == 3 || i2 == 4 || i2 == 5) ? 16 : 0;
            if (i2 == 3) {
                i3 |= 2;
            } else if (i2 == 4) {
                i3 |= 1;
            } else if (i2 == 5) {
                i3 |= 4;
            }
            String str = h0.c.f2454s;
            if (str != null) {
                try {
                    iIntValue = Integer.valueOf(str).intValue();
                } catch (Exception unused) {
                    iIntValue = 0;
                }
            } else {
                iIntValue = 0;
            }
            int i4 = (iIntValue & 15) | ((h0.c.C << 40) & 240);
            int i5 = h0.c.P / 1000;
            z.k.s(-29, -59, 2, i4, i3, i5 / BatchedScanSettings.MAX_INTERVAL_SEC, (i5 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60, i5 % 60);
        }
    }

    public class i implements Runnable {
        public i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            j9.this.c3();
        }
    }

    public class j implements Runnable {
        public j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            j9.this.a3();
        }
    }

    public class k implements Runnable {
        public k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            j9.b3();
        }
    }

    public class l implements Runnable {
        public l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            j9.this.r3(h0.c.f2437h);
        }
    }

    public static void b3() {
        if (u0.b.D != 1) {
            return;
        }
        int[] iArr = new int[6];
        int i2 = w0.d.f17798j;
        int i3 = 0;
        iArr[0] = 194;
        iArr[1] = 4;
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
                    iArr[2] = 3;
                    break;
            }
        } else {
            iArr[2] = 16;
        }
        int i5 = w0.d.f17797i;
        iArr[3] = i5 & 255;
        iArr[4] = (i5 >> 8) & 255;
        if (i2 == 0 || i2 % 6 != 0) {
            iArr[5] = i2 % 6;
        } else {
            iArr[5] = 6;
        }
        int[] iArr2 = new int[7];
        iArr2[0] = 227;
        while (i3 < 6) {
            int i6 = i3 + 1;
            iArr2[i6] = iArr[i3];
            i3 = i6;
        }
        z.k.s(iArr2);
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
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8314i = 1;
        mtVar.f8320o = 0;
        if (nt.f8637c == 3) {
            mtVar.f8314i = 0;
        }
        u0.c.f17386m.a(this.f6768m, 1);
        u0.c.f17374a.a(this.f6772q, 1);
        u0.c.f17393t.a(this.f6772q, 1);
        u0.c.f17392s.a(this.f6772q, 1);
        u0.c.f17388o.a(this.f6775t, 1);
        u0.c.f17389p.a(this.f6776u, 1);
        w0.e.f17815a.a(this.f6773r, 1);
        w0.e.f17819e.a(this.f6773r, 1);
        y0.g.f18094d.a(this.f6771p, 1);
        y0.g.f18095e.a(this.f6771p, 1);
        h0.d.f2464c.a(this.f6774s, 1);
        h0.d.f2467f.a(this.f6770o, 1);
        h0.d.f2469h.a(this.f6770o, 1);
        h0.d.f2465d.a(this.f6770o, 1);
        h0.d.f2462a.a(this.f6770o, 1);
        qt.z(this.f6766k);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int[][] iArr2;
        int i4;
        String str;
        byte b2 = bArr[i2];
        if (b2 == 23) {
            qt.y0(207, bArr[i2 + 5] & 255);
            qt.y0(208, bArr[i2 + 6] & 255);
            qt.y0(209, bArr[i2 + 4] & 255);
            qt.y0(210, 255 & bArr[i2 + 3]);
            int i5 = i2 + 2;
            qt.y0(211, bArr[i5] & DhcpPacket.DHCP_DOMAIN_NAME);
            qt.y0(212, (bArr[i5] >> 4) & 1);
            qt.y0(213, (bArr[i5] >> 5) & 1);
            qt.y0(214, (bArr[i5] >> 7) & 1);
        }
        if (b2 == 56) {
            byte b3 = bArr[i2 + 2];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b3 >> 6) & 1);
                qt.y0(2, (b3 >> 7) & 1);
            } else {
                qt.y0(1, (b3 >> 7) & 1);
                qt.y0(2, (b3 >> 6) & 1);
            }
            qt.y0(3, (b3 >> 5) & 1);
            qt.y0(4, (b3 >> 4) & 1);
            qt.y0(5, (b3 >> 3) & 1);
            qt.y0(0, (b3 >> 1) & 1);
            byte b4 = bArr[i2 + 3];
            qt.y0(107, (b4 >> 7) & 1);
            qt.y0(168, (b4 >> 4) & 1);
            qt.y0(170, (b4 >> 3) & 1);
            qt.y0(169, (b4 >> 2) & 1);
            qt.y0(176, (b4 >> 1) & 1);
            byte b5 = bArr[i2 + 4];
            int i6 = ((b5 & 224) >> 5) & 255;
            if (i6 < 0) {
                i6 = 0;
            } else if (i6 > 7) {
                i6 = 7;
            }
            qt.y0(119, i6);
            qt.y0(108, (b5 >> 4) & 1);
            qt.y0(177, (b5 >> 3) & 1);
            byte b6 = bArr[i2 + 5];
            qt.y0(113, ((b6 & 192) >> 6) & 255);
            qt.y0(110, ((b6 & 48) >> 4) & 255);
            qt.y0(112, (b6 >> 3) & 1);
            qt.y0(152, ((b6 & 6) >> 1) & 255);
            byte b7 = bArr[i2 + 6];
            qt.y0(153, (b7 >> 7) & 1);
            qt.y0(151, (b7 >> 6) & 1);
            qt.y0(129, (b7 >> 5) & 1);
            qt.y0(111, (b7 >> 4) & 1);
            qt.y0(215, (b7 >> 0) & 15);
            byte b8 = bArr[i2 + 7];
            qt.y0(131, (b8 >> 6) & 3);
            qt.y0(118, (b8 >> 4) & 3);
            qt.y0(218, (b8 >> 2) & 1);
            qt.y0(219, (b8 >> 1) & 1);
            qt.y0(220, (b8 >> 0) & 1);
            int i7 = i2 + 8;
            qt.y0(221, (bArr[i7] >> 7) & 1);
            qt.y0(222, (bArr[i7] >> 5) & 3);
            qt.y0(223, (bArr[i7] >> 4) & 1);
            qt.y0(224, (bArr[i7] >> 3) & 1);
            qt.y0(225, (bArr[i7] >> 2) & 1);
            return;
        }
        if (b2 == 68) {
            int i8 = bArr[i2 + 2] & 255 & 1;
            qt.y0(178, i8);
            if (i8 == 1) {
                this.f6763h = 6;
                o1.m.a().postDelayed(this.f6764i, 1000L);
                return;
            } else {
                if (i8 != 0 || this.f6763h == 0) {
                    return;
                }
                this.f6763h = -1;
                o1.m.a().postDelayed(this.f6764i, 1000L);
                return;
            }
        }
        if (b2 == 113) {
            int i9 = i2 + 4;
            int i10 = (((bArr[i9] >> 4) & 15) * 10) + (bArr[i9] & DhcpPacket.DHCP_DOMAIN_NAME);
            int i11 = i2 + 5;
            int i12 = (((bArr[i11] >> 4) & 15) * 10) + (bArr[i11] & DhcpPacket.DHCP_DOMAIN_NAME);
            int i13 = i2 + 6;
            qt.L("XP_PSA_20" + i10 + "_" + i12 + "_" + ((((bArr[i13] >> 4) & 15) * 10) + (bArr[i13] & DhcpPacket.DHCP_DOMAIN_NAME)) + " V" + ((int) bArr[i2 + 8]) + ((int) bArr[i2 + 9]) + ((int) bArr[i2 + 10]));
            return;
        }
        if (b2 == 32) {
            int i14 = i2 + 2;
            int i15 = bArr[i14] & 255;
            int i16 = i2 + 3;
            int i17 = bArr[i16] & 255;
            if (i15 == 32 && i17 == 2) {
                int i18 = this.f6777v;
                if (i18 == 1) {
                    i4 = 64;
                } else if (i18 == 2) {
                    i4 = 65;
                } else {
                    i4 = i18 == 3 ? 34 : 0;
                }
                z.k.s(227, -126, 6, 0, 0, 0, (byte) i4, 0, 0);
            } else if (i15 == 32) {
                qt.y0(154, i17);
            }
            if (nt.a()) {
                byte b9 = bArr[i14];
                byte b10 = bArr[i16];
                if (nt.f8633a == 655641) {
                    this.f6758c = b9 & 255;
                    int i19 = 0;
                    while (true) {
                        iArr2 = this.f6760e;
                        if (i19 >= iArr2.length) {
                            break;
                        }
                        int i20 = this.f6758c;
                        if (i20 == iArr2[i19][0]) {
                            if (i20 == 0) {
                                break;
                            }
                            this.f6757b = i19;
                            break;
                        }
                        i19++;
                    }
                    int i21 = this.f6758c;
                    if (i21 != 35) {
                        if (i21 == 48) {
                            if ((b10 & 255) == 1) {
                                int i22 = h0.c.E;
                                if (i22 != 3) {
                                    if (i22 == 4) {
                                        l0.b0.l0(18, 0);
                                        l0.b0.l0(18, 1);
                                        return;
                                    } else if (i22 != 5) {
                                        l0.b0.l0(2, 0);
                                        l0.b0.l0(2, 1);
                                        return;
                                    }
                                }
                                l0.b0.l0(26, 0);
                                l0.b0.l0(26, 1);
                                return;
                            }
                            return;
                        }
                        if (i21 != 80) {
                            if (i21 == 129) {
                                if ((b10 & 255) != 0) {
                                    l0.b0.l0(7, 0);
                                    l0.b0.l0(7, 1);
                                    return;
                                }
                                return;
                            }
                            if (i21 == 130) {
                                if ((b10 & 255) != 0) {
                                    l0.b0.l0(8, 0);
                                    l0.b0.l0(8, 1);
                                    return;
                                }
                                return;
                            }
                            int i23 = b10 & 255;
                            if (i23 == 1) {
                                if (i19 < iArr2.length) {
                                    l0.b0.l0(iArr2[i19][1], 0);
                                    return;
                                }
                                return;
                            } else {
                                if (i23 == 0) {
                                    int i24 = this.f6757b;
                                    if (i24 < iArr2.length && i24 != 255) {
                                        l0.b0.l0(iArr2[i24][1], 1);
                                    }
                                    this.f6757b = 255;
                                    return;
                                }
                                return;
                            }
                        }
                    }
                    if ((b10 & 255) == 1) {
                        int i25 = h0.c.E;
                        if (i25 == 3 || i25 == 5) {
                            l0.b0.l0(26, 0);
                            l0.b0.l0(26, 1);
                            return;
                        } else {
                            l0.b0.l0(18, 0);
                            l0.b0.l0(18, 1);
                            return;
                        }
                    }
                    return;
                }
                this.f6758c = b9 & 255;
                int i26 = 0;
                while (true) {
                    iArr = this.f6759d;
                    if (i26 >= iArr.length) {
                        break;
                    }
                    int i27 = this.f6758c;
                    if (i27 == iArr[i26][0]) {
                        if (i27 == 0) {
                            break;
                        }
                        this.f6757b = i26;
                        break;
                    }
                    i26++;
                }
                int i28 = this.f6758c;
                if (i28 != 35) {
                    if (i28 == 48) {
                        if ((b10 & 255) == 1) {
                            int i29 = h0.c.E;
                            if (i29 != 3) {
                                if (i29 == 4) {
                                    l0.b0.l0(18, 0);
                                    l0.b0.l0(18, 1);
                                    return;
                                } else if (i29 != 5) {
                                    l0.b0.l0(2, 0);
                                    l0.b0.l0(2, 1);
                                    return;
                                }
                            }
                            l0.b0.l0(26, 0);
                            l0.b0.l0(26, 1);
                            return;
                        }
                        return;
                    }
                    if (i28 != 80) {
                        if (i28 == 129) {
                            if ((b10 & 255) != 0) {
                                l0.b0.l0(7, 0);
                                l0.b0.l0(7, 1);
                                return;
                            }
                            return;
                        }
                        if (i28 == 130) {
                            if ((b10 & 255) != 0) {
                                l0.b0.l0(8, 0);
                                l0.b0.l0(8, 1);
                                return;
                            }
                            return;
                        }
                        int i30 = b10 & 255;
                        if (i30 == 1) {
                            if (i26 < iArr.length) {
                                l0.b0.l0(iArr[i26][1], 0);
                                return;
                            }
                            return;
                        } else {
                            if (i30 == 0) {
                                int i31 = this.f6757b;
                                if (i31 < iArr.length && i31 != 255) {
                                    l0.b0.l0(iArr[i31][1], 1);
                                }
                                this.f6757b = 255;
                                return;
                            }
                            return;
                        }
                    }
                }
                if ((b10 & 255) == 1) {
                    int i32 = h0.c.E;
                    if (i32 == 3 || i32 == 5) {
                        l0.b0.l0(26, 0);
                        l0.b0.l0(26, 1);
                        return;
                    } else {
                        l0.b0.l0(18, 0);
                        l0.b0.l0(18, 1);
                        return;
                    }
                }
                return;
            }
            return;
        }
        if (b2 == 33) {
            byte b11 = bArr[i2 + 2];
            qt.y0(10, (b11 >> 7) & 1);
            qt.y0(11, (b11 >> 6) & 1);
            int[] iArr3 = new int[1];
            iArr3[0] = (b11 & 32) == 0 ? 0 : 1;
            qt.y0(12, iArr3);
            qt.y0(13, (b11 >> 3) & 1);
            qt.y0(14, (b11 >> 2) & 1);
            qt.y0(16, (b11 >> 0) & 1);
            byte b12 = bArr[i2 + 3];
            qt.y0(18, (b12 >> 7) & 1);
            qt.y0(19, (b12 >> 6) & 1);
            qt.y0(20, (b12 >> 5) & 1);
            int[] iArr4 = new int[1];
            iArr4[0] = (b12 & 224) == 0 ? 0 : 1;
            qt.y0(49, iArr4);
            int i33 = b12 & DhcpPacket.DHCP_DOMAIN_NAME;
            qt.y0(21, i33 > 9 ? 9 : i33);
            int i34 = i2 + 4;
            byte b13 = bArr[i34];
            int i35 = i2 + 5;
            byte b14 = bArr[i35];
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                b13 = bArr[i35];
                b14 = bArr[i34];
            }
            int i36 = i2 + 6;
            if ((bArr[i36] & 2) == 0) {
                if (b13 == -1) {
                    qt.y0(27, -3);
                } else if (b13 == 0) {
                    qt.y0(27, -2);
                } else if (b13 > 0 && b13 < 255) {
                    qt.y0(27, (b13 & 255) * 5);
                }
            }
            if ((bArr[i36] & 2) == 0) {
                if (b14 == -1) {
                    qt.y0(28, -3);
                } else if (b14 == 0) {
                    qt.y0(28, -2);
                } else if (b14 > 0 && b14 < 255) {
                    qt.y0(28, (b14 & 255) * 5);
                }
            }
            byte b15 = bArr[i36];
            qt.y0(65, (b15 >> 7) & 1);
            qt.y0(54, (b15 >> 5) & 1);
            qt.y0(53, (b15 >> 3) & 1);
            qt.y0(37, (b15 >> 0) & 1);
            int i37 = (bArr[i2 + 8] >> 6) & 3;
            int i38 = i37 <= 2 ? i37 : 2;
            qt.y0(52, i38);
            qt.y0(51, i38);
            return;
        }
        if (b2 == 40) {
            qt.y0(216, bArr[i2 + 2] & 255);
            qt.y0(217, bArr[i2 + 3] & 255);
            return;
        }
        if (b2 == 41) {
            qt.i(bArr[i2 + 2], bArr[i2 + 3], false, 5450);
            return;
        }
        switch (b2) {
            case 50:
                if (nt.a()) {
                    u0.d.R2(d3(bArr[i2 + 3] & 255));
                    int i39 = i2 + 4;
                    u0.d.S2(d3(bArr[i39] & 255));
                    u0.d.T2(d3(bArr[i39] & 255));
                    u0.d.U2(d3(bArr[i2 + 5] & 255));
                    int i40 = i2 + 6;
                    int i41 = bArr[i40] & 255;
                    int i42 = i2 + 7;
                    int i43 = bArr[i42] & 255;
                    int i44 = bArr[i42] & 255;
                    int i45 = i2 + 8;
                    int i46 = bArr[i45] & 255;
                    if (u0.b.f17347o == 0) {
                        if (l0.c0.f13013g != i41 || l0.c0.f13014h != i43 || l0.c0.f13015i != i44 || l0.c0.f13016j != i46) {
                            if (i41 < 5 || i43 < 5 || i44 < 5 || i46 < 5) {
                                u0.d.C2(1);
                            } else if (u0.b.f17350p == 1) {
                                l0.c0.f13017k = 2;
                                l0.b0.b(l0.c0.f13018l);
                            }
                        }
                        l0.c0.f13013g = i41;
                        l0.c0.f13014h = i43;
                        l0.c0.f13015i = i44;
                        l0.c0.f13016j = i46;
                    }
                    u0.d.D2(d3(bArr[i40] & 255));
                    u0.d.E2(d3(bArr[i42] & 255));
                    u0.d.F2(d3(bArr[i42] & 255));
                    u0.d.G2(d3(bArr[i45] & 255));
                }
                break;
            case 51:
                int i47 = ((bArr[i2 + 8] & 255) << 16) | ((bArr[i2 + 9] & 255) << 8) | (bArr[i2 + 10] & 255);
                qt.y0(102, ((bArr[i2 + 2] & 255) << 8) | (bArr[i2 + 3] & 255));
                qt.y0(103, (bArr[i2 + 5] & 255) | ((bArr[i2 + 4] & 255) << 8));
                qt.y0(98, i47);
                break;
            case 52:
                qt.y0(104, ((bArr[i2 + 2] & 255) << 8) | (bArr[i2 + 3] & 255));
                qt.y0(99, ((bArr[i2 + 4] & 255) << 8) | (bArr[i2 + 5] & 255));
                qt.y0(100, (bArr[i2 + 7] & 255) | ((bArr[i2 + 6] & 255) << 8));
                break;
            case 53:
                qt.y0(101, ((bArr[i2 + 2] & 255) << 8) | (bArr[i2 + 3] & 255));
                qt.y0(105, ((bArr[i2 + 4] & 255) << 8) | (bArr[i2 + 5] & 255));
                qt.y0(106, (bArr[i2 + 7] & 255) | ((bArr[i2 + 6] & 255) << 8));
                break;
            case 54:
                if (nt.a()) {
                    byte b16 = bArr[i2 + 2];
                    int i48 = b16 & 128;
                    int i49 = b16 & 127;
                    u0.d.A3(i48 != 0 ? 1000 - (i49 * 10) : (i49 * 10) + 1000);
                }
                break;
            default:
                switch (b2) {
                    case 58:
                        int i50 = i2 + 3;
                        qt.y0(114, bArr[i50] & 255);
                        int i51 = bArr[i50] & 255;
                        if (i51 == 253) {
                            I = -1;
                        }
                        int i52 = i2 + 2;
                        int i53 = bArr[i52] & 255;
                        qt.y0(140, bArr[i52] & 255);
                        if (i51 == 252) {
                            if (I != i53) {
                                I = i53;
                                if (i53 > 0) {
                                    for (int i54 = 0; i54 < I; i54++) {
                                        if (o3()) {
                                            try {
                                                z.k.s(227, -121, 2, (byte) i54, 0);
                                                Thread.sleep(100L);
                                            } catch (InterruptedException unused) {
                                            }
                                        } else {
                                            z.k.s(227, -121, 2, (byte) i54, 1);
                                            Thread.sleep(100L);
                                        }
                                    }
                                }
                            }
                            I = -1;
                        }
                        try {
                            str = new String(bArr, i2 + 4, i3 - 4, "Windows-936");
                        } catch (UnsupportedEncodingException e2) {
                            e2.printStackTrace();
                            str = ProxyProperties.LOCAL_EXCL_LIST;
                        }
                        qt.B0(165, str, this.f6765j);
                        this.f6765j = str;
                        break;
                    case 59:
                        byte b17 = bArr[i2 + 2];
                        int i55 = bArr[i2 + 3] & 255;
                        int i56 = bArr[i2 + 4] & 255;
                        int i57 = bArr[i2 + 5] & 255;
                        int i58 = bArr[i2 + 6] & 255;
                        int i59 = bArr[i2 + 7] & 255;
                        qt.y0(180, (b17 >> 7) & 1);
                        qt.y0(181, (b17 >> 2) & 31);
                        qt.y0(182, (b17 >> 1) & 1);
                        qt.y0(183, i55);
                        qt.y0(184, i56);
                        qt.y0(185, i57);
                        qt.y0(186, i58);
                        qt.y0(187, i59);
                        break;
                    case 60:
                        byte b18 = bArr[i2 + 2];
                        byte b19 = bArr[i2 + 3];
                        qt.y0(155, (b18 >> 6) & 1);
                        qt.y0(156, (b18 >> 5) & 1);
                        qt.y0(157, (b18 >> 4) & 1);
                        qt.y0(158, (b18 >> 3) & 1);
                        qt.y0(159, (b18 >> 2) & 1);
                        qt.y0(160, (b18 >> 1) & 1);
                        qt.y0(161, (b18 >> 0) & 1);
                        qt.y0(162, (b19 >> 7) & 1);
                        qt.y0(163, (b19 >> 6) & 1);
                        break;
                    default:
                        switch (b2) {
                            case 81:
                                int i60 = i2 + 2;
                                qt.y0(188, bArr[i60] & 255);
                                byte b20 = bArr[i60];
                                int i61 = this.f6762g;
                                if (b20 != i61) {
                                    byte b21 = bArr[i60];
                                    this.f6762g = b21;
                                    if (b21 == 1) {
                                        q3();
                                    } else if (b21 == 2 || b21 == 3) {
                                        p3();
                                    }
                                } else if ((bArr[i60] == 2 || i61 == 3) && u0.b.D != 13) {
                                    p3();
                                } else if (bArr[i60] == 1 && u0.b.D != 11) {
                                    q3();
                                }
                                byte b22 = bArr[i60];
                                if (b22 == 1) {
                                    qt.y0(189, bArr[i2 + 3] & 255);
                                    qt.y0(190, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
                                    int i62 = i2 + 6;
                                    qt.y0(191, (bArr[i62] >> 2) & 1);
                                    qt.y0(191, (bArr[i62] >> 1) & 1);
                                    qt.y0(191, (bArr[i62] >> 0) & 1);
                                    break;
                                } else if (b22 == 2) {
                                    qt.y0(194, bArr[i2 + 4] & 255);
                                    qt.y0(195, bArr[i2 + 5] & 255);
                                    qt.y0(196, bArr[i2 + 6] & 255);
                                    qt.y0(197, bArr[i2 + 7] & 255);
                                    break;
                                } else if (b22 == 3) {
                                    qt.y0(198, bArr[i2 + 3] & 255);
                                    qt.y0(199, bArr[i2 + 4] & 255);
                                    qt.y0(199, bArr[i2 + 5] & 255);
                                    qt.y0(201, bArr[i2 + 6] & 255);
                                    qt.y0(202, bArr[i2 + 7] & 255);
                                    int i63 = i2 + 8;
                                    qt.y0(203, (bArr[i63] >> 2) & 1);
                                    qt.y0(204, (bArr[i63] >> 1) & 1);
                                    qt.y0(205, (bArr[i63] >> 0) & 1);
                                    break;
                                }
                                break;
                            case 82:
                                qt.x0(206, new String(bArr, i2 + 2, 8, Charset.forName("ascii")));
                                break;
                            case 83:
                                qt.y0(207, bArr[i2 + 2] & 255);
                                qt.y0(208, bArr[i2 + 3] & 255);
                                qt.y0(209, bArr[i2 + 4] & 255);
                                qt.y0(210, bArr[i2 + 5] & 255);
                                qt.y0(211, bArr[i2 + 6] & 255);
                                int i64 = i2 + 7;
                                qt.y0(212, (bArr[i64] >> 4) & 1);
                                qt.y0(213, bArr[i64] & DhcpPacket.DHCP_DOMAIN_NAME);
                                break;
                        }
                        break;
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f6768m);
        l0.b0.p0(this.f6769n);
        u0.c.f17388o.d(this.f6775t);
        u0.c.f17389p.d(this.f6776u);
        u0.c.f17374a.d(this.f6772q);
        u0.c.f17393t.d(this.f6772q);
        u0.c.f17392s.d(this.f6772q);
        w0.e.f17815a.d(this.f6773r);
        w0.e.f17819e.d(this.f6773r);
        y0.g.f18094d.d(this.f6771p);
        y0.g.f18095e.d(this.f6771p);
        h0.d.f2464c.d(this.f6774s);
        h0.d.f2467f.d(this.f6770o);
        h0.d.f2469h.d(this.f6770o);
        h0.d.f2465d.d(this.f6770o);
        h0.d.f2462a.d(this.f6770o);
        qt.q0(this.f6766k);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 226) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        int i3;
        if (i2 >= 256) {
            switch (i2) {
                case 256:
                    if (iArr != null && iArr.length > 0) {
                        if (iArr[0] != 0) {
                            iArr[0] = 1;
                        }
                        k3(2, iArr[0]);
                        break;
                    }
                    break;
                case 257:
                    if (iArr != null && iArr.length > 0) {
                        if (iArr[0] != 0) {
                            iArr[0] = 1;
                        }
                        k3(3, iArr[0]);
                        break;
                    }
                    break;
                case 258:
                    if (iArr != null && iArr.length > 0) {
                        if (iArr[0] != 0) {
                            iArr[0] = 1;
                        }
                        k3(1, iArr[0]);
                        break;
                    }
                    break;
                case 259:
                    if (iArr != null && iArr.length > 0) {
                        if (iArr[0] != 0) {
                            iArr[0] = 1;
                        }
                        k3(5, iArr[0]);
                        break;
                    }
                    break;
                case 260:
                    if (iArr != null && iArr.length > 0) {
                        if (iArr[0] != 0) {
                            iArr[0] = 1;
                        }
                        k3(6, iArr[0]);
                        break;
                    }
                    break;
                case 261:
                    if (iArr != null && iArr.length > 0) {
                        if (iArr[0] != 0) {
                            iArr[0] = 1;
                        }
                        k3(7, iArr[0]);
                        break;
                    }
                    break;
                case 262:
                    if (iArr != null && iArr.length > 0) {
                        if (iArr[0] != 0) {
                            iArr[0] = 1;
                        }
                        k3(7, iArr[0]);
                        break;
                    }
                    break;
                case 263:
                    if (iArr != null && iArr.length > 0) {
                        if (iArr[0] != 0) {
                            iArr[0] = 1;
                        }
                        k3(6, iArr[0]);
                        break;
                    }
                    break;
                case 264:
                    if (iArr != null && iArr.length > 0) {
                        if (iArr[0] != 0) {
                            iArr[0] = 1;
                        }
                        k3(8, iArr[0]);
                        break;
                    }
                    break;
                case 265:
                    if (iArr != null && iArr.length > 0) {
                        if (iArr[0] != 0) {
                            iArr[0] = 1;
                        }
                        iArr[0] = iArr[0] + 1;
                        k3(10, iArr[0]);
                        break;
                    }
                    break;
                case 266:
                    if (iArr != null && iArr.length > 0) {
                        if (iArr[0] != 0) {
                            iArr[0] = 1;
                        }
                        iArr[0] = iArr[0] + 1;
                        k3(4, iArr[0]);
                        break;
                    }
                    break;
                case 267:
                    if (iArr != null && iArr.length > 0) {
                        if (iArr[0] != 0) {
                            iArr[0] = 1;
                        }
                        iArr[0] = iArr[0] + 1;
                        k3(5, iArr[0]);
                        break;
                    }
                    break;
                case 268:
                    if (iArr != null && iArr.length > 0) {
                        if (iArr[0] < 0) {
                            iArr[0] = 0;
                        }
                        if (iArr[0] > 2) {
                            iArr[0] = 2;
                        }
                        k3(9, iArr[0]);
                        break;
                    }
                    break;
                case i.a.Theme_findOnPageNextDrawable /* 269 */:
                    if (iArr != null && iArr.length > 0) {
                        if (iArr[0] != 0) {
                            iArr[0] = 1;
                        }
                        k3(11, iArr[0]);
                        break;
                    }
                    break;
            }
        }
        if (i2 == 0) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (iArr[0] != 0) {
                iArr[0] = 1;
            }
            l3(2, iArr[0]);
        }
        if (i2 == 1) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (iArr[0] != 0) {
                iArr[0] = 1;
            }
            l3(1, iArr[0]);
            return;
        }
        if (i2 == 2) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (iArr[0] != 0) {
                iArr[0] = 1;
            }
            l3(5, iArr[0]);
            return;
        }
        if (i2 == 3) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (iArr[0] != 0) {
                iArr[0] = 1;
            }
            l3(15, iArr[0]);
            return;
        }
        if (i2 == 4) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (iArr[0] != 0) {
                iArr[0] = 1;
            }
            l3(8, iArr[0]);
            return;
        }
        if (i2 == 5) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            l3(6, iArr[0]);
            return;
        }
        if (i2 == 7) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            l3(7, iArr[0]);
            return;
        }
        if (i2 == 8) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            l3(4, iArr[0]);
            return;
        }
        if (i2 == 24) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (iArr[0] == 1) {
                i3 = 64;
            } else if (iArr[0] == 2) {
                i3 = 65;
            } else {
                i3 = iArr[0] == 3 ? 34 : 0;
            }
            z.k.s(227, -126, 6, 0, 0, 0, (byte) i3, 0, 0);
            return;
        }
        if (i2 == 25) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            f6753w = iArr[0];
            e3();
            return;
        }
        if (i2 == 35) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            B = iArr[0];
            e3();
            return;
        }
        if (i2 == 36) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            C = iArr[0];
            f3();
            return;
        }
        switch (i2) {
            case 13:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    l3(16, iArr[0]);
                    break;
                }
                break;
            case 15:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    l3(14, iArr[0]);
                    break;
                }
                break;
            case 20:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    l3(13, iArr[0]);
                    break;
                }
                break;
            case 27:
                if (iArr != null && iArr.length > 0) {
                    f6754x = iArr[0];
                    e3();
                    break;
                }
                break;
            case 29:
                if (iArr != null && iArr.length > 0) {
                    f6755y = iArr[0];
                    e3();
                    break;
                }
                break;
            case 31:
                if (iArr != null && iArr.length > 0) {
                    f6756z = iArr[0];
                    e3();
                    break;
                }
                break;
            case 33:
                if (iArr != null && iArr.length > 0) {
                    A = iArr[0];
                    e3();
                    break;
                }
                break;
            case 38:
                if (iArr != null && iArr.length > 0) {
                    D = iArr[0];
                    f3();
                    break;
                }
                break;
            case 40:
                if (iArr != null && iArr.length > 0) {
                    E = iArr[0];
                    f3();
                    break;
                }
                break;
            case 42:
                if (iArr != null && iArr.length > 0) {
                    F = iArr[0];
                    f3();
                    break;
                }
                break;
            case 44:
                if (iArr != null && iArr.length > 0) {
                    G = iArr[0];
                    f3();
                    break;
                }
                break;
            default:
                switch (i2) {
                    case 46:
                        if (iArr != null && iArr.length > 0) {
                            H = iArr[0];
                            f3();
                            break;
                        }
                        break;
                    case 47:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            l3(12, iArr[0]);
                            break;
                        }
                        break;
                    case 48:
                        if (iArr != null && iArr.length > 0) {
                            if (!o3()) {
                                z.k.s(227, -121, 2, (byte) iArr[0], 1);
                            } else {
                                z.k.s(227, -121, 2, (byte) iArr[0], 0);
                            }
                            break;
                        }
                        break;
                    case 49:
                        if (iArr != null && iArr.length > 0) {
                            z.k.s(227, -126, 6, 0, 0, 0, (byte) iArr[0], 0, 0);
                            break;
                        }
                        break;
                    case 50:
                        if (iArr != null && iArr.length > 0) {
                            z.k.s(227, -119, 7, (byte) (iArr[0] == 0 ? 160 : iArr[0] == 1 ? 96 : 0), 0, 0, 0, 0, 0, 0);
                            break;
                        }
                        break;
                    case 51:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] < 0) {
                                iArr[0] = 0;
                            } else if (iArr[0] > 2) {
                                iArr[0] = 2;
                            }
                            l3(10, iArr[0]);
                            break;
                        }
                        break;
                    case 52:
                        if (iArr != null && iArr.length > 0) {
                            iArr[0] = iArr[0] + 1;
                            if (iArr[0] < 1) {
                                iArr[0] = 1;
                            } else if (iArr[0] > 4) {
                                iArr[0] = 4;
                            }
                            l3(9, iArr[0]);
                            break;
                        }
                        break;
                    case 53:
                        if (iArr != null && iArr.length > 0) {
                            z.k.s(227, -112, 4, (byte) iArr[0], 0, 0, 0);
                            break;
                        }
                        break;
                    case 54:
                        if (iArr != null && iArr.length > 0) {
                            z.k.s(227, -116, 1, (byte) iArr[0]);
                            o1.l.a().postDelayed(new c(), 200L);
                            break;
                        }
                        break;
                    case 55:
                        if (T2(iArr, 2)) {
                            l3(iArr[0], iArr[1]);
                        }
                        break;
                    case 56:
                        if (iArr != null && iArr.length > 5) {
                            z.k.s(227, -120, 6, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], iArr[5]);
                            break;
                        }
                        break;
                    case 57:
                        if (iArr != null && iArr.length > 0) {
                            this.f6777v = iArr[0];
                            break;
                        }
                        break;
                    default:
                        switch (i2) {
                            case 64:
                                z.k.s(227, -124, 2, iArr[0], iArr[1]);
                                break;
                            case 65:
                                z.k.s(227, -54, 1, iArr[0]);
                                break;
                            case 66:
                                z.k.s(227, -118, 2, iArr[0], iArr[1]);
                                break;
                            case 67:
                                z.k.s(227, -128, 2, iArr[0], iArr[1]);
                                break;
                            case 68:
                                z.k.s(227, -113, 1, iArr[0]);
                                break;
                        }
                        break;
                }
                break;
        }
    }

    public void a3() {
        int[] iArr = new int[10];
        int i2 = 0;
        iArr[0] = 192;
        iArr[1] = 8;
        int i3 = u0.b.D;
        if (i3 == 1) {
            iArr[2] = 1;
            iArr[3] = 1;
        } else if (i3 == 2) {
            iArr[2] = 5;
            iArr[3] = 64;
        } else if (i3 == 5) {
            iArr[2] = 7;
            iArr[3] = 48;
        } else if (i3 == 8 || i3 == 10) {
            iArr[2] = 8;
            iArr[3] = 19;
            int i4 = u0.b.r3;
            iArr[4] = i4 & 255;
            iArr[5] = (i4 >> 8) & 255;
            int i5 = u0.b.s3;
            iArr[6] = i5 & 255;
            iArr[7] = (i5 >> 8) & 255;
            int i6 = u0.b.t3;
            iArr[8] = (i6 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60;
            iArr[9] = (i6 % BatchedScanSettings.MAX_INTERVAL_SEC) % 60;
        } else {
            iArr[2] = 12;
            iArr[3] = 48;
        }
        int[] iArr2 = new int[11];
        iArr2[0] = 227;
        while (i2 < 10) {
            int i7 = i2 + 1;
            iArr2[i7] = iArr[i2];
            i2 = i7;
        }
        z.k.s(iArr2);
    }

    public final void c3() {
        int i2;
        int[] iArr = new int[3];
        int i3 = 0;
        iArr[0] = 196;
        iArr[1] = 1;
        if (y0.f.f18055i == 1 || (i2 = y0.f.C0) == 0) {
            iArr[2] = 128;
        } else {
            iArr[2] = i2;
        }
        if (y0.f.C0 > 36) {
            y0.f.C0 = 36;
        }
        int[] iArr2 = new int[4];
        iArr2[0] = 227;
        while (i3 < 3) {
            int i4 = i3 + 1;
            iArr2[i4] = iArr[i3];
            i3 = i4;
        }
        z.k.s(iArr2);
    }

    public final int d3(int i2) {
        return i2 * 2;
    }

    public final void e3() {
        z.k.s(227, -119, 7, -112, (byte) f6753w, (byte) f6754x, (byte) f6755y, (byte) f6756z, (byte) A, (byte) B);
    }

    public final void f3() {
        z.k.s(227, -119, 7, 80, (byte) C, (byte) D, (byte) E, (byte) F, (byte) G, (byte) H);
    }

    public final void k3(int i2, int i3) {
        z.k.s(227, -118, 2, (byte) i2, (byte) i3);
    }

    public final void l3(int i2, int i3) {
        z.k.s(227, -128, 2, (byte) i2, (byte) i3);
    }

    public String m3() {
        List<ActivityManager.RunningTaskInfo> runningTasks = a.f.d().getRunningTasks(2);
        if (runningTasks == null || runningTasks.size() <= 0) {
            return null;
        }
        try {
            return runningTasks.get(0).topActivity.getClassName();
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public final void n3(byte b2, String str) {
        if (str == null) {
            str = ProxyProperties.LOCAL_EXCL_LIST;
        }
        int[] iArr = new int[36];
        byte[] bytes = str.getBytes();
        iArr[0] = 227;
        iArr[1] = 203;
        iArr[2] = 33;
        iArr[3] = b2;
        int length = str.length() <= 32 ? str.length() : 32;
        for (int i2 = 0; i2 < length; i2++) {
            iArr[i2] = bytes[i2];
        }
        z.k.s(iArr);
    }

    public final boolean o3() {
        Locale locale = App.c().getResources().getConfiguration().locale;
        return locale.getCountry().equals("CN") || locale.getCountry().equals("TW");
    }

    public final void p3() {
        try {
            if (m3().equals("com.syu.carinfo.xp.psa_all.LZPsaAllCarCD")) {
                return;
            }
            Intent intent = new Intent();
            intent.setClassName("com.syu.canbus", "com.syu.carinfo.xp.psa_all.LZPsaAllCarCD");
            intent.addCategory(Intent.CATEGORY_DEFAULT);
            intent.setFlags(268435456);
            App.c().startActivity(intent);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final void q3() {
        try {
            if (m3().equals("com.syu.carinfo.xp.psa_all.LZPsaAllCarRadio")) {
                return;
            }
            Intent intent = new Intent();
            intent.setClassName("com.syu.canbus", "com.syu.carinfo.xp.psa_all.LZPsaAllCarRadio");
            intent.addCategory(Intent.CATEGORY_DEFAULT);
            intent.setFlags(268435456);
            App.c().startActivity(intent);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final void r3(String str) {
        if (str == null) {
            return;
        }
        int length = str.length() <= 32 ? str.length() : 32;
        int[] iArr = new int[37];
        iArr[0] = -29;
        iArr[1] = -53;
        iArr[2] = 33;
        iArr[3] = 1;
        int i2 = length + 4;
        for (int i3 = 4; i3 < i2; i3++) {
            iArr[i3] = (byte) (str.charAt(i3 - 4) & 255);
        }
        iArr[i2] = -1;
        z.k.s(iArr);
    }
}
