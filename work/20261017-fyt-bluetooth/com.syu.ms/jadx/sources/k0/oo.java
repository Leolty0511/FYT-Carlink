package k0;

import android.bluetooth.BluetoothClass;
import android.net.ProxyProperties;
import android.net.wifi.BatchedScanSettings;
import android.os.Process;
import android.os.SystemProperties;
import android.text.Spanned;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;
import java.io.UnsupportedEncodingException;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class oo extends lt {
    public static int H;
    public static int I;
    public static int J;
    public static final int[] K = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36};
    public static final o1.f<l> L = new o1.f<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f8924b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f8927e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f8925c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f8926d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{7, 2}, new int[]{9, 18}, new int[]{10, 26}, new int[]{21, 6}, new int[]{22, 16}, new int[]{23, 12}, new int[]{24, 13}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f8928f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f8929g = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{5, 30}, new int[]{6, 31}, new int[]{7, 16}, new int[]{8, 0}, new int[]{9, 21}, new int[]{10, 54}, new int[]{11, 53}, new int[]{12, 66}, new int[]{13, 65}, new int[]{14, 64}, new int[]{15, 6}, new int[]{16, 25}, new int[]{17, 1}, new int[]{18, 34}, new int[]{19, 35}, new int[]{20, 32}, new int[]{21, 33}, new int[]{26, 18}, new int[]{27, 2}, new int[]{28, 17}, new int[]{29, 38}, new int[]{49, 40}, new int[]{50, 41}, new int[]{51, 42}, new int[]{52, 43}, new int[]{53, 44}, new int[]{54, 45}, new int[]{63, 13}, new int[]{66, 72}, new int[]{67, 71}, new int[]{68, 31}, new int[]{69, 30}, new int[]{70, 62}, new int[]{72, 55}, new int[]{73, 58}, new int[]{74, 58}, new int[]{75, 1}, new int[]{76, 1}, new int[]{77, 5}, new int[]{78, 4}, new int[]{79, 3}, new int[]{80, 64}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f8930h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public o1.g0 f8931i = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f8932j = 1;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f8933k = 2;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f8934l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f8935m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Runnable f8936n = new c();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Runnable f8937o = new d();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f8938p = new e();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Runnable f8939q = new f();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f8940r = 0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public Runnable f8941s = new g();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f8942t = 200;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public Runnable f8943u = new h();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f8944v = 0;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f8945w = 0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public Runnable f8946x = new i();

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public Runnable f8947y = new j();

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public Runnable f8948z = new k();
    public int A = -1;
    public boolean B = false;
    public String C = ProxyProperties.LOCAL_EXCL_LIST;
    public Runnable D = new a();
    public Runnable E = new b();
    public long F = -1;
    public int G = -1;

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
            if (oo.this.A != i2) {
                oo.this.A = i2;
                z2 = true;
            } else {
                z2 = false;
            }
            if (oo.this.C.equals(h0.c.f2437h)) {
                z3 = z2;
            } else {
                oo.this.C = h0.c.f2437h;
                if (oo.this.C == null) {
                    oo.this.C = ProxyProperties.LOCAL_EXCL_LIST;
                    z3 = z2;
                }
            }
            if (z3) {
                oo ooVar = oo.this;
                ooVar.I3(ooVar.A, oo.this.C);
                if (oo.this.B != z4) {
                    oo.this.B = z4;
                    oo.this.A = 0;
                }
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2;
            int i3;
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            long millis = time.toMillis(false) / 10000;
            int i4 = !DateFormat.is24HourFormat(App.c()) ? 1 : 0;
            if (oo.this.F == millis && oo.this.G == i4) {
                return;
            }
            oo.this.F = millis;
            oo.this.G = i4;
            if (i4 == 0 || (i3 = time.hour) <= 12) {
                i2 = 0;
            } else {
                time.hour = i3 - 12;
                i2 = 1;
            }
            z.k.s(227, -58, 4, 1, time.hour, time.minute, (byte) ((i2 << 7) | (i4 << 6)));
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            oo.this.f8935m--;
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            qt.a(0);
            l0.b0.o0(oo.this.f8936n);
            o1.j.e(o1.l.a(), oo.this.f8938p);
            o1.j.b(o1.l.a(), oo.this.f8938p, 500L);
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            oo ooVar = oo.this;
            int i2 = ooVar.f8940r;
            if (i2 > 0) {
                ooVar.f8940r = i2 - 1;
            }
            if (ooVar.f8940r == 0) {
                ooVar.a3();
            }
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            oo ooVar = oo.this;
            ooVar.f8940r = 4;
            ooVar.c3();
        }
    }

    public class h implements Runnable {
        public h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2;
            if (nt.a() || (i2 = nt.f8637c) == 32 || i2 == 34) {
                if (oo.this.f8942t > 100) {
                    oo.y3(oo.this);
                    if (oo.this.f8944v == oo.this.f8942t / 100) {
                        oo.this.f8944v = 0;
                        return;
                    }
                }
                int i3 = u0.b.f17306a0;
                int i4 = u0.b.f17320f;
                int i5 = y0.f.f18055i;
                if (i3 == 0 || i4 == 0 || i5 == 1) {
                    int unused = oo.J = oo.K[0];
                } else {
                    int unused2 = oo.J = oo.K[o1.o0.a(y0.f.f18037c, 0, 36)];
                }
                if (oo.this.f7886a.f8307b != 1 || oo.I == oo.J) {
                    return;
                }
                oo.this.H3();
            }
        }
    }

    public class i implements Runnable {
        public i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(oo.this.f8947y);
            qt.y0(175, 0);
            oo.this.f8945w = 5;
        }
    }

    public class j implements Runnable {
        public j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            oo ooVar = oo.this;
            int i2 = ooVar.f8945w - 1;
            ooVar.f8945w = i2;
            if (i2 <= 0) {
                l0.b0.p0(ooVar.f8947y);
                oo.this.f8945w = 5;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (u0.b.f17306a0 == 1) {
                oo ooVar2 = oo.this;
                ooVar2.G3(ooVar2.f8931i.b(1, 0));
                switch (nt.f8633a) {
                    case 1573316:
                        z.k.s(227, 226, 1, 1);
                        break;
                    case 1638852:
                        z.k.s(227, 226, 1, 2);
                        break;
                    case 1704388:
                        z.k.s(227, 226, 1, 3);
                        break;
                    case 1769924:
                        z.k.s(227, 226, 1, 4);
                        break;
                    case 1835460:
                        z.k.s(227, 226, 1, 5);
                        break;
                    case 1900996:
                        z.k.s(227, 226, 1, 6);
                        break;
                    case 1966532:
                        z.k.s(227, 226, 1, 7);
                        break;
                    case 2032068:
                        z.k.s(227, 226, 1, 8);
                        break;
                    case 3998148:
                        z.k.s(227, 226, 1, 9);
                        break;
                    case 4063684:
                        z.k.s(227, 226, 1, 10);
                        break;
                    case 4129220:
                        z.k.s(227, 226, 1, 11);
                        break;
                    case 5046724:
                        z.k.s(227, 226, 1, 12);
                        break;
                    case 5112260:
                        z.k.s(227, 226, 1, 13);
                        break;
                    case 6816199:
                        z.k.s(227, 226, 1, 21);
                        break;
                    case 6881735:
                        z.k.s(227, 226, 1, 22);
                        break;
                    case 6947271:
                        z.k.s(227, 226, 1, 32);
                        break;
                    case 7012807:
                        z.k.s(227, 226, 1, 33);
                        break;
                    case 7078343:
                        z.k.s(227, 226, 1, 14);
                        break;
                    case 10355143:
                        z.k.s(227, 226, 1, 34);
                        break;
                    case 11600327:
                        z.k.s(227, 226, 1, 15);
                        break;
                    case 11665863:
                        z.k.s(227, 226, 1, 16);
                        break;
                    case 11731399:
                        z.k.s(227, 226, 1, 17);
                        break;
                    case 11796935:
                        z.k.s(227, 226, 1, 18);
                        break;
                }
            }
        }
    }

    public class k implements Runnable {
        public k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (u0.b.D == 8) {
                    oo.this.F3((byte) -48, u0.b.i3);
                    oo.this.F3((byte) -47, u0.b.j3);
                } else {
                    oo.this.F3((byte) -48, " ");
                    oo.this.F3((byte) -47, " ");
                }
            } catch (UnsupportedEncodingException e2) {
                e2.printStackTrace();
            }
        }
    }

    public static class l implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f8960a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f8961b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f8962c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f8963d;

        public synchronized void a(int i2) {
            this.f8961b = i2;
            if (!this.f8962c) {
                this.f8962c = true;
                o1.k.a().postDelayed(this, this.f8963d);
            }
        }

        @Override // java.lang.Runnable
        public synchronized void run() {
            z.k.s(227, 131, 2, this.f8960a, this.f8961b);
            this.f8962c = false;
        }
    }

    public static void E3(int i2, int i3) {
        l lVarC = L.c(i2);
        if (lVarC != null) {
            lVarC.a(i3);
        }
    }

    public static /* synthetic */ int y3(oo ooVar) {
        int i2 = ooVar.f8944v;
        ooVar.f8944v = i2 + 1;
        return i2;
    }

    public final void F3(byte b2, String str) {
        if (str == null) {
            return;
        }
        int length = str.length();
        int i2 = length << 1;
        byte[] bArr = new byte[i2];
        for (int i3 = 0; i3 < length; i3++) {
            int iCodePointAt = str.codePointAt(i3);
            int i4 = i3 << 1;
            bArr[i4] = (byte) ((iCodePointAt >> 8) & 255);
            bArr[i4 + 1] = (byte) (iCodePointAt & 255);
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

    public final void G3(int i2) {
        H = i2;
        qt.y0(151, i2);
        int iB = this.f8931i.b(1, 0);
        int i3 = H;
        if (iB != i3) {
            this.f8931i.g(1, i3);
        }
    }

    public final synchronized void H3() {
        if (this.f7886a.f8307b == 0) {
            return;
        }
        int i2 = 0;
        int i3 = I;
        int i4 = J;
        if (i3 < i4) {
            i2 = 33;
        } else if (i3 > i4) {
            i2 = 49;
        }
        E3(33, i2);
    }

    public final void I3(int i2, String str) {
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

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void N2() {
        if (nt.f8633a != 10355143) {
            return;
        }
        y0.f.C0 = 20;
    }

    @Override // k0.lt
    public void S2() {
        this.f8931i.a();
        u0.c.f17386m.a(this.f8946x, 1);
        qt.z(this.E);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 0;
        mtVar.f8320o = 1;
        mtVar.f8307b = 0;
        mtVar.f8313h = 0;
        switch (nt.f8633a) {
            case 1835460:
            case 2032068:
            case 4063684:
                mtVar.f8313h = 2;
                break;
            case 5046724:
            case 5112260:
            case 11600327:
                mtVar.f8314i = 1;
                break;
            case 10355143:
                mtVar.f8307b = 1;
                mtVar.f8313h = 2;
                break;
        }
        if (App.c().getResources().getConfiguration().orientation != 1) {
            this.f7886a.f8314i = 1;
        } else {
            this.f7886a.f8314i = 0;
        }
        int i2 = nt.f8633a;
        if (i2 == 1835460) {
            qt.z(this.f8939q);
            y0.g.f18094d.a(this.f8941s, 1);
            y0.g.f18095e.a(this.f8941s, 1);
            h0.d.f2464c.a(this.D, 1);
            h0.d.f2462a.a(this.D, 1);
            u0.c.f17392s.a(this.f8939q, 1);
            u0.c.f17388o.a(this.f8948z, 1);
            u0.c.f17389p.a(this.f8948z, 1);
            return;
        }
        if (i2 != 4063684) {
            return;
        }
        qt.z(this.f8939q);
        y0.g.f18094d.a(this.f8941s, 1);
        y0.g.f18095e.a(this.f8941s, 1);
        h0.d.f2464c.a(this.D, 1);
        h0.d.f2462a.a(this.D, 1);
        u0.c.f17392s.a(this.f8939q, 1);
        u0.c.f17388o.a(this.f8948z, 1);
        u0.c.f17389p.a(this.f8948z, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int[][] iArr2;
        byte b2 = bArr[i2];
        if (b2 == -109) {
            if (nt.f8633a != 10355143) {
                qt.y0(175, 1);
            } else {
                I = bArr[i2 + 2] & 255;
            }
            qt.y0(142, bArr[i2 + 2]);
            qt.y0(143, bArr[i2 + 3]);
            qt.y0(144, bArr[i2 + 4]);
            qt.y0(145, bArr[i2 + 5]);
            qt.y0(146, bArr[i2 + 6]);
            qt.y0(147, bArr[i2 + 7]);
            qt.y0(148, bArr[i2 + 8]);
            qt.y0(149, bArr[i2 + 9]);
            qt.y0(150, bArr[i2 + 10]);
        }
        if (b2 == 16) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f8928f = b3 & 255;
            int i4 = 0;
            while (true) {
                iArr = this.f8929g;
                if (i4 >= iArr.length) {
                    break;
                }
                int i5 = this.f8928f;
                if (i5 == iArr[i4][0]) {
                    if (i5 == 0) {
                        break;
                    }
                    this.f8927e = i4;
                    break;
                }
                i4++;
            }
            int i6 = this.f8928f;
            if (i6 == 1) {
                for (int i7 = 0; i7 < (b4 & 255); i7++) {
                    l0.b0.l0(7, 0);
                }
                l0.b0.l0(7, 1);
                return;
            }
            if (i6 == 2) {
                for (int i8 = 0; i8 < (b4 & 255); i8++) {
                    l0.b0.l0(8, 0);
                }
                l0.b0.l0(8, 1);
                return;
            }
            if (i6 == 5) {
                for (int i9 = 0; i9 < (b4 & 255); i9++) {
                    l0.b0.l0(30, 0);
                }
                l0.b0.l0(30, 1);
                return;
            }
            if (i6 == 6) {
                for (int i10 = 0; i10 < (b4 & 255); i10++) {
                    l0.b0.l0(31, 0);
                }
                l0.b0.l0(31, 1);
                return;
            }
            if (i6 == 241) {
                if ((b4 & 255) == 1) {
                    int i11 = this.f8930h + 1;
                    this.f8930h = i11;
                    if (i11 > 1) {
                        this.f8930h = 0;
                    }
                    qt.y0(165, this.f8930h);
                    return;
                }
                return;
            }
            int i12 = b4 & 255;
            if (i12 == 1) {
                if (i4 < iArr.length) {
                    l0.b0.l0(iArr[i4][1], 0);
                    return;
                }
                return;
            } else {
                if (i12 == 0) {
                    int i13 = this.f8927e;
                    if (i13 < iArr.length && i13 != 255) {
                        l0.b0.l0(iArr[i13][1], 1);
                    }
                    this.f8927e = 255;
                    return;
                }
                return;
            }
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 122) {
            int i14 = i2 + 2;
            qt.y0(166, (bArr[i14] >> 5) & 7);
            qt.y0(167, (bArr[i14] >> 4) & 1);
            qt.y0(168, (bArr[i14] >> 0) & 7);
            int i15 = i2 + 3;
            qt.y0(169, (bArr[i15] >> 5) & 7);
            qt.y0(170, (bArr[i15] >> 2) & 7);
            qt.y0(171, (bArr[i15] >> 1) & 1);
            qt.y0(172, (bArr[i15] >> 0) & 1);
            return;
        }
        if (b2 == 40) {
            int i16 = i2 + 4;
            int i17 = i2 + 3;
            qt.y0(1032, ((bArr[i16] << 8) & 65280) | (bArr[i17] & 255));
            int i18 = i2 + 2;
            qt.y0(1031, bArr[i18] & 255);
            qt.y0(161, bArr[i18] & 255);
            qt.y0(162, (bArr[i17] & 255) | ((bArr[i16] << 8) & 65280));
            return;
        }
        if (b2 == 41) {
            qt.l(bArr[i2 + 2], bArr[i2 + 3], true, 540);
            return;
        }
        switch (b2) {
            case 32:
                byte b5 = bArr[i2 + 2];
                byte b6 = bArr[i2 + 3];
                this.f8925c = b5 & 255;
                int i19 = 0;
                while (true) {
                    iArr2 = this.f8926d;
                    if (i19 < iArr2.length) {
                        int i20 = this.f8925c;
                        if (i20 != iArr2[i19][0]) {
                            i19++;
                        } else if (i20 != 0) {
                            this.f8924b = i19;
                        }
                    }
                }
                int i21 = b6 & 255;
                if (i21 == 1) {
                    if (i19 < iArr2.length) {
                        l0.b0.l0(iArr2[i19][1], 0);
                    }
                } else if (i21 == 0) {
                    int i22 = this.f8924b;
                    if (i22 < iArr2.length && i22 != 255) {
                        l0.b0.l0(iArr2[i22][1], 1);
                    }
                    this.f8924b = 255;
                }
                break;
            case 33:
                int i23 = i2 + 2;
                byte b7 = bArr[i23];
                qt.y0(10, (b7 >> 7) & 1);
                qt.y0(11, (b7 >> 6) & 1);
                qt.y0(12, (b7 >> 5) & 1);
                qt.y0(16, (b7 >> 4) & 1);
                qt.y0(13, (b7 >> 3) & 1);
                qt.y0(14, (b7 >> 2) & 1);
                qt.y0(15, (b7 >> 1) & 1);
                qt.y0(36, (b7 >> 0) & 1);
                int i24 = i2 + 3;
                byte b8 = bArr[i24];
                qt.y0(18, (b8 >> 7) & 1);
                qt.y0(19, (b8 >> 6) & 1);
                qt.y0(20, (b8 >> 5) & 1);
                qt.y0(21, (b8 >> 0) & 15);
                int i25 = i2 + 4;
                int i26 = i2 + 5;
                qt.z0(BluetoothClass.Device.AUDIO_VIDEO_LOUDSPEAKER, new int[]{bArr[i25] & 255, bArr[i26] & 255, (bArr[i24] >> 5) & 7, (bArr[i24] >> 0) & 15, (bArr[i23] >> 6) & 1}, ProxyProperties.LOCAL_EXCL_LIST);
                int i27 = bArr[i25] & 255;
                int i28 = bArr[i26] & 255;
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    i27 = bArr[i26] & 255;
                    i28 = bArr[i25] & 255;
                }
                if (i27 == 0) {
                    qt.y0(27, -2);
                } else if (i27 != 127) {
                    qt.y0(27, i27);
                } else {
                    qt.y0(27, -3);
                }
                if (i28 == 0) {
                    qt.y0(28, -2);
                } else if (i28 != 127) {
                    qt.y0(28, i28);
                } else {
                    qt.y0(28, -3);
                }
                int i29 = i2 + 6;
                qt.y0(53, (bArr[i29] >> 2) & 1);
                qt.y0(72, (bArr[i29] >> 3) & 1);
                qt.y0(17, (bArr[i29] >> 4) & 1);
                qt.y0(37, (bArr[i29] >> 6) & 1);
                qt.y0(42, (bArr[i29] >> 7) & 1);
                qt.y0(43, (bArr[i29] >> 5) & 1);
                qt.y0(46, (bArr[i29] >> 1) & 1);
                qt.y0(47, (bArr[i29] >> 0) & 1);
                int i30 = i2 + 8;
                qt.y0(44, (bArr[i30] >> 5) & 7);
                int i31 = i2 + 9;
                qt.y0(29, (bArr[i31] >> 4) & 15);
                qt.y0(30, 15 & (bArr[i31] >> 0));
                int i32 = i2 + 10;
                qt.y0(22, (bArr[i32] >> 7) & 1);
                qt.y0(23, (bArr[i32] >> 6) & 1);
                qt.y0(24, (bArr[i32] >> 5) & 1);
                qt.y0(55, (bArr[i32] >> 4) & 1);
                qt.y0(31, (bArr[i32] >> 2) & 3);
                qt.y0(32, (bArr[i32] >> 0) & 3);
                if ((bArr[i30] & 31) == 0) {
                    qt.y0(40, -2);
                } else if ((bArr[i30] & 31) == 31) {
                    qt.y0(40, -3);
                } else {
                    qt.y0(40, 31 & bArr[i30]);
                }
                int i33 = bArr[i2 + 7] & 255;
                if (i33 == 255) {
                    u0.d.A3(0);
                } else {
                    u0.d.B3(SystemProperties.getInt("persist.fyt.temperature", 0) == 1 ? (((((i33 & 128) != 0 ? 1320 - ((256 - i33) * 18) : (i33 * 18) + 1320) / 10) * 10) | 268435456) & (-1) : (i33 & 128) != 0 ? 1000 - ((256 - i33) * 10) : (i33 * 10) + 1000);
                }
                break;
            case 34:
                u0.d.R2(l0.c0.l1(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.l1(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.l1(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.l1(bArr[i2 + 5] & 255));
                break;
            case 35:
                int i34 = i2 + 2;
                int i35 = bArr[i34] & 255;
                int i36 = i2 + 3;
                int i37 = bArr[i36] & 255;
                int i38 = i2 + 4;
                int i39 = bArr[i38] & 255;
                int i40 = i2 + 5;
                int i41 = bArr[i40] & 255;
                if (i35 == 0 && i37 == 0 && i39 == 0 && i41 == 0) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i35 || l0.c0.f13014h != i37 || l0.c0.f13015i != i39 || l0.c0.f13016j != i41) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i35;
                l0.c0.f13014h = i37;
                l0.c0.f13015i = i39;
                l0.c0.f13016j = i41;
                u0.d.D2(l0.c0.l1(bArr[i34] & 255));
                u0.d.E2(l0.c0.l1(bArr[i36] & 255));
                u0.d.F2(l0.c0.l1(bArr[i38] & 255));
                u0.d.G2(l0.c0.l1(bArr[i40] & 255));
                break;
            case 36:
                byte b9 = bArr[i2 + 2];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b9 >> 7) & 1);
                    qt.y0(2, (b9 >> 6) & 1);
                } else {
                    qt.y0(1, (b9 >> 6) & 1);
                    qt.y0(2, (b9 >> 7) & 1);
                }
                qt.y0(4, (b9 >> 5) & 1);
                qt.y0(3, (b9 >> 4) & 1);
                qt.y0(5, (b9 >> 3) & 1);
                qt.y0(0, (b9 >> 2) & 1);
                int i42 = i2 + 3;
                qt.y0(163, (bArr[i42] >> 5) & 1);
                qt.y0(164, (bArr[i42] >> 3) & 1);
                if (H == 1 && this.f8934l != ((bArr[i42] >> 0) & 1)) {
                    int i43 = (bArr[i42] >> 0) & 1;
                    this.f8934l = i43;
                    if (i43 == 1) {
                        qt.a(1);
                        this.f8935m = 20;
                        l0.b0.a(this.f8936n);
                    } else if (this.f8935m > 0) {
                        o1.j.e(o1.l.a(), this.f8937o);
                        o1.j.b(o1.l.a(), this.f8937o, 4000L);
                    } else {
                        qt.a(0);
                        o1.j.e(o1.l.a(), this.f8938p);
                        o1.j.b(o1.l.a(), this.f8938p, 500L);
                        l0.b0.o0(this.f8936n);
                    }
                    break;
                }
                break;
            default:
                switch (b2) {
                    case 112:
                        qt.y0(99, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 3] & 255));
                        qt.y0(98, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 5] & 255));
                        qt.y0(101, ((bArr[i2 + 8] << 8) & 65280) | (bArr[i2 + 7] & 255));
                        qt.y0(100, ((bArr[i2 + 10] << 8) & 65280) | (bArr[i2 + 9] & 255));
                        qt.y0(102, bArr[i2 + 2] & 255);
                        qt.y0(103, bArr[i2 + 11] & 255);
                        break;
                    case 113:
                        qt.y0(105, ((bArr[i2 + 3] << 8) & 65280) | (bArr[i2 + 2] & 255));
                        qt.y0(106, ((bArr[i2 + 5] << 8) & 65280) | (bArr[i2 + 4] & 255));
                        qt.y0(107, (bArr[i2 + 6] & 255) | ((bArr[i2 + 8] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 7] << 8) & 65280));
                        break;
                    case 114:
                        qt.y0(108, ((bArr[i2 + 3] << 8) & 65280) | (bArr[i2 + 2] & 255));
                        qt.y0(109, bArr[i2 + 4] & 255);
                        break;
                    default:
                        switch (b2) {
                            case 116:
                                int i44 = i2 + 2;
                                qt.y0(152, (bArr[i44] >> 6) & 1);
                                qt.y0(110, (bArr[i44] >> 5) & 1);
                                qt.y0(111, (bArr[i44] >> 4) & 1);
                                qt.y0(112, (bArr[i44] >> 3) & 1);
                                qt.y0(113, (bArr[i44] >> 2) & 1);
                                qt.y0(114, (bArr[i44] >> 1) & 1);
                                qt.y0(115, (bArr[i44] >> 0) & 1);
                                int i45 = i2 + 3;
                                qt.y0(116, (bArr[i45] >> 0) & 7);
                                qt.y0(117, (bArr[i45] >> 3) & 7);
                                qt.y0(118, (bArr[i45] >> 6) & 3);
                                int i46 = i2 + 4;
                                qt.y0(119, (bArr[i46] >> 0) & 3);
                                qt.y0(120, (bArr[i46] >> 2) & 3);
                                qt.y0(121, (bArr[i46] >> 4) & 3);
                                qt.y0(122, (bArr[i46] >> 6) & 1);
                                int i47 = i2 + 5;
                                qt.y0(123, (bArr[i47] >> 0) & 7);
                                qt.y0(153, (bArr[i47] >> 3) & 1);
                                qt.y0(154, (bArr[i47] >> 4) & 1);
                                qt.y0(155, (bArr[i47] >> 5) & 7);
                                int i48 = i2 + 6;
                                qt.y0(156, (bArr[i48] >> 5) & 7);
                                qt.y0(157, (bArr[i48] >> 4) & 1);
                                qt.y0(158, (bArr[i48] >> 3) & 1);
                                qt.y0(159, (bArr[i48] >> 2) & 1);
                                qt.y0(160, (bArr[i48] >> 1) & 1);
                                int i49 = i2 + 7;
                                qt.y0(177, (bArr[i49] >> 0) & 3);
                                qt.y0(178, (bArr[i49] >> 2) & 7);
                                qt.y0(179, (bArr[i49] >> 5) & 1);
                                break;
                            case 117:
                                int i50 = i2 + 2;
                                qt.y0(124, (bArr[i50] >> 5) & 3);
                                qt.y0(125, (bArr[i50] >> 4) & 1);
                                qt.y0(126, (bArr[i50] >> 3) & 1);
                                qt.y0(127, (bArr[i50] >> 2) & 1);
                                qt.y0(128, (bArr[i50] >> 1) & 1);
                                qt.y0(129, (bArr[i50] >> 0) & 1);
                                qt.y0(130, bArr[i2 + 3] & 255);
                                qt.y0(131, bArr[i2 + 4] & 255);
                                qt.y0(132, bArr[i2 + 5] & 255);
                                int i51 = i2 + 6;
                                qt.y0(133, (bArr[i51] >> 6) & 1);
                                qt.y0(134, (bArr[i51] >> 5) & 1);
                                qt.y0(135, (bArr[i51] >> 4) & 1);
                                qt.y0(136, (bArr[i51] >> 3) & 1);
                                qt.y0(137, (bArr[i51] >> 2) & 1);
                                qt.y0(138, (bArr[i51] >> 1) & 1);
                                qt.y0(139, (bArr[i51] >> 0) & 1);
                                qt.y0(140, bArr[i2 + 7] & 255);
                                break;
                            case 118:
                                qt.y0(Process.MEDIA_UID, (bArr[i2 + 3] >> 5) & 1);
                                break;
                            case 119:
                                int i52 = i2 + 2;
                                qt.y0(173, (bArr[i52] >> 7) & 1);
                                qt.y0(174, (bArr[i52] >> 5) & 1);
                                break;
                        }
                        break;
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f8946x);
        l0.b0.p0(this.f8947y);
        this.f8931i.j();
        qt.q0(this.E);
        qt.q0(this.f8939q);
        y0.g.f18094d.d(this.f8941s);
        y0.g.f18095e.d(this.f8941s);
        h0.d.f2464c.d(this.D);
        h0.d.f2462a.d(this.D);
        u0.c.f17392s.d(this.f8939q);
        u0.c.f17388o.d(this.f8948z);
        u0.c.f17389p.d(this.f8948z);
        l0.b0.o0(this.f8943u);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 180) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 1003) {
            z.k.s(227, 198, 2, 2, 1);
        }
        if (i2 == 1005) {
            a.f.p().t(LogType.CANBUS, "C_CAMERA_MODE =" + iArr[0]);
            if (iArr.length > 0) {
                int i3 = iArr[0];
                if (i3 == 0) {
                    z.k.s(227, -26, 1, 0);
                    return;
                } else {
                    if (i3 != 1) {
                        return;
                    }
                    z.k.s(227, -26, 1, 22);
                    return;
                }
            }
            return;
        }
        switch (i2) {
            case 0:
                if (iArr[0] != 255) {
                    z.k.s(227, 228, 2, iArr[0], iArr[1]);
                } else {
                    G3(iArr[1]);
                }
                break;
            case 1:
                z.k.s(227, 144, 1, iArr[0]);
                break;
            case 2:
                z.k.s(227, 229, 1, iArr[0]);
                break;
            case 3:
                int i4 = iArr[0];
                if (i4 == 254) {
                    if (iArr[1] == 1) {
                        l0.b0.l0(5, 0);
                        l0.b0.l0(5, 1);
                    }
                } else if (i4 != 255) {
                    z.k.s(227, 232, 2, iArr[0], iArr[1]);
                } else if (iArr[1] == 1) {
                    l0.b0.l0(55, 0);
                    l0.b0.l0(55, 1);
                }
                break;
            case 4:
                z.k.s(227, 131, 2, iArr[0], iArr[1]);
                break;
            case 5:
                z.k.s(227, 140, 2, iArr[0], iArr[1]);
                break;
            case 6:
                z.k.s(227, 138, 2, iArr[0], iArr[1]);
                break;
        }
    }

    @Override // k0.lt
    public void Z2(int i2) {
        if (nt.a() && this.f7886a.f8307b == 1) {
            J = K[o1.o0.a(i2, 0, 36)];
        }
    }

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
            } else if (i6 == 0 || i6 == 1) {
                iArr[4] = 16;
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
        } else if (i3 != 4) {
            if (i3 == 8 || i3 == 9) {
                iArr[5] = u0.b.r3 & 255;
                iArr[6] = u0.b.s3 & 255;
                int i8 = u0.b.t3;
                iArr[7] = i8 / BatchedScanSettings.MAX_INTERVAL_SEC;
                iArr[8] = (i8 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60;
                iArr[9] = i8 % 60;
            }
        } else if (o0.e.H == 1) {
            iArr[4] = 0;
            iArr[5] = o0.e.B & 255;
            iArr[6] = o0.e.C & 255;
            int i9 = o0.e.f16794r;
            iArr[7] = i9 / BatchedScanSettings.MAX_INTERVAL_SEC;
            iArr[8] = (i9 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60;
            iArr[9] = i9 % 60;
        } else {
            int i10 = o0.e.C;
            iArr[4] = i10 & 255;
            iArr[5] = (i10 >> 8) & 255;
            int i11 = o0.e.B;
            iArr[6] = i11 & 255;
            iArr[7] = (i11 >> 8) & 255;
            int i12 = o0.e.f16794r;
            iArr[8] = i12 / 60;
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
        if (iArr == null || iArr.length < 3) {
            return;
        }
        switch (u0.b.D) {
            case 1:
                iArr[2] = 1;
                iArr[3] = 1;
                break;
            case 2:
            case 3:
                iArr[2] = 5;
                iArr[3] = 64;
                break;
            case 4:
                int i2 = o0.e.H;
                if (i2 == 1) {
                    iArr[2] = 2;
                    iArr[3] = 16;
                } else if (i2 == 2) {
                    iArr[2] = 8;
                    iArr[3] = 17;
                } else if (i2 == 3) {
                    iArr[2] = 8;
                    iArr[3] = 17;
                }
                break;
            case 5:
                iArr[2] = 7;
                iArr[3] = 48;
                break;
            case 6:
                iArr[2] = 3;
                iArr[3] = 0;
                break;
            case 7:
                iArr[2] = 6;
                iArr[3] = 18;
                break;
            case 8:
            case 9:
            case 10:
                iArr[2] = 8;
                iArr[3] = 16;
                break;
            default:
                iArr[2] = 0;
                iArr[3] = 0;
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
}
