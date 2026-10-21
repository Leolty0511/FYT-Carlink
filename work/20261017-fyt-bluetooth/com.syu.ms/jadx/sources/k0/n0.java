package k0;

import android.media.MediaPlayer;
import android.net.ProxyProperties;
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
public class n0 extends lt {
    public static final int[] F = new int[12];
    public static final int[] G = new int[256];
    public static int H = 10;
    public static int I = 10;
    public static int J = 10;
    public static int K;
    public static int L;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f8366m;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int[] f8355b = {CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR, 100, 120, 200, 300, 400, 500, CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR, 700, 800, MediaPlayer.MEDIA_INFO_TIMED_TEXT_ERROR, 1000};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f8356c = -1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f8357d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public o1.g0 f8358e = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f8359f = 1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f8360g = 2;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f8361h = 3;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f8362i = 4;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f8363j = 5;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f8364k = 6;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f8365l = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f8367n = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int[][] f8368o = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 18}, new int[]{10, 26}, new int[]{24, 22}};

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f8369p = 0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Runnable f8370q = new a();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f8371r = 0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public Runnable f8372s = new b();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public Runnable f8373t = new c();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f8374u = 0;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public Runnable f8375v = new d();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public Runnable f8376w = new e();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public String f8377x = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public Runnable f8378y = new f();

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public byte f8379z = 10;
    public Runnable A = new g();
    public Runnable B = new h();
    public Runnable C = new i();
    public long D = -1;
    public int E = -1;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17347o == 1 || n0.this.f8369p == 1 || o1.u.S("com.syu.fourcamera2") || SystemProperties.getBoolean("persist.lsec.fourcamera2.show", false)) {
                z.k.s(227, 144, 2, 41, 0);
            }
        }
    }

    public class b implements Runnable {
        public b() {
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

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            n0 n0Var = n0.this;
            int i2 = n0Var.f8374u;
            if (i2 > 0) {
                n0Var.f8374u = i2 - 1;
            }
            if (n0Var.f8374u == 0) {
                l0.c0.e();
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            n0 n0Var = n0.this;
            n0Var.f8374u = 4;
            n0Var.a3();
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            n0.this.A3(h0.c.f2437h);
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z2;
            if (n0.this.f8377x.equals(h0.c.f2452q)) {
                z2 = false;
            } else {
                n0.this.f8377x = h0.c.f2452q;
                if (n0.this.f8377x == null) {
                    n0.this.f8377x = ProxyProperties.LOCAL_EXCL_LIST;
                }
                z2 = true;
            }
            if (z2) {
                n0 n0Var = n0.this;
                n0Var.z3(n0Var.f8377x);
            }
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(n0.this.B);
            n0.this.f8379z = (byte) 5;
        }
    }

    public class h implements Runnable {
        public h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            n0 n0Var = n0.this;
            byte b2 = (byte) (n0Var.f8379z - 1);
            n0Var.f8379z = b2;
            if (b2 <= 0) {
                l0.b0.p0(n0Var.B);
                n0.this.f8379z = (byte) 5;
                return;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (u0.b.f17306a0 == 1) {
                n0 n0Var2 = n0.this;
                n0Var2.v3(n0Var2.f8358e.b(6, 0));
                n0 n0Var3 = n0.this;
                n0Var3.w3(n0Var3.f8358e.b(5, 0));
                n0.this.r3(51, 1);
                n0.this.r3(51, 2);
            }
        }
    }

    public class i implements Runnable {
        public i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            long millis = time.toMillis(false) / 3000;
            int i2 = !DateFormat.is24HourFormat(App.c()) ? 1 : 0;
            if (n0.this.D == millis && n0.this.E == i2) {
                return;
            }
            n0.this.D = millis;
            n0.this.E = i2;
            z.k.s(227, 137, 2, (i2 << 7) | time.hour, time.minute);
        }
    }

    public static String y3(String str) {
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

    public final void A3(String str) {
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
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 0;
        mtVar.f8320o = 0;
        this.f8358e.a();
        r3(50, 0);
        r3(51, 1);
        r3(51, 2);
        r3(209, 1);
        r3(209, 2);
        r3(209, 3);
        r3(210, 0);
        r3(211, 0);
        c3(65, this.f8357d);
        c3(67, this.f8358e.b(1, H));
        c3(68, this.f8358e.b(3, J));
        c3(69, this.f8358e.b(2, I));
        qt.z(this.C);
        h0.d.f2464c.a(this.f8376w, 1);
        h0.d.f2466e.a(this.f8378y, 1);
        h0.d.f2462a.a(this.f8372s, 1);
        o1.y yVar = u0.c.f17374a;
        yVar.a(this.f8372s, 1);
        y0.g.f18094d.a(this.f8375v, 1);
        y0.g.f18095e.a(this.f8375v, 1);
        w0.e.f17815a.a(this.f8373t, 1);
        w0.e.f17819e.a(this.f8373t, 1);
        yVar.a(this.f8373t, 1);
        u0.c.f17393t.a(this.f8373t, 1);
        u0.c.f17392s.a(this.f8373t, 1);
        if (nt.a()) {
            qt.y(this.f8370q);
            u0.c.f17386m.a(this.A, 1);
        }
    }

    /* JADX WARN: Code duplicated, block: B:196:0x0468  */
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
            if (K != 1) {
                if (u0.b.f17347o == 0 && L == 1 && i8 == 1) {
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
                        } else if (o1.u.T(a.b.O)) {
                            qt.f();
                            return;
                        } else {
                            qt.t();
                            return;
                        }
                    }
                    if (((bArr[i7] >> 3) & 1) == 1) {
                        if (o1.u.T(a.b.O)) {
                            return;
                        }
                        qt.t();
                        return;
                    } else if (o1.u.T(a.b.O)) {
                        qt.f();
                        return;
                    } else {
                        qt.t();
                        return;
                    }
                }
                if (nt.W == 0) {
                    if (this.f8371r != ((bArr[i7] >> 7) & 1)) {
                        int i9 = (bArr[i7] >> 7) & 1;
                        this.f8371r = i9;
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
                if (this.f8371r != ((bArr[i7] >> 3) & 1)) {
                    int i10 = (bArr[i7] >> 3) & 1;
                    this.f8371r = i10;
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
                qt.y0(109, this.f8355b[i11]);
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
            qt.y0(109, this.f8355b[i11]);
            return;
        }
        int i15 = 10;
        switch (b2) {
            case -48:
                byte b10 = bArr[i2 + 2];
                byte b11 = bArr[i2 + 3];
                if (this.f8356c == b10) {
                    if (b11 == 2) {
                        nt.f8643f[133].s(133, new int[]{1}, null, null);
                    } else if (b11 == 1) {
                        nt.f8643f[134].s(134, new int[]{1}, null, null);
                    }
                }
                if (b10 == 65 && b11 == 0) {
                    t3(this.f8357d);
                    qt.y0(132, this.f8357d);
                    break;
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
                    int[] iArr3 = F;
                    if (iArr3[i24] != i26) {
                        iArr3[i24] = i26;
                        i4 = 2;
                        o1.x.C(nt.f8643f, 140, new int[]{i24, i26}, null, null);
                    } else {
                        i4 = 2;
                    }
                }
                if (i21 == i4 && (i5 = b18 & 255) > 0) {
                    if (i5 < 0) {
                        i5 = 0;
                    } else if (i5 > 127) {
                        i5 = 127;
                    }
                    if (iArr2[144] != i5) {
                        iArr2[144] = i5;
                        o1.x.C(nt.f8643f, 144, new int[]{i5}, null, null);
                    }
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
                    int[] iArr4 = G;
                    if (iArr4[i27] != i29) {
                        iArr4[i27] = i29;
                        o1.x.C(nt.f8643f, 143, new int[]{i27, i29, i28}, null, null);
                    }
                    break;
                }
                break;
            case -46:
                byte b19 = bArr[i2 + 2];
                qt.y0(131, (b19 >> 7) & 1);
                int i30 = (b19 >> 5) & 3;
                if (i30 == 0) {
                    qt.y0(Process.MEDIA_UID, 1);
                } else if (i30 == 1) {
                    qt.y0(Process.MEDIA_UID, 0);
                } else if (i30 == 2) {
                    qt.y0(Process.MEDIA_UID, 2);
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
                s3(i32);
                qt.y0(128, i32);
                int i33 = bArr[i2 + 4] & 255;
                if (i33 < 0) {
                    i33 = 0;
                } else if (i33 > 10) {
                    i33 = 10;
                }
                u3(i33);
                qt.y0(129, i33);
                int i34 = bArr[i2 + 5] & 255;
                if (i34 < 0) {
                    i15 = 0;
                } else if (i34 <= 10) {
                    i15 = i34;
                }
                x3(i15);
                qt.y0(130, i15);
                break;
            default:
                switch (b2) {
                    case 32:
                        if (nt.a()) {
                            byte b20 = bArr[i2 + 2];
                            byte b21 = bArr[i2 + 3];
                            this.f8367n = b20 & 255;
                            int i35 = 0;
                            while (true) {
                                iArr = this.f8368o;
                                if (i35 < iArr.length) {
                                    int i36 = this.f8367n;
                                    if (i36 != iArr[i35][0]) {
                                        i35++;
                                    } else if (i36 != 0) {
                                        this.f8366m = i35;
                                    }
                                }
                            }
                            if (this.f8367n == 10) {
                                if ((b21 & 255) == 1) {
                                    int i37 = h0.c.E;
                                    if (i37 == 3 || i37 == 4 || i37 == 5) {
                                        l0.b0.l0(26, 0);
                                        l0.b0.l0(26, 1);
                                    } else {
                                        l0.b0.l0(6, 0);
                                        l0.b0.l0(6, 1);
                                    }
                                }
                            } else if ((b21 & 255) == 0) {
                                int i38 = this.f8366m;
                                if (i38 < iArr.length && i38 != 255) {
                                    l0.b0.l0(iArr[i38][1], 1);
                                }
                                this.f8366m = 255;
                            } else if (i35 < iArr.length) {
                                l0.b0.l0(iArr[i35][1], 0);
                            }
                        }
                        break;
                    case 33:
                        byte b22 = bArr[i2 + 2];
                        qt.y0(10, (b22 >> 7) & 1);
                        qt.y0(11, (b22 >> 6) & 1);
                        int[] iArr5 = new int[1];
                        iArr5[0] = (b22 & 32) == 0 ? 0 : 1;
                        qt.y0(12, iArr5);
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
                        if (nt.a()) {
                            byte b27 = bArr[i2 + 2];
                            byte b28 = bArr[i2 + 3];
                            byte b29 = bArr[i2 + 4];
                            byte b30 = bArr[i2 + 5];
                            u0.d.R2(b3(b27 & 255));
                            u0.d.S2(b3(b28 & 255));
                            u0.d.T2(b3(b29 & 255));
                            u0.d.U2(b3(b30 & 255));
                        }
                        break;
                    case 35:
                        if (nt.a()) {
                            int i43 = bArr[i2 + 2] & 255;
                            int i44 = bArr[i2 + 3] & 255;
                            int i45 = bArr[i2 + 4] & 255;
                            int i46 = bArr[i2 + 5] & 255;
                            if (i43 == 0 && i44 == 0 && i45 == 0 && i46 == 0) {
                                u0.d.C2(0);
                            } else if ((l0.c0.f13013g != i43 || l0.c0.f13014h != i44 || l0.c0.f13015i != i45 || l0.c0.f13016j != i46) && u0.b.f17347o == 0) {
                                u0.d.C2(1);
                                l0.c0.f13017k = 4;
                                l0.b0.b(l0.c0.f13018l);
                            }
                            l0.c0.f13013g = i43;
                            l0.c0.f13014h = i44;
                            l0.c0.f13015i = i45;
                            l0.c0.f13016j = i46;
                            u0.d.D2(b3(i43 & 255));
                            u0.d.E2(b3(i44 & 255));
                            u0.d.F2(b3(i45 & 255));
                            u0.d.G2(b3(i46 & 255));
                        }
                        break;
                    case 36:
                        byte b31 = bArr[i2 + 2];
                        if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                            qt.y0(1, (b31 >> 7) & 1);
                            qt.y0(2, (b31 >> 6) & 1);
                        } else {
                            qt.y0(1, (b31 >> 6) & 1);
                            qt.y0(2, (b31 >> 7) & 1);
                        }
                        qt.y0(3, (b31 >> 4) & 1);
                        qt.y0(4, (b31 >> 5) & 1);
                        qt.y0(5, (b31 >> 3) & 1);
                        qt.y0(0, (b31 >> 2) & 1);
                        this.f8369p = bArr[i2 + 3] & 1;
                        break;
                    case 37:
                        nt.a();
                        break;
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f8358e.j();
        qt.q0(this.C);
        qt.p0(this.f8370q);
        u0.c.f17386m.d(this.A);
        l0.b0.p0(this.B);
        h0.d.f2464c.d(this.f8376w);
        h0.d.f2466e.d(this.f8378y);
        h0.d.f2462a.d(this.f8372s);
        o1.y yVar = u0.c.f17374a;
        yVar.d(this.f8372s);
        y0.g.f18094d.d(this.f8375v);
        y0.g.f18095e.d(this.f8375v);
        w0.e.f17815a.d(this.f8373t);
        w0.e.f17819e.d(this.f8373t);
        yVar.d(this.f8373t);
        u0.c.f17393t.d(this.f8373t);
        u0.c.f17392s.d(this.f8373t);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 152) {
            return;
        }
        if (i2 != 140) {
            if (i2 != 143) {
                o1.x.v(bVar, i2, nt.f8645g[i2]);
                return;
            }
            for (int i4 = 0; i4 < nt.f8645g[144]; i4++) {
                o1.x.w(bVar, i2, new int[]{i4, G[i4]}, null, null);
            }
            return;
        }
        if (nt.f8645g[138] == 0) {
            for (int i5 = 0; i5 < 12; i5++) {
                o1.x.w(bVar, i2, new int[]{i5, F[i5]}, null, null);
            }
            return;
        }
        for (int i6 = 0; i6 < 6; i6++) {
            o1.x.w(bVar, i2, new int[]{i6, F[i6]}, null, null);
        }
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 > 999) {
            if (i2 == 1005 && iArr != null && iArr.length > 0) {
                if (iArr[0] == 0) {
                    c3(64, 1);
                    return;
                } else if (iArr[0] == 1) {
                    c3(64, 0);
                    return;
                } else {
                    if (iArr[0] == 2) {
                        c3(64, 2);
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
                    r3(51, iArr[0]);
                    return;
                } else {
                    if (iArr.length > 1) {
                        r3(iArr[0], iArr[1]);
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
                w3(iArr[0]);
                return;
            }
            if (i2 == 103) {
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                v3(iArr[0]);
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
                    c3(0, iArr[0]);
                    return;
                case 1:
                    if (iArr == null || iArr.length <= 0) {
                        return;
                    }
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    c3(1, iArr[0]);
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
                    c3(2, iArr[0]);
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
                    c3(3, iArr[0]);
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
                    c3(4, iArr[0]);
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
                    c3(5, iArr[0]);
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
                    c3(6, iArr[0]);
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
                    c3(7, iArr[0]);
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
                    c3(8, iArr[0]);
                    return;
                case 9:
                    if (iArr == null || iArr.length <= 0) {
                        return;
                    }
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    c3(9, iArr[0]);
                    return;
                case 10:
                    if (iArr == null || iArr.length <= 0) {
                        return;
                    }
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    c3(10, iArr[0]);
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
                    c3(11, iArr[0]);
                    return;
                case 12:
                    if (iArr == null || iArr.length <= 0) {
                        return;
                    }
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    c3(12, iArr[0]);
                    return;
                case 13:
                    if (iArr == null || iArr.length <= 0) {
                        return;
                    }
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    c3(13, iArr[0]);
                    return;
                case 14:
                    if (iArr == null || iArr.length <= 0) {
                        return;
                    }
                    c3(14, 0);
                    return;
                case 15:
                    if (iArr == null || iArr.length <= 0) {
                        return;
                    }
                    c3(15, 0);
                    return;
                default:
                    switch (i2) {
                        case 17:
                            if (iArr == null || iArr.length <= 0) {
                                return;
                            }
                            c3(17, 0);
                            return;
                        case 18:
                            if (iArr == null || iArr.length <= 0) {
                                return;
                            }
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            c3(18, iArr[0]);
                            return;
                        case 19:
                            if (iArr == null || iArr.length <= 0) {
                                return;
                            }
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            c3(19, iArr[0]);
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
                                    c3(48, iArr[0]);
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
                                    c3(49, iArr[0]);
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
                                    c3(50, iArr[0]);
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
                                    c3(51, iArr[0]);
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
                                    c3(52, iArr[0]);
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
                                    c3(53, iArr[0]);
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
                                    c3(54, iArr[0]);
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
                                    c3(55, iArr[0]);
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
                                    c3(56, iArr[0]);
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
                                                this.f8357d = iArr[0];
                                                c3(65, iArr[0]);
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
                                                c3(66, iArr[0]);
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
                                                c3(67, iArr[0]);
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
                                                c3(68, iArr[0]);
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
                                                c3(69, iArr[0]);
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
                                                c3(53, iArr[0]);
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
                                                c3(48, iArr[0]);
                                                break;
                                            }
                                            break;
                                        case 72:
                                            if (iArr != null && iArr.length > 0) {
                                                if (iArr[0] == 0) {
                                                    c3(56, 1);
                                                } else if (iArr[0] == 10000) {
                                                    c3(56, 2);
                                                }
                                                break;
                                            }
                                            break;
                                        case 73:
                                            if (iArr != null && iArr.length > 0) {
                                                if (iArr[0] == 0) {
                                                    c3(49, 2);
                                                } else {
                                                    c3(49, 1);
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
                                                        c3(50, iArr[0]);
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
                                                        c3(51, iArr[0]);
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
                                                        c3(55, iArr[0]);
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
                                                        c3(52, iArr[0]);
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
                                                        c3(54, iArr[0]);
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
            c3(64, 1);
        } else if (iArr[0] == 1) {
            c3(64, 0);
        } else if (iArr[0] == 2) {
            c3(64, 2);
        }
    }

    public final void a3() {
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

    public final int b3(int i2) {
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

    public final void c3(int i2, int i3) {
        this.f8356c = i2;
        z.k.s(227, -58, 3, (byte) i2, (byte) i3, 0);
    }

    public final void r3(int i2, int i3) {
        z.k.s(227, -112, 2, (byte) i2, (byte) i3);
    }

    public final void s3(int i2) {
        H = i2;
        int iB = this.f8358e.b(1, 10);
        int i3 = H;
        if (iB != i3) {
            this.f8358e.g(1, i3);
        }
    }

    public final void t3(int i2) {
        this.f8357d = i2;
        int iB = this.f8358e.b(4, 0);
        int i3 = this.f8357d;
        if (iB != i3) {
            this.f8358e.g(4, i3);
        }
    }

    public final void u3(int i2) {
        J = i2;
        int iB = this.f8358e.b(3, -2);
        int i3 = J;
        if (iB != i3) {
            this.f8358e.g(3, i3);
        }
    }

    public final void v3(int i2) {
        if (i2 < 0) {
            i2 = 0;
        } else if (i2 > 1) {
            i2 = 1;
        }
        L = i2;
        qt.y0(151, i2);
        int iB = this.f8358e.b(6, 0);
        int i3 = L;
        if (iB != i3) {
            this.f8358e.g(6, i3);
        }
    }

    public final void w3(int i2) {
        if (i2 < 0) {
            i2 = 0;
        } else if (i2 > 1) {
            i2 = 1;
        }
        K = i2;
        qt.y0(150, i2);
        int iB = this.f8358e.b(5, 0);
        int i3 = K;
        if (iB != i3) {
            this.f8358e.g(5, i3);
        }
    }

    public final void x3(int i2) {
        I = i2;
        int iB = this.f8358e.b(2, -2);
        int i3 = I;
        if (iB != i3) {
            this.f8358e.g(2, i3);
        }
    }

    public final void z3(String str) {
        try {
            String strY3 = y3(str);
            if (strY3 == null) {
                return;
            }
            int length = strY3.length() <= 15 ? strY3.length() : 15;
            int[] iArr = new int[38];
            iArr[0] = -29;
            iArr[1] = -53;
            iArr[2] = 34;
            iArr[3] = 5;
            iArr[4] = 3;
            for (int i2 = 0; i2 < length; i2++) {
                int i3 = i2 << 1;
                iArr[i3 + 5] = (byte) (strY3.charAt(i2) & 255);
                iArr[i3 + 6] = (byte) ((strY3.charAt(i2) >> '\b') & 255);
            }
            z.k.s(iArr);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
