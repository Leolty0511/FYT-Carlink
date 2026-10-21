package f1;

import android.bluetooth.BluetoothClass;
import android.content.SharedPreferences;
import android.net.ProxyProperties;
import android.os.FileObserver;
import android.os.Handler;
import android.util.Log;
import app.App;
import com.syu.jni.ToolsJni;
import com.syu.ms.R;
import java.util.HashMap;
import o1.l0;
import o1.s0;
import o1.x;

/* JADX INFO: loaded from: classes2.dex */
public class l extends q {

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public static String f2016s0 = "value_926";

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    public static String f2017t0 = "value_8033_";

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    public static String f2018u0 = "value_0x33_";

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    public static String f2019v0 = "value_0x31_";

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    public static String f2020w0 = "value_8002_";

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    public static String f2021x0 = "value_extra_mode";

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    public static int f2022y0;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    public static HashMap<q.c, Integer> f2023z0;
    public final boolean P;
    public boolean Q;
    public boolean R;
    public q.c S;
    public int T;
    public int U;
    public q1.b V;
    public l0 W;
    public l0 X;
    public Object Y;
    public int Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public SharedPreferences f2024a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public String f2025b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public Runnable f2026c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public boolean f2027d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public int f2028e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public Runnable f2029f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public final Runnable f2030g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public int f2031h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public int f2032i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public int f2033j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public int f2034k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public int f2035l0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public int f2036m0;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public int f2037n0;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public int f2038o0;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public int f2039p0;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public int f2040q0;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public int[] f2041r0;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l lVar = l.this;
            if (lVar.f2154r && u0.b.f17306a0 == 1) {
                lVar.f2155s.removeCallbacks(lVar.f2030g0);
                l lVar2 = l.this;
                lVar2.f2155s.postDelayed(lVar2.f2030g0, 800L);
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l.this.D();
        }
    }

    public class c implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ boolean f2044a;

        public c(boolean z2) {
            this.f2044a = z2;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (l.this.f2027d0) {
                l lVar = l.this;
                if (lVar.f2154r) {
                    lVar.p0();
                    s0.C(200L);
                    boolean zU0 = l.this.u0();
                    if (zU0 || l.this.f2028e0 >= 31) {
                        boolean z2 = false;
                        l.this.f2027d0 = false;
                        l lVar2 = l.this;
                        if (this.f2044a && zU0) {
                            z2 = true;
                        }
                        lVar2.j0(z2);
                        return;
                    }
                    if (l.this.f2028e0 % 6 == 0 && l.this.o0()) {
                        l.this.n0();
                    }
                    l.a0(l.this);
                    if (l.this.f2027d0) {
                        l.this.f2155s.postDelayed(this, 200L);
                        return;
                    }
                    return;
                }
            }
            Log.e("Chip8918", "----- Polling cancelled");
        }
    }

    static {
        HashMap<q.c, Integer> map = new HashMap<>();
        f2023z0 = map;
        map.put(new q.c(800, 480), 10);
        f2023z0.put(new q.c(400, 240), 16);
        f2023z0.put(new q.c(576, 124), 2);
    }

    public l(int i2, p1.a aVar, int i3, Handler handler) {
        super(15, i2, aVar, i3, handler);
        this.P = true;
        this.Q = false;
        this.R = false;
        this.S = new q.c(-1, -1);
        this.T = -1;
        this.U = -1;
        this.V = new q1.b(-1, 3);
        this.W = new l0();
        this.X = new l0();
        this.Y = new Object();
        this.Z = -1;
        this.f2024a0 = null;
        this.f2025b0 = ProxyProperties.LOCAL_EXCL_LIST;
        this.f2027d0 = false;
        this.f2028e0 = 0;
        this.f2029f0 = new a();
        this.f2030g0 = new b();
        this.f2031h0 = 0;
        this.f2032i0 = 1;
        this.f2033j0 = 2;
        this.f2034k0 = 3;
        this.f2035l0 = 4;
        this.f2036m0 = 5;
        this.f2037n0 = 6;
        this.f2038o0 = 7;
        this.f2039p0 = 8;
        this.f2040q0 = 9;
        this.f2041r0 = new int[]{128, 8, 82, 800, 1018, 20, 3, 20, 480, 523};
        SharedPreferences sharedPreferences = App.c().getSharedPreferences("Chip8918", 0);
        this.f2024a0 = sharedPreferences;
        this.Z = sharedPreferences.getInt(f2016s0, s0.m("sys.c926.mode", -1));
    }

    public static /* synthetic */ int a0(l lVar) {
        int i2 = lVar.f2028e0;
        lVar.f2028e0 = i2 + 1;
        return i2;
    }

    @Override // f1.q
    public boolean C(int i2, y.b bVar) {
        if (i2 != 174) {
            return false;
        }
        int i3 = this.f2024a0.getInt(f2018u0 + this.f2025b0, 10);
        int i4 = this.f2024a0.getInt(f2019v0 + this.f2025b0, 44);
        int i5 = this.f2024a0.getInt(f2017t0 + this.f2025b0, 0);
        int i6 = this.f2024a0.getInt(f2020w0 + this.f2025b0, f2022y0);
        x.v(bVar, i2, this.f2145i, 1, i4);
        x.v(bVar, i2, this.f2145i, 2, i3);
        x.v(bVar, i2, this.f2145i, 3, i5);
        x.v(bVar, i2, this.f2145i, 4, i6);
        x.v(bVar, i2, this.f2145i, 0, this.Z);
        x.v(bVar, i2, this.f2145i, -2, this.f2024a0.getInt(f2021x0, -1));
        return true;
    }

    @Override // f1.q
    public void D() {
        if (n()) {
            return;
        }
        super.D();
        Log.e("Chip8918", "==============================>> RESET  Waiting onUEvent START 1 chipid : " + this.f2144h);
        this.T = -1;
        this.U = -1;
        ToolsJni.cmd_33_reset_videoIc(this.f2144h);
        Log.e("Chip8918", "==============================>> RESET Waiting onUEvent END 1 chipid : " + this.f2144h);
    }

    @Override // f1.q
    public boolean M() {
        Log.e("Chip8918", "==============================>> setup()  chipid : " + this.f2144h + " loaded: " + this.f2154r);
        if (n()) {
            return true;
        }
        if (!this.f2154r) {
            Handler handler = this.f2155s;
            if (handler != null) {
                handler.removeCallbacks(this.f2030g0);
            }
            D();
        }
        return this.f2154r;
    }

    @Override // f1.q
    public void U(y.b bVar) {
        q.c cVar = this.S;
        if (cVar == null) {
            x.v(bVar, 173, y(-1, -1));
            return;
        }
        int i2 = cVar.f2164a;
        x.v(bVar, 173, y(i2, i2));
        Log.e("Chip8918", "==============================>> 02 update " + this.S + " chipid : " + this.f2144h);
    }

    @Override // f1.q, e1.l
    public void a() {
        c0();
        this.U = -1;
        this.T = -1;
        q.c cVar = this.S;
        cVar.f2164a = -1;
        cVar.f2165b = -1;
        this.R = false;
        Log.e("Chip8918", "==============================>> 03 update " + this.S + " chipid : " + this.f2144h);
        int i2 = this.S.f2164a;
        u0.d.I3(173, y(i2, i2));
        super.a();
    }

    @Override // f1.q, e1.l
    public void b() {
        super.b();
    }

    @Override // f1.q, e1.l
    public synchronized void c(int i2) {
        super.c(i2);
        Log.e("Chip8918", "==============================>> 04 openVideo channel " + i2 + " loaded : " + this.f2154r + " chipid : " + this.f2144h);
        if (this.f2145i != i2) {
            this.f2145i = i2;
            Handler handler = this.f2155s;
            if (handler != null) {
                handler.removeCallbacks(this.f2030g0);
            }
        }
        if (this.f2154r) {
            synchronized (this.Y) {
                if (this.T <= 0 || this.U <= 0) {
                    f0();
                }
            }
        } else {
            D();
        }
    }

    public void c0() {
        if (this.f2027d0) {
            this.f2027d0 = false;
            Runnable runnable = this.f2026c0;
            if (runnable != null) {
                this.f2155s.removeCallbacks(runnable);
                this.f2026c0 = null;
            }
            Log.e("Chip8918", "----- Polling task cancelled");
        }
    }

    @Override // f1.q, e1.l
    public void d() {
        this.f2155s.removeCallbacks(this.f2030g0);
        super.d();
    }

    public void d0(int i2) {
        if (this.Z != i2) {
            this.Z = i2;
            this.f2024a0.edit().putInt(f2016s0, this.Z).commit();
            u0.d.I3(174, this.f2145i, 0, this.Z);
            if (this.f2154r) {
                Handler handler = this.f2155s;
                if (handler != null) {
                    handler.removeCallbacks(this.f2030g0);
                }
                D();
            }
        }
    }

    public int e0() {
        if (n()) {
            return 1;
        }
        v0(128);
        return (A(32) >> 6) & 255;
    }

    public final void f0() {
        if (n()) {
            this.T = s0.m("sys.c8918.w", 800);
            this.U = s0.m("sys.c8918.h", 480);
        }
        l0((m0() && o0()) && n0());
    }

    public boolean g0(int i2) {
        return true;
    }

    @Override // e1.l
    public void h(int i2, int i3, int i4, int i5) {
        if (i2 == -2) {
            int i6 = this.f2024a0.getInt(f2021x0, -1);
            if (i3 < 0) {
                i3 = -1;
            }
            if (i6 != i3) {
                this.f2024a0.edit().putInt(f2021x0, i3).commit();
                u0.d.I3(174, this.f2145i, i2, i3);
                synchronized (this.Y) {
                    this.f2155s.removeCallbacks(this.f2030g0);
                    this.f2155s.postDelayed(this.f2030g0, 500L);
                }
                return;
            }
            return;
        }
        if (i2 == -1) {
            if (i3 != -1 || this.T <= 0 || this.U <= 0) {
                return;
            }
            this.f2024a0.edit().remove(f2019v0 + this.f2025b0).remove(f2018u0 + this.f2025b0).remove(f2017t0 + this.f2025b0).remove(f2020w0 + this.f2025b0).commit();
            D();
            return;
        }
        if (i2 == 1) {
            if (this.f2024a0.getInt(f2019v0 + this.f2025b0, 44) != i3) {
                this.f2024a0.edit().putInt(f2019v0 + this.f2025b0, i3).commit();
                u0.d.I3(174, this.f2145i, 1, i3);
                synchronized (this.Y) {
                    if (v0(112)) {
                        V(49, i3);
                    }
                }
                return;
            }
            return;
        }
        if (i2 == 2) {
            q.c cVar = new q.c(this.T, this.U);
            Integer numValueOf = Integer.valueOf(f2023z0.containsKey(cVar) ? f2023z0.get(cVar).intValue() : 10);
            if (this.f2024a0.getInt(f2018u0 + this.f2025b0, numValueOf.intValue()) != i3) {
                this.f2024a0.edit().putInt(f2018u0 + this.f2025b0, i3).commit();
                u0.d.I3(174, this.f2145i, 2, i3);
                synchronized (this.Y) {
                    if (v0(112)) {
                        V(51, i3);
                    }
                }
                return;
            }
            return;
        }
        if (i2 == 3) {
            if (this.f2024a0.getInt(f2017t0 + this.f2025b0, 0) != i3) {
                this.f2024a0.edit().putInt(f2017t0 + this.f2025b0, i3).commit();
                u0.d.I3(174, this.f2145i, 3, i3);
                synchronized (this.Y) {
                    if (v0(128)) {
                        V(51, (i3 << 5) | 12);
                    }
                }
                return;
            }
            return;
        }
        if (i2 != 4) {
            return;
        }
        int i7 = this.f2024a0.getInt(f2020w0 + this.f2025b0, f2022y0);
        if (i7 != i3) {
            this.f2024a0.edit().putInt(f2020w0 + this.f2025b0, i3).commit();
            u0.d.I3(174, this.f2145i, 4, i3);
            synchronized (this.Y) {
                boolean zV0 = v0(128);
                Log.e("Chip8918", String.format("001 write 0x80 0x02 %02x", Integer.valueOf(i7)));
                if (zV0) {
                    V(2, i7);
                }
            }
        }
    }

    public final boolean h0() {
        boolean z2 = false;
        switch (this.f2024a0.getInt(f2021x0, -1)) {
            case 2:
                if (((((v0(131) && V(19, 3) > 0) && V(21, 113) > 0) && v0(128)) && V(22, 1) > 0) && V(23, 196) > 0) {
                }
                return z2;
            case 3:
                if (((((v0(131) && V(19, 30) > 0) && V(21, 1) > 0) && v0(128)) && V(22, 1) > 0) && V(23, 199) > 0) {
                }
                return z2;
            case 4:
                if ((((((v0(131) && V(18, 1) > 0) && V(19, 0) > 0) && V(21, 9) > 0) && v0(128)) && V(22, 0) > 0) && V(23, 132) > 0) {
                }
                return z2;
            case 5:
                if ((((((v0(131) && V(18, 1) > 0) && V(19, 96) > 0) && V(21, 1) > 0) && v0(128)) && V(22, 1) > 0) && V(23, 0) > 0) {
                }
                return z2;
            case 6:
                if ((((((v0(131) && V(18, 2) > 0) && V(19, 166) > 0) && V(21, 32) > 0) && v0(128)) && V(22, 0) > 0) && V(23, 88) > 0) {
                }
                return z2;
            case 7:
                if ((((((v0(131) && V(18, 1) > 0) && V(19, 0) > 0) && V(21, 9) > 0) && v0(128)) && V(22, 0) > 0) && V(23, 32) > 0) {
                }
                return z2;
            case 8:
                if ((((((v0(131) && V(18, 1) > 0) && V(19, 96) > 0) && V(21, 11) > 0) && v0(128)) && V(22, 0) > 0) && V(23, 88) > 0) {
                }
                return z2;
            case 9:
                if (((((((v0(131) && V(18, 2) > 0) && V(19, 80) > 0) && V(21, 5) > 0) && v0(128)) && V(3, 144) > 0) && V(22, 0) > 0) && V(23, 200) > 0) {
                }
                return z2;
            case 10:
            default:
                return true;
            case 11:
                if ((((v0(131) && V(18, 1) > 0) && V(19, 238) > 0) && V(20, 72) > 0) && V(21, 7) > 0) {
                }
                return z2;
            case 12:
                if ((((v0(131) && V(18, 4) > 0) && V(19, 51) > 0) && V(20, 15) > 0) && V(21, 7) > 0) {
                }
                return z2;
            case 13:
                if ((((v0(131) && V(18, 1) > 0) && V(19, i.a.Theme_actionModeWebSearchDrawable) > 0) && V(20, 72) > 0) && V(21, 2) > 0) {
                }
                return z2;
        }
        z2 = true;
        return z2;
    }

    public boolean i0() {
        Log.e("Chip8918", "----- init_LT8918L_State");
        if (n()) {
            return true;
        }
        int i2 = 5;
        do {
            int i3 = this.Z;
            boolean zW0 = i3 > 0 ? w0(i3) : true;
            s0.C(50L);
            if (zW0) {
                break;
            }
            i2--;
        } while (i2 > 0);
        return (((m0()) && o0()) && n0()) && p0();
    }

    public final void j0(boolean z2) {
        if (!z2) {
            Log.e("Chip8918", "----- Polling failed after max attempts");
            return;
        }
        Log.e("Chip8918", "----- vdLT8918L_TX_DPHY_Logic_Reset");
        boolean zQ0 = q0();
        Log.e("Chip8918", "----- vdLT8918L_TxPll_Output_Config");
        if (((zQ0 && s0()) && r0()) && t0()) {
            h0();
        }
    }

    /* JADX WARN: Code duplicated, block: B:43:0x01bf  */
    /* JADX WARN: Instruction removed from duplicated block: B:43:0x01bf, please report this as an issue */
    @Override // f1.q
    public int k() {
        boolean z2 = this.V.d() == 1;
        if (this.W.c(150)) {
            this.W.a();
            z2 = this.V.g(e0()) == 1;
        }
        int i2 = (z2 && this.Q && this.f2145i > 0) ? 1 : 0;
        if (this.V.e()) {
            if (!z2) {
                this.T = -1;
                this.U = -1;
                q.c cVar = this.S;
                cVar.f2164a = -1;
                cVar.f2165b = -1;
                this.f2147k = -1;
                u0.d.I3(173, y(-1, -1));
            } else if (this.V.c() != -1) {
                R();
                D();
            }
        }
        if (this.X.c(200)) {
            this.X.a();
            Log.e("Chip8918", "  CHECK SIGNAL : imagType :  " + this.f2145i + " last  imagFormat :  " + this.f2147k + "  isHasSignal  : " + this.Q + " mSignalMarker: " + this.V + " chipid : " + this.f2144h);
        }
        if (i2 != 0) {
            q.c cVar2 = this.S;
            int i3 = cVar2.f2164a;
            int i4 = this.T;
            if (i3 == i4) {
                int i5 = cVar2.f2165b;
                int i6 = this.U;
                if (i5 != i6) {
                    cVar2.f2164a = i4;
                    cVar2.f2165b = this.U;
                    this.R = true;
                    Log.e("Chip8918", "==============================>> 00 SET " + this.S + " videoWidth : " + this.T + " videoHeight : " + this.U + " chipid : " + this.f2144h);
                } else if (this.R) {
                    this.R = false;
                    q.c cVar3 = new q.c(i4, i6);
                    Integer numValueOf = Integer.valueOf(f2023z0.containsKey(cVar3) ? f2023z0.get(cVar3).intValue() : 10);
                    int i7 = this.f2024a0.getInt(f2018u0 + this.f2025b0, numValueOf.intValue());
                    int i8 = this.f2024a0.getInt(f2019v0 + this.f2025b0, 44);
                    int i9 = this.f2024a0.getInt(f2017t0 + this.f2025b0, 0);
                    int i10 = this.f2024a0.getInt(f2020w0 + this.f2025b0, f2022y0);
                    u0.d.I3(174, this.f2145i, 1, i8);
                    u0.d.I3(174, this.f2145i, 2, i7);
                    u0.d.I3(174, this.f2145i, 3, i9);
                    u0.d.I3(174, this.f2145i, 4, i10);
                    q.c cVar4 = this.S;
                    u0.d.I3(173, y(cVar4.f2164a, cVar4.f2165b));
                    Log.e("Chip8918", "==============================>> 01 update " + this.S + " chipid : " + this.f2144h);
                }
            } else {
                cVar2.f2164a = i4;
                cVar2.f2165b = this.U;
                this.R = true;
                Log.e("Chip8918", "==============================>> 00 SET " + this.S + " videoWidth : " + this.T + " videoHeight : " + this.U + " chipid : " + this.f2144h);
            }
        }
        return i2;
    }

    public void k0() {
        v0(128);
        V(56, 22);
        V(51, 12);
        s0.C(10L);
        A(48);
        A(49);
        A(50);
        int iA = ((A(78) & 15) << 8) | A(79);
        int iA2 = ((A(76) & 15) << 8) | A(77);
        int iA3 = (((A(82) & 15) << 8) & FileObserver.ALL_EVENTS) | A(83);
        int iA4 = (((A(80) & 15) << 8) & FileObserver.ALL_EVENTS) | A(81);
        int iA5 = ((A(68) & 15) << 8) | A(69);
        int iA6 = ((A(72) & 15) << 8) | A(73);
        int iA7 = ((A(74) & 15) << 8) | A(75);
        int iA8 = A(67);
        int iA9 = A(70);
        int iA10 = A(71);
        Log.e("Chip8918", String.format("00 hactive : %d,  vactive : %d sync_polarity : %d ", Integer.valueOf(iA3), Integer.valueOf(iA4), Integer.valueOf(A(66))));
        Log.e("Chip8918", String.format("00 htotal : %d,  vtotal : %d ", Integer.valueOf(iA), Integer.valueOf(iA2)));
        Log.e("Chip8918", String.format("00 hsa : %d,  vsa : %d ", Integer.valueOf(iA5), Integer.valueOf(iA8)));
        Log.e("Chip8918", String.format("00 hbp : %d,  vbp : %d ", Integer.valueOf(iA6), Integer.valueOf(iA9)));
        Log.e("Chip8918", String.format("00 hfp : %d,  vfp : %d ", Integer.valueOf(iA7), Integer.valueOf(iA10)));
    }

    public final void l0(boolean z2) {
        this.f2027d0 = true;
        this.f2028e0 = 0;
        c cVar = new c(z2);
        this.f2026c0 = cVar;
        this.f2155s.post(cVar);
    }

    public boolean m0() {
        boolean z2 = false;
        boolean z3 = v0(96) && V(238, 1) > 0;
        k0();
        int i2 = -1;
        int i3 = this.f2024a0.getInt(f2021x0, -1);
        Log.e("Chip8918", "----- vdLT8918L_I2c_Enable extraMode: " + i3 + " ret : " + z3);
        switch (i3) {
            case 0:
            case 2:
                i2 = R.raw.chip8918_640x240;
                break;
            case 1:
                i2 = R.raw.chip8918_400x250;
                break;
            case 3:
                i2 = R.raw.chip8918_640x240_1;
                break;
            case 4:
                this.f2041r0 = new int[]{41, 128, 88, 800, 1057, 9, 2, 35, 480, 526};
                i2 = R.raw.chip8918_800x480_1;
                break;
            case 5:
                this.f2041r0 = new int[]{41, 128, 88, 800, 1057, 9, 2, 15, 500, 526};
                i2 = R.raw.chip8918_800x500_2;
                break;
            case 6:
                this.f2041r0 = new int[]{41, 128, 88, 800, 1057, 9, 2, 35, 480, 526};
                i2 = R.raw.chip8918_800x480_3;
                break;
            case 7:
                this.f2041r0 = new int[]{4, 20, 20, 480, BluetoothClass.Device.PHONE_SMART, 20, 2, 20, BluetoothClass.Device.COMPUTER_HANDHELD_PC_PDA, 314};
                i2 = R.raw.chip8918_480x272;
                break;
            case 8:
                this.f2041r0 = new int[]{41, 128, 88, 800, 1057, 9, 2, 15, 500, 526};
                i2 = R.raw.chip8918_800x500_3;
                break;
            case 9:
                i2 = R.raw.chip8918_800x240_1rr;
                break;
            case 10:
            case 12:
                i2 = R.raw.chip8918_800x480_4;
                this.f2041r0 = new int[]{28, 3, 29, 800, 860, 22, 3, 7, 480, 513};
                break;
            case 11:
            case 13:
                i2 = R.raw.chip8918_800x480_5;
                this.f2041r0 = new int[]{28, 3, 29, 800, 860, 22, 3, 7, 480, 513};
                break;
        }
        if (i2 <= 0) {
            return z3;
        }
        if (z3 && q(s0.A(App.c(), i2, 16))) {
            z2 = true;
        }
        return z2;
    }

    public boolean n0() {
        int i2 = this.f2024a0.getInt(f2020w0 + this.f2025b0, f2022y0);
        boolean zV0 = v0(128);
        Log.e("Chip8918", String.format("002 write 0x80 0x02 %02x", Integer.valueOf(i2)));
        return (zV0 && V(2, i2) > 0) && V(3, A(3) & 63) > 0;
    }

    public boolean o0() {
        return (((((((((v0(112) && V(1, 128) > 0) && V(3, 72) > 0) && V(4, 162) > 0) && V(12, 128) > 0) && V(19, 128) > 0) && V(24, 80) > 0) && V(56, 176) > 0) && v0(128)) && V(51, 12) > 0) && V(56, 22) > 0;
    }

    @Override // f1.q
    public void p() {
        synchronized (this.Y) {
            boolean z2 = false;
            if (g0(0) && i0()) {
                z2 = true;
            }
            H(z2);
        }
    }

    public boolean p0() {
        boolean z2 = v0(96) && V(16, 0) > 0;
        s0.C(5L);
        return z2 && V(16, 255) > 0;
    }

    @Override // f1.q
    public boolean q(int[] iArr) {
        boolean z2;
        if (iArr == null || iArr.length < 2) {
            throw new RuntimeException("flushParams  data is NULL  or  data  size < 2 !!!! ");
        }
        Log.e("Chip8918", "flushParams =============>> i2cInvalid : " + this.f2158v);
        if (this.f2158v) {
            return false;
        }
        synchronized (this.f2157u) {
            int length = iArr.length / 2;
            Log.e("Chip8918", "flushParams  START  data  length = " + iArr.length);
            int i2 = 0;
            z2 = true;
            while (i2 < length) {
                int i3 = i2 * 2;
                int i4 = iArr[i3];
                int i5 = iArr[i3 + 1];
                int iV = V(i4, i5);
                boolean z3 = iV >= 0;
                Log.e("Chip8918", String.format("[ %02X,  %02X]", Integer.valueOf(i4), Integer.valueOf(i5)) + "  result : " + z3 + " ret : " + iV);
                if (!z3) {
                    z2 = z3;
                    break;
                }
                i2++;
                z2 = z3;
            }
            Log.e("Chip8918", "flushParams  END  data  length = " + iArr.length + " result:" + z2);
        }
        return z2;
    }

    public boolean q0() {
        boolean z2 = v0(96) && V(13, 0) > 0;
        s0.C(5L);
        return z2 && V(13, 255) > 0;
    }

    public boolean r0() {
        SharedPreferences sharedPreferences = this.f2024a0;
        StringBuilder sb = new StringBuilder();
        sb.append(f2017t0);
        sb.append(this.f2025b0);
        boolean z2 = v0(128) && V(51, (sharedPreferences.getInt(sb.toString(), 0) << 5) | 9) > 0;
        s0.C(10L);
        int iA = (((((A(48) & 15) << 8) + A(49)) << 8) + A(50)) / 1000;
        int i2 = iA / 10;
        int i3 = iA / 12;
        int i4 = iA / 6;
        int i5 = iA / 4;
        return (((((z2 && v0(131)) && V(64, 0) > 0) && V(70, 8) > 0) && V(71, 8) > 0) && V(72, 10) > 0) && V(74, 48) > 0;
    }

    public boolean s0() {
        boolean z2 = v0(112) && V(48, 0) > 0;
        SharedPreferences sharedPreferences = this.f2024a0;
        StringBuilder sb = new StringBuilder();
        sb.append(f2019v0);
        sb.append(this.f2025b0);
        boolean z3 = z2 && V(49, sharedPreferences.getInt(sb.toString(), 44)) > 0;
        q.c cVar = new q.c(this.T, this.U);
        Integer numValueOf = Integer.valueOf(f2023z0.containsKey(cVar) ? f2023z0.get(cVar).intValue() : 10);
        int i2 = this.f2024a0.getInt(f2018u0 + this.f2025b0, numValueOf.intValue());
        Log.e("Chip8918", "======>> GET value -- size " + cVar + " mOutputCfgMaps.containsKey(size) : " + f2023z0.containsKey(cVar) + " value : " + numValueOf + " chipid : " + this.f2144h);
        boolean z4 = ((((((z3 && V(51, i2) > 0) && V(52, 2) > 0) && V(36, 100) > 0) && V(35, 47) > 0) && V(35, 175) > 0) && V(35, 159) > 0) && v0(128);
        int i3 = this.f2024a0.getInt(f2017t0 + this.f2025b0, 0);
        boolean z5 = z4 && V(51, (i3 << 5) | 12) > 0;
        s0.C(10L);
        A(48);
        A(49);
        A(50);
        boolean z6 = (((z5 && v0(128)) && V(51, (i3 << 5) | 9) > 0) && V(106, 10) > 0) && V(190, 64) > 0;
        s0.C(10L);
        A(48);
        A(49);
        A(50);
        return z6;
    }

    /* JADX WARN: Code duplicated, block: B:18:0x003d  */
    /* JADX WARN: Code duplicated, block: B:19:0x003f  */
    public boolean t0() {
        boolean z2;
        boolean z3 = v0(131) && V(18, 1) > 0;
        new q.c(this.T, this.U);
        if (g.f.n(10)) {
            if (!(z3 && v0(131)) || V(19, 86) <= 0) {
                z2 = false;
            } else {
                z2 = true;
            }
        } else if (!z3 || V(19, 0) <= 0) {
            z2 = false;
        } else {
            z2 = true;
        }
        return ((((((((((((z2 && V(20, this.f2041r0[this.f2037n0] % 256) > 0) && V(21, this.f2041r0[this.f2038o0] % 256) > 0) && V(22, this.f2041r0[this.f2039p0] / 256) > 0) && V(23, this.f2041r0[this.f2039p0] % 256) > 0) && V(24, this.f2041r0[this.f2036m0] % 256) > 0) && V(25, 30) > 0) && V(26, 30) > 0) && V(27, 30) > 0) && V(28, this.f2041r0[this.f2034k0] / 256) > 0) && V(29, this.f2041r0[this.f2034k0] % 256) > 0) && V(16, 88) > 0) && V(31, 4) > 0) && V(17, 44) > 0;
    }

    public boolean u0() {
        int i2;
        v0(128);
        V(56, 22);
        V(51, 12);
        s0.C(10L);
        Log.e("Chip8918", "=====================>>>  vdLT8918L_Video_check() fm_value == " + (((((A(48) & 15) << 8) + A(49)) << 8) + A(50)));
        int iA = ((A(78) & 15) << 8) | A(79);
        int iA2 = ((A(76) & 15) << 8) | A(77);
        int iA3 = (((A(82) & 15) << 8) & FileObserver.ALL_EVENTS) | A(83);
        int iA4 = (((A(80) & 15) << 8) & FileObserver.ALL_EVENTS) | A(81);
        int iA5 = ((A(68) & 15) << 8) | A(69);
        int iA6 = ((A(72) & 15) << 8) | A(73);
        int iA7 = ((A(74) & 15) << 8) | A(75);
        int iA8 = A(67);
        int iA9 = A(70);
        int iA10 = A(71);
        int iA11 = A(66);
        if (iA3 <= 100 || iA3 > 3000 || iA4 <= 100 || iA4 > 2000) {
            this.Q = false;
            this.T = iA3;
            this.U = iA4;
            this.f2147k = -1;
            return false;
        }
        int i3 = iA3 - (iA3 % 4);
        int i4 = iA4 - (iA4 % 4);
        this.T = i3;
        this.U = i4;
        if (this.f2147k != 14) {
            this.f2147k = 14;
        }
        Log.e("Chip8918", String.format("hactive : %d,  vactive : %d sync_polarity : %d ", Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf(iA11)));
        Log.e("Chip8918", String.format("htotal : %d,  vtotal : %d ", Integer.valueOf(iA), Integer.valueOf(iA2)));
        Log.e("Chip8918", String.format("hsa : %d,  vsa : %d ", Integer.valueOf(iA5), Integer.valueOf(iA8)));
        Log.e("Chip8918", String.format("hbp : %d,  vbp : %d ", Integer.valueOf(iA6), Integer.valueOf(iA9)));
        Log.e("Chip8918", String.format("hfp : %d,  vfp : %d ", Integer.valueOf(iA7), Integer.valueOf(iA10)));
        u0.d.I3(174, this.f2145i, 255, i3, i4, iA11, iA, iA2, iA5, iA8, iA6, iA9, iA7, iA10);
        v0(128);
        if ((iA11 & 1) == 0) {
            i2 = 3;
            V(3, A(3) | 64);
        } else {
            i2 = 3;
        }
        if ((2 & iA11) == 0) {
            V(i2, A(i2) | 128);
        }
        switch (this.f2024a0.getInt(f2021x0, -1)) {
            case 4:
            case 6:
            case 10:
            case 11:
            case 13:
                this.T = 800;
                this.U = 480;
                break;
            case 5:
            case 8:
                this.T = 800;
                this.U = 500;
                break;
            case 7:
                this.T = 480;
                this.U = BluetoothClass.Device.COMPUTER_HANDHELD_PC_PDA;
                break;
            case 9:
                this.T = 800;
                this.U = 240;
                break;
            case 12:
                this.T = 800;
                this.U = 480;
                V(i2, 0);
                break;
            default:
                int[] iArr = this.f2041r0;
                iArr[this.f2035l0] = iA;
                iArr[this.f2040q0] = iA2;
                iArr[this.f2034k0] = i3;
                iArr[this.f2039p0] = i4;
                iArr[this.f2032i0] = iA5;
                iArr[this.f2037n0] = iA8;
                iArr[this.f2033j0] = iA6;
                iArr[this.f2038o0] = iA9;
                iArr[this.f2031h0] = iA7;
                iArr[this.f2036m0] = iA10;
                break;
        }
        this.Q = true;
        return true;
    }

    public boolean v0(int i2) {
        return V(255, i2) > 0;
    }

    public final boolean w0(int i2) {
        boolean z2 = W(44, 2, i2) > 0 && (W(44, 1, 2) > 0);
        if (B(44, 2) != i2) {
            s0.C(20L);
            W(44, 2, i2);
        }
        return W(44, 1, 1) > 0 && (z2 && B(44, 2) == i2);
    }
}
