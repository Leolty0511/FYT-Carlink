package k0;

import android.drm.DrmManagerClient;
import android.os.Process;
import android.os.SystemProperties;
import android.text.Spanned;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class lq extends lt implements o1.q {
    public static int I = 6;
    public static int J = 6;
    public static int K = 6;
    public static int L = 6;
    public static int M = 6;
    public static int N = 10;
    public static int O;
    public static int P;
    public static int Q;
    public static int R;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f7826b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f7829e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f7827c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f7828d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 3}, new int[]{6, 4}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 18}, new int[]{10, 26}, new int[]{11, 6}, new int[]{12, 29}, new int[]{13, 0}, new int[]{14, 34}, new int[]{15, 35}, new int[]{16, 32}, new int[]{17, 33}, new int[]{18, 16}, new int[]{19, 36}, new int[]{20, 37}, new int[]{21, 12}, new int[]{32, 54}, new int[]{33, 5}, new int[]{34, 9}, new int[]{35, 1}, new int[]{36, 2}, new int[]{240, -1}, new int[]{i.a.Theme_actionModeShareDrawable, -1}, new int[]{i.a.Theme_actionModeFindDrawable, -1}, new int[]{i.a.Theme_actionModeWebSearchDrawable, -1}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f7830f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f7831g = {new int[]{10, 7}, new int[]{11, 8}, new int[]{12, 3}, new int[]{13, 4}, new int[]{14, 12}, new int[]{15, 29}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final byte[] f7832h = new byte[1024];

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f7833i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f7834j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f7835k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f7836l = new a();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public long f7837m = -1;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f7838n = -1;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public float f7839o = 0.0f;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f7840p = 255;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f7841q = 255;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Runnable f7842r = new b();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public Runnable f7843s = new c();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f7844t = 0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public o1.g0 f7845u = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final int f7846v = 1;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final int f7847w = 2;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final int f7848x = 3;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final int f7849y = 4;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final int f7850z = 5;
    public final int A = 6;
    public final int B = 7;
    public final int C = 8;
    public final int D = 9;
    public final int E = 10;
    public int F = 0;
    public Runnable G = new d();
    public Runnable H = new e();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            long millis = time.toMillis(false) / 6000;
            byte b2 = (byte) (!DateFormat.is24HourFormat(App.c()) ? 1 : 0);
            if (lq.this.f7838n != b2) {
                lq.this.f7838n = b2;
                z.k.s(227, 198, 2, 0, b2);
            }
            if (lq.this.f7837m != millis) {
                lq.this.f7837m = millis;
                z.k.s(227, 198, 6, 1, time.year + DrmManagerClient.ERROR_UNKNOWN, time.month + 1, time.monthDay, time.hour, time.minute);
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        /* JADX WARN: Code duplicated, block: B:56:0x01b5  */
        /* JADX WARN: Code duplicated, block: B:58:? A[RETURN, SYNTHETIC] */
        @Override // java.lang.Runnable
        public void run() {
            char c2;
            lq.this.f7839o = u0.b.f17359s0;
            o1.b0.i("GPS: " + u0.b.f17359s0);
            if (lq.this.f7839o > 360.0f) {
                lq.h3(lq.this, 360.0f);
            }
            if (lq.this.f7839o < 0.0f) {
                lq.h3(lq.this, 360.0f);
                lq lqVar = lq.this;
                lqVar.f7839o = 360.0f - Math.abs(lqVar.f7839o);
            }
            int i2 = (int) lq.this.f7839o;
            z.k.s(227, -96, 3, 15, (byte) (i2 & 255), (byte) ((i2 >> 8) & 255));
            if ((lq.this.f7839o <= 22.5d && lq.this.f7839o >= 0.0f) || (lq.this.f7839o >= 337.5d && lq.this.f7839o <= 360.0f)) {
                lq.this.f7841q = 1;
            } else if (lq.this.f7839o > 22.5d && lq.this.f7839o < 67.5d) {
                lq.this.f7841q = 2;
            } else if (lq.this.f7839o >= 67.5d && lq.this.f7839o <= 112.5d) {
                lq.this.f7841q = 3;
            } else if (lq.this.f7839o > 112.5d && lq.this.f7839o < 157.5d) {
                lq.this.f7841q = 4;
            } else if (lq.this.f7839o >= 157.5d && lq.this.f7839o <= 202.5d) {
                lq.this.f7841q = 5;
            } else if (lq.this.f7839o > 202.5d && lq.this.f7839o < 247.5d) {
                lq.this.f7841q = 6;
            } else {
                if (lq.this.f7839o < 247.5d || lq.this.f7839o > 292.5d) {
                    if (lq.this.f7839o <= 292.5d || lq.this.f7839o >= 337.5d) {
                        c2 = 0;
                        lq.this.f7841q = 0;
                    } else {
                        lq.this.f7841q = 8;
                    }
                    if (lq.this.f7841q != lq.this.f7840p) {
                        int[] iArr = new int[5];
                        iArr[c2] = 227;
                        iArr[1] = -96;
                        iArr[2] = 2;
                        iArr[3] = 14;
                        iArr[4] = lq.this.f7841q;
                        z.k.s(iArr);
                        lq lqVar2 = lq.this;
                        lqVar2.f7840p = lqVar2.f7841q;
                    }
                }
                lq.this.f7841q = 7;
            }
            c2 = 0;
            if (lq.this.f7841q != lq.this.f7840p) {
                int[] iArr2 = new int[5];
                iArr2[c2] = 227;
                iArr2[1] = -96;
                iArr2[2] = 2;
                iArr2[3] = 14;
                iArr2[4] = lq.this.f7841q;
                z.k.s(iArr2);
                lq lqVar3 = lq.this;
                lqVar3.f7840p = lqVar3.f7841q;
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a.f.p().t(LogType.CANBUS, "DataRadio.sBand  == " + w0.d.f17796h);
            l0.c0.H();
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(lq.this.H);
            lq.this.F = 5;
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            lq lqVar = lq.this;
            int i2 = lqVar.F - 1;
            lqVar.F = i2;
            if (i2 <= 0) {
                l0.b0.p0(lqVar.H);
                lq.this.F = 5;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            lq lqVar2 = lq.this;
            lqVar2.a3(lqVar2.f7845u.b(1, 6), lq.this.f7845u.b(2, 6), lq.this.f7845u.b(3, 6), lq.this.f7845u.b(4, 6), lq.this.f7845u.b(5, 6), lq.this.f7845u.b(6, 10), lq.this.f7845u.b(7, 0), lq.this.f7845u.b(8, 0), lq.this.f7845u.b(9, 0), lq.this.f7845u.b(10, 0));
            if (u0.b.f17306a0 == 1) {
                switch (nt.f8633a) {
                    case 11076038:
                    case 16581061:
                        z.k.s(227, 132, 2, 11, 2);
                        break;
                    case 11141574:
                    case 16646597:
                        z.k.s(227, 132, 2, 11, 3);
                        break;
                    case 11207110:
                    case 16449989:
                        z.k.s(227, 132, 2, 11, 0);
                        break;
                    case 11272646:
                    case 16515525:
                        z.k.s(227, 132, 2, 11, 1);
                        break;
                }
            }
        }
    }

    public static /* synthetic */ float h3(lq lqVar, float f2) {
        float f3 = lqVar.f7839o % f2;
        lqVar.f7839o = f3;
        return f3;
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        this.f7845u.a();
        u0.c.f17386m.a(this.G, 1);
        o1.h.f16865a.a(this.f7842r, 1);
        w0.e.f17815a.a(this.f7843s, 1);
        w0.e.f17819e.a(this.f7843s, 1);
        u0.c.f17374a.a(this.f7843s, 1);
        u0.c.f17392s.a(this.f7843s, 1);
        qt.z(this.f7836l);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 0;
        mtVar.f8312g = 0;
        mtVar.f8314i = 0;
        mtVar.f8315j = 0;
        mtVar.f8320o = 0;
        mtVar.f8317l = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int[][] iArr2;
        byte b2 = bArr[i2];
        if (b2 == 32) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f7830f = b3 & 255;
            int i4 = 0;
            while (true) {
                iArr = this.f7831g;
                if (i4 >= iArr.length) {
                    break;
                }
                int i5 = this.f7830f;
                if (i5 == iArr[i4][0]) {
                    if (i5 == 0) {
                        break;
                    }
                    this.f7829e = i4;
                    break;
                }
                i4++;
            }
            int i6 = b4 & 255;
            if (i6 == 1) {
                if (i4 < iArr.length) {
                    l0.b0.l0(iArr[i4][1], 0);
                    return;
                }
                return;
            } else {
                if (i6 == 0) {
                    int i7 = this.f7829e;
                    if (i7 < iArr.length && i7 != 255) {
                        l0.b0.l0(iArr[i7][1], 1);
                    }
                    this.f7829e = 255;
                }
                return;
            }
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 58) {
            int i8 = i2 + 5;
            if ((bArr[i8] & 128) != 0) {
                qt.i(bArr[i8] & 255, 255, true, 100);
                return;
            } else {
                qt.i(bArr[i8] & 255, 0, true, 100);
                return;
            }
        }
        switch (b2) {
            case 53:
                byte b5 = bArr[i2 + 2];
                byte b6 = bArr[i2 + 3];
                this.f7827c = b5 & 255;
                int i9 = 0;
                while (true) {
                    iArr2 = this.f7828d;
                    if (i9 < iArr2.length) {
                        int i10 = this.f7827c;
                        if (i10 != iArr2[i9][0]) {
                            i9++;
                        } else if (i10 != 0) {
                            this.f7826b = i9;
                        }
                    }
                }
                switch (this.f7827c) {
                    case 240:
                        for (int i11 = 0; i11 < (b6 & 255); i11++) {
                            l0.b0.l0(7, 0);
                        }
                        l0.b0.l0(7, 1);
                        break;
                    case i.a.Theme_actionModeShareDrawable /* 241 */:
                        for (int i12 = 0; i12 < (b6 & 255); i12++) {
                            l0.b0.l0(8, 0);
                        }
                        l0.b0.l0(8, 1);
                        break;
                    case i.a.Theme_actionModeFindDrawable /* 242 */:
                        for (int i13 = 0; i13 < (b6 & 255); i13++) {
                            l0.b0.l0(31, 0);
                        }
                        l0.b0.l0(31, 1);
                        break;
                    case i.a.Theme_actionModeWebSearchDrawable /* 243 */:
                        for (int i14 = 0; i14 < (b6 & 255); i14++) {
                            l0.b0.l0(30, 0);
                        }
                        l0.b0.l0(30, 1);
                        break;
                    default:
                        int i15 = b6 & 255;
                        if (i15 == 1) {
                            if (i9 < iArr2.length) {
                                l0.b0.l0(iArr2[i9][1], 0);
                            }
                        } else if (i15 == 0) {
                            int i16 = this.f7826b;
                            if (i16 < iArr2.length && i16 != 255) {
                                l0.b0.l0(iArr2[i16][1], 1);
                            }
                            this.f7826b = 255;
                        }
                        break;
                }
                break;
            case 54:
                byte b7 = bArr[i2 + 3];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(2, (b7 >> 4) & 1);
                    qt.y0(1, (b7 >> 5) & 1);
                } else {
                    qt.y0(2, (b7 >> 5) & 1);
                    qt.y0(1, (b7 >> 4) & 1);
                }
                qt.y0(4, (b7 >> 7) & 1);
                qt.y0(3, (b7 >> 6) & 1);
                qt.y0(5, (b7 >> 2) & 1);
                qt.y0(0, (b7 >> 3) & 1);
                if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                    int i17 = i2 + 4;
                    l0.c0.b((bArr[i17] >> 0) & 1, (bArr[i17] >> 1) & 1, 0);
                } else {
                    int i18 = i2 + 4;
                    l0.c0.a((bArr[i18] >> 0) & 1, (bArr[i18] >> 1) & 1, 0);
                }
                break;
            case 55:
                int i19 = i2 + 4;
                u0.d.R2(l0.c0.E0((bArr[i19] >> 0) & 15));
                u0.d.S2(l0.c0.E0((bArr[i19] >> 4) & 15));
                int i20 = i2 + 5;
                u0.d.T2(l0.c0.E0((bArr[i20] >> 0) & 15));
                u0.d.U2(l0.c0.E0((bArr[i20] >> 4) & 15));
                int i21 = i2 + 2;
                int i22 = (bArr[i21] >> 0) & 15;
                int i23 = (bArr[i21] >> 4) & 15;
                int i24 = i2 + 3;
                int i25 = (bArr[i24] >> 0) & 15;
                int i26 = (bArr[i24] >> 4) & 15;
                if (i22 == 0 && i23 == 0 && i25 == 0 && i26 == 0) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i22 || l0.c0.f13014h != i23 || l0.c0.f13015i != i25 || l0.c0.f13016j != i26) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i22;
                l0.c0.f13014h = i23;
                l0.c0.f13015i = i25;
                l0.c0.f13016j = i26;
                u0.d.D2(l0.c0.E0(i22));
                u0.d.E2(l0.c0.E0(i23));
                u0.d.F2(l0.c0.E0(i25));
                u0.d.G2(l0.c0.E0(i26));
                break;
            default:
                switch (b2) {
                    case 64:
                        int i27 = i2 + 2;
                        qt.y0(99, (bArr[i27] >> 0) & 15);
                        qt.y0(100, (bArr[i27] >> 4) & 1);
                        qt.y0(101, (bArr[i27] >> 5) & 1);
                        qt.y0(102, (bArr[i27] >> 6) & 1);
                        qt.y0(103, (bArr[i27] >> 7) & 1);
                        int i28 = i2 + 3;
                        qt.y0(104, (bArr[i28] >> 0) & 1);
                        qt.y0(105, (bArr[i28] >> 1) & 3);
                        qt.y0(106, 3 & (bArr[i28] >> 3));
                        qt.y0(107, (bArr[i28] >> 5) & 1);
                        qt.y0(108, (bArr[i28] >> 6) & 1);
                        int i29 = i2 + 4;
                        qt.y0(109, 31 & (bArr[i29] >> 0));
                        qt.y0(110, (bArr[i29] >> 5) & 1);
                        qt.y0(111, (bArr[i2 + 5] >> 0) & 255);
                        break;
                    case 65:
                        qt.y0(112, ((bArr[i2 + 7] << 8) & 65280) | (bArr[i2 + 6] & 255));
                        qt.y0(113, ((bArr[i2 + 9] << 8) & 65280) | (bArr[i2 + 8] & 255));
                        qt.y0(114, bArr[i2 + 10] & 255);
                        qt.y0(115, ((bArr[i2 + 12] << 8) & 65280) | (bArr[i2 + 11] & 255));
                        qt.y0(116, (bArr[i2 + 13] & 255) | ((bArr[i2 + 15] << 16) & Spanned.SPAN_PRIORITY) | (65280 & (bArr[i2 + 14] << 8)));
                        break;
                    case 66:
                        int i30 = i2 + 3;
                        if (this.f7844t != ((bArr[i30] >> 7) & 1)) {
                            int i31 = (bArr[i30] >> 7) & 1;
                            this.f7844t = i31;
                            if (i31 == 1) {
                                qt.a(1);
                            } else {
                                qt.a(0);
                            }
                        }
                        qt.y0(Process.MEDIA_UID, bArr[i2 + 2] & 255);
                        break;
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f7845u.j();
        u0.c.f17386m.d(this.G);
        l0.b0.p0(this.H);
        o1.h.f16865a.d(this.f7842r);
        w0.e.f17815a.d(this.f7843s);
        w0.e.f17819e.d(this.f7843s);
        u0.c.f17374a.d(this.f7843s);
        u0.c.f17392s.d(this.f7843s);
        qt.q0(this.f7836l);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 127) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, 144, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 1) {
            z.k.s(227, 160, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 2) {
            a3(iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], iArr[5], iArr[6], iArr[7], iArr[8], iArr[9]);
            return;
        }
        if (i2 != 1005) {
            return;
        }
        a.f.p().t(LogType.CANBUS, "FinalCanbus.C_CAMERA_MODE ====  " + iArr[0]);
        z.k.s(227, 201, 1, iArr[0] + 1);
    }

    public final void a3(int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11) {
        I = i2;
        J = i3;
        K = i4;
        L = i5;
        M = i6;
        N = i7;
        O = i8;
        P = i9;
        Q = i10;
        R = i11;
        z.k.s(227, 161, 5, ((i2 << 4) & 240) | (i3 & 15), ((i4 << 4) & 240) | (i6 & 15), (i5 << 4) & 240, i7, (i8 & 1) | ((i9 << 1) & 2) | ((i10 << 2) & 4) | ((i11 << 3) & 8));
        qt.y0(118, J);
        int iB = this.f7845u.b(2, 6);
        int i12 = J;
        if (iB != i12) {
            this.f7845u.g(2, i12);
        }
        qt.y0(117, I);
        int iB2 = this.f7845u.b(1, 6);
        int i13 = I;
        if (iB2 != i13) {
            this.f7845u.g(1, i13);
        }
        qt.y0(119, K);
        int iB3 = this.f7845u.b(3, 6);
        int i14 = K;
        if (iB3 != i14) {
            this.f7845u.g(3, i14);
        }
        qt.y0(120, L);
        int iB4 = this.f7845u.b(4, 6);
        int i15 = L;
        if (iB4 != i15) {
            this.f7845u.g(4, i15);
        }
        qt.y0(121, M);
        int iB5 = this.f7845u.b(5, 6);
        int i16 = M;
        if (iB5 != i16) {
            this.f7845u.g(5, i16);
        }
        qt.y0(122, N);
        int iB6 = this.f7845u.b(6, 10);
        int i17 = N;
        if (iB6 != i17) {
            this.f7845u.g(6, i17);
        }
        qt.y0(123, O);
        int iB7 = this.f7845u.b(7, 0);
        int i18 = O;
        if (iB7 != i18) {
            this.f7845u.g(7, i18);
        }
        qt.y0(124, P);
        int iB8 = this.f7845u.b(8, 0);
        int i19 = P;
        if (iB8 != i19) {
            this.f7845u.g(8, i19);
        }
        qt.y0(125, Q);
        int iB9 = this.f7845u.b(9, 0);
        int i20 = Q;
        if (iB9 != i20) {
            this.f7845u.g(9, i20);
        }
        qt.y0(126, R);
        int iB10 = this.f7845u.b(10, 0);
        int i21 = R;
        if (iB10 != i21) {
            this.f7845u.g(10, i21);
        }
    }

    @Override // o1.q
    public void b(byte[] bArr) {
        int i2;
        int i3;
        int i4;
        if (bArr != null) {
            a.f.p().t(LogType.CANBUS, "OBD Rcv--> " + o1.b0.d(bArr, 0, bArr.length));
        }
        if (bArr == null || bArr.length <= 0) {
            a.i.a0(100L);
            return;
        }
        if (this.f7833i + bArr.length > 1024) {
            this.f7833i = 0;
            this.f7834j = 0;
            this.f7835k = 0;
        }
        System.arraycopy(bArr, 0, this.f7832h, this.f7833i, bArr.length);
        int length = this.f7833i + bArr.length;
        this.f7833i = length;
        int i5 = this.f7835k;
        if (i5 != 0) {
            if (i5 >= length) {
                return;
            }
            byte b2 = this.f7832h[1];
            int i6 = 2;
            while (true) {
                i4 = this.f7835k;
                if (i6 >= i4) {
                    break;
                }
                b2 = (byte) (b2 + this.f7832h[i6]);
                i6++;
            }
            byte b3 = (byte) (b2 ^ 255);
            byte[] bArr2 = this.f7832h;
            if (b3 == bArr2[i4]) {
                U2(bArr2, 1, i4 - 1);
                z.a.f18158i.i(new byte[]{-1});
                this.f7834j = this.f7835k + 1;
            } else {
                this.f7834j = 1;
            }
            this.f7835k = 0;
        }
        int i7 = this.f7833i - 2;
        while (true) {
            i2 = this.f7834j;
            if (i2 >= i7) {
                break;
            }
            byte[] bArr3 = this.f7832h;
            if (bArr3[i2] == 46) {
                int i8 = bArr3[i2 + 2] & 255;
                this.f7835k = i8;
                int i9 = i8 + i2 + 3;
                this.f7835k = i9;
                if (i9 >= this.f7833i) {
                    this.f7835k = i9 - i2;
                    break;
                }
                byte b4 = bArr3[i2 + 1];
                int i10 = i2 + 2;
                while (true) {
                    i3 = this.f7835k;
                    if (i10 >= i3) {
                        break;
                    }
                    b4 = (byte) (b4 + this.f7832h[i10]);
                    i10++;
                }
                byte b5 = (byte) (b4 ^ 255);
                byte[] bArr4 = this.f7832h;
                if (b5 == bArr4[i3]) {
                    int i11 = this.f7834j;
                    U2(bArr4, i11 + 1, (i3 - i11) - 1);
                    z.a.f18158i.i(new byte[]{-1});
                    this.f7834j = this.f7835k;
                } else {
                    this.f7834j++;
                }
                this.f7835k = 0;
            }
            this.f7834j++;
        }
        if (i2 != 0) {
            int i12 = this.f7833i - i2;
            this.f7833i = i12;
            if (i12 != 0) {
                byte[] bArr5 = this.f7832h;
                System.arraycopy(bArr5, i2, bArr5, 0, i12);
            }
            this.f7834j = 0;
        }
    }
}
