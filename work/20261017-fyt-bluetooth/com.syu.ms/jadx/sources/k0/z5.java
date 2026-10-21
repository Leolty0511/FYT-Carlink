package k0;

import android.content.Intent;
import android.net.ProxyProperties;
import android.net.wifi.BatchedScanSettings;
import android.os.SystemProperties;
import android.text.Spanned;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class z5 extends lt {
    public static int Q = 255;
    public static int R = 0;
    public static int S = 3;
    public static int T = 3;
    public static int U;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f12703d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f12701b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f12702c = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f12704e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f12705f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f12706g = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{6, 12}, new int[]{7, 2}, new int[]{9, 18}, new int[]{10, 26}, new int[]{18, 13}, new int[]{21, 6}, new int[]{22, 29}, new int[]{135, 25}, new int[]{136, 15}, new int[]{32, 56}, new int[]{33, 56}, new int[]{34, 55}, new int[]{35, 58}, new int[]{36, 74}, new int[]{37, 54}, new int[]{38, 75}, new int[]{39, 3}, new int[]{40, 28}, new int[]{41, 66}, new int[]{42, 4}, new int[]{43, 27}, new int[]{44, 65}, new int[]{45, 7}, new int[]{46, 8}, new int[]{47, 32}, new int[]{48, 33}, new int[]{49, 3}, new int[]{50, 4}, new int[]{51, 12}, new int[]{64, 53}, new int[]{65, 66}, new int[]{66, 64}, new int[]{67, 1}, new int[]{68, 25}, new int[]{69, 9}, new int[]{70, 81}, new int[]{71, 1}, new int[]{72, 80}, new int[]{73, 12}, new int[]{74, 72}, new int[]{75, 58}, new int[]{76, 14}, new int[]{77, 55}, new int[]{78, 71}, new int[]{79, 12}, new int[]{80, 38}, new int[]{81, 11}, new int[]{82, 1}, new int[]{83, -1}, new int[]{84, 53}, new int[]{85, 65}, new int[]{86, 9}, new int[]{87, 78}, new int[]{88, 25}, new int[]{89, 1}, new int[]{90, 66}, new int[]{91, 65}, new int[]{92, 64}, new int[]{93, -1}, new int[]{94, -1}, new int[]{95, -1}, new int[]{96, 34}, new int[]{97, -1}, new int[]{98, 33}, new int[]{99, -1}, new int[]{100, 35}, new int[]{101, -1}, new int[]{102, 32}, new int[]{103, -1}, new int[]{112, 29}, new int[]{113, 6}, new int[]{114, 1}, new int[]{115, 9}, new int[]{116, 81}, new int[]{117, 80}, new int[]{143, 62}, new int[]{145, 16}, new int[]{146, 4}, new int[]{147, 3}, new int[]{148, 37}, new int[]{149, 28}, new int[]{150, 27}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f12707h = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f12708i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f12709j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f12710k = new e();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f12711l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f12712m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Runnable f12713n = new f();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Runnable f12714o = new g();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f12715p = new h();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public o1.g0 f12716q = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final int f12717r = 1;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final int f12718s = 2;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final int f12719t = 3;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final int f12720u = 4;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public boolean f12721v = false;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final c.d f12722w = new i();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f12723x = 0;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public Runnable f12724y = new j();

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public Runnable f12725z = new k();
    public Runnable A = new l();
    public Runnable B = new m();
    public int C = 0;
    public String D = ProxyProperties.LOCAL_EXCL_LIST;
    public String E = ProxyProperties.LOCAL_EXCL_LIST;
    public Runnable F = new a();
    public boolean G = false;
    public Runnable H = new b();
    public Runnable I = new c();
    public int J = -1;
    public boolean K = false;
    public String L = ProxyProperties.LOCAL_EXCL_LIST;
    public int M = -1;
    public int N = -1;
    public int O = -1;
    public Runnable P = new d();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2;
            z5 z5Var = z5.this;
            int i3 = z5Var.C + 1;
            z5Var.C = i3;
            if (i3 % 2 == 1 && ((i2 = u0.b.D) == 9 || i2 == 8)) {
                String str = u0.b.i3;
                if (str != null && !z5Var.D.equals(str)) {
                    z5.this.A3((byte) 112, u0.b.i3);
                    z5.this.D = u0.b.i3;
                }
                String str2 = u0.b.j3;
                if (str2 != null && !z5.this.E.equals(str2)) {
                    z5.this.A3((byte) 113, u0.b.j3);
                    z5.this.E = u0.b.j3;
                }
            }
            z5 z5Var2 = z5.this;
            if (z5Var2.C > 2) {
                z5Var2.C = 0;
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (z5.this.G) {
                z.k.s(227, -30, 2, 0, z5.U);
            }
        }
    }

    public class c implements Runnable {
        public c() {
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
            if (z5.this.J != i2) {
                z5.this.J = i2;
                z2 = true;
            } else {
                z2 = false;
            }
            if (z5.this.L.equals(h0.c.f2437h)) {
                z3 = z2;
            } else {
                z5.this.L = h0.c.f2437h;
                if (z5.this.L == null) {
                    z5.this.L = ProxyProperties.LOCAL_EXCL_LIST;
                    z3 = z2;
                }
            }
            if (z3) {
                z5 z5Var = z5.this;
                z5Var.G3(z5Var.J, z5.this.L);
                if (z5.this.K != z4) {
                    z5.this.K = z4;
                    z5.this.J = 0;
                }
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        /* JADX WARN: Code duplicated, block: B:29:0x00ac  */
        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            boolean zIs24HourFormat = DateFormat.is24HourFormat(App.c());
            if (z5.this.M != time.hour || z5.this.N != time.minute || z5.this.O != zIs24HourFormat) {
                int i2 = nt.f8637c;
                if (i2 == 11 || i2 == 12 || i2 == 60 || i2 == 61) {
                    z.k.s(227, -56, 4, time.minute, time.hour, zIs24HourFormat ? 1 : 0, 1);
                } else {
                    z.k.s(227, -56, 4, time.minute, time.hour, zIs24HourFormat ? 1 : 0, 0);
                }
                z5.this.M = time.hour;
                z5.this.N = time.minute;
                z5.this.O = zIs24HourFormat ? 1 : 0;
            }
            int i3 = nt.f8637c;
            if (i3 == 21) {
                z.k.s(227, -125, 2, 47, 1);
            } else if (i3 == 28 || i3 == 66) {
                z.k.s(227, -125, 2, 47, 0);
            } else if (i3 == 69) {
                z.k.s(227, -125, 2, 47, 1);
            }
            int i4 = nt.f8637c;
            if (i4 != 0 && i4 != 1) {
                if (i4 == 13) {
                    z.k.s(227, -18, 2, 89, 21);
                    return;
                }
                if (i4 != 58 && i4 != 59) {
                    switch (i4) {
                        case 30:
                        case 34:
                            z.k.s(227, -18, 2, 89, 1);
                            return;
                        case 31:
                        case 35:
                            z.k.s(227, -18, 2, 89, 2);
                            return;
                        case 32:
                        case 36:
                            z.k.s(227, -18, 2, 89, 3);
                            return;
                        case 33:
                            z.k.s(227, -18, 2, 89, 128);
                            return;
                        case 37:
                        case 38:
                        case 50:
                        case 51:
                            break;
                        case 39:
                        case 40:
                        case 41:
                        case 42:
                        case 43:
                        case 44:
                            z.k.s(227, -18, 2, 89, 18);
                            return;
                        case 45:
                        case 46:
                            break;
                        case 47:
                        case 48:
                            z.k.s(227, -18, 2, 89, 20);
                            return;
                        case 49:
                            z.k.s(227, -18, 2, 89, 129);
                            return;
                        case 52:
                        case 53:
                            z.k.s(227, -18, 2, 89, 4);
                            return;
                        default:
                            switch (i4) {
                                case 62:
                                case 63:
                                    break;
                                case 64:
                                case 65:
                                    z.k.s(227, -18, 2, 89, 5);
                                    return;
                                default:
                                    switch (i4) {
                                        case 71:
                                        case 72:
                                            z.k.s(227, -18, 2, 89, 6);
                                            break;
                                    }
                            }
                            break;
                    }
                }
                z.k.s(227, -18, 2, 89, 16);
                return;
            }
            z.k.s(227, -18, 2, 89, 19);
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            z5 z5Var = z5.this;
            int i2 = z5Var.f12709j;
            if (i2 > 0) {
                z5Var.f12709j = i2 - 1;
            }
            if (z5Var.f12709j != 0 || z5Var.f12707h) {
                return;
            }
            z5Var.f12707h = true;
            z.k.s(227, -57, 1, 1);
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = z5.Q;
            int i3 = u0.b.D;
            if (i2 != i3) {
                if (i3 != 13 && z5.Q == 13) {
                    z.k.s(227, 139, 1, 1);
                }
                z5.Q = u0.b.D;
            }
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            z5 z5Var = z5.this;
            int i2 = z5Var.f12702c;
            if (i2 > 0) {
                z5Var.f12702c = i2 - 1;
            }
            if (z5Var.f12702c == 0) {
                z5Var.a3();
            }
        }
    }

    public class h implements Runnable {
        public h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            z5 z5Var = z5.this;
            z5Var.f12702c = 4;
            z5Var.c3();
        }
    }

    public class i extends c.d {
        public i() {
        }

        @Override // c.d
        public boolean b(int i2) {
            if (i2 != 590) {
                return false;
            }
            z.k.s(227, -57, 1, 1);
            return false;
        }

        @Override // c.d
        public boolean c(int i2, int i3) {
            return false;
        }
    }

    public class j implements Runnable {
        public j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(z5.this.f12725z);
            z5 z5Var = z5.this;
            z5Var.f12723x = 5;
            z5Var.G = false;
        }
    }

    public class k implements Runnable {
        public k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            z5 z5Var = z5.this;
            int i2 = z5Var.f12723x - 1;
            z5Var.f12723x = i2;
            if (i2 <= 0) {
                l0.b0.p0(z5Var.f12725z);
                z5.this.f12723x = 5;
                return;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (u0.b.f17306a0 == 1) {
                if (nt.f8637c == 10) {
                    z5 z5Var2 = z5.this;
                    z5Var2.F3(z5Var2.f12716q.b(1, 1));
                }
                z5 z5Var3 = z5.this;
                z5Var3.D3(z5Var3.f12716q.b(2, 3));
                z5 z5Var4 = z5.this;
                z5Var4.E3(z5Var4.f12716q.b(3, 3));
            }
        }
    }

    public class l implements Runnable {
        public l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.D != 3) {
                z5.this.A3((byte) 112, u0.b.i3);
            }
        }
    }

    public class m implements Runnable {
        public m() {
        }

        @Override // java.lang.Runnable
        public void run() {
        }
    }

    public final void A3(byte b2, String str) {
        if (str == null) {
            return;
        }
        int length = str.length();
        if (length > 29) {
            length = 29;
        }
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

    public final void B3(String str) {
        Intent intent = new Intent();
        intent.setClassName("com.syu.canbus", str);
        intent.addCategory(Intent.CATEGORY_DEFAULT);
        intent.setFlags(274857984);
        App.c().startActivity(intent);
    }

    public final void C3(int i2) {
        U = i2;
        z.k.s(227, -30, 2, 0, i2);
        qt.y0(188, U);
        int iB = this.f12716q.b(4, 0);
        int i3 = U;
        if (iB != i3) {
            this.f12716q.g(4, i3);
        }
    }

    public final void D3(int i2) {
        S = i2;
        z.k.s(227, -112, 2, 35, i2);
        qt.y0(181, S);
        int iB = this.f12716q.b(2, 0);
        int i3 = S;
        if (iB != i3) {
            this.f12716q.g(2, i3);
        }
    }

    public final void E3(int i2) {
        T = i2;
        z.k.s(227, -112, 2, 34, i2);
        qt.y0(182, T);
        int iB = this.f12716q.b(3, 0);
        int i3 = T;
        if (iB != i3) {
            this.f12716q.g(3, i3);
        }
    }

    public final void F3(int i2) {
        if (i2 < 0) {
            i2 = 0;
        } else if (i2 > 1) {
            i2 = 1;
        }
        R = i2;
        qt.y0(146, i2);
        int iB = this.f12716q.b(1, 0);
        int i3 = R;
        if (iB != i3) {
            this.f12716q.g(1, i3);
        }
    }

    public final void G3(int i2, String str) {
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
    public void O2(int[] iArr) {
        if (iArr == null || iArr.length < 2) {
            return;
        }
        int i2 = iArr[0];
        a.f.p().t(LogType.CANBUS, "Air codeCmd = " + iArr[0] + "      value = " + iArr[1]);
        if (i2 == 33) {
            if (iArr[1] != 0) {
                z.k.s(227, -17, 3, 125, 64, 1);
                return;
            } else {
                z.k.s(227, -17, 3, 125, 64, 0);
                return;
            }
        }
        if (i2 == 34) {
            if (iArr[1] != 0) {
                z.k.s(227, -17, 3, 125, 65, 1);
                return;
            } else {
                z.k.s(227, -17, 3, 125, 65, 0);
                return;
            }
        }
        if (i2 == 41) {
            if (iArr[1] != 0) {
                z.k.s(227, -17, 4, 125, 69, 0, 128);
                return;
            } else {
                z.k.s(227, -17, 4, 125, 69, 0, 129);
                return;
            }
        }
        if (i2 == 42) {
            if (iArr[1] != 0) {
                z.k.s(227, -17, 4, 125, 69, 1, 128);
                return;
            } else {
                z.k.s(227, -17, 4, 125, 69, 1, 129);
                return;
            }
        }
        if (i2 == 55) {
            z.k.s(227, -17, 4, 125, 69, 0, iArr[1]);
            return;
        }
        if (i2 == 56) {
            z.k.s(227, -17, 4, 125, 69, 1, iArr[1]);
            return;
        }
        if (i2 != 68) {
            switch (i2) {
                case 36:
                    if (iArr[1] == 0) {
                        z.k.s(227, -17, 3, 125, 71, 0);
                    } else {
                        z.k.s(227, -17, 3, 125, 71, 1);
                    }
                    break;
                case 37:
                    if (iArr[1] == 0) {
                        z.k.s(227, -17, 3, 125, 72, 0);
                    } else {
                        z.k.s(227, -17, 3, 125, 72, 1);
                    }
                    break;
                case 38:
                    if (iArr[1] == 1) {
                        z.k.s(227, -17, 3, 125, 66, 0);
                    } else if (iArr[1] == 0) {
                        z.k.s(227, -17, 3, 125, 66, 1);
                    }
                    break;
                case 39:
                    if (iArr[1] != -1) {
                        z.k.s(227, -17, 3, 125, 68, 129);
                    } else {
                        z.k.s(227, -17, 3, 125, 68, 128);
                    }
                    break;
            }
            return;
        }
        if (iArr[1] == 1) {
            z.k.s(227, -17, 4, 125, 2, 2, 1);
            return;
        }
        if (iArr[1] == 2) {
            z.k.s(227, -17, 4, 125, 2, 2, 11);
            return;
        }
        if (iArr[1] == 3) {
            z.k.s(227, -17, 4, 125, 2, 0, 1);
            return;
        }
        if (iArr[1] == 4) {
            z.k.s(227, -17, 4, 125, 2, 0, 11);
            return;
        }
        if (iArr[1] == 5) {
            z.k.s(227, -17, 4, 125, 2, 3, 1);
            return;
        }
        if (iArr[1] == 6) {
            z.k.s(227, -17, 4, 125, 2, 3, 11);
            return;
        }
        if (iArr[1] == 7) {
            z.k.s(227, -17, 4, 125, 2, 1, 1);
            return;
        }
        if (iArr[1] == 8) {
            z.k.s(227, -17, 4, 125, 2, 1, 11);
            return;
        }
        if (iArr[1] == 9) {
            z.k.s(227, -17, 3, 125, 1, 0);
            return;
        }
        if (iArr[1] == 10) {
            z.k.s(227, -17, 3, 125, 1, 1);
        } else if (iArr[1] == 11) {
            z.k.s(227, -17, 4, 125, 2, 16, 1);
        } else if (iArr[1] == 12) {
            z.k.s(227, -17, 4, 125, 2, 16, 11);
        }
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0093 A[FALL_THROUGH] */
    /*  JADX ERROR: UnsupportedOperationException in pass: RegionMakerVisitor
        java.lang.UnsupportedOperationException
        	at java.base/java.util.Collections$UnmodifiableCollection.add(Collections.java:1068)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker$1.leaveRegion(SwitchRegionMaker.java:419)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:91)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:31)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.insertBreaksForCase(SwitchRegionMaker.java:399)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.insertBreaks(SwitchRegionMaker.java:89)
        	at jadx.core.dex.visitors.regions.PostProcessRegions.leaveRegion(PostProcessRegions.java:31)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:91)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:27)
        	at jadx.core.dex.visitors.regions.PostProcessRegions.process(PostProcessRegions.java:21)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:31)
        */
    @Override // k0.lt
    public void S2() {
        /*
            Method dump skipped, instruction units count: 324
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: k0.z5.S2():void");
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int i4;
        int i5;
        int[][] iArr;
        int i6;
        int i7;
        int i8;
        int i9;
        byte b2 = bArr[i2];
        boolean z2 = false;
        if (b2 == -110) {
            qt.y0(163, bArr[i2 + 2] & 255);
            qt.y0(164, bArr[i2 + 3] & 255);
            qt.y0(165, bArr[i2 + 4] & 255);
            qt.y0(166, bArr[i2 + 5] & 255);
            qt.y0(167, bArr[i2 + 6] & 255);
            qt.y0(168, bArr[i2 + 7] & 255);
            qt.y0(169, bArr[i2 + 8] & 255);
            qt.y0(170, bArr[i2 + 9] & 255);
        }
        if (b2 == -109) {
            qt.y0(147, bArr[i2 + 2]);
            qt.y0(148, bArr[i2 + 3]);
            qt.y0(149, bArr[i2 + 4]);
            qt.y0(150, bArr[i2 + 5]);
            qt.y0(151, bArr[i2 + 6]);
            qt.y0(152, bArr[i2 + 7]);
            qt.y0(153, bArr[i2 + 8]);
            qt.y0(154, bArr[i2 + 9]);
            qt.y0(155, bArr[i2 + 10]);
            return;
        }
        if (b2 == -107) {
            int i10 = i2 + 2;
            qt.y0(156, (bArr[i10] >> 7) & 1);
            qt.y0(157, (bArr[i10] >> 6) & 1);
            qt.y0(158, (bArr[i10] >> 5) & 1);
            int i11 = i2 + 3;
            qt.y0(171, (bArr[i11] >> 7) & 1);
            qt.y0(172, (bArr[i11] >> 5) & 3);
            qt.y0(173, (bArr[i11] >> 4) & 1);
            qt.y0(174, (bArr[i11] >> 0) & 15);
            int i12 = i2 + 4;
            qt.y0(175, (bArr[i12] >> 7) & 1);
            qt.y0(176, (bArr[i12] >> 6) & 1);
            qt.y0(177, (bArr[i12] >> 5) & 1);
            qt.y0(189, (bArr[i12] >> 4) & 1);
            qt.y0(190, (bArr[i12] >> 2) & 3);
            qt.y0(191, (bArr[i12] >> 0) & 3);
            int i13 = i2 + 5;
            qt.y0(178, (bArr[i13] >> 7) & 1);
            qt.y0(179, (bArr[i13] >> 6) & 1);
            qt.y0(180, (bArr[i13] >> 5) & 1);
            qt.y0(192, (bArr[i13] >> 4) & 1);
            int i14 = i2 + 6;
            qt.y0(183, (bArr[i14] >> 7) & 1);
            qt.y0(184, (bArr[i14] >> 5) & 3);
            qt.y0(185, (bArr[i14] >> 4) & 1);
            qt.y0(186, (bArr[i14] >> 3) & 1);
            return;
        }
        if (b2 == -106) {
            switch (bArr[i2 + 2] & 255) {
                case 50:
                    int i15 = i2 + 3;
                    if (this.f12701b != (bArr[i15] & 255)) {
                        int i16 = bArr[i15] & 255;
                        this.f12701b = i16;
                        if (i16 == 1) {
                            if (!qt.i0().equals("com.syu.carinfo.rzc.sanlin.RZCNissanRearYuleActi")) {
                                B3("com.syu.carinfo.rzc.sanlin.RZCNissanRearYuleActi");
                            }
                        } else if (qt.i0().equals("com.syu.carinfo.rzc.sanlin.RZCNissanRearYuleActi")) {
                            o1.u.k();
                        }
                    }
                    qt.y0(210, bArr[i15] & 255);
                    break;
                case 51:
                    qt.y0(211, bArr[i2 + 3] & 255);
                    break;
                case 52:
                    qt.y0(212, bArr[i2 + 3] & 255);
                    break;
                case 53:
                    qt.y0(213, bArr[i2 + 3] & 255);
                    break;
                case 54:
                    qt.y0(214, bArr[i2 + 3] & 255);
                    break;
                case 55:
                    qt.y0(215, bArr[i2 + 3] & 255);
                    break;
            }
        }
        if (b2 == -32) {
            qt.y0(199, bArr[i2 + 3] & 255);
            qt.y0(200, bArr[i2 + 4] & 255);
            qt.y0(201, bArr[i2 + 5] & 255);
            qt.y0(202, bArr[i2 + 6] & 255);
            qt.y0(203, bArr[i2 + 7] & 255);
            return;
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 64) {
            d3(bArr[i2 + 2]);
            return;
        }
        if (b2 == 80) {
            e3(bArr[i2 + 2]);
            return;
        }
        if (b2 == 96) {
            if ((bArr[i2 + 2] & 255) == 48) {
                qt.y0(187, bArr[i2 + 3] & 255);
                return;
            }
            return;
        }
        if (b2 == 125) {
            int i17 = bArr[i2 + 2] & 255;
            if (i17 == 1) {
                if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                    int i18 = i2 + 3;
                    l0.c0.b((bArr[i18] >> 3) & 1, (bArr[i18] >> 4) & 1, 0);
                } else {
                    int i19 = i2 + 3;
                    l0.c0.a((bArr[i19] >> 3) & 1, (bArr[i19] >> 4) & 1, 0);
                }
                o1.x.C(nt.f8643f, 1049, new int[]{11, bArr[i2 + 3] & 255}, null, null);
                return;
            }
            if (i17 == 240) {
                qt.y0(193, bArr[i2 + 3] & 255);
                qt.y0(194, bArr[i2 + 4] & 255);
                qt.y0(195, bArr[i2 + 5] & 255);
                qt.y0(196, bArr[i2 + 6] & 255);
                qt.y0(197, bArr[i2 + 7] & 255);
                qt.y0(198, bArr[i2 + 8] & 255);
                return;
            }
            if (i17 == 3) {
                int i20 = ((bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280)) / 100;
                qt.y0(1031, i20);
                o1.x.C(nt.f8643f, 1049, new int[]{1, i20}, null, null);
                return;
            }
            if (i17 == 4) {
                int i21 = (((bArr[i2 + 7] << 8) & 65280) | (bArr[i2 + 6] & 255)) / 10;
                o1.x[] xVarArr = nt.f8643f;
                o1.x.C(xVarArr, 1049, new int[]{5, i21}, null, null);
                o1.x.C(xVarArr, 1049, new int[]{20, ((bArr[i2 + 5] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 3] & 255)}, null, null);
                o1.x.C(xVarArr, 1049, new int[]{21, ((bArr[i2 + 10] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 9] << 8) & 65280) | (bArr[i2 + 8] & 255)}, null, null);
                o1.x.C(xVarArr, 1049, new int[]{22, (bArr[i2 + 11] & 255) | ((bArr[i2 + 12] << 8) & 65280) | ((bArr[i2 + 13] << 16) & Spanned.SPAN_PRIORITY)}, null, null);
                return;
            }
            if (i17 == 5) {
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    int i22 = i2 + 3;
                    qt.y0(2, (bArr[i22] >> 6) & 1);
                    qt.y0(1, (bArr[i22] >> 7) & 1);
                } else {
                    int i23 = i2 + 3;
                    qt.y0(1, (bArr[i23] >> 6) & 1);
                    qt.y0(2, (bArr[i23] >> 7) & 1);
                }
                int i24 = i2 + 3;
                qt.y0(3, (bArr[i24] >> 4) & 1);
                qt.y0(4, (bArr[i24] >> 5) & 1);
                qt.y0(5, (bArr[i24] >> 3) & 1);
                qt.y0(0, (bArr[i24] >> 2) & 1);
                return;
            }
            if (i17 == 6) {
                o1.x[] xVarArr2 = nt.f8643f;
                int i25 = i2 + 3;
                o1.x.C(xVarArr2, 1049, new int[]{12, (bArr[i25] >> 6) & 1}, null, null);
                o1.x.C(xVarArr2, 1049, new int[]{3, (bArr[i25] >> 0) & 1}, null, null);
                o1.x.C(xVarArr2, 1049, new int[]{4, (bArr[i2 + 4] >> 0) & 15}, null, null);
                return;
            }
            if (i17 == 8) {
                this.f12721v = true;
                qt.i(bArr[i2 + 3], bArr[i2 + 4], true, 540);
                return;
            } else {
                if (i17 != 9) {
                    return;
                }
                o1.x.C(nt.f8643f, 1049, new int[]{2, (bArr[i2 + 4] & 255) - 40}, null, null);
                return;
            }
        }
        if (b2 == 16) {
            qt.y0(145, bArr[i2 + 2] & 3);
            return;
        }
        if (b2 == 17) {
            int i26 = i2 + 2;
            int i27 = (bArr[i26] >> 6) & 3;
            if (i27 != 1) {
                if (i27 == 2) {
                    i5 = 1;
                } else if (i27 != 3) {
                    i5 = 0;
                } else {
                    i5 = 0;
                    i4 = 1;
                }
                i4 = i5;
            } else {
                i4 = 0;
                i5 = 1;
            }
            qt.y0(46, i5);
            qt.y0(47, i4);
            qt.y0(67, (bArr[i26] >> 5) & 1);
            qt.y0(43, (bArr[i26] >> 4) & 1);
            qt.y0(44, (bArr[i26] >> 0) & 15);
            int i28 = bArr[i2 + 3] & 63;
            if (i28 == 0) {
                qt.y0(40, -1);
                return;
            }
            if (i28 <= 15) {
                qt.y0(40, -2);
                return;
            } else if (i28 >= 49) {
                qt.y0(40, -3);
                return;
            } else {
                qt.y0(40, i28);
                return;
            }
        }
        switch (b2) {
            case 3:
                int i29 = i2 + 2;
                qt.y0(100, (bArr[i29] >> 7) & 1);
                qt.y0(101, (bArr[i29] >> 6) & 1);
                qt.y0(102, (bArr[i29] >> 5) & 1);
                qt.y0(103, (bArr[i29] >> 4) & 1);
                qt.y0(104, (bArr[i29] >> 3) & 1);
                break;
            case 4:
                qt.y0(105, bArr[i2 + 2] & 255);
                int i30 = i2 + 3;
                qt.y0(106, bArr[i30] & 255);
                switch (bArr[i30]) {
                    case 0:
                        qt.y0(107, ((bArr[i2 + 5] & 255) | ((bArr[i2 + 4] << 8) & 65280)) & 65535);
                        break;
                    case 1:
                        qt.y0(108, ((bArr[i2 + 5] & 255) | ((bArr[i2 + 4] << 8) & 65280)) & 65535);
                        break;
                    case 2:
                        qt.y0(109, ((bArr[i2 + 5] & 255) | ((bArr[i2 + 4] << 8) & 65280)) & 65535);
                        break;
                    case 3:
                        qt.y0(110, ((bArr[i2 + 5] & 255) | ((bArr[i2 + 4] << 8) & 65280)) & 65535);
                        break;
                    case 4:
                        qt.y0(111, ((bArr[i2 + 5] & 255) | ((bArr[i2 + 4] << 8) & 65280)) & 65535);
                        break;
                    case 5:
                        qt.y0(112, ((bArr[i2 + 5] & 255) | ((bArr[i2 + 4] << 8) & 65280)) & 65535);
                        break;
                    case 6:
                        qt.y0(113, ((bArr[i2 + 5] & 255) | ((bArr[i2 + 4] << 8) & 65280)) & 65535);
                        break;
                }
                break;
            case 5:
                qt.x0(114, new String(bArr, i2 + 2, 16));
                break;
            case 6:
                int i31 = i2 + 2;
                qt.y0(118, (bArr[i31] >> 7) & 1);
                qt.y0(119, (bArr[i31] >> 6) & 1);
                qt.y0(120, (bArr[i31] >> 5) & 1);
                qt.y0(121, (bArr[i31] >> 4) & 1);
                qt.y0(122, (bArr[i31] >> 3) & 1);
                qt.y0(134, (bArr[i31] >> 0) & 7);
                int i32 = i2 + 3;
                qt.y0(124, (bArr[i32] >> 6) & 3);
                qt.y0(125, (bArr[i32] >> 4) & 3);
                qt.y0(126, (bArr[i32] >> 2) & 3);
                qt.y0(127, (bArr[i32] >> 0) & 3);
                int i33 = i2 + 4;
                qt.y0(128, (bArr[i33] >> 6) & 3);
                qt.y0(129, (bArr[i33] >> 4) & 3);
                break;
            case 7:
                qt.y0(130, bArr[i2 + 2] & 255);
                qt.y0(131, bArr[i2 + 3] & 255);
                qt.y0(132, bArr[i2 + 4] & 255);
                qt.y0(133, bArr[i2 + 5] & 255);
                qt.y0(123, bArr[i2 + 6] & 255);
                break;
            case 8:
                qt.x0(135, new String(bArr, i2 + 2, 16));
                break;
            case 9:
                int i34 = i2 + 2;
                int i35 = (bArr[i34] >> 5) & 7;
                if (i35 == 1) {
                    qt.y0(138, bArr[i34] & 31);
                    break;
                } else if (i35 == 2) {
                    qt.y0(139, bArr[i34] & 31);
                    break;
                } else if (i35 == 3) {
                    qt.y0(140, bArr[i34] & 31);
                    break;
                } else if (i35 == 4) {
                    qt.y0(141, bArr[i34] & 31);
                    break;
                } else if (i35 == 5) {
                    qt.y0(142, bArr[i34] & 1);
                    break;
                }
                break;
            case 10:
                int i36 = i2 + 2;
                if (((bArr[i36] >> 7) & 1) == 1) {
                    qt.y0(143, bArr[i36] & 127);
                }
                break;
            default:
                switch (b2) {
                    case 32:
                        if (nt.a()) {
                            byte b3 = bArr[i2 + 2];
                            byte b4 = bArr[i2 + 3];
                            this.f12704e = b3 & 255;
                            int i37 = 0;
                            while (true) {
                                iArr = this.f12706g;
                                if (i37 < iArr.length) {
                                    int i38 = this.f12704e;
                                    if (i38 != iArr[i37][0]) {
                                        i37++;
                                    } else if (i38 != 0) {
                                        this.f12703d = i37;
                                    }
                                }
                            }
                            int i39 = nt.f8637c;
                            if (i39 != 2 && i39 != 3) {
                                int i40 = this.f12704e;
                                if (i40 == 7) {
                                    if (this.f12708i != b4) {
                                        this.f12708i = b4;
                                        if (b4 == 1) {
                                            this.f12707h = false;
                                            this.f12709j = -1;
                                            l0.b0.o0(this.f12710k);
                                        } else if (b4 == 2) {
                                            this.f12709j = 25;
                                            l0.b0.a(this.f12710k);
                                        } else if (b4 == 0) {
                                            if (this.f12707h) {
                                                this.f12707h = false;
                                            } else if (h0.c.E == 4 || u0.i.l3().r3()) {
                                                l0.b0.l0(18, 0);
                                                l0.b0.l0(18, 1);
                                            } else {
                                                l0.b0.l0(2, 0);
                                                l0.b0.l0(2, 1);
                                            }
                                            this.f12709j = -1;
                                            l0.b0.o0(this.f12710k);
                                        }
                                    }
                                    break;
                                } else if (i40 == 22) {
                                    if ((b4 & 255) == 1) {
                                        switch (nt.f8633a) {
                                            case 65726:
                                            case 327870:
                                            case 655550:
                                            case 786622:
                                            case 917694:
                                            case 983230:
                                            case 1048766:
                                            case 1245374:
                                            case 1507518:
                                            case 1638590:
                                            case 1769662:
                                            case 3473598:
                                            case 3735742:
                                            case 3866814:
                                            case 3997886:
                                            case 4128958:
                                            case 4260030:
                                            case 4456638:
                                            case 4718782:
                                            case 4849854:
                                            case 4915390:
                                            case 4980926:
                                                z.k.s(227, -57, 1, 1);
                                                break;
                                            default:
                                                l0.b0.l0(29, 0);
                                                l0.b0.l0(29, 1);
                                                break;
                                        }
                                    }
                                } else if (i40 == 9) {
                                    if (this.f12708i != b4) {
                                        this.f12708i = b4;
                                        if (b4 == 1) {
                                            this.f12707h = false;
                                            this.f12709j = -1;
                                            l0.b0.o0(this.f12710k);
                                        } else if (b4 == 2) {
                                            this.f12709j = 25;
                                            l0.b0.a(this.f12710k);
                                        } else if (b4 == 0) {
                                            if (this.f12707h) {
                                                this.f12707h = false;
                                            } else if (h0.c.E == 4 || u0.i.l3().r3()) {
                                                l0.b0.l0(18, 0);
                                                l0.b0.l0(18, 1);
                                            } else {
                                                l0.b0.l0(13, 0);
                                                l0.b0.l0(13, 1);
                                            }
                                            this.f12709j = -1;
                                            l0.b0.o0(this.f12710k);
                                        }
                                    }
                                    break;
                                } else if (i40 == 10) {
                                    if (this.f12708i != b4) {
                                        this.f12708i = b4;
                                        if (b4 == 1) {
                                            this.f12707h = false;
                                            this.f12709j = -1;
                                            l0.b0.o0(this.f12710k);
                                        } else if (b4 == 2) {
                                            this.f12709j = 25;
                                            l0.b0.a(this.f12710k);
                                        } else if (b4 == 0) {
                                            if (this.f12707h) {
                                                this.f12707h = false;
                                            } else {
                                                int i41 = h0.c.E;
                                                if (i41 == 3 || i41 == 5 || u0.i.l3().r3()) {
                                                    l0.b0.l0(26, 0);
                                                    l0.b0.l0(26, 1);
                                                } else {
                                                    l0.b0.l0(18, 0);
                                                    l0.b0.l0(18, 1);
                                                }
                                            }
                                            this.f12709j = -1;
                                            l0.b0.o0(this.f12710k);
                                        }
                                    }
                                    break;
                                } else {
                                    switch (i40) {
                                        case 45:
                                            for (int i42 = 0; i42 < (b4 & 255); i42++) {
                                                l0.b0.l0(8, 0);
                                            }
                                            l0.b0.l0(8, 1);
                                            break;
                                        case 46:
                                            for (int i43 = 0; i43 < (b4 & 255); i43++) {
                                                l0.b0.l0(7, 0);
                                            }
                                            l0.b0.l0(7, 1);
                                            break;
                                        case 47:
                                            for (int i44 = 0; i44 < (b4 & 255); i44++) {
                                                l0.b0.l0(30, 0);
                                            }
                                            l0.b0.l0(30, 1);
                                            break;
                                        case 48:
                                            for (int i45 = 0; i45 < (b4 & 255); i45++) {
                                                l0.b0.l0(31, 0);
                                            }
                                            l0.b0.l0(31, 1);
                                            break;
                                        default:
                                            int i46 = b4 & 255;
                                            if (i46 == 1) {
                                                if (i37 < iArr.length) {
                                                    l0.b0.l0(iArr[i37][1], 0);
                                                }
                                            } else if (i46 == 0) {
                                                int i47 = this.f12703d;
                                                if (i47 < iArr.length && i47 != 255) {
                                                    l0.b0.l0(iArr[i47][1], 1);
                                                }
                                                this.f12703d = 255;
                                            }
                                            break;
                                    }
                                }
                            } else {
                                int i48 = this.f12704e;
                                if (i48 == 7) {
                                    if ((b4 & 255) == 1) {
                                        if (h0.c.E == 4) {
                                            l0.b0.l0(18, 0);
                                            l0.b0.l0(18, 1);
                                        } else if (u0.i.l3().r3()) {
                                            l0.b0.l0(18, 0);
                                            l0.b0.l0(18, 1);
                                        } else {
                                            l0.b0.l0(2, 0);
                                            l0.b0.l0(2, 1);
                                        }
                                    }
                                    break;
                                } else if (i48 == 9) {
                                    if ((b4 & 255) == 1) {
                                        if (h0.c.E == 4) {
                                            l0.b0.l0(18, 0);
                                            l0.b0.l0(18, 1);
                                        } else if (u0.i.l3().r3()) {
                                            l0.b0.l0(18, 0);
                                            l0.b0.l0(18, 1);
                                        } else {
                                            l0.b0.l0(13, 0);
                                            l0.b0.l0(13, 1);
                                        }
                                    }
                                    break;
                                } else {
                                    switch (i48) {
                                        case 45:
                                            for (int i49 = 0; i49 < (b4 & 255); i49++) {
                                                l0.b0.l0(8, 0);
                                            }
                                            l0.b0.l0(8, 1);
                                            break;
                                        case 46:
                                            for (int i50 = 0; i50 < (b4 & 255); i50++) {
                                                l0.b0.l0(7, 0);
                                            }
                                            l0.b0.l0(7, 1);
                                            break;
                                        case 47:
                                            for (int i51 = 0; i51 < (b4 & 255); i51++) {
                                                l0.b0.l0(30, 0);
                                            }
                                            l0.b0.l0(30, 1);
                                            break;
                                        case 48:
                                            for (int i52 = 0; i52 < (b4 & 255); i52++) {
                                                l0.b0.l0(31, 0);
                                            }
                                            l0.b0.l0(31, 1);
                                            break;
                                        default:
                                            int i53 = b4 & 255;
                                            if (i53 == 1) {
                                                if (i37 < iArr.length) {
                                                    l0.b0.l0(iArr[i37][1], 0);
                                                }
                                            } else if (i53 == 0) {
                                                int i54 = this.f12703d;
                                                if (i54 < iArr.length && i54 != 255) {
                                                    l0.b0.l0(iArr[i54][1], 1);
                                                }
                                                this.f12703d = 255;
                                            }
                                            break;
                                    }
                                }
                            }
                        }
                        break;
                    case 33:
                        int i55 = bArr[i2 + 2] & 255;
                        int i56 = bArr[i2 + 3] & 255;
                        int i57 = bArr[i2 + 6] & 255;
                        int i58 = (i55 >> 5) & 7;
                        if (i58 != 1) {
                            if (i58 == 2) {
                                i6 = 0;
                                i8 = 1;
                            } else if (i58 == 3) {
                                i6 = 0;
                                i8 = 0;
                                i7 = 1;
                            } else if (i58 == 4) {
                                i8 = 0;
                                i6 = 1;
                                i7 = 1;
                            } else if (i58 != 5) {
                                i6 = 0;
                                i8 = 0;
                            } else {
                                i8 = 0;
                                i7 = 0;
                                i6 = 1;
                            }
                            i7 = i8;
                        } else {
                            i6 = 0;
                            i7 = 0;
                            i8 = 1;
                        }
                        qt.y0(18, i6);
                        qt.y0(19, i8);
                        qt.y0(20, i7);
                        qt.y0(13, (i55 >> 4) & 1);
                        if (((i55 >> 3) & 1) != 0) {
                            qt.y0(12, 0);
                        } else if (((i55 >> 2) & 1) != 0) {
                            qt.y0(12, 1);
                        }
                        qt.y0(11, (i55 >> 1) & 1);
                        qt.y0(10, (i55 >> 0) & 1);
                        qt.y0(21, (i56 >> 4) & 15);
                        qt.y0(53, (i56 >> 3) & 1);
                        qt.y0(65, (i56 >> 2) & 1);
                        qt.y0(16, (i56 >> 1) & 1);
                        qt.y0(14, (i56 >> 0) & 1);
                        int i59 = i2 + 4;
                        int i60 = bArr[i59] & 255;
                        int i61 = i2 + 5;
                        int i62 = bArr[i61] & 255;
                        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                            i60 = bArr[i61] & 255;
                            i62 = bArr[i59] & 255;
                        }
                        int i63 = (i60 >> 2) & 63;
                        if (i63 == 0) {
                            qt.y0(27, -1);
                        } else if (i63 <= 15) {
                            qt.y0(27, -2);
                        } else if (i63 >= 49) {
                            qt.y0(27, -3);
                        } else {
                            qt.y0(27, i63);
                        }
                        int i64 = (i62 >> 2) & 63;
                        if (i64 == 0) {
                            qt.y0(28, -1);
                        } else if (i64 <= 15) {
                            qt.y0(28, -2);
                        } else if (i64 >= 49) {
                            qt.y0(28, -3);
                        } else {
                            qt.y0(28, i64);
                        }
                        qt.y0(72, (bArr[i59] >> 1) & 1);
                        qt.y0(76, (bArr[i59] >> 0) & 1);
                        qt.y0(37, (bArr[i61] >> 1) & 1);
                        if (i57 == 0) {
                            u0.d.A3(0);
                        } else {
                            if (i57 < 80) {
                                i9 = 400;
                                z2 = true;
                            } else {
                                i9 = -400;
                            }
                            u0.d.A3(z2 ? 1000 - i9 : i9 + 1000);
                        }
                        break;
                    case 34:
                        u0.d.R2(l0.c0.P0(bArr[i2 + 2] & 255));
                        u0.d.S2(l0.c0.P0(bArr[i2 + 3] & 255));
                        u0.d.T2(l0.c0.P0(bArr[i2 + 4] & 255));
                        u0.d.U2(l0.c0.P0(bArr[i2 + 5] & 255));
                        break;
                    case 35:
                        int i65 = i2 + 2;
                        int i66 = bArr[i65] & 255;
                        int i67 = i2 + 3;
                        int i68 = bArr[i67] & 255;
                        int i69 = i2 + 4;
                        int i70 = bArr[i69] & 255;
                        int i71 = i2 + 5;
                        int i72 = bArr[i71] & 255;
                        if (u0.b.f17347o == 0) {
                            if (l0.c0.f13013g != i66 || l0.c0.f13014h != i68 || l0.c0.f13015i != i70 || l0.c0.f13016j != i72) {
                                if (i66 != 0 || i68 != 0 || i70 != 0 || i72 != 0) {
                                    u0.d.C2(1);
                                } else if (u0.b.f17350p == 1) {
                                    l0.c0.f13017k = 5;
                                    l0.b0.b(l0.c0.f13018l);
                                }
                            }
                            l0.c0.f13013g = i66;
                            l0.c0.f13014h = i68;
                            l0.c0.f13015i = i70;
                            l0.c0.f13016j = i72;
                        }
                        l0.c0.f13013g = i66;
                        l0.c0.f13014h = i68;
                        l0.c0.f13015i = i70;
                        l0.c0.f13016j = i72;
                        u0.d.D2(l0.c0.P0(bArr[i65] & 255));
                        u0.d.E2(l0.c0.P0(bArr[i67] & 255));
                        u0.d.F2(l0.c0.P0(bArr[i69] & 255));
                        u0.d.G2(l0.c0.P0(bArr[i71] & 255));
                        break;
                    default:
                        switch (b2) {
                            case 39:
                                int i73 = i2 + 2;
                                qt.y0(159, (bArr[i73] >> 1) & 1);
                                qt.y0(160, (bArr[i73] >> 0) & 1);
                                qt.y0(161, ((bArr[i2 + 3] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
                                qt.y0(162, (bArr[i2 + 7] & 255) | ((bArr[i2 + 6] << 8) & 65280));
                                break;
                            case 40:
                                byte b5 = bArr[i2 + 2];
                                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                                    qt.y0(2, (b5 >> 6) & 1);
                                    qt.y0(1, (b5 >> 7) & 1);
                                } else {
                                    qt.y0(1, (b5 >> 6) & 1);
                                    qt.y0(2, (b5 >> 7) & 1);
                                }
                                qt.y0(3, (b5 >> 4) & 1);
                                qt.y0(4, (b5 >> 5) & 1);
                                qt.y0(5, (b5 >> 3) & 1);
                                qt.y0(0, (b5 >> 2) & 1);
                                if (nt.f8637c != 8 && R == 1) {
                                    int i74 = i2 + 3;
                                    if (this.f12711l != ((bArr[i74] >> 1) & 1)) {
                                        this.f12711l = (bArr[i74] >> 1) & 1;
                                        if (u0.b.f17347o == 0) {
                                            switch (nt.f8633a) {
                                                case 65726:
                                                case 327870:
                                                case 655550:
                                                case 786622:
                                                case 917694:
                                                case 983230:
                                                case 1048766:
                                                case 1245374:
                                                case 1507518:
                                                case 1638590:
                                                case 1769662:
                                                case 3473598:
                                                case 3735742:
                                                case 3866814:
                                                case 3997886:
                                                case 4128958:
                                                case 4260030:
                                                case 4456638:
                                                case 4718782:
                                                case 4849854:
                                                case 4915390:
                                                case 4980926:
                                                    z.k.s(227, -57, 1, 1);
                                            }
                                        }
                                    }
                                }
                                break;
                            case 41:
                                if (!this.f12721v) {
                                    qt.l(bArr[i2 + 3], bArr[i2 + 2], false, 5400);
                                }
                                break;
                        }
                        break;
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f12716q.j();
        qt.q0(this.f12714o);
        y0.g.f18094d.d(this.f12715p);
        y0.g.f18095e.d(this.f12715p);
        w0.e.f17815a.d(this.f12714o);
        w0.e.f17819e.d(this.f12714o);
        qt.q0(this.P);
        u0.c.f17374a.d(this.f12713n);
        u0.c.f17386m.d(this.f12724y);
        l0.b0.p0(this.f12725z);
        qt.q0(this.F);
        u0.c.f17388o.d(this.A);
        h0.d.f2464c.d(this.I);
        h0.d.f2462a.d(this.I);
        qt.q0(this.H);
        c.e.d().f(590, this.f12722w);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 216) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, -31, 6, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], iArr[5]);
            return;
        }
        if (i2 == 1) {
            F3(iArr[0]);
            return;
        }
        if (i2 == 2) {
            z.k.s(227, -125, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 3) {
            if (iArr[0] == 34) {
                E3(iArr[1]);
                return;
            } else if (iArr[0] == 35) {
                D3(iArr[1]);
                return;
            } else {
                z.k.s(227, -112, 2, iArr[0], iArr[1]);
                return;
            }
        }
        if (i2 == 4) {
            C3(iArr[0]);
            this.G = true;
            return;
        }
        if (i2 == 111) {
            if (T2(iArr, 2)) {
                z.k.s(227, 239, 8, 125, 240, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], iArr[5]);
            }
        } else if (i2 == 1003 && iArr != null && iArr.length > 0) {
            a.f.p().t(LogType.CANBUS, " FinalCanbus.C_CHANGE_PANORAMA == ints[0] = " + iArr[0]);
            if (iArr[0] == 0) {
                z.k.s(227, -57, 1, 1);
            }
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
            int i8 = u0.b.s3;
            iArr[4] = i8 & 255;
            iArr[5] = (i8 >> 8) & 255;
            int i9 = u0.b.r3;
            iArr[6] = i9 & 255;
            iArr[7] = (i9 >> 8) & 255;
            int i10 = u0.b.t3;
            iArr[8] = i10 / 60;
            iArr[9] = i10 % 60;
        } else if (i3 != 4) {
            if (i3 == 8 || i3 == 9) {
                int i11 = u0.b.s3;
                iArr[4] = i11 & 255;
                iArr[5] = (i11 >> 8) & 255;
                int i12 = u0.b.r3;
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
                } else if (i2 == 2 || i2 == 3) {
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
                iArr[3] = 16;
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
        if (o1.s0.m("sys.carlink.type", 0) <= 0 || !o1.u.S("com.syu.carlink")) {
            return;
        }
        iArr[2] = 18;
        iArr[3] = 0;
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

    public final void d3(int i2) {
        switch (i2) {
            case 1:
            case 2:
            case 3:
            case 9:
                if (u0.b.D != 1) {
                    l0.b0.l0(24, 0);
                    l0.b0.l0(24, 1);
                } else if (i2 == 1) {
                    l0.b0.l0(75, 0);
                    l0.b0.l0(75, 1);
                } else if (i2 == 2) {
                    l0.b0.l0(74, 0);
                    l0.b0.l0(74, 1);
                } else if (i2 == 3) {
                    l0.b0.l0(74, 0);
                    l0.b0.l0(74, 1);
                } else if (i2 == 9) {
                    l0.b0.l0(74, 0);
                    l0.b0.l0(74, 1);
                }
                break;
            case 4:
                l0.b0.l0(22, 0);
                l0.b0.l0(22, 1);
                break;
            case 5:
            case 6:
            case 10:
                l0.b0.l0(54, 0);
                l0.b0.l0(54, 1);
                break;
            case 7:
                l0.b0.l0(76, 0);
                l0.b0.l0(76, 1);
                break;
            case 8:
                l0.b0.l0(53, 0);
                l0.b0.l0(53, 1);
                break;
            case 11:
                l0.b0.l0(5, 0);
                l0.b0.l0(5, 1);
                break;
            case 12:
                if (!o1.u.S("com.syu.carlink")) {
                    o1.u.g("com.syu.carlink");
                }
                break;
        }
    }

    public final void e3(int i2) {
        if (i2 == 1) {
            l0.b0.l0(18, 0);
            l0.b0.l0(18, 1);
        } else if (i2 == 2 || i2 == 3) {
            l0.b0.l0(26, 0);
            l0.b0.l0(26, 1);
        }
    }
}
