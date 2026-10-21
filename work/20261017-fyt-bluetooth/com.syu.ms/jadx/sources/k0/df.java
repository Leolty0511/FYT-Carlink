package k0;

import android.drm.DrmManagerClient;
import android.media.MediaMetadataEditor;
import android.net.ProxyProperties;
import android.net.dhcp.DhcpPacket;
import android.net.wifi.BatchedScanSettings;
import android.os.Process;
import android.os.SystemProperties;
import android.text.Spanned;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class df extends lt {
    public static int D;
    public static int E;
    public static int F;
    public String A;
    public Runnable B;
    public Runnable C;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public o1.g0 f4422b = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f4423c = 1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f4424d = new int[3][];

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[][] f4425e = new int[6][];

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int[][] f4426f = new int[7][];

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f4427g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f4428h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f4429i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int[][] f4430j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f4431k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f4432l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int[][] f4433m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Runnable f4434n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Runnable f4435o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f4436p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Runnable f4437q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Runnable f4438r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f4439s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f4440t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public String f4441u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public Runnable f4442v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public Runnable f4443w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public long f4444x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f4445y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public String f4446z;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17306a0 == 1) {
                z.k.s(227, 129, 1, 1);
            } else {
                z.k.s(227, 129, 1, 0);
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17347o == 1 || o1.u.S("com.syu.fourcamera2") || SystemProperties.getBoolean("persist.lsec.fourcamera2.show", false)) {
                z.k.s(227, 144, 2, 41, 0);
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            df.this.z3((byte) 113, u0.b.i3);
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            df.this.z3((byte) 114, u0.b.j3);
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z2;
            int i2 = h0.c.E;
            int i3 = 3;
            boolean z3 = true;
            boolean z4 = i2 == 5 || i2 == 3 || i2 == 4;
            switch (i2) {
                case 0:
                default:
                    i3 = 0;
                    break;
                case 1:
                case 2:
                case 6:
                    break;
                case 3:
                    i3 = 2;
                    break;
                case 4:
                case 5:
                    i3 = 1;
                    break;
            }
            if (df.this.f4439s != i3) {
                df.this.f4439s = i3;
                z2 = true;
            } else {
                z2 = false;
            }
            if (df.this.f4441u.equals(h0.c.f2437h)) {
                z3 = z2;
            } else {
                df.this.f4441u = h0.c.f2437h;
                if (df.this.f4441u == null) {
                    df.this.f4441u = ProxyProperties.LOCAL_EXCL_LIST;
                    z3 = z2;
                }
            }
            if (z3) {
                if (df.this.f4439s != 0) {
                    df dfVar = df.this;
                    dfVar.B3(dfVar.f4439s, df.this.f4441u);
                }
                if (df.this.f4440t != z4) {
                    df.this.f4440t = z4;
                    df.this.f4439s = 0;
                }
            }
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            df.this.h3(u0.b.K3);
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            long millis = time.toMillis(false) / 10000;
            int i2 = !DateFormat.is24HourFormat(App.c()) ? 1 : 0;
            if (df.this.f4444x == millis && df.this.f4445y == i2) {
                return;
            }
            df.this.f4444x = millis;
            df.this.f4445y = i2;
            z.k.s(227, 166, 7, (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN), (byte) (time.month + 1), (byte) time.monthDay, (byte) (((i2 << 7) | time.hour) & 255), (byte) time.minute, (byte) time.second, 1);
        }
    }

    public class h implements Runnable {
        public h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            df dfVar = df.this;
            int i2 = dfVar.f4427g;
            if (i2 > 0) {
                dfVar.f4427g = i2 - 1;
            }
            if (dfVar.f4427g == 0) {
                dfVar.b3();
            }
        }
    }

    public class i implements Runnable {
        public i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            df.this.d3();
        }
    }

    public df() {
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8320o = 1;
        this.f4427g = 0;
        this.f4429i = 0;
        this.f4430j = new int[][]{new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 18}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 13}};
        this.f4432l = 0;
        this.f4433m = new int[][]{new int[]{1, 3}, new int[]{2, 4}, new int[]{3, 27}, new int[]{4, 28}, new int[]{5, 16}, new int[]{17, 18}, new int[]{18, 26}, new int[]{21, 16}};
        this.f4434n = new a();
        this.f4435o = new b();
        this.f4436p = new c();
        this.f4437q = new d();
        this.f4438r = new e();
        this.f4439s = -1;
        this.f4440t = false;
        this.f4441u = ProxyProperties.LOCAL_EXCL_LIST;
        this.f4442v = new f();
        this.f4443w = new g();
        this.f4444x = -1L;
        this.f4445y = -1;
        this.B = new h();
        this.C = new i();
    }

    public final void A3(int i2) {
        F = i2;
        z.k.s(227, 198, 2, 70, (byte) i2);
        int iB = this.f4422b.b(1, 0);
        int i3 = F;
        if (iB != i3) {
            this.f4422b.g(1, i3);
        }
    }

    public final void B3(int i2, String str) {
        if (str == null) {
            return;
        }
        char[] charArray = str.toCharArray();
        int[] iArr = new int[charArray.length + 5];
        iArr[0] = -29;
        iArr[1] = -54;
        iArr[2] = (byte) (charArray.length + 2);
        iArr[3] = 3;
        iArr[4] = 1;
        for (int i3 = 0; i3 < str.length(); i3++) {
            iArr[5 + i3] = (byte) charArray[i3];
        }
        z.k.s(iArr);
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        this.f4422b.a();
        qt.z(this.B);
        y0.g.f18094d.a(this.C, 1);
        y0.g.f18095e.a(this.C, 1);
        w0.e.f17815a.a(this.B, 1);
        w0.e.f17819e.a(this.B, 1);
        qt.z(this.f4443w);
        u0.c.f17397x.a(this.f4442v, 1);
        h0.d.f2464c.a(this.f4438r, 1);
        h0.d.f2462a.a(this.f4438r, 1);
        u0.c.f17388o.a(this.f4436p, 1);
        u0.c.f17389p.a(this.f4437q, 1);
        u0.c.f17386m.a(this.f4434n, 1);
        qt.x(this.f4435o);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int i4;
        int[][] iArr;
        int[][] iArr2;
        int i5;
        int i6;
        int i7;
        byte b2 = bArr[i2];
        if (b2 == 22) {
            qt.y0(1031, (((bArr[i2 + 3] & 255) << 8) | (bArr[i2 + 2] & 255)) / 16);
        }
        if (b2 == 39) {
            byte b3 = bArr[i2 + 2];
            int i8 = ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 3] & 255);
            if ((32768 & i8) == 0) {
                i4 = (b3 & 1) == 1 ? (i8 + 1000) | 32768 : ((i8 / 10) * 10) + 1000 + (i8 % 10);
            } else if ((b3 & 1) == 1) {
                i4 = 32768 | (1000 - ((~i8) + 1));
            } else {
                int i9 = (~i8) + 1;
                i4 = (1000 - ((i9 / 10) * 10)) - (i9 % 10);
            }
            u0.d.A3(i4);
            return;
        }
        if (b2 == 41) {
            qt.i(bArr[i2 + 2], bArr[i2 + 3], true, 19712);
            return;
        }
        if (b2 == 64) {
            int i10 = bArr[i2 + 3] & 255;
            int i11 = bArr[i2 + 4] & 255;
            int i12 = bArr[i2 + 5] & 255;
            byte b4 = bArr[i2 + 2];
            if (b4 == -128) {
                qt.y0(153, i10 & 1);
                qt.y0(154, (i10 >> 1) & 1);
                qt.y0(155, (i10 >> 2) & 1);
                qt.y0(156, (i10 >> 3) & 1);
                qt.y0(157, (i10 >> 4) & 1);
                qt.y0(158, (i10 >> 5) & 1);
                qt.y0(159, (i10 >> 6) & 1);
                qt.y0(160, (i10 >> 7) & 1);
                qt.y0(161, i11 & 1);
                qt.y0(182, (i11 >> 1) & 1);
                return;
            }
            if (b4 == -112) {
                qt.y0(180, i10 & 1);
                qt.y0(181, (i10 >> 1) & 1);
                qt.y0(163, (i10 >> 2) & 1);
                qt.y0(164, (i10 >> 4) & 15);
                qt.y0(165, i11 & 15);
                qt.y0(166, (i11 >> 4) & 15);
                return;
            }
            if (b4 == -96) {
                qt.y0(201, (i10 >> 4) & 1);
                qt.y0(190, i10 & 15);
                qt.y0(191, (i11 >> 4) & 15);
                qt.y0(192, i11 & 15);
                qt.y0(193, (i12 >> 4) & 15);
                qt.y0(194, i12 & 15);
                qt.y0(198, (bArr[i2 + 6] >> 4) & 15);
                return;
            }
            if (b4 == -80) {
                qt.y0(208, i10 & 1);
                return;
            }
            if (b4 == -48) {
                qt.y0(Process.MEDIA_UID, i10 & 255);
                qt.y0(213, i11 & 255);
                qt.y0(214, i12 & 255);
                qt.y0(215, bArr[i2 + 6] & 255);
                return;
            }
            if (b4 == 16) {
                qt.y0(162, i10 & 3);
                return;
            }
            if (b4 == 32) {
                qt.y0(125, (i11 & 255) | (((i10 >> 1) & 1) << 8));
                qt.y0(124, i10 & 1);
                return;
            }
            if (b4 == 64) {
                qt.y0(116, i10 & 1);
                qt.y0(117, y3(i11 & 15) - 1);
                qt.y0(118, y3((i11 >> 4) & 15) - 1);
                qt.y0(119, y3(i12 & 15) - 1);
                qt.y0(120, y3((i12 >> 4) & 15) - 1);
                return;
            }
            if (b4 == 96) {
                qt.y0(148, i10 & 1);
                qt.y0(149, (i10 >> 1) & 1);
                qt.y0(151, (i10 >> 2) & 1);
                qt.y0(152, (i10 >> 3) & 1);
                qt.y0(150, i11 & 1);
                return;
            }
            if (b4 == 112) {
                qt.y0(136, i10 & 15);
                qt.y0(137, (i10 >> 4) & 15);
                qt.y0(138, i11 & 1);
                qt.y0(209, (i11 >> 1) & 1);
                return;
            }
            if (b4 == 48) {
                qt.y0(132, i10 & 1);
                qt.y0(134, (i10 >> 1) & 1);
                qt.y0(i.a.Theme_preferenceFragmentStyle, (i10 >> 2) & 1);
                qt.y0(i.a.Theme_findOnPagePreviousDrawable, (i10 >> 3) & 1);
                return;
            }
            if (b4 == 49) {
                qt.y0(127, i10 & 1);
                qt.y0(129, (i10 >> 1) & 1);
                qt.y0(130, (i10 >> 2) & 1);
                qt.y0(131, (i10 >> 3) & 1);
                qt.y0(126, i11 & 15);
                qt.y0(128, (i11 >> 4) & 15);
                return;
            }
            switch (b4) {
                case 80:
                    qt.y0(139, i10 & 15);
                    qt.y0(140, (i10 >> 4) & 1);
                    qt.y0(141, (i10 >> 5) & 1);
                    qt.y0(175, (i10 >> 6) & 1);
                    qt.y0(143, i11 & 255);
                    qt.y0(146, i12 & 255);
                    qt.y0(147, bArr[i2 + 6] & 255);
                    break;
                case 81:
                    qt.y0(142, i10 & 1);
                    qt.y0(144, i11 & 255);
                    qt.y0(145, i12 & 255);
                    int i13 = i2 + 6;
                    qt.y0(205, (bArr[i13] >> 1) & 1);
                    qt.y0(206, (bArr[i13] >> 0) & 1);
                    break;
                case 82:
                    qt.y0(203, i10 & 255);
                    qt.y0(204, i11 & 255);
                    qt.y0(202, i12 & 255);
                    qt.y0(207, bArr[i2 + 6] & 255);
                    break;
            }
        }
        if (b2 == 47) {
            this.f4432l = bArr[i2 + 2] & 255;
            int i14 = 0;
            while (true) {
                iArr = this.f4433m;
                if (i14 >= iArr.length) {
                    break;
                }
                int i15 = this.f4432l;
                if (i15 == iArr[i14][0]) {
                    if (i15 == 0) {
                        break;
                    }
                    this.f4431k = i14;
                    break;
                }
                i14++;
            }
            int i16 = this.f4431k;
            if (i16 < iArr.length) {
                l0.b0.l0(iArr[i16][1], 0);
                l0.b0.l0(this.f4433m[this.f4431k][1], 1);
                this.f4431k = 0;
                return;
            }
            return;
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 80) {
            int i17 = bArr[i2 + 3] & 255;
            int i18 = bArr[i2 + 4] & 255;
            int i19 = bArr[i2 + 5] & 255;
            int i20 = bArr[i2 + 6] & 255;
            int i21 = bArr[i2 + 7] & 255;
            switch (bArr[i2 + 2]) {
                case 16:
                    int i22 = (((i18 & 255) | ((i19 << 8) & 65280)) & 65535) | ((i17 << 29) & 536870912);
                    qt.y0(98, i22);
                    qt.y0(103, i22);
                    qt.y0(108, i22);
                    break;
                case 32:
                    qt.y0(99, ((((((i18 & 255) | ((i19 << 8) & 65280)) | ((i20 << 16) & Spanned.SPAN_PRIORITY)) | ((i21 << 24) & (-16777216))) / 10) & MediaMetadataEditor.KEY_EDITABLE_MASK) | ((i17 << 29) & 536870912));
                    break;
                case 33:
                    qt.y0(109, ((((((i18 & 255) | ((i19 << 8) & 65280)) | ((i20 << 16) & Spanned.SPAN_PRIORITY)) | ((i21 << 24) & (-16777216))) / 10) & MediaMetadataEditor.KEY_EDITABLE_MASK) | ((i17 << 29) & 536870912));
                    break;
                case 34:
                    qt.y0(104, ((((((i18 & 255) | ((i19 << 8) & 65280)) | ((i20 << 16) & Spanned.SPAN_PRIORITY)) | ((i21 << 24) & (-16777216))) / 10) & MediaMetadataEditor.KEY_EDITABLE_MASK) | ((i17 << 29) & 536870912));
                    break;
                case 48:
                    qt.y0(97, ((((i18 & 255) | ((i19 << 8) & 65280)) / 10) & 65535) | ((i17 << 29) & (-536870912)));
                    break;
                case 49:
                    qt.y0(107, ((((i18 & 255) | ((i19 << 8) & 65280)) / 10) & 65535) | ((i17 << 29) & (-536870912)));
                    break;
                case 50:
                    qt.y0(102, ((((i18 & 255) | ((i19 << 8) & 65280)) / 10) & 65535) | ((i17 << 29) & (-536870912)));
                    break;
                case 64:
                    qt.y0(101, ((((i18 & 255) | ((i19 << 8) & 65280)) / 10) & 65535) | ((i17 << 29) & 536870912));
                    break;
                case 65:
                    qt.y0(111, ((((i18 & 255) | ((i19 << 8) & 65280)) / 10) & 65535) | ((i17 << 29) & 536870912));
                    break;
                case 66:
                    qt.y0(106, ((((i18 & 255) | ((i19 << 8) & 65280)) / 10) & 65535) | ((i17 << 29) & 536870912));
                    break;
                case 80:
                    qt.y0(100, ((i17 & 255) | ((i18 << 8) & 65280) | ((i19 << 16) & Spanned.SPAN_PRIORITY)) & 16777215);
                    break;
                case 81:
                    qt.y0(110, ((i17 & 255) | ((i18 << 8) & 65280) | ((i19 << 16) & Spanned.SPAN_PRIORITY)) & 16777215);
                    break;
                case 82:
                    qt.y0(105, ((i17 & 255) | ((i18 << 8) & 65280) | ((i19 << 16) & Spanned.SPAN_PRIORITY)) & 16777215);
                    break;
                case 96:
                    int i23 = i17 & 1;
                    boolean z2 = i23 != 0;
                    qt.y0(115, i23);
                    int i24 = ((i18 & 255) | ((i19 << 8) & 65280)) & 65535;
                    if (z2) {
                        if (i24 > -1 && i24 < 166) {
                            D = 0;
                        } else if (i24 >= 166 && i24 < 332) {
                            D = 1;
                        } else if (i24 >= 332 && i24 < 498) {
                            D = 2;
                        } else if (i24 >= 498 && i24 < 664) {
                            D = 3;
                        } else if (i24 >= 664 && i24 < 830) {
                            D = 4;
                        } else if (i24 >= 830) {
                            D = 5;
                        }
                        qt.y0(113, D);
                        int i25 = ((i24 > 1000 ? 1000 : i24) * 100) / 1000;
                        E = i25;
                        qt.y0(114, i25);
                    } else {
                        if (i24 > -1 && i24 < 41) {
                            D = 0;
                        } else if (i24 >= 41 && i24 < 82) {
                            D = 1;
                        } else if (i24 >= 82 && i24 < 123) {
                            D = 2;
                        } else if (i24 >= 123 && i24 < 164) {
                            D = 3;
                        } else if (i24 >= 164 && i24 < 205) {
                            D = 4;
                        } else if (i24 >= 205) {
                            D = 5;
                        }
                        qt.y0(113, D);
                        if (i24 > 250) {
                            i24 = 250;
                        }
                        int i26 = (i24 * 100) / 250;
                        E = i26;
                        qt.y0(114, i26);
                    }
                    break;
                case 97:
                    qt.y0(271, ((((i18 & 255) | ((i19 << 8) & 65280)) / 10) & 65535) | ((i17 << 29) & 536870912));
                    break;
            }
        }
        if (b2 == 81) {
            qt.y0(1032, ((bArr[i2 + 3] & 255) << 8) | (bArr[i2 + 2] & 255));
            return;
        }
        switch (b2) {
            case 32:
                byte b5 = bArr[i2 + 2];
                byte b6 = bArr[i2 + 3];
                this.f4429i = b5 & 255;
                int i27 = 0;
                while (true) {
                    iArr2 = this.f4430j;
                    if (i27 < iArr2.length) {
                        int i28 = this.f4429i;
                        if (i28 != iArr2[i27][0]) {
                            i27++;
                        } else if (i28 != 0) {
                            this.f4428h = i27;
                        }
                    }
                }
                if ((b6 & 255) != 0) {
                    if (i27 < iArr2.length) {
                        l0.b0.l0(iArr2[i27][1], 0);
                    }
                } else if (i27 <= iArr2.length) {
                    l0.b0.l0(iArr2[this.f4428h][1], 1);
                }
                break;
            case 33:
                byte b7 = bArr[i2 + 2];
                byte b8 = bArr[i2 + 3];
                byte b9 = bArr[i2 + 6];
                byte b10 = bArr[i2 + 7];
                byte b11 = bArr[i2 + 8];
                byte b12 = bArr[i2 + 9];
                byte b13 = bArr[i2 + 11];
                qt.y0(10, (b7 >> 7) & 1);
                qt.y0(11, (b7 >> 6) & 1);
                qt.y0(12, (b7 >> 5) & 1);
                qt.y0(13, (b7 >> 3) & 1);
                qt.y0(14, (b7 >> 2) & 1);
                qt.y0(65, (b7 >> 1) & 1);
                qt.y0(67, (b7 >> 0) & 1);
                qt.y0(18, (b8 >> 7) & 1);
                qt.y0(19, (b8 >> 6) & 1);
                qt.y0(20, (b8 >> 5) & 1);
                qt.y0(80, (b8 >> 4) & 1);
                qt.y0(21, b8 & DhcpPacket.DHCP_DOMAIN_NAME);
                int i29 = bArr[i2 + 4] & 255;
                if (i29 == 0) {
                    i5 = -2;
                } else if (i29 == 31) {
                    i5 = -3;
                } else if (i29 <= 0 || i29 > 28) {
                    i5 = -1;
                } else {
                    i5 = (b9 & 1) == 0 ? ((i29 - 1) * 5) + 160 : (i29 + 60) - 1;
                }
                qt.y0(27, i5);
                int i30 = bArr[i2 + 5] & 255;
                if (i30 == 0) {
                    i6 = -2;
                } else if (i30 == 31) {
                    i6 = -3;
                } else if (i30 <= 0 || i30 > 28) {
                    i6 = -1;
                } else {
                    i6 = (b9 & 1) == 0 ? ((i30 - 1) * 5) + 160 : (i30 + 60) - 1;
                }
                qt.y0(28, i6);
                qt.y0(38, (b9 >> 6) & 1);
                int i31 = (b9 >> 5) & 1;
                qt.y0(54, i31);
                qt.y0(36, i31);
                qt.y0(53, (b9 >> 3) & 1);
                int i32 = b9 & 1;
                qt.y0(37, i32);
                qt.y0(29, (b10 >> 4) & 7);
                qt.y0(30, (b10 >> 0) & 7);
                qt.y0(80, (b11 >> 2) & 1);
                qt.y0(73, 3 & b11);
                int i33 = b12 & 255;
                if (i33 == 0) {
                    i7 = -2;
                } else if (i33 == 31) {
                    i7 = -3;
                } else if (i33 <= 0 || i33 > 28) {
                    i7 = -1;
                } else {
                    i7 = i32 == 0 ? ((i33 - 1) * 5) + 160 : (i33 + 60) - 1;
                }
                qt.y0(40, i7);
                qt.y0(76, (b13 >> 7) & 1);
                break;
            case 34:
                u0.d.R2(e3(bArr[i2 + 2] & 255));
                u0.d.S2(f3(bArr[i2 + 3] & 255));
                u0.d.T2(f3(bArr[i2 + 4] & 255));
                u0.d.U2(e3(bArr[i2 + 5] & 255));
                break;
            case 35:
                u0.d.D2(e3(bArr[i2 + 2] & 255));
                u0.d.E2(f3(bArr[i2 + 3] & 255));
                u0.d.F2(f3(bArr[i2 + 4] & 255));
                u0.d.G2(e3(bArr[i2 + 5] & 255));
                break;
            case 36:
                byte b14 = bArr[i2 + 2];
                if ((b14 & 1) == 1) {
                    if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                        qt.y0(1, (b14 >> 7) & 1);
                        qt.y0(2, (b14 >> 6) & 1);
                    } else {
                        qt.y0(1, (b14 >> 6) & 1);
                        qt.y0(2, (b14 >> 7) & 1);
                    }
                    qt.y0(4, (b14 >> 5) & 1);
                    qt.y0(3, (b14 >> 4) & 1);
                    qt.y0(5, (b14 >> 3) & 1);
                    qt.y0(0, (b14 >> 2) & 1);
                }
                break;
            case 37:
                int i34 = i2 + 2;
                qt.y0(121, bArr[i34] & 2);
                qt.y0(122, bArr[i34] & 1);
                break;
            default:
                switch (b2) {
                    case 96:
                        int i35 = i2 + 2;
                        int i36 = bArr[i35] & 255;
                        int i37 = i36 <= 6 ? i36 : 6;
                        int[] iArr3 = new int[2];
                        iArr3[0] = 0;
                        iArr3[1] = (bArr[i2 + 9] & 255) == 0 ? 50 : 49;
                        if (qt.C0(172, iArr3, this.f4425e[0])) {
                            this.f4425e[0] = iArr3;
                        }
                        for (int i38 = 1; i38 < i37; i38++) {
                            int[] iArr4 = {i38, (bArr[i35 + i38] + 1) & 255};
                            if (qt.C0(172, iArr4, this.f4425e[i38])) {
                                this.f4425e[i38] = iArr4;
                            }
                        }
                        break;
                    case 97:
                        int i39 = i2 + 2;
                        int i40 = ((bArr[i2 + 3] & 255) << 8) | (bArr[i39] & 255);
                        if (i40 > 7) {
                            i40 = 7;
                        }
                        if (i40 > 0) {
                            int i41 = 0;
                            while (i41 < i40) {
                                int i42 = i41 + 1;
                                int[] iArr5 = {i41, (bArr[(i42 * 2) + i39] & 255) + 1};
                                if (qt.C0(171, iArr5, this.f4426f[i41])) {
                                    this.f4426f[i41] = iArr5;
                                }
                                i41 = i42;
                            }
                            while (i40 < 7) {
                                int[] iArr6 = {i40, 0};
                                if (qt.C0(171, iArr6, this.f4426f[i40])) {
                                    this.f4426f[i40] = iArr6;
                                }
                                i40++;
                            }
                        } else {
                            for (int i43 = 0; i43 < 7; i43++) {
                                int[] iArr7 = {i43, 0};
                                if (qt.C0(171, iArr7, this.f4426f[i43])) {
                                    this.f4426f[i43] = iArr7;
                                }
                            }
                        }
                        break;
                    case 98:
                        int i44 = bArr[i2 + 2] & 255;
                        if (i44 > 0) {
                            if (i44 > 3) {
                                i44 = 3;
                            }
                            if (i44 == 1) {
                                int i45 = i2 + 3;
                                if (qt.C0(173, new int[]{0, bArr[i45] & 255}, this.f4424d[0])) {
                                    this.f4424d[0] = new int[]{0, bArr[i45] & 255};
                                }
                                for (int i46 = 1; i46 < 3; i46++) {
                                    int[] iArr8 = {i46, 0};
                                    if (qt.C0(173, iArr8, this.f4424d[i46])) {
                                        this.f4424d[i46] = iArr8;
                                    }
                                }
                            } else if (i44 == 2) {
                                for (int i47 = 0; i47 < 2; i47++) {
                                    int[] iArr9 = {i47, bArr[i2 + 3 + i47] & 255};
                                    if (qt.C0(173, iArr9, this.f4424d[i47])) {
                                        this.f4424d[i47] = iArr9;
                                    }
                                    if (qt.C0(173, new int[]{2, 0}, this.f4424d[2])) {
                                        this.f4424d[0] = new int[]{2, 0};
                                    }
                                }
                            } else if (i44 == 3) {
                                for (int i48 = 0; i48 < 3; i48++) {
                                    int[] iArr10 = {i48, bArr[i2 + 3 + i48] & 255};
                                    if (qt.C0(173, iArr10, this.f4424d[i48])) {
                                        this.f4424d[i48] = iArr10;
                                    }
                                }
                            } else {
                                for (int i49 = 0; i49 < 3; i49++) {
                                    int[] iArr11 = {i49, 0};
                                    if (qt.C0(173, iArr11, this.f4424d[i49])) {
                                        this.f4424d[i49] = iArr11;
                                    }
                                }
                            }
                        }
                        break;
                    case 99:
                        byte b15 = bArr[i2 + 2];
                        if (b15 == 0) {
                            StringBuilder sb = new StringBuilder();
                            for (int i50 = 0; i50 < i3 - 3; i50++) {
                                sb.append((char) bArr[i2 + 3 + i50]);
                            }
                            this.A = this.f4446z;
                            x3(sb.toString());
                            qt.B0(179, this.f4446z, this.A);
                            break;
                        } else if (b15 == 16) {
                            qt.y0(167, ((bArr[i2 + 5] & 255) << 8) | (bArr[i2 + 4] & 255) | ((bArr[i2 + 3] & DhcpPacket.DHCP_DOMAIN_NAME) << 24));
                            break;
                        } else if (b15 == 17) {
                            int i51 = i2 + 3;
                            qt.y0(168, ((bArr[i2 + 5] & 255) << 8) | (bArr[i2 + 4] & 255) | ((bArr[i51] & 240) << 12) | ((bArr[i51] & DhcpPacket.DHCP_DOMAIN_NAME) << 24));
                            break;
                        } else if (b15 == 32) {
                            qt.y0(169, ((bArr[i2 + 5] & 255) << 8) | (bArr[i2 + 4] & 255) | ((bArr[i2 + 3] & DhcpPacket.DHCP_DOMAIN_NAME) << 24));
                            break;
                        } else if (b15 == 33) {
                            int i52 = i2 + 3;
                            qt.y0(170, ((bArr[i2 + 5] & 255) << 8) | (bArr[i2 + 4] & 255) | ((bArr[i52] & 240) << 12) | (bArr[i52] << 24));
                            break;
                        }
                        break;
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f4422b.j();
        qt.q0(this.B);
        y0.g.f18094d.d(this.C);
        y0.g.f18095e.d(this.C);
        w0.e.f17815a.d(this.B);
        w0.e.f17819e.d(this.B);
        qt.q0(this.f4443w);
        u0.c.f17397x.d(this.f4442v);
        h0.d.f2464c.d(this.f4438r);
        h0.d.f2462a.d(this.f4438r);
        u0.c.f17388o.d(this.f4436p);
        u0.c.f17389p.d(this.f4437q);
        u0.c.f17386m.d(this.f4434n);
        qt.o0(this.f4435o);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 461) {
            return;
        }
        if (i2 == 179) {
            o1.x.u(bVar, i2, this.f4446z);
        }
        int i4 = 0;
        switch (i2) {
            case 171:
                while (i4 < 7) {
                    o1.x.v(bVar, i2, this.f4426f[i4]);
                    i4++;
                }
                break;
            case 172:
                while (i4 < 6) {
                    o1.x.v(bVar, i2, this.f4425e[i4]);
                    i4++;
                }
                break;
            case 173:
                while (i4 < 3) {
                    o1.x.v(bVar, i2, this.f4424d[i4]);
                    i4++;
                }
                break;
            default:
                o1.x.v(bVar, i2, nt.f8645g[i2]);
                break;
        }
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (iArr[0] != 0) {
                iArr[0] = 1;
            }
            g3(137, iArr[0]);
            return;
        }
        if (i2 == 1) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (iArr[0] != 0) {
                iArr[0] = 1;
            }
            g3(144, iArr[0]);
            return;
        }
        if (i2 == 2) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (iArr[0] != 0) {
                iArr[0] = 1;
            }
            g3(145, iArr[0]);
            return;
        }
        if (i2 == 13) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (iArr[0] != 0) {
                iArr[0] = 1;
            }
            g3(200, iArr[0]);
            return;
        }
        if (i2 == 53) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (iArr[0] != 0) {
                iArr[0] = 1;
            }
            g3(49, iArr[0]);
            return;
        }
        if (i2 == 98) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (iArr[0] == 0) {
                z.k.s(227, 144, 2, 64, 0);
                z.k.s(227, 144, 2, 64, 16);
                z.k.s(227, 144, 2, 64, 32);
                z.k.s(227, 144, 2, 64, 48);
                z.k.s(227, 144, 2, 64, 49);
                z.k.s(227, 144, 2, 64, 64);
                z.k.s(227, 144, 2, 64, 80);
                z.k.s(227, 144, 2, 64, 81);
                z.k.s(227, 144, 2, 64, 82);
                z.k.s(227, 144, 2, 64, 96);
                z.k.s(227, 144, 2, 64, 112);
                z.k.s(227, 144, 2, 64, 128);
                z.k.s(227, 144, 2, 64, 144);
                z.k.s(227, 144, 2, 64, 160);
                z.k.s(227, 144, 2, 64, 176);
                z.k.s(227, 144, 2, 64, 208);
                return;
            }
            if (iArr[0] == 1) {
                return;
            }
            if (iArr[0] != 2) {
                if (iArr[0] != 3) {
                    if (iArr[0] == 255) {
                        z.k.s(227, 144, 2, 255, 0);
                        return;
                    }
                    return;
                } else {
                    z.k.s(227, 144, 2, 99, 0);
                    z.k.s(227, 144, 2, 99, 16);
                    z.k.s(227, 144, 2, 99, 17);
                    z.k.s(227, 144, 2, 99, 32);
                    z.k.s(227, 144, 2, 99, 33);
                    return;
                }
            }
            z.k.s(227, 144, 2, 80, 16);
            z.k.s(227, 144, 2, 80, 32);
            z.k.s(227, 144, 2, 80, 33);
            z.k.s(227, 144, 2, 80, 34);
            z.k.s(227, 144, 2, 80, 48);
            z.k.s(227, 144, 2, 80, 49);
            z.k.s(227, 144, 2, 80, 50);
            z.k.s(227, 144, 2, 80, 64);
            z.k.s(227, 144, 2, 80, 65);
            z.k.s(227, 144, 2, 80, 66);
            z.k.s(227, 144, 2, 80, 80);
            z.k.s(227, 144, 2, 80, 81);
            z.k.s(227, 144, 2, 80, 82);
            z.k.s(227, 144, 2, 80, 96);
            z.k.s(227, 144, 2, 80, 97);
            return;
        }
        if (i2 == 103) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            g3(iArr[0], iArr[1]);
            return;
        }
        if (i2 == 109) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (iArr[0] != 0) {
                iArr[0] = 1;
            }
            g3(69, iArr[0]);
            return;
        }
        if (i2 == 112) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (iArr[0] != 0) {
                iArr[0] = 1;
            }
            g3(57, iArr[0]);
            return;
        }
        if (i2 == 118) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (iArr[0] != 0) {
                iArr[0] = 1;
            }
            g3(58, iArr[0]);
            return;
        }
        if (i2 == 1005) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (iArr[0] < 0) {
                iArr[0] = 0;
            } else if (iArr[0] > 3) {
                iArr[0] = 3;
            }
            A3(iArr[0]);
            return;
        }
        switch (i2) {
            case 30:
                break;
            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                int i3 = iArr[0];
                switch (i2) {
                    case 31:
                        g3(199, 1);
                        break;
                    case 32:
                        g3(193, 1);
                        break;
                    case 33:
                        g3(194, 1);
                        break;
                    case 34:
                        g3(195, 1);
                        break;
                    case 35:
                        g3(196, 1);
                        break;
                    case 36:
                        g3(197, 1);
                        break;
                    case 37:
                        g3(198, 1);
                        break;
                }
                return;
            case 38:
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                if (iArr[0] != 0) {
                    iArr[0] = 1;
                }
                g3(178, iArr[0]);
                return;
            case 39:
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                if (iArr[0] != 0) {
                    iArr[0] = 1;
                }
                g3(64, iArr[0]);
                return;
            case 40:
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                iArr[0] = iArr[0] + 1;
                if (iArr[0] < 1) {
                    iArr[0] = 1;
                } else if (iArr[0] > 9) {
                    iArr[0] = 9;
                }
                g3(65, iArr[0]);
                return;
            case 41:
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                iArr[0] = iArr[0] + 1;
                if (iArr[0] < 1) {
                    iArr[0] = 1;
                } else if (iArr[0] > 9) {
                    iArr[0] = 9;
                }
                g3(66, iArr[0]);
                return;
            case 42:
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                iArr[0] = iArr[0] + 1;
                if (iArr[0] < 1) {
                    iArr[0] = 1;
                } else if (iArr[0] > 9) {
                    iArr[0] = 9;
                }
                g3(67, iArr[0]);
                return;
            case 43:
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                iArr[0] = iArr[0] + 1;
                if (iArr[0] < 1) {
                    iArr[0] = 1;
                } else if (iArr[0] > 9) {
                    iArr[0] = 9;
                }
                g3(68, iArr[0]);
                return;
            case 44:
                if (iArr != null && iArr.length > 0 && iArr[0] != 0) {
                    iArr[0] = 1;
                }
                break;
            case 45:
                g3(34, 1);
                return;
            case 46:
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                if (iArr[0] != 0) {
                    iArr[0] = 1;
                }
                g3(32, iArr[0]);
                return;
            case 47:
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                g3(33, iArr[0]);
                return;
            case 48:
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                if (iArr[0] != 0) {
                    iArr[0] = 1;
                }
                g3(51, iArr[0]);
                return;
            case 49:
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                if (iArr[0] != 0) {
                    iArr[0] = 1;
                }
                g3(52, iArr[0]);
                return;
            case 50:
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                if (iArr[0] != 0) {
                    iArr[0] = 1;
                }
                g3(53, iArr[0]);
                return;
            case 51:
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                if (iArr[0] != 0) {
                    iArr[0] = 1;
                }
                g3(48, iArr[0]);
                return;
            default:
                switch (i2) {
                    case 55:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] < 0) {
                                iArr[0] = 0;
                            } else if (iArr[0] > 4) {
                                iArr[0] = 4;
                            }
                            g3(56, iArr[0]);
                            break;
                        }
                        break;
                    case 56:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] < 1) {
                                iArr[0] = 1;
                            } else if (iArr[0] > 3) {
                                iArr[0] = 3;
                            }
                            g3(55, iArr[0]);
                            break;
                        }
                        break;
                    case 57:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            g3(50, iArr[0]);
                            break;
                        }
                        break;
                    case 58:
                        if (iArr != null && iArr.length > 0) {
                            g3(80, iArr[0]);
                            break;
                        }
                        break;
                    case 59:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            g3(81, iArr[0]);
                            break;
                        }
                        break;
                    case 60:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            g3(82, iArr[0]);
                            break;
                        }
                        break;
                    case 61:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            g3(86, iArr[0]);
                            break;
                        }
                        break;
                    case 62:
                        if (iArr != null && iArr.length > 0) {
                            g3(83, iArr[0]);
                            break;
                        }
                        break;
                    case 63:
                        if (iArr != null && iArr.length > 0) {
                            g3(87, iArr[0]);
                            break;
                        }
                        break;
                    case 64:
                        if (iArr != null && iArr.length > 0) {
                            g3(88, iArr[0]);
                            break;
                        }
                        break;
                    case 65:
                        if (iArr != null && iArr.length > 0) {
                            g3(84, iArr[0]);
                            break;
                        }
                        break;
                    case 66:
                        if (iArr != null && iArr.length > 0) {
                            g3(85, iArr[0]);
                            break;
                        }
                        break;
                    case 67:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            g3(96, iArr[0]);
                            break;
                        }
                        break;
                    case 68:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            g3(97, iArr[0]);
                            break;
                        }
                        break;
                    case 69:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            g3(100, iArr[0]);
                            break;
                        }
                        break;
                    case 70:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            g3(98, iArr[0]);
                            break;
                        }
                        break;
                    case 71:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            g3(99, iArr[0]);
                            break;
                        }
                        break;
                    case 72:
                        if (iArr != null && iArr.length > 0) {
                            g3(112, iArr[0]);
                            break;
                        }
                        break;
                    case 73:
                        if (iArr != null && iArr.length > 0) {
                            g3(113, iArr[0]);
                            break;
                        }
                        break;
                    case 74:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            g3(114, iArr[0]);
                            break;
                        }
                        break;
                    case 75:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            g3(128, iArr[0]);
                            break;
                        }
                        break;
                    case 76:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            g3(129, iArr[0]);
                            break;
                        }
                        break;
                    case 77:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            g3(130, iArr[0]);
                            break;
                        }
                        break;
                    case 78:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            g3(131, iArr[0]);
                            break;
                        }
                        break;
                    case 79:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            g3(132, iArr[0]);
                            break;
                        }
                        break;
                    case 80:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            g3(133, iArr[0]);
                            break;
                        }
                        break;
                    case 81:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            g3(134, iArr[0]);
                            break;
                        }
                        break;
                    case 82:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            g3(135, iArr[0]);
                            break;
                        }
                        break;
                    case 83:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            g3(136, iArr[0]);
                            break;
                        }
                        break;
                    case 84:
                        if (iArr != null && iArr.length > 0) {
                            g3(138, iArr[0]);
                            break;
                        }
                        break;
                    case 85:
                        if (iArr != null && iArr.length > 0) {
                            g3(139, iArr[0]);
                            break;
                        }
                        break;
                    case 86:
                        if (iArr != null && iArr.length > 0) {
                            g3(16, iArr[0]);
                            break;
                        }
                        break;
                    case 87:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            g3(146, iArr[0]);
                            break;
                        }
                        break;
                    case 88:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] < 0) {
                                iArr[0] = 0;
                            } else if (iArr[0] > 2) {
                                iArr[0] = 2;
                            }
                            g3(147, iArr[0]);
                            break;
                        }
                        break;
                    case 89:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] < 0) {
                                iArr[0] = 0;
                            } else if (iArr[0] > 3) {
                                iArr[0] = 3;
                            }
                            g3(148, iArr[0]);
                            break;
                        }
                        break;
                    case 90:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] < 0) {
                                iArr[0] = 0;
                            } else if (iArr[0] > 2) {
                                iArr[0] = 2;
                            }
                            g3(149, iArr[0]);
                            break;
                        }
                        break;
                    default:
                        switch (i2) {
                            case 105:
                                if (iArr != null && iArr.length > 0) {
                                    if (iArr[0] == 1) {
                                        g3(90, iArr[1]);
                                    } else if (iArr[0] == 2) {
                                        g3(89, iArr[1]);
                                    } else if (iArr[0] == 12) {
                                        g3(94, iArr[1]);
                                    } else if (iArr[0] == 13) {
                                        g3(91, iArr[1]);
                                    } else if (iArr[0] == 14) {
                                        g3(92, iArr[1]);
                                    } else if (iArr[0] == 15) {
                                        g3(93, iArr[1]);
                                    } else if (iArr[0] == 32) {
                                        g3(71, iArr[1]);
                                    } else if (iArr[0] == 33) {
                                        g3(72, iArr[1]);
                                    } else if (iArr[0] == 34) {
                                        g3(73, iArr[1]);
                                    }
                                    break;
                                }
                                break;
                            case 106:
                                if (iArr != null && iArr.length > 0) {
                                    if (iArr[1] != 0) {
                                        iArr[1] = 1;
                                    }
                                    if (iArr[0] == 4) {
                                        g3(202, iArr[1]);
                                    } else if (iArr[0] == 5) {
                                        g3(115, iArr[1]);
                                    }
                                    break;
                                }
                                break;
                            case 107:
                                if (iArr != null && iArr.length > 0) {
                                    a3(iArr[0], iArr[1]);
                                    break;
                                }
                                break;
                        }
                        break;
                }
                return;
        }
        if (iArr == null || iArr.length <= 0) {
            return;
        }
        if (iArr[0] != 0) {
            iArr[0] = 1;
        }
        g3(171, iArr[0]);
    }

    public final void a3(int i2, int i3) {
        z.k.s(227, 224, 2, (byte) i2, (byte) i3);
    }

    public final void b3() {
        int[] iArr = new int[10];
        iArr[0] = 192;
        iArr[1] = 8;
        c3(iArr);
        int i2 = u0.b.D;
        if (i2 == 1) {
            int i3 = w0.d.f17797i;
            int i4 = w0.d.f17796h;
            if (i4 == 65536) {
                iArr[4] = 1;
            } else if (i4 == 65537) {
                iArr[4] = 2;
            } else if (i4 == 65538) {
                iArr[4] = 3;
            } else if (i4 == 0) {
                iArr[4] = 17;
            } else if (i4 == 1) {
                iArr[4] = 18;
            }
            iArr[5] = i3 & 255;
            iArr[6] = (i3 >> 8) & 255;
            iArr[7] = w0.d.f17798j & 255;
            iArr[8] = 0;
            iArr[9] = 0;
            return;
        }
        if (i2 == 2) {
            int i5 = h0.c.E;
            if (i5 == 0) {
                iArr[4] = 0;
                return;
            } else if (i5 <= 3) {
                iArr[4] = 1;
                return;
            } else {
                iArr[4] = 2;
                return;
            }
        }
        if (i2 == 4) {
            int i6 = o0.e.B;
            iArr[4] = i6 & 255;
            iArr[5] = (i6 >> 8) & 255;
            iArr[6] = 0;
            int i7 = o0.e.f16794r;
            iArr[7] = i7 / BatchedScanSettings.MAX_INTERVAL_SEC;
            iArr[8] = (i7 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60;
            iArr[9] = i7 % 60;
            return;
        }
        if (i2 == 8 || i2 == 9) {
            if (n0.j4.f16464b == 11) {
                int i8 = u0.b.r3;
                iArr[4] = (i8 >> 8) & 255;
                iArr[5] = i8 & 255;
                iArr[6] = 0;
                int i9 = u0.b.t3;
                iArr[7] = i9 / BatchedScanSettings.MAX_INTERVAL_SEC;
                iArr[8] = (i9 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60;
                iArr[9] = i9 % 60;
                return;
            }
            iArr[4] = 0;
            iArr[5] = 0;
            int i10 = u0.b.r3;
            iArr[6] = (i10 >> 8) & 255;
            iArr[7] = i10 & 255;
            int i11 = u0.b.t3;
            iArr[8] = (i11 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60;
            iArr[9] = i11 % 60;
        }
    }

    public final void c3(int[] iArr) {
        if (iArr == null || iArr.length < 3) {
            return;
        }
        iArr[2] = 7;
        iArr[3] = 48;
        switch (u0.b.D) {
            case 0:
                iArr[2] = 0;
                iArr[3] = 0;
                break;
            case 1:
                iArr[2] = 1;
                iArr[3] = 1;
                break;
            case 2:
                iArr[2] = 5;
                iArr[3] = 64;
                break;
            case 3:
                iArr[2] = 11;
                iArr[3] = 0;
                break;
            case 4:
                int i2 = o0.e.H;
                if (i2 == 1) {
                    iArr[2] = 2;
                    iArr[3] = 19;
                } else if (i2 == 2) {
                    iArr[2] = 9;
                    iArr[3] = 19;
                } else if (i2 == 3) {
                    iArr[2] = 8;
                    iArr[3] = 17;
                }
                break;
            case 5:
            case 11:
            case 12:
            case 13:
            case 14:
                break;
            case 6:
                if (d1.d.f1570c != 1) {
                    iArr[2] = 10;
                } else {
                    iArr[2] = 3;
                }
                break;
            case 7:
                iArr[2] = 6;
                iArr[3] = 18;
                break;
            case 8:
            case 10:
                if (n0.j4.f16464b != 11) {
                    iArr[2] = 9;
                    iArr[3] = 17;
                } else {
                    iArr[2] = 9;
                    iArr[3] = 19;
                }
                break;
            case 9:
            default:
                iArr[2] = 0;
                iArr[3] = 0;
                break;
        }
    }

    public final void d3() {
        int i2 = 0;
        int[] iArr = {196, 1, y0.f.C0};
        if (y0.f.f18055i == 1 || y0.f.C0 == 0) {
            iArr[2] = 128;
        }
        if (y0.f.C0 > 30) {
            iArr[2] = 30;
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

    public int e3(int i2) {
        if (i2 == 0 || i2 > 60) {
            return 10;
        }
        return i2 / 6;
    }

    public int f3(int i2) {
        if (i2 == 0 || i2 > 165) {
            return 10;
        }
        return i2 / 16;
    }

    public final void g3(int i2, int i3) {
        z.k.s(227, 198, 2, (byte) i2, (byte) i3);
    }

    public final void h3(int i2) {
        if (i2 == 1 || i2 == 1) {
            g3(0, 23);
        } else if (i2 == 3) {
            g3(0, 22);
        } else {
            g3(0, 1);
        }
    }

    public final void x3(String str) {
        if (str == null) {
            if (this.f4446z != str) {
                this.f4446z = str;
            }
        } else {
            if (str.equals(this.f4446z)) {
                return;
            }
            this.f4446z = str;
        }
    }

    public final int y3(int i2) {
        if (i2 < 1) {
            return 1;
        }
        if (i2 > 9) {
            return 9;
        }
        return i2;
    }

    public final void z3(byte b2, String str) {
        if (str == null) {
            str = ProxyProperties.LOCAL_EXCL_LIST;
        }
        byte[] bytes = str.getBytes();
        int length = bytes.length <= 44 ? bytes.length : 44;
        int[] iArr = new int[length + 4];
        iArr[0] = 227;
        iArr[1] = b2;
        iArr[2] = length + 1;
        iArr[3] = 1;
        for (int i2 = 0; i2 < length; i2++) {
            iArr[i2 + 4] = bytes[i2];
        }
        z.k.s(iArr);
    }
}
