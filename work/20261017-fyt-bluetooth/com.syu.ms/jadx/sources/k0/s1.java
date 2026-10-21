package k0;

import android.media.MediaPlayer;
import android.net.ProxyProperties;
import android.net.dhcp.DhcpPacket;
import android.net.wifi.BatchedScanSettings;
import android.opengl.GLES10;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.Spanned;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;
import module.sound.AudioDevice;

/* JADX INFO: loaded from: classes2.dex */
public class s1 extends lt {
    public static final int[] H = new int[12];
    public static final int[] I = new int[256];
    public static int J = 10;
    public static int K = 10;
    public static int L = 10;
    public static int M;
    public static int N;
    public static int O;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f10111k;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int[] f10102b = {CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR, 100, 120, 200, 300, 400, 500, CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR, 700, 800, MediaPlayer.MEDIA_INFO_TIMED_TEXT_ERROR, 1000};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f10103c = -1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public o1.g0 f10104d = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f10105e = 1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f10106f = 2;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f10107g = 3;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f10108h = 4;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f10109i = 5;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f10110j = 6;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f10112l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int[][] f10113m = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 18}, new int[]{10, 26}, new int[]{23, 9}, new int[]{24, 22}};

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f10114n = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Runnable f10115o = new f();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f10116p = 0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Runnable f10117q = new g();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Runnable f10118r = new h();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f10119s = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f10120t = 0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public byte f10121u = 10;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public Runnable f10122v = new i();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public Runnable f10123w = new j();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public Runnable f10124x = new k();

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public Runnable f10125y = new l();

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public Runnable f10126z = new m();
    public Runnable A = new n();
    public Runnable B = new a();
    public Runnable C = new b();
    public Runnable D = new c();
    public Runnable E = new d();
    public String F = ProxyProperties.LOCAL_EXCL_LIST;
    public Runnable G = new e();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            s1.this.t3((byte) 4, u0.b.j3);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            s1.this.t3((byte) 3, u0.b.k3);
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            s1.this.t3((byte) 5, u0.b.l3);
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            s1.this.C3(h0.c.f2437h);
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z2;
            if (s1.this.F.equals(h0.c.f2452q)) {
                z2 = false;
            } else {
                s1.this.F = h0.c.f2452q;
                if (s1.this.F == null) {
                    s1.this.F = ProxyProperties.LOCAL_EXCL_LIST;
                }
                z2 = true;
            }
            if (z2) {
                s1 s1Var = s1.this;
                s1Var.B3(s1Var.F);
            }
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            s1 s1Var = s1.this;
            int i2 = s1Var.f10116p;
            if (i2 > 0) {
                s1Var.f10116p = i2 - 1;
            }
            if (s1Var.f10116p == 0) {
                int i3 = nt.f8637c;
                if (i3 == 2 || i3 == 3 || i3 == 4 || i3 == 5) {
                    s1Var.a3();
                } else {
                    l0.c0.e();
                }
            }
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            s1 s1Var = s1.this;
            s1Var.f10116p = 4;
            s1Var.c3();
        }
    }

    public class h implements Runnable {
        public h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17347o == 1 || s1.this.f10119s == 1 || o1.u.S("com.syu.fourcamera2") || SystemProperties.getBoolean("persist.lsec.fourcamera2.show", false)) {
                z.k.s(227, 144, 2, 41, 0);
            }
        }
    }

    public class i implements Runnable {
        public i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(s1.this.f10123w);
            s1.this.f10121u = (byte) 10;
        }
    }

    public class j implements Runnable {
        public j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            s1 s1Var = s1.this;
            byte b2 = (byte) (s1Var.f10121u - 1);
            s1Var.f10121u = b2;
            if (b2 <= 0) {
                l0.b0.p0(s1Var.f10123w);
                s1.this.f10121u = (byte) 10;
                return;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (u0.b.f17306a0 == 1) {
                int i2 = nt.f8637c;
                if (i2 == 2 || i2 == 3 || i2 == 4 || i2 == 5) {
                    s1.this.a3();
                }
                s1 s1Var2 = s1.this;
                s1Var2.x3(s1Var2.f10104d.b(6, 0));
                s1 s1Var3 = s1.this;
                s1Var3.y3(s1Var3.f10104d.b(5, 0));
                s1 s1Var4 = s1.this;
                s1Var4.d3(65, s1Var4.f10104d.b(4, s1.N));
                s1 s1Var5 = s1.this;
                s1Var5.v3(s1Var5.f10104d.b(4, s1.N));
            }
        }
    }

    public class k implements Runnable {
        public k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            boolean zIs24HourFormat = DateFormat.is24HourFormat(App.c());
            int i2 = time.hour;
            int i3 = time.minute;
            byte b2 = (byte) time.second;
            int i4 = (zIs24HourFormat ? 1 : 0) << 7;
            z.k.s(227, 137, 2, i2 | i4, i3);
            z.k.s(227, -58, 4, 80, (byte) ((i4 | ((byte) i2)) & 255), (byte) i3, b2);
        }
    }

    public class l implements Runnable {
        public l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2;
            int i3 = u0.b.D;
            int i4 = (i3 == 8 || i3 == 9 || i3 == 10) ? 1 : 0;
            int i5 = h0.c.E;
            if (i5 == 3) {
                i2 = 2;
            } else if (i5 != 4) {
                i2 = i5 != 5 ? 0 : 4;
            } else {
                i2 = 1;
            }
            z.k.s(-29, -59, 2, 0, (byte) ((i4 << 6) | 0 | 0 | 0 | 0 | i2));
        }
    }

    public class m implements Runnable {
        public m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            qt.y0(1021, u0.b.Z);
        }
    }

    public class n implements Runnable {
        public n() {
        }

        @Override // java.lang.Runnable
        public void run() {
            s1.this.t3((byte) 2, u0.b.i3);
        }
    }

    public static String A3(String str) {
        int length = str.length();
        StringBuffer stringBuffer = new StringBuffer(length);
        int i2 = 0;
        while (i2 < length) {
            int i3 = i2 + 1;
            char cCharAt = str.charAt(i2);
            if (cCharAt == '\\') {
                i2 = i3 + 1;
                char cCharAt2 = str.charAt(i3);
                if (cCharAt2 == 'u') {
                    int i4 = 0;
                    int i5 = 0;
                    while (i4 < 4) {
                        int i6 = i2 + 1;
                        char cCharAt3 = str.charAt(i2);
                        switch (cCharAt3) {
                            case '0':
                            case '1':
                            case '2':
                            case '3':
                            case '4':
                            case '5':
                            case '6':
                            case '7':
                            case '8':
                            case '9':
                                i5 = ((i5 << 4) + cCharAt3) - 48;
                                break;
                            default:
                                switch (cCharAt3) {
                                    case 'A':
                                    case 'B':
                                    case 'C':
                                    case 'D':
                                    case 'E':
                                    case 'F':
                                        i5 = (((i5 << 4) + 10) + cCharAt3) - 65;
                                        break;
                                    default:
                                        switch (cCharAt3) {
                                            case 'a':
                                            case 'b':
                                            case 'c':
                                            case 'd':
                                            case 'e':
                                            case 'f':
                                                i5 = (((i5 << 4) + 10) + cCharAt3) - 97;
                                                break;
                                            default:
                                                throw new IllegalArgumentException("Malformed   \\uxxxx   encoding.");
                                        }
                                        break;
                                }
                                break;
                        }
                        i4++;
                        i2 = i6;
                    }
                    stringBuffer.append((char) i5);
                } else {
                    if (cCharAt2 == 't') {
                        cCharAt2 = '\t';
                    } else if (cCharAt2 == 'r') {
                        cCharAt2 = '\r';
                    } else if (cCharAt2 == 'n') {
                        cCharAt2 = '\n';
                    } else if (cCharAt2 == 'f') {
                        cCharAt2 = '\f';
                    }
                    stringBuffer.append(cCharAt2);
                }
            } else {
                stringBuffer.append(cCharAt);
                i2 = i3;
            }
        }
        return stringBuffer.toString();
    }

    public final void B3(String str) {
        try {
            String strA3 = A3(str);
            if (strA3 == null) {
                return;
            }
            int length = strA3.length() <= 15 ? strA3.length() : 15;
            int[] iArr = new int[38];
            iArr[0] = -29;
            iArr[1] = -53;
            iArr[2] = 34;
            iArr[3] = 5;
            iArr[4] = 3;
            for (int i2 = 0; i2 < length; i2++) {
                int i3 = i2 << 1;
                iArr[i3 + 5] = (byte) (strA3.charAt(i2) & 255);
                iArr[i3 + 6] = (byte) ((strA3.charAt(i2) >> '\b') & 255);
            }
            z.k.s(iArr);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final void C3(String str) {
        if (str == null) {
            return;
        }
        int length = str.length() <= 33 ? str.length() : 33;
        int[] iArr = new int[37];
        iArr[0] = -29;
        iArr[1] = -53;
        iArr[2] = 34;
        iArr[3] = 1;
        iArr[4] = 1;
        int i2 = length + 5;
        for (int i3 = 5; i3 < i2; i3++) {
            iArr[i3] = (byte) (str.charAt(i3 - 5) & 255);
        }
        iArr[i2] = -1;
        z.k.s(iArr);
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        this.f10104d.a();
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus", "com.syu.carradio"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 0;
        mtVar.f8315j = 1;
        mtVar.f8320o = 0;
        h0.d.f2464c.a(this.E, 1);
        h0.d.f2466e.a(this.G, 1);
        u0.c.f17388o.a(this.A, 1);
        u0.c.f17389p.a(this.B, 1);
        u0.c.f17390q.a(this.C, 1);
        u0.c.f17396w.a(this.D, 1);
        h0.d.f2462a.a(this.f10125y, 1);
        o1.y yVar = u0.c.f17374a;
        yVar.a(this.f10125y, 1);
        if (nt.f8637c == 0) {
            u0.c.f17382i.a(this.f10126z, 1);
        }
        int i2 = nt.f8637c;
        if (i2 == 4 || i2 == 5) {
            this.f7886a.f8315j = 0;
        }
        AudioDevice.W().R0(true);
        qt.z(this.f10124x);
        if (nt.a()) {
            y0.g.f18094d.a(this.f10117q, 1);
            y0.g.f18095e.a(this.f10117q, 1);
            w0.e.f17815a.a(this.f10115o, 1);
            w0.e.f17819e.a(this.f10115o, 1);
            yVar.a(this.f10115o, 1);
            u0.c.f17393t.a(this.f10115o, 1);
            u0.c.f17392s.a(this.f10115o, 1);
            qt.y(this.f10118r);
            u0.c.f17386m.a(this.f10122v, 1);
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 41) {
            qt.i(bArr[i2 + 2], bArr[i2 + 3], true, GLES10.GL_AMBIENT);
        }
        if (b2 == 112) {
            int i7 = i2 + 3;
            int i8 = (bArr[i7] >> 6) & 1;
            if (M != 1) {
                if (u0.b.f17347o == 0 && O == 1 && i8 == 1) {
                    if (!o1.u.T(a.b.O)) {
                        qt.t();
                        return;
                    } else {
                        if (o1.u.T(a.b.O)) {
                            qt.f();
                            return;
                        }
                        return;
                    }
                }
                return;
            }
            if (u0.b.f17347o == 0) {
                if (i8 == 1) {
                    if (nt.W == 0) {
                        if (((bArr[i7] >> 7) & 1) == 1) {
                            if (o1.u.T(a.b.O)) {
                                return;
                            }
                            qt.t();
                            return;
                        } else if (!o1.u.T(a.b.O)) {
                            qt.t();
                            return;
                        } else {
                            if (o1.u.T(a.b.O)) {
                                qt.f();
                                return;
                            }
                            return;
                        }
                    }
                    if (((bArr[i7] >> 3) & 1) == 1) {
                        if (o1.u.T(a.b.O)) {
                            return;
                        }
                        qt.t();
                        return;
                    } else if (!o1.u.T(a.b.O)) {
                        qt.t();
                        return;
                    } else {
                        if (o1.u.T(a.b.O)) {
                            qt.f();
                            return;
                        }
                        return;
                    }
                }
                if (nt.W == 0) {
                    if (this.f10120t != ((bArr[i7] >> 7) & 1)) {
                        int i9 = (bArr[i7] >> 7) & 1;
                        this.f10120t = i9;
                        if (i9 == 1) {
                            if (o1.u.T(a.b.O)) {
                                return;
                            }
                            qt.t();
                            return;
                        } else {
                            if (i9 == 0 && o1.u.T(a.b.O)) {
                                qt.f();
                                return;
                            }
                            return;
                        }
                    }
                    return;
                }
                if (this.f10120t != ((bArr[i7] >> 3) & 1)) {
                    int i10 = (bArr[i7] >> 3) & 1;
                    this.f10120t = i10;
                    if (i10 == 1) {
                        if (o1.u.T(a.b.O)) {
                            return;
                        }
                        qt.t();
                        return;
                    } else {
                        if (i10 == 0 && o1.u.T(a.b.O)) {
                            qt.f();
                            return;
                        }
                        return;
                    }
                }
                return;
            }
            return;
        }
        if (b2 == 50) {
            byte b3 = bArr[i2 + 2];
            qt.y0(116, (b3 >> 6) & 3);
            qt.y0(117, (b3 >> 4) & 3);
            qt.y0(118, b3 & DhcpPacket.DHCP_DOMAIN_NAME);
            byte b4 = bArr[i2 + 3];
            qt.y0(119, (b4 >> 7) & 1);
            qt.y0(120, 7 & (b4 >> 4));
            qt.y0(121, (b4 >> 2) & 3);
            qt.y0(122, (b4 >> 0) & 3);
            byte b5 = bArr[i2 + 4];
            qt.y0(123, (b5 >> 7) & 1);
            qt.y0(124, (b5 >> 4) & 3);
            byte b6 = bArr[i2 + 5];
            qt.y0(125, (b6 >> 7) & 1);
            qt.y0(126, (b6 >> 6) & 1);
            return;
        }
        int i11 = 11;
        int i12 = 2;
        if (b2 == 51) {
            byte b7 = bArr[i2 + 2];
            if (b7 == 1) {
                qt.y0(98, bArr[i2 + 3] & 255);
                qt.y0(99, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
                qt.y0(100, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
                qt.y0(101, ((bArr[i2 + 8] << 8) & 65280) | (bArr[i2 + 9] & 255));
                qt.y0(102, (16711680 & (bArr[i2 + 10] << 16)) | ((bArr[i2 + 11] << 8) & 65280) | (bArr[i2 + 12] & 255));
                qt.y0(103, (65280 & (bArr[i2 + 13] << 8)) | (bArr[i2 + 14] & 255));
                byte b8 = bArr[i2 + 15];
                qt.y0(104, b8 & 3);
                qt.y0(105, (b8 >> 2) & 3);
                qt.y0(106, (b8 >> 4) & 3);
                qt.y0(107, (b8 >> 6) & 1);
                qt.y0(108, (b8 >> 7) & 1);
                int i13 = bArr[i2 + 16] & 255;
                if (i13 < 0) {
                    i11 = 0;
                } else if (i13 <= 11) {
                    i11 = i13;
                }
                qt.y0(109, this.f10102b[i11]);
                return;
            }
            if (b7 != 2) {
                return;
            }
            qt.y0(110, ((bArr[i2 + 3] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
            qt.y0(111, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
            qt.y0(112, ((bArr[i2 + 8] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 9] << 8) & 65280) | (bArr[i2 + 10] & 255));
            qt.y0(113, ((bArr[i2 + 11] << 8) & 65280) | (bArr[i2 + 12] & 255));
            qt.y0(114, (16711680 & (bArr[i2 + 13] << 16)) | ((bArr[i2 + 14] << 8) & 65280) | (bArr[i2 + 15] & 255));
            qt.y0(115, (65280 & (bArr[i2 + 16] << 8)) | (bArr[i2 + 17] & 255));
            byte b9 = bArr[i2 + 18];
            qt.y0(104, b9 & 3);
            qt.y0(105, (b9 >> 2) & 3);
            qt.y0(106, (b9 >> 4) & 3);
            qt.y0(107, (b9 >> 6) & 1);
            qt.y0(108, (b9 >> 7) & 1);
            int i14 = bArr[i2 + 19] & 255;
            if (i14 < 0) {
                i11 = 0;
            } else if (i14 <= 11) {
                i11 = i14;
            }
            qt.y0(109, this.f10102b[i11]);
            return;
        }
        int i15 = 10;
        switch (b2) {
            case -48:
                byte b10 = bArr[i2 + 2];
                byte b11 = bArr[i2 + 3];
                if (this.f10103c == b10) {
                    if (b11 == 2) {
                        nt.f8643f[133].s(133, new int[]{1}, null, null);
                    } else if (b11 == 1) {
                        nt.f8643f[134].s(134, new int[]{1}, null, null);
                    }
                }
                break;
            case -47:
                byte b12 = bArr[i2 + 2];
                byte b13 = bArr[i2 + 3];
                byte b14 = bArr[i2 + 4];
                byte b15 = bArr[i2 + 5];
                byte b16 = bArr[i2 + 6];
                byte b17 = bArr[i2 + 7];
                byte b18 = bArr[i2 + 8];
                int i16 = b13 & 255;
                int i17 = i16 == 0 ? 0 : i16 == 16 ? 10000 : i16;
                int[] iArr2 = nt.f8645g;
                if (iArr2[138] != i17) {
                    iArr2[138] = i17;
                    o1.x.C(nt.f8643f, 138, new int[]{i17}, null, null);
                }
                int i18 = (b16 & 128) == 0 ? 0 : 1;
                if (iArr2[147] != i18) {
                    iArr2[147] = i18;
                    o1.x.C(nt.f8643f, 147, new int[]{i18}, null, null);
                }
                int i19 = (b16 & 32) == 0 ? 0 : 1;
                if (iArr2[145] != i19) {
                    iArr2[145] = i19;
                    o1.x.C(nt.f8643f, 145, new int[]{i19}, null, null);
                }
                int i20 = (b16 & 16) == 0 ? 0 : 1;
                if (iArr2[146] != i20) {
                    iArr2[146] = i20;
                    o1.x.C(nt.f8643f, 146, new int[]{i20}, null, null);
                }
                int i21 = b12 & 255;
                if (i21 == 1) {
                    int i22 = ((b15 & 255) << 8) | (b14 & 255);
                    if (i16 == 0) {
                        i22 *= 10;
                    }
                    if (iArr2[137] != i22) {
                        iArr2[137] = i22;
                        o1.x.C(nt.f8643f, 137, new int[]{i22}, null, null);
                    }
                    int i23 = (b16 & DhcpPacket.DHCP_DOMAIN_NAME) - 1;
                    if (iArr2[139] != i23) {
                        iArr2[139] = i23;
                        o1.x.C(nt.f8643f, 139, new int[]{i23}, null, null);
                    }
                }
                if (i21 != 3 || (i6 = b18 & 255) <= 0) {
                    i4 = 2;
                } else {
                    if (i6 < 0) {
                        i6 = 0;
                    } else if (i6 > 127) {
                        i6 = 127;
                    }
                    if (iArr2[142] != i6) {
                        iArr2[142] = i6;
                        o1.x.C(nt.f8643f, 142, new int[]{i6}, null, null);
                    }
                    int i24 = b17 & 255;
                    if (i24 < 0) {
                        i24 = 0;
                    } else {
                        int i25 = i6 - 1;
                        if (i24 > i25) {
                            i24 = i25;
                        }
                    }
                    int i26 = ((b15 & 255) << 8) | (b14 & 255);
                    if (i16 == 0) {
                        i26 *= 10;
                    }
                    H[i24] = i26;
                    i4 = 2;
                    o1.x.C(nt.f8643f, 140, new int[]{i24, i26}, null, null);
                }
                if (i21 == i4 && (i5 = b18 & 255) > 0) {
                    if (i5 < 0) {
                        i5 = 0;
                    } else if (i5 > 127) {
                        i5 = 127;
                    }
                    iArr2[144] = i5;
                    o1.x[] xVarArr = nt.f8643f;
                    o1.x.C(xVarArr, 144, new int[]{i5}, null, null);
                    int i27 = b17 & 255;
                    if (i27 < 0) {
                        i27 = 0;
                    }
                    int i28 = b16 & DhcpPacket.DHCP_DOMAIN_NAME;
                    if (i28 != 0) {
                        i28 = 1;
                    }
                    int i29 = (255 & b14) | ((b15 & 255) << 8);
                    if (i16 == 0) {
                        i29 *= 10;
                    }
                    I[i27] = i29;
                    o1.x.C(xVarArr, 143, new int[]{i27, i29, i28}, null, null);
                    break;
                }
                break;
            case -46:
                byte b19 = bArr[i2 + 2];
                qt.y0(131, (b19 >> 7) & 1);
                int i30 = (b19 >> 5) & 3;
                if (i30 == 0) {
                    qt.y0(135, 1);
                } else if (i30 == 1) {
                    qt.y0(135, 0);
                } else if (i30 == 2) {
                    qt.y0(135, 2);
                }
                break;
            case -45:
                int i31 = bArr[i2 + 2] & 255;
                if (i31 < 0) {
                    i12 = 0;
                } else if (i31 <= 2) {
                    i12 = i31;
                }
                qt.y0(127, i12);
                int i32 = bArr[i2 + 3] & 255;
                if (i32 < 0) {
                    i32 = 0;
                } else if (i32 > 10) {
                    i32 = 10;
                }
                u3(i32);
                qt.y0(128, i32);
                int i33 = bArr[i2 + 4] & 255;
                if (i33 < 0) {
                    i33 = 0;
                } else if (i33 > 10) {
                    i33 = 10;
                }
                w3(i33);
                qt.y0(129, i33);
                int i34 = bArr[i2 + 5] & 255;
                if (i34 < 0) {
                    i15 = 0;
                } else if (i34 <= 10) {
                    i15 = i34;
                }
                z3(i15);
                qt.y0(130, i15);
                break;
            default:
                switch (b2) {
                    case 32:
                        if (nt.a()) {
                            byte b20 = bArr[i2 + 2];
                            byte b21 = bArr[i2 + 3];
                            this.f10112l = b20 & 255;
                            int i35 = 0;
                            while (true) {
                                iArr = this.f10113m;
                                if (i35 < iArr.length) {
                                    int i36 = this.f10112l;
                                    if (i36 != iArr[i35][0]) {
                                        i35++;
                                    } else if (i36 != 0) {
                                        this.f10111k = i35;
                                    }
                                }
                            }
                            if (this.f10112l == 10) {
                                if ((b21 & 255) == 1) {
                                    int i37 = h0.c.E;
                                    if (i37 == 3 || i37 == 4 || i37 == 5) {
                                        l0.b0.l0(26, 0);
                                        l0.b0.l0(26, 1);
                                    } else {
                                        l0.b0.l0(12, 0);
                                        l0.b0.l0(12, 1);
                                    }
                                }
                            } else if ((b21 & 255) == 0) {
                                int i38 = this.f10111k;
                                if (i38 < iArr.length && i38 != 255) {
                                    l0.b0.l0(iArr[i38][1], 1);
                                }
                                this.f10111k = 255;
                            } else if (i35 < iArr.length) {
                                l0.b0.l0(iArr[i35][1], 0);
                            }
                        }
                        break;
                    case 33:
                        byte b22 = bArr[i2 + 2];
                        qt.y0(10, (b22 >> 7) & 1);
                        qt.y0(11, (b22 >> 6) & 1);
                        int[] iArr3 = new int[1];
                        iArr3[0] = (b22 & 32) == 0 ? 0 : 1;
                        qt.y0(12, iArr3);
                        qt.y0(13, (b22 >> 3) & 1);
                        qt.y0(14, (b22 >> 2) & 1);
                        qt.y0(16, (b22 >> 0) & 1);
                        byte b23 = bArr[i2 + 3];
                        qt.y0(18, (b23 >> 7) & 1);
                        qt.y0(19, (b23 >> 6) & 1);
                        qt.y0(20, (b23 >> 5) & 1);
                        int i39 = b23 & DhcpPacket.DHCP_DOMAIN_NAME;
                        qt.y0(21, i39 <= 7 ? i39 : 7);
                        int i40 = i2 + 4;
                        byte b24 = bArr[i40];
                        int i41 = i2 + 5;
                        byte b25 = bArr[i41];
                        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                            b24 = bArr[i41];
                            b25 = bArr[i40];
                        }
                        int i42 = i2 + 6;
                        if ((bArr[i42] & 2) == 0) {
                            if (b24 == -1) {
                                qt.y0(27, -3);
                            } else if (b24 != 0) {
                                qt.y0(27, b24 & 255);
                            } else {
                                qt.y0(27, -2);
                            }
                        }
                        if ((bArr[i42] & 2) == 0) {
                            if (b25 == -1) {
                                qt.y0(28, -3);
                            } else if (b25 != 0) {
                                qt.y0(28, b25 & 255);
                            } else {
                                qt.y0(28, -2);
                            }
                        }
                        byte b26 = bArr[i42];
                        qt.y0(65, (b26 >> 7) & 1);
                        qt.y0(37, (b26 >> 0) & 1);
                        break;
                    case 34:
                        u0.d.R2(l0.c0.e1(bArr[i2 + 2] & 255));
                        u0.d.S2(l0.c0.e1(bArr[i2 + 3] & 255));
                        u0.d.T2(l0.c0.e1(bArr[i2 + 4] & 255));
                        u0.d.U2(l0.c0.e1(bArr[i2 + 5] & 255));
                        break;
                    case 35:
                        int i43 = i2 + 2;
                        int i44 = bArr[i43] & 255;
                        int i45 = i2 + 3;
                        int i46 = bArr[i45] & 255;
                        int i47 = i2 + 4;
                        int i48 = bArr[i47] & 255;
                        int i49 = i2 + 5;
                        int i50 = bArr[i49] & 255;
                        if (i44 == 0 && i46 == 0 && i48 == 0 && i50 == 0) {
                            u0.d.C2(0);
                        } else if ((l0.c0.f13013g != i44 || l0.c0.f13014h != i46 || l0.c0.f13015i != i48 || l0.c0.f13016j != i50) && u0.b.f17347o == 0) {
                            u0.d.C2(1);
                            l0.c0.f13017k = 4;
                            l0.b0.b(l0.c0.f13018l);
                        }
                        l0.c0.f13013g = i44;
                        l0.c0.f13014h = i46;
                        l0.c0.f13015i = i48;
                        l0.c0.f13016j = i50;
                        u0.d.D2(l0.c0.e1(bArr[i43] & 255));
                        u0.d.E2(l0.c0.e1(bArr[i45] & 255));
                        u0.d.F2(l0.c0.e1(bArr[i47] & 255));
                        u0.d.G2(l0.c0.e1(bArr[i49] & 255));
                        break;
                    case 36:
                        byte b27 = bArr[i2 + 2];
                        if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                            qt.y0(1, (b27 >> 7) & 1);
                            qt.y0(2, (b27 >> 6) & 1);
                        } else {
                            qt.y0(1, (b27 >> 6) & 1);
                            qt.y0(2, (b27 >> 7) & 1);
                        }
                        qt.y0(3, (b27 >> 4) & 1);
                        qt.y0(4, (b27 >> 5) & 1);
                        qt.y0(5, (b27 >> 3) & 1);
                        qt.y0(0, (b27 >> 2) & 1);
                        this.f10119s = bArr[i2 + 3] & 1;
                        break;
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f10104d.j();
        h0.d.f2464c.d(this.E);
        h0.d.f2466e.d(this.G);
        u0.c.f17388o.d(this.A);
        u0.c.f17389p.d(this.B);
        u0.c.f17390q.d(this.C);
        u0.c.f17396w.d(this.D);
        h0.d.f2462a.d(this.f10125y);
        o1.y yVar = u0.c.f17374a;
        yVar.d(this.f10125y);
        u0.c.f17382i.d(this.f10126z);
        qt.q0(this.f10124x);
        y0.g.f18094d.d(this.f10117q);
        y0.g.f18095e.d(this.f10117q);
        w0.e.f17815a.d(this.f10115o);
        w0.e.f17819e.d(this.f10115o);
        yVar.d(this.f10115o);
        u0.c.f17393t.d(this.f10115o);
        u0.c.f17392s.d(this.f10115o);
        qt.p0(this.f10118r);
        u0.c.f17386m.d(this.f10122v);
        l0.b0.p0(this.f10123w);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 152) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 > 999) {
            if (i2 == 1005 && iArr != null && iArr.length > 0) {
                if (iArr[0] == 0) {
                    d3(64, 1);
                    return;
                } else if (iArr[0] == 1) {
                    d3(64, 0);
                    return;
                } else {
                    if (iArr[0] == 2) {
                        d3(64, 2);
                        return;
                    }
                    return;
                }
            }
            return;
        }
        if (i2 == 100) {
            if (iArr != null) {
                if (iArr.length == 1) {
                    s3(51, iArr[0]);
                    return;
                } else {
                    if (iArr.length > 1) {
                        s3(iArr[0], iArr[1]);
                        return;
                    }
                    return;
                }
            }
            return;
        }
        if (i2 != 1005) {
            if (i2 == 102) {
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                y3(iArr[0]);
                return;
            }
            if (i2 == 103) {
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                x3(iArr[0]);
                return;
            }
            switch (i2) {
                case 0:
                    if (iArr == null || iArr.length <= 0) {
                        return;
                    }
                    if (iArr[0] < 0) {
                        iArr[0] = 0;
                    } else if (iArr[0] > 10) {
                        iArr[0] = 10;
                    }
                    d3(0, iArr[0]);
                    return;
                case 1:
                    if (iArr == null || iArr.length <= 0) {
                        return;
                    }
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    d3(1, iArr[0]);
                    return;
                case 2:
                    if (iArr == null || iArr.length <= 0) {
                        return;
                    }
                    if (iArr[0] < 0) {
                        iArr[0] = 0;
                    } else if (iArr[0] > 2) {
                        iArr[0] = 2;
                    }
                    d3(2, iArr[0]);
                    return;
                case 3:
                    if (iArr == null || iArr.length <= 0) {
                        return;
                    }
                    if (iArr[0] < 0) {
                        iArr[0] = 0;
                    } else if (iArr[0] > 2) {
                        iArr[0] = 2;
                    }
                    d3(3, iArr[0]);
                    return;
                case 4:
                    if (iArr == null || iArr.length <= 0) {
                        return;
                    }
                    if (iArr[0] < 0) {
                        iArr[0] = 0;
                    } else if (iArr[0] > 2) {
                        iArr[0] = 2;
                    }
                    d3(4, iArr[0]);
                    return;
                case 5:
                    if (iArr == null || iArr.length <= 0) {
                        return;
                    }
                    if (iArr[0] < 0) {
                        iArr[0] = 0;
                    } else if (iArr[0] > 3) {
                        iArr[0] = 3;
                    }
                    d3(5, iArr[0]);
                    return;
                case 6:
                    if (iArr == null || iArr.length <= 0) {
                        return;
                    }
                    if (iArr[0] < 0) {
                        iArr[0] = 0;
                    } else if (iArr[0] > 4) {
                        iArr[0] = 4;
                    }
                    d3(6, iArr[0]);
                    return;
                case 7:
                    if (iArr == null || iArr.length <= 0) {
                        return;
                    }
                    if (iArr[0] < 0) {
                        iArr[0] = 0;
                    } else if (iArr[0] > 2) {
                        iArr[0] = 2;
                    }
                    d3(7, iArr[0]);
                    return;
                case 8:
                    if (iArr == null || iArr.length <= 0) {
                        return;
                    }
                    if (iArr[0] < 0) {
                        iArr[0] = 0;
                    } else if (iArr[0] > 3) {
                        iArr[0] = 3;
                    }
                    d3(8, iArr[0]);
                    return;
                case 9:
                    if (iArr == null || iArr.length <= 0) {
                        return;
                    }
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    d3(9, iArr[0]);
                    return;
                case 10:
                    if (iArr == null || iArr.length <= 0) {
                        return;
                    }
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    d3(10, iArr[0]);
                    return;
                case 11:
                    if (iArr == null || iArr.length <= 0) {
                        return;
                    }
                    if (iArr[0] < 0) {
                        iArr[0] = 0;
                    } else if (iArr[0] > 2) {
                        iArr[0] = 2;
                    }
                    d3(11, iArr[0]);
                    return;
                case 12:
                    if (iArr == null || iArr.length <= 0) {
                        return;
                    }
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    d3(12, iArr[0]);
                    return;
                case 13:
                    if (iArr == null || iArr.length <= 0) {
                        return;
                    }
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    d3(13, iArr[0]);
                    return;
                case 14:
                    if (iArr == null || iArr.length <= 0) {
                        return;
                    }
                    d3(14, 0);
                    return;
                case 15:
                    if (iArr == null || iArr.length <= 0) {
                        return;
                    }
                    d3(15, 0);
                    return;
                default:
                    switch (i2) {
                        case 17:
                            if (iArr == null || iArr.length <= 0) {
                                return;
                            }
                            d3(17, 0);
                            return;
                        case 18:
                            if (iArr == null || iArr.length <= 0) {
                                return;
                            }
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            d3(18, iArr[0]);
                            return;
                        case 19:
                            if (iArr == null || iArr.length <= 0) {
                                return;
                            }
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            d3(19, iArr[0]);
                            return;
                        default:
                            switch (i2) {
                                case 48:
                                    if (iArr == null || iArr.length <= 0) {
                                        return;
                                    }
                                    if (iArr[0] < 1) {
                                        iArr[0] = 1;
                                    } else if (iArr[0] > 3) {
                                        iArr[0] = 3;
                                    }
                                    d3(48, iArr[0]);
                                    return;
                                case 49:
                                    if (iArr == null || iArr.length <= 0) {
                                        return;
                                    }
                                    if (iArr[0] < 1) {
                                        iArr[0] = 1;
                                    } else if (iArr[0] > 2) {
                                        iArr[0] = 2;
                                    }
                                    d3(49, iArr[0]);
                                    return;
                                case 50:
                                    if (iArr == null || iArr.length <= 0) {
                                        return;
                                    }
                                    if (iArr[0] < 0) {
                                        iArr[0] = 0;
                                    } else if (iArr[0] > 11) {
                                        iArr[0] = 11;
                                    }
                                    d3(50, iArr[0]);
                                    return;
                                case 51:
                                    if (iArr == null || iArr.length <= 0) {
                                        return;
                                    }
                                    if (iArr[0] < 1) {
                                        iArr[0] = 1;
                                    } else if (iArr[0] > 2) {
                                        iArr[0] = 2;
                                    }
                                    d3(51, iArr[0]);
                                    return;
                                case 52:
                                    if (iArr == null || iArr.length <= 0) {
                                        return;
                                    }
                                    if (iArr[0] < 1) {
                                        iArr[0] = 1;
                                    } else if (iArr[0] > 2) {
                                        iArr[0] = 2;
                                    }
                                    d3(52, iArr[0]);
                                    return;
                                case 53:
                                    if (iArr == null || iArr.length <= 0) {
                                        return;
                                    }
                                    if (iArr[0] < 1) {
                                        iArr[0] = 1;
                                    } else if (iArr[0] > 2) {
                                        iArr[0] = 2;
                                    }
                                    d3(53, iArr[0]);
                                    return;
                                case 54:
                                    if (iArr == null || iArr.length <= 0) {
                                        return;
                                    }
                                    if (iArr[0] < 0) {
                                        iArr[0] = 0;
                                    } else if (iArr[0] > 126) {
                                        iArr[0] = 126;
                                    }
                                    d3(54, iArr[0]);
                                    return;
                                case 55:
                                    if (iArr == null || iArr.length <= 0) {
                                        return;
                                    }
                                    if (iArr[0] < 0) {
                                        iArr[0] = 0;
                                    } else if (iArr[0] > 11) {
                                        iArr[0] = 11;
                                    }
                                    d3(55, iArr[0]);
                                    return;
                                case 56:
                                    if (iArr == null || iArr.length <= 0) {
                                        return;
                                    }
                                    if (iArr[0] < 1) {
                                        iArr[0] = 1;
                                    } else if (iArr[0] > 2) {
                                        iArr[0] = 2;
                                    }
                                    d3(56, iArr[0]);
                                    return;
                                default:
                                    switch (i2) {
                                        case 64:
                                            break;
                                        case 65:
                                            if (iArr != null && iArr.length > 0) {
                                                if (iArr[0] < 0) {
                                                    iArr[0] = 0;
                                                } else if (iArr[0] > 3) {
                                                    iArr[0] = 3;
                                                }
                                                int i3 = iArr[0];
                                                N = i3;
                                                v3(i3);
                                                d3(65, iArr[0]);
                                                break;
                                            }
                                            break;
                                        case 66:
                                            if (iArr != null && iArr.length > 0) {
                                                if (iArr[0] < 0) {
                                                    iArr[0] = 0;
                                                } else if (iArr[0] > 2) {
                                                    iArr[0] = 2;
                                                }
                                                d3(66, iArr[0]);
                                                break;
                                            }
                                            break;
                                        case 67:
                                            if (iArr != null && iArr.length > 0) {
                                                if (iArr[0] < 0) {
                                                    iArr[0] = 0;
                                                } else if (iArr[0] > 10) {
                                                    iArr[0] = 10;
                                                }
                                                d3(67, iArr[0]);
                                                break;
                                            }
                                            break;
                                        case 68:
                                            if (iArr != null && iArr.length > 0) {
                                                if (iArr[0] < 0) {
                                                    iArr[0] = 0;
                                                } else if (iArr[0] > 10) {
                                                    iArr[0] = 10;
                                                }
                                                d3(68, iArr[0]);
                                                break;
                                            }
                                            break;
                                        case 69:
                                            if (iArr != null && iArr.length > 0) {
                                                if (iArr[0] < 0) {
                                                    iArr[0] = 0;
                                                } else if (iArr[0] > 10) {
                                                    iArr[0] = 10;
                                                }
                                                d3(69, iArr[0]);
                                                break;
                                            }
                                            break;
                                        case 70:
                                            if (iArr != null && iArr.length > 0) {
                                                if (iArr[0] != 0) {
                                                    iArr[0] = 2;
                                                } else {
                                                    iArr[0] = 1;
                                                }
                                                d3(53, iArr[0]);
                                                break;
                                            }
                                            break;
                                        case 71:
                                            if (iArr != null && iArr.length > 0) {
                                                if (iArr[0] == 2) {
                                                    iArr[0] = 2;
                                                } else if (iArr[0] == 1) {
                                                    iArr[0] = 1;
                                                } else {
                                                    iArr[0] = 3;
                                                }
                                                d3(48, iArr[0]);
                                                break;
                                            }
                                            break;
                                        case 72:
                                            if (iArr != null && iArr.length > 0) {
                                                if (iArr[0] == 0) {
                                                    d3(56, 1);
                                                } else if (iArr[0] == 10000) {
                                                    d3(56, 2);
                                                }
                                                break;
                                            }
                                            break;
                                        case 73:
                                            if (iArr != null && iArr.length > 0) {
                                                if (iArr[0] == 0) {
                                                    d3(49, 2);
                                                } else {
                                                    d3(49, 1);
                                                }
                                                break;
                                            }
                                            break;
                                        default:
                                            switch (i2) {
                                                case 80:
                                                    if (iArr != null && iArr.length > 0) {
                                                        if (iArr[0] < 0) {
                                                            iArr[0] = 0;
                                                        } else if (iArr[0] > 11) {
                                                            iArr[0] = 11;
                                                        }
                                                        d3(50, iArr[0]);
                                                        break;
                                                    }
                                                    break;
                                                case 81:
                                                    if (iArr != null && iArr.length > 0) {
                                                        if (iArr[0] != 0) {
                                                            iArr[0] = 1;
                                                        } else {
                                                            iArr[0] = 2;
                                                        }
                                                        d3(51, iArr[0]);
                                                        break;
                                                    }
                                                    break;
                                                case 82:
                                                    if (iArr != null && iArr.length > 0) {
                                                        if (iArr[0] < 0) {
                                                            iArr[0] = 0;
                                                        } else if (iArr[0] > 11) {
                                                            iArr[0] = 11;
                                                        }
                                                        d3(55, iArr[0]);
                                                        break;
                                                    }
                                                    break;
                                                case 83:
                                                    if (iArr != null && iArr.length > 0) {
                                                        if (iArr[0] != 0) {
                                                            iArr[0] = 1;
                                                        } else {
                                                            iArr[0] = 2;
                                                        }
                                                        d3(52, iArr[0]);
                                                        break;
                                                    }
                                                    break;
                                                case 84:
                                                    if (iArr != null && iArr.length > 0) {
                                                        if (iArr[0] < 0) {
                                                            iArr[0] = 0;
                                                        } else if (iArr[0] > 126) {
                                                            iArr[0] = 126;
                                                        }
                                                        d3(54, iArr[0]);
                                                        break;
                                                    }
                                                    break;
                                            }
                                            break;
                                    }
                                    return;
                            }
                    }
            }
        }
        if (iArr == null || iArr.length <= 0) {
            return;
        }
        if (iArr[0] == 0) {
            d3(64, 1);
        } else if (iArr[0] == 1) {
            d3(64, 0);
        } else if (iArr[0] == 2) {
            d3(64, 2);
        }
    }

    public final void a3() {
        int[] iArr = new int[10];
        int i2 = 0;
        iArr[0] = 192;
        iArr[1] = 8;
        b3(iArr);
        int i3 = u0.b.D;
        if (i3 == 2) {
            int i4 = h0.c.E;
            if (i4 == 1) {
                iArr[4] = 0;
            } else if (i4 == 4) {
                iArr[4] = 1;
            } else if (i4 == 5) {
                iArr[4] = 2;
            }
        } else if (i3 != 4) {
            if (i3 == 8 || i3 == 9) {
                int i5 = u0.b.r3;
                iArr[4] = i5 & 255;
                iArr[5] = (i5 >> 8) & 255;
                int i6 = u0.b.s3;
                iArr[6] = i6 & 255;
                iArr[7] = (i6 >> 8) & 255;
                int i7 = u0.b.t3;
                iArr[8] = (i7 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60;
                iArr[9] = i7 % 60;
            }
        } else if (o0.e.S == 1) {
            int i8 = o0.e.B;
            iArr[4] = i8 & 255;
            iArr[5] = (i8 >> 8) & 255;
            iArr[6] = 0;
            int i9 = o0.e.f16794r;
            iArr[7] = i9 / BatchedScanSettings.MAX_INTERVAL_SEC;
            iArr[8] = (i9 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60;
            iArr[9] = i9 % 60;
        } else {
            int i10 = o0.e.B;
            iArr[4] = i10 & 255;
            iArr[5] = (i10 >> 8) & 255;
            int i11 = o0.e.C;
            iArr[6] = i11;
            iArr[7] = (i11 >> 8) & 255;
            int i12 = o0.e.f16794r;
            iArr[8] = (i12 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60;
            iArr[9] = i12 % 60;
        }
        int[] iArr2 = new int[11];
        iArr2[0] = 227;
        while (i2 < 10) {
            int i13 = i2 + 1;
            iArr2[i13] = iArr[i2];
            i2 = i13;
        }
        z.k.s(iArr2);
    }

    public final void b3(int[] iArr) {
        if (iArr == null || iArr.length < 4) {
            return;
        }
        switch (u0.b.D) {
            case 0:
                iArr[2] = 0;
                iArr[3] = 0;
                break;
            case 1:
                iArr[2] = 0;
                iArr[3] = 0;
                break;
            case 2:
                int i2 = h0.c.E;
                if (i2 == 1 || i2 == 4 || i2 == 5 || i2 == 6) {
                    iArr[2] = 5;
                    iArr[3] = 64;
                } else {
                    iArr[2] = 12;
                    iArr[3] = 48;
                }
                break;
            case 3:
                iArr[2] = 11;
                iArr[3] = 0;
                break;
            case 4:
                int i3 = o0.e.H;
                if (i3 == 1) {
                    iArr[2] = 17;
                    iArr[3] = 33;
                } else if (i3 == 2) {
                    iArr[2] = 8;
                    iArr[3] = 17;
                } else if (i3 == 3) {
                    iArr[2] = 8;
                    iArr[3] = 17;
                }
                break;
            case 5:
                iArr[2] = 7;
                iArr[3] = 0;
                break;
            case 6:
                iArr[2] = 12;
                iArr[3] = 10;
                break;
            case 7:
                iArr[2] = 6;
                iArr[3] = 48;
                break;
            case 8:
            case 10:
                iArr[2] = 8;
                iArr[3] = 17;
                break;
            case 9:
            default:
                iArr[2] = 0;
                iArr[3] = 0;
                break;
            case 11:
                iArr[2] = 34;
                iArr[3] = 0;
                break;
        }
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

    public final void d3(int i2, int i3) {
        this.f10103c = i2;
        z.k.s(227, -58, 3, (byte) i2, (byte) i3, 0);
    }

    public final void s3(int i2, int i3) {
        z.k.s(227, -112, 2, (byte) i2, (byte) i3);
    }

    public final void t3(byte b2, String str) {
        if (str == null) {
            str = ProxyProperties.LOCAL_EXCL_LIST;
        }
        int[] iArr = new int[37];
        iArr[0] = 227;
        iArr[1] = 203;
        iArr[2] = 34;
        iArr[3] = b2;
        iArr[4] = 2;
        int length = str.length() <= 15 ? str.length() : 15;
        for (int i2 = 0; i2 < length; i2++) {
            int iCodePointAt = str.codePointAt(i2);
            int i3 = i2 << 1;
            iArr[i3 + 6] = (iCodePointAt >> 8) & 255;
            iArr[i3 + 5] = iCodePointAt & 255;
        }
        z.k.s(iArr);
    }

    public final void u3(int i2) {
        J = i2;
        int iB = this.f10104d.b(1, 10);
        int i3 = J;
        if (iB != i3) {
            this.f10104d.g(1, i3);
        }
    }

    public final void v3(int i2) {
        N = i2;
        qt.y0(132, i2);
        int iB = this.f10104d.b(4, 0);
        int i3 = N;
        if (iB != i3) {
            this.f10104d.g(4, i3);
        }
    }

    public final void w3(int i2) {
        L = i2;
        int iB = this.f10104d.b(3, -2);
        int i3 = L;
        if (iB != i3) {
            this.f10104d.g(3, i3);
        }
    }

    public final void x3(int i2) {
        if (i2 < 0) {
            i2 = 0;
        } else if (i2 > 1) {
            i2 = 1;
        }
        O = i2;
        qt.y0(151, i2);
        int iB = this.f10104d.b(6, 0);
        int i3 = O;
        if (iB != i3) {
            this.f10104d.g(6, i3);
        }
    }

    public final void y3(int i2) {
        if (i2 < 0) {
            i2 = 0;
        } else if (i2 > 1) {
            i2 = 1;
        }
        M = i2;
        qt.y0(150, i2);
        int iB = this.f10104d.b(5, 0);
        int i3 = M;
        if (iB != i3) {
            this.f10104d.g(5, i3);
        }
    }

    public final void z3(int i2) {
        K = i2;
        int iB = this.f10104d.b(2, -2);
        int i3 = K;
        if (iB != i3) {
            this.f10104d.g(2, i3);
        }
    }
}
