package module.canbus;

import android.drm.DrmManagerClient;
import android.net.dhcp.DhcpPacket;
import android.net.wifi.BatchedScanSettings;
import android.opengl.GLES10;
import android.os.SystemProperties;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;
import java.util.Calendar;
import java.util.TimeZone;
import k0.lt;
import k0.mt;
import k0.nt;
import k0.qt;
import o1.o0;

/* JADX INFO: loaded from: classes2.dex */
public class l extends lt {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static int f14463n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static int f14464o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static int f14465p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static int f14466q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static int f14467r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static int f14468s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static int f14469t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static int f14470u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final int[] f14471v = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 35};

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final int[] f14472w = {0, 1, 3, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 17, 19, 20};

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final o1.f<e> f14473x = new o1.f<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f14474b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f14475c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f14476d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{5, 18}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 25}, new int[]{10, 56}, new int[]{11, 56}, new int[]{12, 6}, new int[]{13, 35}, new int[]{14, 34}, new int[]{15, 25}, new int[]{16, 26}, new int[]{18, 13}, new int[]{48, 25}, new int[]{49, 1}, new int[]{50, 38}, new int[]{51, 24}, new int[]{52, 55}, new int[]{53, 24}, new int[]{54, 21}, new int[]{55, 54}, new int[]{56, 18}, new int[]{57, 3}, new int[]{58, 4}, new int[]{59, 25}, new int[]{64, 25}, new int[]{65, 3}, new int[]{66, 4}, new int[]{131, 4}, new int[]{132, 3}, new int[]{133, 67}, new int[]{134, 68}, new int[]{135, 25}, new int[]{136, 2}, new int[]{137, 12}, new int[]{60, 7}, new int[]{61, 8}, new int[]{62, 81}, new int[]{63, 80}, new int[]{129, 7}, new int[]{130, 8}, new int[]{138, 7}, new int[]{139, 8}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f14477e = new a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int[] f14478f = {34, 204};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f14479g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f14480h = new b();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f14481i = new c();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f14482j = 100;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f14483k = new d();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f14484l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f14485m;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l.this.a3();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l.this.e3(u0.b.K3);
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            int i2 = !DateFormat.is24HourFormat(App.c()) ? 1 : 0;
            byte b2 = (byte) time.hour;
            byte b3 = (byte) time.minute;
            byte b4 = (byte) time.second;
            if (i2 != 0 && b2 > 12) {
                b2 = (byte) (b2 - 12);
            }
            z.k.s(227, 198, 8, 1, (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN), (byte) (time.month + 1), (byte) time.monthDay, (byte) (((i2 << 7) | b2) & 255), (byte) (b3 & 255), (byte) (b4 & 255), (byte) ((((byte) (Calendar.getInstance(TimeZone.getDefault()).get(9) == 0 ? 0 : 1)) << 7) | 64));
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (nt.a()) {
                l.r3(l.this);
                if (l.this.f14485m == 10) {
                    l.this.f14485m = 0;
                    l.this.F3();
                }
                if (l.this.f14482j > 100) {
                    l.w3(l.this);
                    if (l.this.f14484l == l.this.f14482j / 100) {
                        l.this.f14484l = 0;
                        return;
                    }
                }
                int i2 = u0.b.f17306a0;
                int i3 = u0.b.f17320f;
                int i4 = y0.f.f18055i;
                if (i2 == 0 || i3 == 0 || i4 == 1) {
                    int unused = l.f14466q = l.f14471v[0];
                } else {
                    int unused2 = l.f14466q = l.f14471v[o0.a(y0.f.f18037c, 0, 36)];
                }
                if (l.this.f7886a.f8307b == 1 && (l.f14465p != l.f14466q || l.f14463n != i4)) {
                    int unused3 = l.f14463n = i4;
                    l.this.G3();
                }
                l lVar = l.this;
                if (lVar.f7886a.f8308c == 1) {
                    lVar.R2(null);
                    if (l.f14467r == l.f14469t && l.f14468s == l.f14470u) {
                        return;
                    }
                    int unused4 = l.f14467r = l.f14469t;
                    int unused5 = l.f14468s = l.f14470u;
                    l.this.H3();
                }
            }
        }
    }

    public static class e implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f14490a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f14491b = false;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f14492c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f14493d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f14494e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f14495f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f14496g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f14497h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f14498i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public int f14499j;

        public e(int i2, int i3) {
            this.f14490a = i2;
            this.f14492c = i3;
        }

        public synchronized void a(int i2) {
            this.f14499j = i2;
            if (!this.f14491b) {
                this.f14491b = true;
                o1.k.a().postDelayed(this, this.f14492c);
            }
        }

        public synchronized void b(int i2, int i3, int i4, int i5, int i6, int i7) {
            this.f14493d = i2;
            this.f14494e = i4;
            this.f14495f = i3;
            this.f14497h = i5;
            this.f14498i = i6;
            this.f14496g = i7;
            if (!this.f14491b) {
                this.f14491b = true;
                o1.k.a().postDelayed(this, this.f14492c);
            }
        }

        @Override // java.lang.Runnable
        public synchronized void run() {
            if (this.f14490a == 2) {
                z.k.s(227, 196, 1, this.f14499j);
                this.f14491b = false;
            } else {
                z.k.s(227, 199, 6, 0, this.f14495f, this.f14494e, 10, 10, 10);
                this.f14491b = false;
            }
        }
    }

    public static void D3(int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        e eVarC = f14473x.c(i2);
        if (eVarC != null) {
            eVarC.b(i3 == 0 ? 1 : 0, i4, i5, i6, i7, i8);
        }
    }

    public static void E3(int i2, int i3) {
        e eVarC = f14473x.c(i2);
        if (eVarC != null) {
            eVarC.a(i3);
        }
    }

    public static /* synthetic */ int r3(l lVar) {
        int i2 = lVar.f14485m;
        lVar.f14485m = i2 + 1;
        return i2;
    }

    public static /* synthetic */ int w3(l lVar) {
        int i2 = lVar.f14484l;
        lVar.f14484l = i2 + 1;
        return i2;
    }

    public final void F3() {
        G3();
        H3();
    }

    public final synchronized void G3() {
        if (this.f7886a.f8307b == 0) {
            return;
        }
        int i2 = f14465p;
        int i3 = f14466q;
        if (i2 < i3) {
            f14465p = i2 + 1;
            this.f14485m = 0;
        } else if (i2 > i3) {
            f14465p = i2 - 1;
            this.f14485m = 0;
        } else {
            f14465p = i3;
        }
        if (f14463n == 1) {
            E3(2, f14465p | 128);
        } else {
            E3(2, f14465p & 127);
        }
    }

    public final synchronized void H3() {
        if (this.f7886a.f8308c == 0) {
            return;
        }
        D3(1, f14464o, f14467r, f14468s, 10, 10, 10);
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void N2() {
        int i2 = nt.f8637c;
        if (i2 == 2 || i2 == 5) {
            y0.f.C0 = 36;
        } else {
            y0.f.C0 = 18;
        }
    }

    @Override // k0.lt
    public void O2(int[] iArr) {
        if (iArr == null || iArr.length < 2) {
            return;
        }
        switch (iArr[0]) {
            case 33:
                if (iArr[1] == 0) {
                    if (nt.f8645g[10] == 1) {
                        d3(1);
                    }
                } else if (nt.f8645g[10] == 0) {
                    d3(1);
                }
                break;
            case 34:
                if (iArr[1] == 0) {
                    if (nt.f8645g[11] == 1) {
                        d3(16);
                    }
                } else if (nt.f8645g[11] == 0) {
                    d3(16);
                }
                break;
            case 35:
                if (iArr[1] == 0) {
                    if (nt.f8645g[13] == 1) {
                        d3(2);
                    }
                } else if (nt.f8645g[13] == 0) {
                    d3(2);
                }
                break;
            case 36:
                if (iArr[1] == 0) {
                    if (nt.f8645g[65] == 1) {
                        d3(38);
                    }
                } else if (nt.f8645g[65] == 0) {
                    d3(38);
                }
                break;
            case 37:
                if (iArr[1] == 0) {
                    if (nt.f8645g[16] == 1) {
                        d3(4);
                    }
                } else if (nt.f8645g[16] == 0) {
                    d3(4);
                }
                break;
            case 38:
                if (iArr[1] == 1) {
                    if (nt.f8645g[12] != 1) {
                        d3(35);
                    }
                    break;
                } else if (iArr[1] == 0 && nt.f8645g[12] != 2) {
                    d3(35);
                    break;
                }
                break;
            case 39:
                if (iArr[1] != -1) {
                    d3(21);
                } else {
                    d3(20);
                }
                break;
            case 41:
                if (iArr[1] == 0) {
                    d3(10);
                } else {
                    d3(9);
                }
                break;
            case 42:
                if (iArr[1] == 0) {
                    d3(12);
                } else {
                    d3(11);
                }
                break;
        }
    }

    @Override // k0.lt
    public void R2(int[] iArr) {
        if (nt.a() && this.f7886a.f8308c == 1) {
            int[] iArr2 = f14472w;
            f14469t = iArr2[o0.a(y0.f.f18061l, 0, 16)];
            f14470u = iArr2[o0.a(y0.f.f18057j, 0, 16)];
        }
    }

    @Override // k0.lt
    public void S2() {
        if (nt.a()) {
            qt.z(this.f14477e);
            w0.e.f17815a.a(this.f14477e, 1);
            w0.e.f17819e.a(this.f14477e, 1);
            u0.c.f17386m.a(l0.c0.f13020n, 1);
        }
        int i2 = nt.f8637c >> 16;
        nt.f8637c = i2;
        if (i2 == 2 || i2 == 5) {
            mt mtVar = this.f7886a;
            mtVar.f8310e = 0;
            mtVar.f8311f = 1;
            mtVar.f8312g = 1;
            mtVar.f8307b = 1;
            mtVar.f8308c = 1;
            mtVar.f8309d = 1;
            if (nt.a()) {
                init();
                l0.b0.a(this.f14483k);
            }
        } else {
            mt mtVar2 = this.f7886a;
            mtVar2.f8310e = 0;
            mtVar2.f8311f = 1;
            mtVar2.f8312g = 1;
        }
        int i3 = nt.f8637c;
        if (i3 == 3 || i3 == 4 || i3 == 5) {
            if (App.c().getResources().getConfiguration().orientation == 1) {
                this.f7886a.f8306a = new String[]{"com.syu.canbus"};
            } else {
                this.f7886a.f8306a = null;
            }
        }
        qt.z(this.f14481i);
        u0.c.f17397x.d(this.f14480h);
        this.f7886a.f8318m = new int[]{33, 34, 35, 36, 37, 38, 39, 41, 42};
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 38) {
            qt.i(bArr[i2 + 2], bArr[i2 + 3], true, GLES10.GL_AMBIENT);
        }
        if (b2 == 39) {
            if (nt.a()) {
                byte b3 = bArr[i2 + 2];
                int i7 = b3 & 128;
                int i8 = b3 & 255;
                u0.d.A3(i7 != 0 ? 1000 - ((255 - (i8 - 1)) * 10) : (i8 * 10) + 1000);
                return;
            }
            return;
        }
        if (b2 == 41) {
            if (nt.a()) {
                byte b4 = bArr[i2 + 2];
                return;
            }
            return;
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        int i9 = 0;
        if (b2 == 85) {
            if (nt.f8637c < 3) {
                return;
            }
            byte b5 = bArr[i2 + 2];
            byte b6 = bArr[i2 + 3];
            byte b7 = bArr[i2 + 4];
            byte b8 = bArr[i2 + 6];
            byte b9 = bArr[i2 + 7];
            int i10 = b5 & 255;
            if (i10 == 16) {
                qt.y0(27, -2);
            } else if (i10 != 80) {
                qt.y0(27, i10);
            } else {
                qt.y0(27, -3);
            }
            int i11 = b6 & 255;
            if (i11 == 16) {
                qt.y0(28, -2);
            } else if (i11 != 80) {
                qt.y0(28, i11);
            } else {
                qt.y0(28, -3);
            }
            qt.y0(21, b7 & DhcpPacket.DHCP_DOMAIN_NAME & 255);
            int i12 = (b7 >> 4) & 15;
            switch (i12) {
                case 1:
                    i4 = 1;
                    i5 = 0;
                    i6 = i5;
                    break;
                case 2:
                    i4 = 1;
                    i5 = 1;
                    i6 = 0;
                    break;
                case 3:
                    i5 = 1;
                    i4 = 0;
                    i6 = 0;
                    break;
                case 4:
                    i5 = 1;
                    i6 = 1;
                    i4 = 0;
                    break;
                case 5:
                    i4 = 1;
                    i6 = 1;
                    i5 = 0;
                    break;
                case 6:
                    i6 = 1;
                    i4 = 0;
                    i5 = 0;
                    break;
                case 7:
                    i4 = 1;
                    i5 = i4;
                    i6 = i5;
                    break;
                default:
                    i4 = 0;
                    i5 = i4;
                    i6 = i5;
                    break;
            }
            qt.y0(19, i4);
            qt.y0(20, i5);
            qt.y0(18, i6);
            qt.y0(77, i12);
            qt.y0(13, (b8 >> 0) & 1);
            qt.y0(11, (b8 >> 1) & 1);
            int[] iArr2 = new int[1];
            iArr2[0] = ((b8 >> 2) & 1) == 1 ? 0 : 1;
            qt.y0(14, iArr2);
            qt.y0(65, (b8 >> 5) & 1);
            qt.y0(16, (b8 >> 6) & 1);
            qt.y0(15, (b8 >> 7) & 1);
            qt.y0(12, (b9 >> 0) & 3);
            return;
        }
        switch (b2) {
            case 32:
                if (nt.a()) {
                    byte b10 = bArr[i2 + 2];
                    byte b11 = bArr[i2 + 3];
                    this.f14475c = b10 & 255;
                    int i13 = 0;
                    while (true) {
                        iArr = this.f14476d;
                        if (i13 < iArr.length) {
                            int i14 = this.f14475c;
                            if (i14 != iArr[i13][0]) {
                                i13++;
                            } else if (i14 != 0) {
                                this.f14474b = i13;
                            }
                        }
                    }
                    int i15 = this.f14475c;
                    if (i15 != 50) {
                        if (i15 != 138 && i15 != 129) {
                            if (i15 != 130) {
                                switch (i15) {
                                    case 59:
                                    case 61:
                                        break;
                                    case 60:
                                        break;
                                    case 62:
                                        for (int i16 = 0; i16 < (b11 & 255); i16++) {
                                            l0.b0.l0(31, 0);
                                        }
                                        l0.b0.l0(31, 1);
                                        break;
                                    case 63:
                                        for (int i17 = 0; i17 < (b11 & 255); i17++) {
                                            l0.b0.l0(30, 0);
                                        }
                                        l0.b0.l0(30, 1);
                                        break;
                                    default:
                                        if ((b11 & 255) == 0) {
                                            int i18 = this.f14474b;
                                            if (i18 < iArr.length && i18 != 255) {
                                                l0.b0.l0(iArr[i18][1], 1);
                                            }
                                            this.f14474b = 255;
                                        } else if (i13 < iArr.length) {
                                            l0.b0.l0(iArr[i13][1], 0);
                                        }
                                        break;
                                }
                            }
                        }
                        while (i9 < (b11 & 255)) {
                            l0.b0.l0(7, 0);
                            i9++;
                        }
                        l0.b0.l0(7, 1);
                        break;
                    }
                    while (i9 < (b11 & 255)) {
                        l0.b0.l0(8, 0);
                        i9++;
                    }
                    l0.b0.l0(8, 1);
                }
                break;
            case 33:
                if (nt.f8637c < 3) {
                    byte b12 = bArr[i2 + 2];
                    qt.y0(10, (b12 >> 7) & 1);
                    qt.y0(11, (b12 >> 6) & 1);
                    int[] iArr3 = new int[1];
                    iArr3[0] = (b12 & 32) == 0 ? 0 : 1;
                    qt.y0(12, iArr3);
                    qt.y0(13, (b12 >> 3) & 1);
                    qt.y0(14, (b12 >> 2) & 1);
                    qt.y0(65, (b12 >> 0) & 1);
                    byte b13 = bArr[i2 + 3];
                    qt.y0(18, (b13 >> 7) & 1);
                    qt.y0(19, (b13 >> 6) & 1);
                    qt.y0(20, (b13 >> 5) & 1);
                    int i19 = b13 & DhcpPacket.DHCP_DOMAIN_NAME;
                    qt.y0(21, i19 <= 8 ? i19 : 8);
                    int i20 = i2 + 4;
                    int i21 = bArr[i20] & 255;
                    int i22 = i2 + 5;
                    int i23 = bArr[i22] & 255;
                    if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                        i21 = bArr[i22] & 255;
                        i23 = bArr[i20] & 255;
                    }
                    if (i21 == 0) {
                        qt.y0(27, -2);
                    } else if (i21 == 30) {
                        qt.y0(27, -3);
                    } else if (i21 > 0 && i21 < 30) {
                        qt.y0(27, i21);
                    }
                    if (i23 == 0) {
                        qt.y0(28, -2);
                        break;
                    } else if (i23 == 30) {
                        qt.y0(28, -3);
                        break;
                    } else if (i23 > 0 && i23 < 30) {
                        qt.y0(28, i23);
                        break;
                    }
                }
                break;
            case 34:
                if (nt.a()) {
                    u0.d.R2(c3(bArr[i2 + 2] & 255));
                    u0.d.S2(c3(bArr[i2 + 3] & 255));
                    u0.d.T2(c3(bArr[i2 + 4] & 255));
                    u0.d.U2(c3(bArr[i2 + 5] & 255));
                }
                break;
            case 35:
                if (nt.a()) {
                    int i24 = i2 + 2;
                    int i25 = bArr[i24] & 255;
                    int i26 = i2 + 3;
                    int i27 = bArr[i26] & 255;
                    int i28 = i2 + 4;
                    int i29 = bArr[i28] & 255;
                    int i30 = i2 + 5;
                    int i31 = bArr[i30] & 255;
                    if (i25 == 0 && i27 == 0 && i29 == 0 && i31 == 0) {
                        u0.d.C2(0);
                    } else if ((l0.c0.f13013g != i25 || l0.c0.f13014h != i27 || l0.c0.f13015i != i29 || l0.c0.f13016j != i31) && u0.b.f17347o == 0) {
                        u0.d.C2(1);
                        l0.c0.f13017k = 4;
                        l0.b0.b(l0.c0.f13018l);
                    }
                    l0.c0.f13013g = i25;
                    l0.c0.f13014h = i27;
                    l0.c0.f13015i = i29;
                    l0.c0.f13016j = i31;
                    u0.d.D2(c3(bArr[i24] & 255));
                    u0.d.E2(c3(bArr[i26] & 255));
                    u0.d.F2(c3(bArr[i28] & 255));
                    u0.d.G2(c3(bArr[i30] & 255));
                }
                break;
            case 36:
                byte b14 = bArr[i2 + 2];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b14 >> 1) & 1);
                    qt.y0(2, (b14 >> 0) & 1);
                } else {
                    qt.y0(1, (b14 >> 0) & 1);
                    qt.y0(2, (b14 >> 1) & 1);
                }
                qt.y0(3, (b14 >> 2) & 1);
                qt.y0(4, (b14 >> 3) & 1);
                qt.y0(5, (b14 >> 4) & 1);
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        qt.q0(this.f14477e);
        w0.e.f17815a.d(this.f14477e);
        w0.e.f17819e.d(this.f14477e);
        u0.c.f17386m.d(l0.c0.f13020n);
        qt.q0(this.f14481i);
        u0.c.f17397x.d(this.f14480h);
        l0.b0.o0(this.f14483k);
        l0.b0.p0(l0.c0.f13021o);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 98) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 != 0) {
            return;
        }
        int i3 = nt.f8637c;
        int i4 = i3 == 4 ? 41 : 40;
        if (i3 == 5) {
            i4 = 48;
        }
        z.k.s(227, 51, 5, iArr[0], this.f14478f[this.f14479g % 2], 37, i4, 170);
        z.k.s(227, 51, 5, iArr[0], this.f14478f[this.f14479g % 2], 37, i4, 170);
        z.k.s(227, 51, 5, iArr[0], this.f14478f[this.f14479g % 2], 37, i4, 170);
        int i5 = this.f14479g + 1;
        this.f14479g = i5;
        this.f14479g = i5 % 2;
    }

    @Override // k0.lt
    public void Z2(int i2) {
        if (nt.a() && this.f7886a.f8307b == 1) {
            f14466q = f14471v[o0.a(i2, 0, 36)];
        }
    }

    public final void a3() {
        int[] iArr = new int[10];
        int i2 = 0;
        iArr[0] = 192;
        iArr[1] = 8;
        b3(iArr);
        switch (u0.b.D) {
            case 1:
                int i3 = w0.d.f17797i;
                int i4 = w0.d.f17798j & 255;
                int i5 = w0.d.f17796h;
                if (i5 == 65536) {
                    iArr[4] = 1;
                } else if (i5 == 65537) {
                    iArr[4] = 2;
                } else if (i5 == 65538) {
                    iArr[4] = 3;
                } else if (i5 == 0) {
                    iArr[4] = 17;
                } else if (i5 == 1) {
                    iArr[4] = 18;
                }
                iArr[5] = i3 & 255;
                iArr[6] = (i3 >> 8) & 255;
                int i6 = i4 % 6;
                if (i6 != 0 || i4 == 0) {
                    iArr[7] = i6;
                } else {
                    iArr[7] = 6;
                }
                iArr[8] = 0;
                iArr[9] = 0;
                break;
            case 2:
            case 5:
            case 6:
            case 7:
                iArr[4] = 0;
                iArr[5] = 0;
                iArr[6] = 0;
                iArr[7] = 0;
                iArr[8] = 0;
                iArr[9] = 0;
                break;
            case 4:
                int i7 = o0.e.C;
                iArr[4] = (i7 >> 8) & 255;
                iArr[5] = i7 & 255;
                iArr[6] = 0;
                int i8 = o0.e.f16794r;
                iArr[7] = i8 / BatchedScanSettings.MAX_INTERVAL_SEC;
                iArr[8] = (i8 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60;
                iArr[9] = i8 % 60;
                break;
            case 8:
            case 9:
                int i9 = u0.b.s3;
                iArr[4] = (i9 >> 8) & 255;
                iArr[5] = i9 & 255;
                iArr[6] = 0;
                int i10 = u0.b.t3;
                iArr[7] = i10 / BatchedScanSettings.MAX_INTERVAL_SEC;
                iArr[8] = (i10 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60;
                iArr[9] = i10 % 60;
                break;
        }
        int[] iArr2 = new int[11];
        iArr2[0] = 227;
        while (i2 < 10) {
            int i11 = i2 + 1;
            iArr2[i11] = iArr[i2];
            i2 = i11;
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
            case 9:
            default:
                iArr[2] = 12;
                iArr[3] = 48;
                break;
            case 4:
                int i2 = o0.e.H;
                if (i2 == 1) {
                    iArr[2] = 2;
                    iArr[3] = 19;
                } else if (i2 == 2) {
                    iArr[2] = 8;
                    iArr[3] = 19;
                } else if (i2 == 3) {
                    iArr[2] = 8;
                    iArr[3] = 19;
                }
                break;
            case 5:
                iArr[2] = 7;
                iArr[3] = 48;
                break;
            case 6:
                iArr[2] = 12;
                iArr[3] = 34;
                break;
            case 7:
                iArr[2] = 6;
                iArr[3] = 18;
                break;
            case 8:
            case 10:
                iArr[2] = 8;
                iArr[3] = 19;
                break;
        }
    }

    public final int c3(int i2) {
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

    public final void d3(int i2) {
        Z0(0, new int[]{i2}, null, null);
    }

    public final void e3(int i2) {
        if (i2 == 1 || i2 == 2) {
            z.k.s(227, 198, 8, 2, 1, 0, 0, 0, 0, 0, 0);
            return;
        }
        if (i2 == 3) {
            z.k.s(227, 198, 8, 2, 5, 0, 0, 0, 0, 0, 0);
            return;
        }
        if (i2 == 5) {
            z.k.s(227, 198, 8, 2, 6, 0, 0, 0, 0, 0, 0);
            return;
        }
        if (i2 == 6) {
            z.k.s(227, 198, 8, 2, 7, 0, 0, 0, 0, 0, 0);
            return;
        }
        if (i2 == 7) {
            z.k.s(227, 198, 8, 2, 8, 0, 0, 0, 0, 0, 0);
            return;
        }
        if (i2 == 9) {
            z.k.s(227, 198, 8, 2, 3, 0, 0, 0, 0, 0, 0);
        } else if (i2 != 11) {
            z.k.s(227, 198, 8, 2, 2, 0, 0, 0, 0, 0, 0);
        } else {
            z.k.s(227, 198, 8, 2, 4, 0, 0, 0, 0, 0, 0);
        }
    }

    public final void init() {
        o1.f<e> fVar = f14473x;
        fVar.f(1, new e(1, 100));
        fVar.f(2, new e(2, 100));
    }
}
