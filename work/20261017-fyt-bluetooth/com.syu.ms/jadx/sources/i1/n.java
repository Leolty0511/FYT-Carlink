package i1;

import android.drm.DrmManagerClient;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.text.format.DateFormat;
import android.util.Log;
import android.util.SparseIntArray;
import app.App;
import com.syu.jni.ToolsJni;
import java.util.Arrays;
import java.util.Calendar;
import o1.s0;

/* JADX INFO: loaded from: classes2.dex */
public class n extends i1.a<j> implements i1.g, o1.p {
    public boolean A;
    public boolean B;
    public boolean C;
    public Handler D;
    public SparseIntArray E;
    public long F;
    public Runnable G;
    public final Runnable H;
    public final Runnable I;
    public final Runnable J;
    public final Runnable K;
    public final o1.p L;
    public final Runnable M;
    public final Runnable N;
    public final Runnable O;
    public int P;
    public long Q;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final boolean f2672k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public e.e.a f2673l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f2674m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f2675n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f2676o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f2677p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f2678q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f2679r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int[] f2680s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f2681t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f2682u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final int f2683v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final int f2684w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final int f2685x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f2686y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f2687z;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (s0.l("sys.fyt.platform.dog", false)) {
                return;
            }
            ToolsJni.cmd_251_Normal_Io_Set(7, 1);
            s0.C(800L);
            ToolsJni.cmd_251_Normal_Io_Set(7, 0);
        }
    }

    public class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f2689a = -1;

        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            n nVar = n.this;
            int i2 = nVar.f2674m;
            int i3 = u0.b.f17306a0 == 1 ? i2 | 2 : i2 & (-3);
            int i4 = u0.b.f17366w == 1 ? i3 | 4 : i3 & (-5);
            int i5 = u0.b.f17335k == 1 ? i4 | 8 : i4 & (-9);
            int i6 = u0.b.f17347o;
            int i7 = i6 == 1 ? i5 & (-33) : i5 | 32;
            if (i2 != i7) {
                nVar.f2674m = i7;
                if (i6 == 1) {
                    nVar.F = SystemClock.elapsedRealtime();
                }
            }
            int i8 = this.f2689a;
            int i9 = u0.b.f17306a0;
            if (i8 != i9) {
                this.f2689a = i9;
                n nVar2 = n.this;
                nVar2.D.removeCallbacks(nVar2.G);
                if (this.f2689a == 1) {
                    n nVar3 = n.this;
                    nVar3.D.postDelayed(nVar3.G, 240000L);
                }
            }
        }
    }

    public class c implements Runnable {

        public class a implements Runnable {
            public a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                u0.d.U1(1);
            }
        }

        public class b implements Runnable {
            public b() {
            }

            @Override // java.lang.Runnable
            public void run() {
                u0.d.N(0);
            }
        }

        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z2;
            Handler handler;
            if (u0.b.f17306a0 != 1) {
                return;
            }
            int i2 = n.this.f2675n;
            int iCmd_252_Normal_Io_Get = u0.b.f17347o == 1 ? 1 : ToolsJni.cmd_252_Normal_Io_Get(5);
            int iCmd_252_Normal_Io_Get2 = u0.b.f17347o == 1 ? 1 : ToolsJni.cmd_252_Normal_Io_Get(6);
            boolean z3 = false;
            if (iCmd_252_Normal_Io_Get == 0) {
                n nVar = n.this;
                int i3 = nVar.f2686y + 1;
                nVar.f2686y = i3;
                if (i3 < 4 || nVar.A) {
                    z2 = false;
                } else {
                    nVar.A = true;
                    z2 = true;
                }
                if (i3 >= 4) {
                    nVar.f2686y = 12;
                }
            } else {
                n nVar2 = n.this;
                int i4 = nVar2.f2686y;
                if (i4 > 0) {
                    int i5 = i4 - 1;
                    nVar2.f2686y = i5;
                    if (i5 > 0 || !nVar2.A) {
                        z2 = false;
                    } else {
                        nVar2.A = false;
                        z2 = true;
                    }
                    if (i5 < 0) {
                        nVar2.f2686y = 0;
                    }
                } else {
                    z2 = false;
                }
            }
            if (iCmd_252_Normal_Io_Get2 == 0) {
                n nVar3 = n.this;
                int i6 = nVar3.f2687z + 1;
                nVar3.f2687z = i6;
                if (i6 >= 4 && !nVar3.B) {
                    nVar3.B = true;
                    z2 = true;
                }
                if (i6 >= 4) {
                    nVar3.f2687z = 12;
                }
            } else {
                n nVar4 = n.this;
                int i7 = nVar4.f2687z;
                if (i7 > 0) {
                    int i8 = i7 - 1;
                    nVar4.f2687z = i8;
                    if (i8 <= 0 && nVar4.B) {
                        nVar4.B = false;
                        z2 = true;
                    }
                    if (i8 < 0) {
                        nVar4.f2687z = 0;
                    }
                }
            }
            n nVar5 = n.this;
            int i9 = nVar5.f2686y;
            boolean z4 = i9 >= 2 && nVar5.f2687z >= 2;
            boolean z5 = nVar5.C;
            if (z4 != z5) {
                if (!z4 && z5) {
                    int i10 = nVar5.f2687z;
                    z4 = (i10 > 0 || i9 > 0) && Math.abs(i9 - i10) < 12;
                }
                n.this.C = z4;
                z2 = true;
            }
            if (z2) {
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                n nVar6 = n.this;
                boolean z6 = jElapsedRealtime - nVar6.F > 1000;
                if (!z4) {
                    z3 = z4;
                } else if (z6 && z4) {
                    z3 = true;
                }
                int i11 = (!nVar6.A || z4) ? i2 & (-2) : i2 | 1;
                int i12 = (!nVar6.B || z4) ? i11 & (-3) : i11 | 2;
                int i13 = z3 ? i12 | 4 : i12 & (-5);
                if (nVar6.f2675n != i13) {
                    nVar6.f2675n = i13;
                }
                u0.i.l3().g4(4096, n.this.A);
                u0.i.l3().g4(8192, n.this.B);
                n nVar7 = n.this;
                if (nVar7.A || nVar7.B) {
                    if (u0.b.f17320f != 1) {
                        Handler handler2 = nVar7.D;
                        if (handler2 != null) {
                            handler2.postDelayed(new a(), 600L);
                        }
                    } else if (u0.b.f17332j != 0 && (handler = nVar7.D) != null) {
                        handler.postDelayed(new b(), 600L);
                    }
                }
            }
            n nVar8 = n.this;
            if (nVar8.D != null) {
                nVar8.w();
                n.this.D.removeCallbacks(this);
                n.this.D.postDelayed(this, 60L);
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = u0.b.X1;
            n nVar = n.this;
            if (i2 != nVar.f2676o) {
                nVar.f2676o = Math.max(0, Math.min(i2, 255));
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = u0.b.I2;
            n nVar = n.this;
            int i3 = nVar.P / 2;
            if (i2 < 0) {
                i2 = i3;
            }
            int i4 = (int) ((((i2 - i3) * 100.0f) / i3) + 0.5f + 128.0f);
            if (nVar.f2677p != i4) {
                nVar.f2677p = i4;
            }
        }
    }

    public class f implements o1.p {
        public f() {
        }

        @Override // o1.p
        public void d(Object obj) {
            try {
                int[] iArr = (int[]) obj;
                int[] iArr2 = n.this.f2680s;
                int[] iArrCopyOf = Arrays.copyOf(iArr2, iArr2.length);
                switch (iArr[0]) {
                    case 14:
                    case 15:
                    case 18:
                    case 19:
                        iArrCopyOf[iArr[0] - 14] = iArr[1];
                        break;
                    case 16:
                        iArrCopyOf[3] = iArr[1];
                        break;
                    case 17:
                        iArrCopyOf[2] = iArr[1];
                        break;
                    case 20:
                        iArrCopyOf[7] = iArr[1];
                        break;
                    case 21:
                        iArrCopyOf[6] = iArr[1];
                        break;
                }
                if (Arrays.equals(n.this.f2680s, iArrCopyOf)) {
                    return;
                }
                n.this.f2680s = Arrays.copyOf(iArrCopyOf, iArrCopyOf.length);
            } catch (Exception unused) {
            }
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
        }
    }

    public class h implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f2698a = -1;

        public h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = this.f2698a;
            int i3 = u0.b.f17306a0;
            if (i2 == i3) {
                return;
            }
            this.f2698a = i3;
            if (i3 == 1) {
                n nVar = n.this;
                nVar.D.postDelayed(nVar.I, 2000L);
            } else {
                n nVar2 = n.this;
                nVar2.D.removeCallbacks(nVar2.I);
            }
        }
    }

    public class i implements Runnable {
        public i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.o4 == 0) {
                n.this.y(9, 1, 0);
            }
        }
    }

    public class j extends i1.e {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final int[] f2701h = {46};

        public j() {
        }

        @Override // i1.e
        public boolean a(int i2) {
            int iIntValue = (this.f2620e.intValue() & 255) + (this.f2619d.intValue() & 255);
            for (int i3 = 0; i3 < this.f2619d.intValue(); i3++) {
                iIntValue += this.f2618c[i3] & 255;
            }
            return (iIntValue ^ 255) == (i2 & 255);
        }

        @Override // i1.e
        public boolean c(int i2) {
            if (this.f2619d == null) {
                this.f2619d = Integer.valueOf(i2 & 255);
            }
            return this.f2619d != null;
        }

        @Override // i1.e
        public int[] f() {
            return this.f2701h;
        }

        @Override // i1.e
        public boolean j() {
            return true;
        }
    }

    public n(int i2, int i3) {
        super(i2, i3);
        this.f2672k = false;
        this.f2673l = new e.e.a(0, 0, 0);
        this.f2674m = 49;
        this.f2675n = 0;
        this.f2676o = 0;
        this.f2677p = 128;
        this.f2678q = 0;
        this.f2679r = 0;
        this.f2680s = new int[]{10, 10, 10, 10, 10, 10, 10, 10};
        this.f2681t = 0;
        this.f2682u = 0;
        this.f2683v = 12;
        this.f2684w = 4;
        this.f2685x = 2;
        this.f2686y = 0;
        this.f2687z = 0;
        this.A = false;
        this.B = false;
        this.C = false;
        this.E = new SparseIntArray();
        this.F = 0L;
        this.G = new a();
        b bVar = new b();
        this.H = bVar;
        this.I = new c();
        d dVar = new d();
        this.J = dVar;
        e eVar = new e();
        this.K = eVar;
        f fVar = new f();
        this.L = fVar;
        this.M = new g();
        h hVar = new h();
        this.N = hVar;
        i iVar = new i();
        this.O = iVar;
        this.P = 0;
        this.Q = 0L;
        HandlerThread handlerThread = new HandlerThread("817_360_Work");
        handlerThread.start();
        this.D = new Handler(handlerThread.getLooper());
        this.E.put(0, 0);
        this.E.put(1, 1);
        this.E.put(2, 2);
        this.E.put(5, 3);
        this.E.put(6, 4);
        this.E.put(7, 17);
        this.E.put(8, 18);
        this.E.put(9, 19);
        this.E.put(10, 20);
        this.E.put(11, 22);
        this.E.put(12, 23);
        this.E.put(13, 24);
        this.E.put(14, 33);
        this.E.put(15, 34);
        this.E.put(16, 35);
        this.E.put(17, 36);
        this.E.put(18, 37);
        this.E.put(19, 38);
        this.E.put(3, 39);
        this.E.put(4, 40);
        this.E.put(20, 41);
        this.E.put(21, 42);
        this.E.put(22, 48);
        this.E.put(23, 49);
        j jVar = new j();
        this.f2721a = jVar;
        jVar.h();
        u0.c.O.a(this);
        ToolsJni.setInputForGpio(5, 1);
        ToolsJni.setInputForGpio(6, 1);
        u0.c.f17399z.a(bVar, 0);
        u0.c.B.a(bVar, 0);
        u0.c.f17379f.a(bVar, 0);
        o1.y yVar = u0.c.f17386m;
        yVar.a(bVar, 1);
        u0.c.I.a(eVar, 1);
        o1.h.f16866b.a(dVar, 1);
        u0.c.R.a(fVar);
        u0.c.f17383j.a(iVar, 0);
        yVar.a(hVar, 1);
        this.P = SystemProperties.getInt("persist.fyt.track_angle_max", 40) * 4;
    }

    @Override // o1.p
    public void d(Object obj) {
        if (obj == null) {
            return;
        }
        e.e.a aVar = (e.e.a) obj;
        this.f2673l = aVar;
        int i2 = (aVar.f1629b * 4096) / 800;
        int i3 = (aVar.f1630c * 4096) / 480;
        int i4 = aVar.f1628a;
        if (i4 == 0) {
            y(5, 5, 1, (i2 >> 8) & 255, i2 & 255, (i3 >> 8) & 255, i3 & 255);
        } else if (i4 == 1) {
            y(5, 5, 0, (i2 >> 8) & 255, i2 & 255, (i3 >> 8) & 255, i3 & 255);
        }
    }

    @Override // i1.g
    public void e(int i2) {
        int i3 = this.E.get(i2, -1);
        if (i3 != -1) {
            y(9, 1, i3);
        }
    }

    @Override // i1.s
    public void l(int[] iArr) {
        boolean z2 = false;
        int i2 = iArr[0];
        if (i2 != 146) {
            if (i2 == 152 && s0.h(iArr, 1)) {
                int i3 = iArr[1];
                return;
            }
            return;
        }
        this.D.removeCallbacks(this.G);
        if (u0.b.f17306a0 == 1 && u0.b.f17320f == 1) {
            this.D.postDelayed(this.G, 6000L);
        }
        if (s0.h(iArr, 2)) {
            if (iArr[2] == 0) {
                e1.h.Q.L(true);
                return;
            }
            int i4 = iArr[1] & 1;
            int i5 = (iArr[1] >> 1) & 1;
            boolean z3 = ((iArr[1] >> 2) & 1) == 0;
            if (z3) {
                if (z3 && i4 == 1 && i5 == 1) {
                    z2 = true;
                }
                z3 = z2;
            }
            e1.h.Q.L(z3);
        }
    }

    public void w() {
        int i2 = 0;
        y(3, 8, this.f2674m, this.f2675n, this.f2676o, this.f2677p, this.f2678q, this.f2679r, this.f2681t, this.f2682u);
        if (this.Q % 5 == 0) {
            int[] iArr = new int[this.f2680s.length + 2];
            iArr[0] = 104;
            iArr[1] = 8;
            while (true) {
                int[] iArr2 = this.f2680s;
                if (i2 >= iArr2.length) {
                    break;
                }
                iArr[i2 + 2] = iArr2[i2];
                i2++;
            }
            y(iArr);
        }
        if (this.Q % 50 == 0) {
            x();
            if (this.Q != 0) {
                this.Q = 0L;
            }
        }
        this.Q++;
    }

    public void x() {
        Calendar calendar = Calendar.getInstance();
        int i2 = calendar.get(1) + DrmManagerClient.ERROR_UNKNOWN;
        int i3 = calendar.get(2) + 1;
        int i4 = calendar.get(5);
        boolean zIs24HourFormat = DateFormat.is24HourFormat(App.c());
        int i5 = zIs24HourFormat ? calendar.get(11) : calendar.get(10) + 1;
        int i6 = calendar.get(12);
        int i7 = calendar.get(13);
        Log.e("Device", String.format("%d-%d-%d %d:%d:%d", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf(i5), Integer.valueOf(i6), Integer.valueOf(i7)) + " is24: " + zIs24HourFormat);
        y(4, 7, 1 ^ (zIs24HourFormat ? 1 : 0), i2, i3, i4, i5, i6, i7);
    }

    public void y(int... iArr) {
        int i2 = 0;
        int length = iArr == null ? 0 : iArr.length;
        if (length == 0) {
            return;
        }
        int[] iArr2 = new int[length + 2];
        iArr2[0] = 46;
        int i3 = 0;
        while (i2 < length) {
            i3 += iArr[i2];
            int i4 = i2 + 1;
            iArr2[i4] = iArr[i2];
            i2 = i4;
        }
        iArr2[length + 1] = i3 ^ 255;
        b0 b0Var = this.f2544h;
        if (b0Var != null) {
            b0Var.f(iArr2);
        }
    }
}
