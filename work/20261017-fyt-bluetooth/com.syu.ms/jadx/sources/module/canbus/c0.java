package module.canbus;

import android.drm.DrmManagerClient;
import android.net.dhcp.DhcpPacket;
import android.os.Process;
import android.os.RemoteException;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.format.DateFormat;
import android.text.format.Time;
import android.util.Log;
import app.App;
import k0.lt;
import k0.mt;
import k0.nt;
import k0.qt;
import o1.o0;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class c0 extends lt implements o1.q {
    public static int A;
    public static int B;
    public static int C;
    public static int D;
    public static int E;
    public static int F;
    public static int G;
    public static int H;
    public static int I;
    public static int J;
    public static int K;
    public static int L;
    public static final int[] M = {0, 2, 4, 6, 8, 10, 12, 14, 16, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45};
    public static final int[] N = {6, 8, 10, 13, 15, 16, 17, 19, 22, 24, 26};
    public static final int[] O = {6, 7, 8, 9, 10, 12, 14, 15, 16, 17, 18, 20, 22, 23, 24, 25, 26};
    public static final o1.f<e> P = new o1.f<>();

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static int f13801z;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f13802b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f13803c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f13804d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f13805e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int[][] f13806f = {new int[]{129, 7}, new int[]{130, 8}, new int[]{131, 12}, new int[]{132, 13}, new int[]{133, 18}, new int[]{134, 26}, new int[]{136, 3}, new int[]{137, 4}, new int[]{138, 2}, new int[]{139, 2}, new int[]{160, 27}, new int[]{161, 28}, new int[]{197, 76}, new int[]{198, 1}, new int[]{199, 18}, new int[]{1, 0}, new int[]{2, 3}, new int[]{3, 4}, new int[]{6, 6}, new int[]{22, 29}, new int[]{36, 2}, new int[]{40, 18}, new int[]{54, 5}, new int[]{55, 16}, new int[]{56, 39}, new int[]{57, 1}, new int[]{74, 38}, new int[]{75, 21}, new int[]{43, 5}, new int[]{53, 1}, new int[]{47, 55}, new int[]{71, 74}, new int[]{72, 75}, new int[]{73, 15}, new int[]{91, 3}, new int[]{92, 4}};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f13807g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f13808h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f13809i = new a();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public o1.g0 f13810j = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f13811k = 1;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f13812l = new b();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public long f13813m = -1;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f13814n = -1;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int[] f13815o = {34, 204};

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f13816p = 0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public byte f13817q = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Runnable f13818r = new c();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final byte[] f13819s = new byte[1024];

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f13820t = 0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f13821u = 0;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f13822v = 0;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f13823w = 200;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public Runnable f13824x = new d();

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f13825y = 0;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            c0 c0Var = c0.this;
            c0Var.K3(c0Var.f13810j.b(1, 0));
            c0 c0Var2 = c0.this;
            c0Var2.f13807g = 0;
            c0Var2.f13808h = 0;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            long millis = time.toMillis(false) / 10000;
            boolean zIs24HourFormat = DateFormat.is24HourFormat(App.c());
            if (c0.this.f13813m == millis && c0.this.f13814n == zIs24HourFormat) {
                return;
            }
            c0.this.f13813m = millis;
            c0.this.f13814n = zIs24HourFormat ? 1 : 0;
            z.k.s(227, 10, -53, 0, (byte) time.hour, (byte) time.minute, 0, 0, zIs24HourFormat ? 1 : 0, (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN), (byte) (time.month + 1), (byte) time.monthDay, 2);
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            c0 c0Var = c0.this;
            byte b2 = (byte) (c0Var.f13817q + 1);
            c0Var.f13817q = b2;
            if (b2 > 5) {
                l0.b0.o0(c0Var.f13818r);
                c0.this.f13817q = (byte) 0;
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (nt.a()) {
                if (c0.this.f13823w > 100) {
                    c0.A3(c0.this);
                    if (c0.this.f13825y == c0.this.f13823w / 100) {
                        c0.this.f13825y = 0;
                        return;
                    }
                }
                int i2 = u0.b.f17306a0;
                int i3 = u0.b.f17320f;
                int i4 = y0.f.f18055i;
                if (i2 == 0 || i3 == 0 || i4 == 1) {
                    int unused = c0.B = c0.M[0];
                } else {
                    int unused2 = c0.B = c0.M[o0.a(y0.f.f18037c, 0, 36)];
                }
                if (c0.this.f7886a.f8307b == 1 && c0.A != c0.B) {
                    c0.this.O3();
                }
                if (c0.this.f7886a.f8309d == 1) {
                    if (c0.C != c0.F) {
                        c0.this.J3();
                    }
                    if (c0.D != c0.G) {
                        c0.this.M3();
                    }
                    if (c0.E != c0.H) {
                        c0.this.N3();
                    }
                }
                if (c0.this.f7886a.f8308c == 1) {
                    if (c0.I != c0.K) {
                        c0.this.L3();
                    }
                    if (c0.J != c0.L) {
                        c0.this.I3();
                    }
                }
            }
        }
    }

    public static class e implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f13830a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f13831b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f13832c = false;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f13833d;

        public e(int i2, int i3) {
            this.f13830a = i2;
            this.f13833d = i3;
        }

        public synchronized void a(int i2) {
            this.f13831b = i2;
            if (!this.f13832c) {
                this.f13832c = true;
                o1.k.a().postDelayed(this, this.f13833d);
            }
        }

        @Override // java.lang.Runnable
        public synchronized void run() {
            Log.d("soul", "mCmdId==" + this.f13830a + " , mValue ==" + String.format("%02X", Integer.valueOf(this.f13831b)));
            z.k.s(227, 2, 173, this.f13830a, this.f13831b);
            this.f13832c = false;
        }
    }

    public static /* synthetic */ int A3(c0 c0Var) {
        int i2 = c0Var.f13825y;
        c0Var.f13825y = i2 + 1;
        return i2;
    }

    public static void F3(int i2, int i3) {
        e eVarC = P.c(i2);
        if (eVarC != null) {
            eVarC.a(i3);
        }
    }

    public static void P3(byte[] bArr) {
        if (bArr == null || bArr.length <= 2) {
            return;
        }
        z.k.q(bArr);
    }

    public final void G3() {
        Z2(y0.f.f18037c);
        P2(null);
        R2(null);
    }

    public final void H3(byte[] bArr, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        byte b2 = bArr[i2];
        if (b2 != 85) {
            if (b2 != 87) {
                return;
            }
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        int i7 = i2 + 2;
        qt.y0(107, bArr[i7]);
        int i8 = i2 + 3;
        qt.y0(108, bArr[i8]);
        int i9 = i2 + 4;
        qt.y0(109, bArr[i9]);
        qt.y0(110, bArr[i2 + 5]);
        int i10 = i2 + 6;
        qt.y0(111, bArr[i10]);
        int i11 = i2 + 7;
        qt.y0(112, bArr[i11]);
        qt.y0(27, bArr[i7] & 255);
        qt.y0(28, bArr[i8] & 255);
        qt.y0(21, (bArr[i9] >> 0) & 15);
        switch ((bArr[i9] >> 4) & 15) {
            case 1:
                i4 = 1;
                i5 = 0;
                i6 = 0;
                break;
            case 2:
                i6 = 1;
                i4 = 1;
                i5 = 0;
                break;
            case 3:
                i6 = 1;
                i5 = 0;
                i4 = 0;
                break;
            case 4:
                i5 = 1;
                i6 = 1;
                i4 = 0;
                break;
            case 5:
                i5 = 1;
                i4 = 1;
                i6 = 0;
                break;
            case 6:
                i5 = 1;
                i6 = 0;
                i4 = i6;
                break;
            case 7:
                i5 = 1;
                i6 = i5;
                i4 = i6;
                break;
            default:
                i5 = 0;
                i6 = i5;
                i4 = i6;
                break;
        }
        qt.y0(18, i5);
        qt.y0(20, i6);
        qt.y0(19, i4);
        qt.y0(13, (bArr[i10] >> 0) & 1);
        qt.y0(11, (bArr[i10] >> 1) & 1);
        qt.y0(62, (bArr[i10] >> 2) & 1);
        qt.y0(65, (bArr[i10] >> 5) & 1);
        qt.y0(16, (bArr[i10] >> 6) & 1);
        qt.y0(12, (bArr[i11] >> 0) & 3);
    }

    public final synchronized void I3() {
        if (this.f7886a.f8308c == 0) {
            return;
        }
        F3(2, L);
    }

    public final synchronized void J3() {
        if (this.f7886a.f8309d == 0) {
            return;
        }
        F3(4, F);
    }

    public final void K3(int i2) {
        if (i2 < 0) {
            i2 = 0;
        } else if (i2 > 1) {
            i2 = 1;
        }
        f13801z = i2;
        qt.y0(105, i2);
        int iB = this.f13810j.b(1, 0);
        int i3 = f13801z;
        if (iB != i3) {
            this.f13810j.g(1, i3);
        }
    }

    public final synchronized void L3() {
        if (this.f7886a.f8308c == 0) {
            return;
        }
        F3(3, K);
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    public final synchronized void M3() {
        if (this.f7886a.f8309d == 0) {
            return;
        }
        F3(5, G);
    }

    public final synchronized void N3() {
        if (this.f7886a.f8309d == 0) {
            return;
        }
        F3(6, H);
    }

    @Override // k0.lt
    public void O2(int[] iArr) {
        if (iArr == null || iArr.length < 2) {
            return;
        }
        switch (iArr[0]) {
            case 33:
                if (iArr[1] == 0) {
                    if ((nt.f8645g[109] & 15) > 0) {
                        a3(1);
                    }
                } else if ((nt.f8645g[109] & 15) == 0) {
                    a3(20);
                }
                break;
            case 34:
                if (iArr[1] == 0) {
                    if (((nt.f8645g[111] >> 1) & 1) == 1) {
                        a3(16);
                    }
                } else if (((nt.f8645g[111] >> 1) & 1) == 0) {
                    a3(16);
                }
                break;
            case 35:
                if (iArr[1] == 0) {
                    if ((nt.f8645g[111] & 1) == 1) {
                        a3(2);
                    }
                } else if ((nt.f8645g[111] & 1) == 0) {
                    a3(2);
                }
                break;
            case 36:
                if (iArr[1] == 0) {
                    if (((nt.f8645g[111] >> 7) & 1) == 1) {
                        a3(3);
                    }
                } else if (((nt.f8645g[111] >> 7) & 1) == 0) {
                    a3(3);
                }
                break;
            case 37:
                if (iArr[1] == 0) {
                    if (((nt.f8645g[111] >> 6) & 1) == 1) {
                        a3(4);
                    }
                } else if (((nt.f8645g[111] >> 6) & 1) == 0) {
                    a3(4);
                }
                break;
            case 38:
                if (iArr[1] == 0) {
                    if (((nt.f8645g[112] >> 1) & 1) == 0) {
                        a3(35);
                    }
                    break;
                } else if (iArr[1] == 1 && ((nt.f8645g[112] >> 1) & 1) == 1) {
                    a3(35);
                    break;
                }
                break;
            case 39:
                if (iArr[1] != -1) {
                    a3(21);
                } else {
                    a3(20);
                }
                break;
            case 41:
                if (iArr[1] == 0) {
                    a3(10);
                } else {
                    a3(9);
                }
                break;
            case 42:
                if (iArr[1] == 0) {
                    a3(12);
                } else {
                    a3(11);
                }
                break;
        }
    }

    public final synchronized void O3() {
        if (this.f7886a.f8307b == 0) {
            return;
        }
        F3(1, B);
    }

    @Override // k0.lt
    public void P2(int[] iArr) {
        if (nt.a() && this.f7886a.f8309d == 1) {
            int[] iArr2 = N;
            int[] iArr3 = y0.f.f18038c0;
            F = iArr2[o0.a(iArr3[0] >> 1, 0, 10)];
            G = iArr2[o0.a(iArr3[1] >> 1, 0, 10)];
            H = iArr2[o0.a(iArr3[2] >> 1, 0, 10)];
        }
    }

    @Override // k0.lt
    public void R2(int[] iArr) {
        if (nt.a() && this.f7886a.f8308c == 1) {
            int[] iArr2 = O;
            K = iArr2[o0.a(y0.f.f18061l, 0, 16)];
            L = iArr2[o0.a(y0.f.f18057j, 0, 16)];
        }
    }

    @Override // k0.lt
    public void S2() {
        this.f13810j.a();
        if (nt.a()) {
            qt.z(l0.g0.f13049e);
            w0.e.f17815a.a(l0.g0.f13049e, 1);
            w0.e.f17819e.a(l0.g0.f13049e, 1);
            u0.c.f17386m.a(this.f13809i, 1);
        }
        qt.z(this.f13812l);
        mt mtVar = this.f7886a;
        mtVar.f8310e = 0;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8320o = 0;
        switch (nt.f8637c) {
            case 0:
                z.k.s(227, 2, 36, 40, 9);
                break;
            case 1:
                z.k.s(227, 2, 36, 38, 9);
                break;
            case 2:
                z.k.s(227, 2, 36, 36, 9);
                break;
            case 3:
                mtVar.f8311f = 1;
                mtVar.f8312g = 1;
                mtVar.f8307b = 1;
                mtVar.f8308c = 1;
                mtVar.f8309d = 1;
                z.k.s(227, 2, 36, 36, 9);
                if (nt.a()) {
                    init();
                    l0.b0.a(this.f13824x);
                    G3();
                }
                break;
            case 4:
                if (App.c().getResources().getConfiguration().orientation != 1) {
                    this.f7886a.f8306a = null;
                } else {
                    this.f7886a.f8306a = new String[]{"com.syu.canbus"};
                }
                break;
            case 5:
                z.k.s(227, 2, 36, 44, 9);
                mt mtVar2 = this.f7886a;
                mtVar2.f8310e = 1;
                mtVar2.f8311f = 1;
                mtVar2.f8312g = 1;
                mtVar2.f8307b = 0;
                mtVar2.f8308c = 0;
                mtVar2.f8309d = 0;
                break;
            case 6:
                z.k.s(227, 2, 36, 44, 9);
                mt mtVar3 = this.f7886a;
                mtVar3.f8306a = new String[]{"com.syu.canbus"};
                mtVar3.f8310e = 1;
                mtVar3.f8311f = 1;
                mtVar3.f8312g = 1;
                mtVar3.f8307b = 1;
                mtVar3.f8308c = 1;
                mtVar3.f8309d = 1;
                if (nt.a()) {
                    init();
                    l0.b0.a(this.f13824x);
                    G3();
                }
                break;
            case 7:
                z.k.s(227, 2, 36, 42, 9);
                mt mtVar4 = this.f7886a;
                mtVar4.f8306a = null;
                mtVar4.f8310e = 1;
                mtVar4.f8311f = 1;
                mtVar4.f8312g = 1;
                mtVar4.f8307b = 0;
                mtVar4.f8308c = 0;
                mtVar4.f8309d = 0;
                break;
            case 8:
                z.k.s(227, 2, 36, 42, 9);
                mt mtVar5 = this.f7886a;
                mtVar5.f8306a = null;
                mtVar5.f8310e = 1;
                mtVar5.f8311f = 1;
                mtVar5.f8312g = 1;
                mtVar5.f8307b = 1;
                mtVar5.f8308c = 1;
                mtVar5.f8309d = 1;
                if (nt.a()) {
                    init();
                    l0.b0.a(this.f13824x);
                    G3();
                }
                break;
            case 9:
                z.k.s(227, 2, 36, 46, 9);
                mt mtVar6 = this.f7886a;
                mtVar6.f8306a = null;
                mtVar6.f8310e = 1;
                mtVar6.f8311f = 1;
                mtVar6.f8312g = 1;
                mtVar6.f8307b = 0;
                mtVar6.f8308c = 0;
                mtVar6.f8309d = 0;
                break;
            case 10:
                z.k.s(227, 2, 36, 45, 9);
                mt mtVar7 = this.f7886a;
                mtVar7.f8306a = null;
                mtVar7.f8310e = 1;
                mtVar7.f8311f = 1;
                mtVar7.f8312g = 1;
                mtVar7.f8307b = 1;
                mtVar7.f8308c = 1;
                mtVar7.f8309d = 1;
                if (nt.a()) {
                    init();
                    l0.b0.a(this.f13824x);
                    G3();
                }
                break;
            case 11:
                z.k.s(227, 2, 36, 47, 9);
                mt mtVar8 = this.f7886a;
                mtVar8.f8306a = null;
                mtVar8.f8310e = 1;
                mtVar8.f8311f = 1;
                mtVar8.f8312g = 1;
                mtVar8.f8307b = 0;
                mtVar8.f8308c = 0;
                mtVar8.f8309d = 0;
                break;
            case 12:
                z.k.s(227, 2, 36, 48, 9);
                mt mtVar9 = this.f7886a;
                mtVar9.f8306a = null;
                mtVar9.f8310e = 1;
                mtVar9.f8311f = 1;
                mtVar9.f8312g = 1;
                mtVar9.f8307b = 0;
                mtVar9.f8308c = 0;
                mtVar9.f8309d = 0;
                break;
            case 13:
                z.k.s(227, 2, 36, 49, 9);
                mt mtVar10 = this.f7886a;
                mtVar10.f8306a = new String[]{"com.syu.canbus"};
                mtVar10.f8310e = 1;
                mtVar10.f8311f = 1;
                mtVar10.f8312g = 1;
                mtVar10.f8307b = 0;
                mtVar10.f8308c = 0;
                mtVar10.f8309d = 0;
                break;
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
        int i8;
        int i9;
        int i10;
        int i11;
        byte b3 = bArr[i2 + 1];
        if (b3 == -90) {
            if (nt.a()) {
                byte b4 = bArr[i2 + 2];
                byte b5 = bArr[i2 + 3];
                byte b6 = bArr[i2 + 4];
                byte b7 = bArr[i2 + 5];
                byte b8 = bArr[i2 + 6];
                byte b9 = bArr[i2 + 7];
                A = o0.a(b4 & 255, 0, 45);
                I = o0.a(b6 & 255, 6, 26);
                J = o0.a(b5 & 255, 6, 26);
                C = o0.a(b7 & 255, 6, 26);
                D = o0.a(b8 & 255, 6, 26);
                E = o0.a(b9 & 255, 6, 26);
                return;
            }
            return;
        }
        if (b3 == -23) {
            byte b10 = bArr[i2 + 2];
            qt.y0(102, (b10 >> 6) & 3);
            qt.y0(101, (b10 >> 4) & 3);
            int i12 = i2 + 3;
            qt.y0(100, (bArr[i12] >> 5) & 1);
            qt.y0(99, (bArr[i12] >> 4) & 1);
            qt.y0(Process.MEDIA_UID, b10 & 3);
            if (nt.a()) {
                if (((bArr[i12] >> 6) & 1) == 1) {
                    qt.a(1);
                    return;
                } else {
                    qt.a(0);
                    return;
                }
            }
            return;
        }
        if (b3 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b3 == 65) {
            if (nt.a()) {
                u0.d.R2(l0.c0.J1(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.J1(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.J1(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.J1(bArr[i2 + 5] & 255));
                u0.d.D2(l0.c0.J1(bArr[i2 + 6] & 255));
                u0.d.E2(l0.c0.J1(bArr[i2 + 7] & 255));
                u0.d.F2(l0.c0.J1(bArr[i2 + 8] & 255));
                u0.d.G2(l0.c0.J1(bArr[i2 + 9] & 255));
                return;
            }
            return;
        }
        if (b3 == 17) {
            if (nt.a()) {
                byte b11 = bArr[i2 + 5];
                this.f13804d = (bArr[i2 + 4] & 255) | 128;
                int i13 = 0;
                while (true) {
                    iArr = this.f13806f;
                    if (i13 >= iArr.length) {
                        break;
                    }
                    int i14 = this.f13804d;
                    if (i14 == iArr[i13][0]) {
                        if (i14 == 0) {
                            break;
                        }
                        this.f13802b = i13;
                        break;
                    }
                    i13++;
                }
                if ((b11 & 255) != 0) {
                    if (i13 >= iArr.length || (b2 = this.f13817q) != 0) {
                        return;
                    }
                    this.f13817q = (byte) (b2 + 1);
                    l0.b0.l0(iArr[i13][1], 0);
                    l0.b0.a(this.f13818r);
                    return;
                }
                int i15 = this.f13802b;
                if (i15 < iArr.length) {
                    i4 = 255;
                    if (i15 != 255) {
                        l0.b0.l0(iArr[i15][1], 1);
                        l0.b0.o0(this.f13818r);
                        this.f13817q = (byte) 0;
                    }
                } else {
                    i4 = 255;
                }
                this.f13802b = i4;
                return;
            }
            return;
        }
        if (b3 == 18) {
            byte b12 = bArr[i2 + 4];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(2, (b12 >> 7) & 1);
                qt.y0(1, (b12 >> 6) & 1);
            } else {
                qt.y0(1, (b12 >> 7) & 1);
                qt.y0(2, (b12 >> 6) & 1);
            }
            qt.y0(3, (b12 >> 5) & 1);
            qt.y0(4, (b12 >> 4) & 1);
            qt.y0(5, (b12 >> 3) & 1);
            qt.y0(0, (b12 >> 2) & 1);
            return;
        }
        if (b3 == 33) {
            if (nt.a()) {
                this.f13805e = bArr[i2 + 2] & 255;
                byte b13 = bArr[i2 + 3];
                int i16 = 0;
                while (true) {
                    iArr2 = this.f13806f;
                    if (i16 >= iArr2.length) {
                        break;
                    }
                    int i17 = this.f13805e;
                    if (i17 == iArr2[i16][0]) {
                        if (i17 == 0) {
                            break;
                        }
                        this.f13803c = i16;
                        break;
                    }
                    i16++;
                }
                if ((b13 & 255) != 0) {
                    if (i16 < iArr2.length) {
                        l0.b0.l0(iArr2[i16][1], 0);
                        return;
                    }
                    return;
                }
                int i18 = this.f13803c;
                if (i18 < iArr2.length) {
                    i5 = 255;
                    if (i18 != 255) {
                        l0.b0.l0(iArr2[i18][1], 1);
                    }
                } else {
                    i5 = 255;
                }
                this.f13803c = i5;
                return;
            }
            return;
        }
        if (b3 == 34) {
            if (nt.a()) {
                byte b14 = bArr[i2 + 2];
                byte b15 = bArr[i2 + 3];
                if (b14 == 1) {
                    int i19 = this.f13807g;
                    if (b15 != i19) {
                        if (b15 > i19) {
                            for (int i20 = 0; i20 < b15 - this.f13807g; i20++) {
                                l0.b0.l0(7, 0);
                            }
                            l0.b0.l0(7, 1);
                        } else if (b15 < i19) {
                            for (int i21 = 0; i21 < this.f13807g - b15; i21++) {
                                l0.b0.l0(8, 0);
                            }
                            l0.b0.l0(8, 1);
                        }
                        this.f13807g = b15;
                        return;
                    }
                    return;
                }
                if ((b14 == 2 || b14 == 3) && b15 != (i6 = this.f13808h)) {
                    if (b15 > i6) {
                        for (int i22 = 0; i22 < b15 - this.f13808h; i22++) {
                            l0.b0.l0(31, 0);
                        }
                        l0.b0.l0(31, 1);
                    } else if (b15 < i6) {
                        for (int i23 = 0; i23 < this.f13808h - b15; i23++) {
                            l0.b0.l0(30, 0);
                        }
                        l0.b0.l0(30, 1);
                    }
                    this.f13808h = b15;
                    return;
                }
                return;
            }
            return;
        }
        if (b3 != 49) {
            if (b3 != 50) {
                return;
            }
            int i24 = i2 + 15;
            qt.y0(103, 7 & (bArr[i24] >> 5));
            qt.y0(104, (bArr[i24] >> 3) & 3);
            return;
        }
        byte b16 = bArr[i2 + 2];
        byte b17 = bArr[i2 + 3];
        byte b18 = bArr[i2 + 4];
        byte b19 = bArr[i2 + 6];
        byte b20 = bArr[i2 + 7];
        qt.y0(10, (b16 >> 6) & 1);
        qt.y0(13, (b16 >> 3) & 1);
        qt.y0(62, (b16 >> 2) & 1);
        qt.y0(11, (b16 >> 0) & 3);
        int i25 = nt.f8633a;
        if (i25 == 786826 || i25 == 852362) {
            qt.y0(12, (b17 >> 4) & 1);
            qt.y0(76, (b17 >> 5) & 1);
        }
        qt.y0(65, (b18 >> 4) & 1);
        if (b19 == 1) {
            i7 = 0;
            i8 = 0;
            i9 = 0;
            i10 = 0;
            i11 = 1;
        } else if (b19 == 2) {
            i8 = 0;
            i9 = 0;
            i10 = 0;
            i11 = 0;
            i7 = 1;
        } else if (b19 != 3) {
            if (b19 == 5) {
                i7 = 0;
                i8 = 0;
                i11 = 0;
                i9 = 1;
            } else if (b19 != 6) {
                switch (b19) {
                    case 11:
                        i7 = 0;
                        i9 = 0;
                        i10 = 0;
                        i11 = 0;
                        i8 = 1;
                        break;
                    case 12:
                        i7 = 0;
                        i10 = 0;
                        i11 = 0;
                        i8 = 1;
                        i9 = 1;
                        break;
                    case 13:
                        i7 = 0;
                        i9 = 0;
                        i11 = 0;
                        i8 = 1;
                        i10 = 1;
                        break;
                    case 14:
                        i7 = 0;
                        i11 = 0;
                        i8 = 1;
                        i9 = 1;
                        break;
                    default:
                        i7 = 0;
                        i8 = 0;
                        i9 = 0;
                        i10 = 0;
                        i11 = 0;
                        break;
                }
            } else {
                i7 = 0;
                i8 = 0;
                i9 = 0;
                i11 = 0;
                i10 = 1;
            }
            i10 = i9;
        } else {
            i7 = 0;
            i8 = 0;
            i10 = 0;
            i11 = 0;
            i9 = 1;
        }
        qt.y0(15, i7);
        qt.y0(18, i8);
        qt.y0(20, i9);
        qt.y0(19, i10);
        qt.y0(49, i11);
        qt.y0(21, b20);
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            int i26 = bArr[i2 + 9] & 255;
            if (i26 == 254) {
                qt.y0(27, -2);
            } else if (i26 != 255) {
                qt.y0(27, i26 * 5);
            } else {
                qt.y0(27, -3);
            }
            int i27 = bArr[i2 + 8] & 255;
            if (i27 == 254) {
                qt.y0(28, -2);
            } else if (i27 != 255) {
                qt.y0(28, i27 * 5);
            } else {
                qt.y0(28, -3);
            }
        } else {
            int i28 = bArr[i2 + 8] & 255;
            if (i28 == 254) {
                qt.y0(27, -2);
            } else if (i28 != 255) {
                qt.y0(27, i28 * 5);
            } else {
                qt.y0(27, -3);
            }
            int i29 = bArr[i2 + 9] & 255;
            if (i29 == 254) {
                qt.y0(28, -2);
            } else if (i29 != 255) {
                qt.y0(28, i29 * 5);
            } else {
                qt.y0(28, -3);
            }
        }
        if (nt.a()) {
            int i30 = bArr[i2 + 13] & 255;
            if (i30 == 0) {
                u0.d.A3(0);
            } else {
                u0.d.A3((i30 * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
            }
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f13810j.j();
        qt.q0(this.f13812l);
        qt.q0(l0.g0.f13049e);
        u0.c.f17386m.d(this.f13809i);
        w0.e.f17815a.d(l0.g0.f13049e);
        w0.e.f17819e.d(l0.g0.f13049e);
        l0.b0.o0(this.f13824x);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 108) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            if (nt.f8633a == 262538) {
                P3(new byte[]{DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.f13815o[this.f13816p % 2], 37, 1, -86});
                P3(new byte[]{DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.f13815o[this.f13816p % 2], 37, 1, -86});
                P3(new byte[]{DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.f13815o[this.f13816p % 2], 37, 1, -86});
            }
            int i3 = this.f13816p + 1;
            this.f13816p = i3;
            this.f13816p = i3 % 2;
            return;
        }
        if (i2 == 1) {
            if (iArr == null || iArr.length < 2) {
                return;
            }
            z.k.s(227, 2, -7, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 2) {
            K3(iArr[0]);
        } else if (i2 == 1005 && iArr != null && iArr.length > 0) {
            z.k.s(227, 2, -7, 1, iArr[0]);
        }
    }

    @Override // k0.lt
    public void Z2(int i2) {
        if (nt.a() && this.f7886a.f8307b == 1) {
            B = M[o0.a(i2, 0, 36)];
        }
    }

    public final void a3(int i2) {
        try {
            Z0(0, new int[]{i2}, null, null);
        } catch (RemoteException e2) {
            e2.printStackTrace();
        }
    }

    @Override // o1.q
    public void b(byte[] bArr) {
        int i2;
        if (bArr != null) {
            a.f.p().t(LogType.CANBUS, "OBD Rcv--> " + o1.b0.d(bArr, 0, bArr.length));
        }
        if (bArr == null || bArr.length <= 0) {
            return;
        }
        if (this.f13820t + bArr.length > 1024) {
            this.f13820t = 0;
            this.f13821u = 0;
            this.f13822v = 0;
        }
        System.arraycopy(bArr, 0, this.f13819s, this.f13820t, bArr.length);
        int length = this.f13820t + bArr.length;
        this.f13820t = length;
        int i3 = this.f13822v;
        if (i3 != 0) {
            if (i3 >= length) {
                return;
            }
            byte b2 = this.f13819s[0];
            for (int i4 = 2; i4 < this.f13822v; i4++) {
                byte b3 = this.f13819s[i4];
            }
            byte[] bArr2 = this.f13819s;
            H3(bArr2, 0, bArr2[1] + 2);
            this.f13821u = this.f13822v + 1;
            this.f13822v = 0;
        }
        int i5 = this.f13820t - 2;
        while (true) {
            i2 = this.f13821u;
            if (i2 >= i5) {
                break;
            }
            byte[] bArr3 = this.f13819s;
            if (bArr3[i2] == 85) {
                if (this.f13822v > 512) {
                    this.f13822v = 0;
                } else {
                    byte b4 = bArr3[i2 + 1];
                    this.f13822v = b4;
                    if (b4 >= this.f13820t) {
                        this.f13822v = b4 - i2;
                        break;
                    }
                    byte b5 = bArr3[i2 + 1];
                    for (int i6 = i2 + 2; i6 < this.f13822v; i6++) {
                        byte b6 = this.f13819s[i6];
                    }
                    byte[] bArr4 = this.f13819s;
                    int i7 = this.f13821u;
                    H3(bArr4, i7, bArr4[i7 + 1] + 2);
                    this.f13821u = this.f13822v;
                    this.f13822v = 0;
                }
            }
            this.f13821u++;
        }
        if (i2 != 0) {
            int i8 = this.f13820t - i2;
            this.f13820t = i8;
            if (i8 != 0) {
                byte[] bArr5 = this.f13819s;
                System.arraycopy(bArr5, i2, bArr5, 0, i8);
            }
            this.f13821u = 0;
        }
    }

    public final void init() {
        o1.f<e> fVar = P;
        fVar.f(3, new e(3, 100));
        fVar.f(2, new e(2, 100));
        fVar.f(4, new e(4, 100));
        fVar.f(6, new e(6, 100));
        fVar.f(5, new e(5, 100));
        fVar.f(1, new e(1, 100));
    }
}
