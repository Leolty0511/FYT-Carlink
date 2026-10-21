package f1;

import android.bluetooth.BluetoothClass;
import android.content.SharedPreferences;
import android.media.videoeditor.MediaProperties;
import android.net.ProxyProperties;
import android.os.Handler;
import android.util.Log;
import app.App;
import base.Configure;
import com.syu.jni.ToolsJni;
import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedList;
import o1.l0;
import o1.s0;
import o1.x;

/* JADX INFO: loaded from: classes2.dex */
public class m extends q {

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public static String f2046q0 = "timing_start";

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public static HashMap<d, LinkedList<c>> f2047r0;
    public final boolean P;
    public boolean Q;
    public boolean R;
    public boolean S;
    public q.c T;
    public int U;
    public int V;
    public q1.b W;
    public l0 X;
    public l0 Y;
    public final Object Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public int f2048a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public int f2049b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public SharedPreferences f2050c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public Runnable f2051d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public boolean f2052e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public int f2053f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public LinkedList<c> f2054g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public d f2055h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public final Runnable f2056i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public int[] f2057j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public final c f2058k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public c f2059l0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public c f2060m0;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public int[] f2061n0;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public int f2062o0;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public int f2063p0;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            m.this.D();
        }
    }

    public class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ boolean f2065a;

        public b(boolean z2) {
            this.f2065a = z2;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (m.this.f2052e0) {
                m mVar = m.this;
                if (mVar.f2154r) {
                    mVar.p0();
                    s0.C(50L);
                    boolean zU0 = m.this.u0();
                    if (zU0 || m.this.f2053f0 >= 31) {
                        boolean z2 = false;
                        m.this.f2052e0 = false;
                        m mVar2 = m.this;
                        if (this.f2065a && zU0) {
                            z2 = true;
                        }
                        mVar2.j0(z2);
                        return;
                    }
                    if (m.this.f2053f0 % 6 == 0 && m.this.o0()) {
                        m.this.n0();
                    }
                    m.a0(m.this);
                    if (m.this.f2052e0) {
                        m.this.f2155s.postDelayed(this, 20L);
                        return;
                    }
                    return;
                }
            }
            Log.e("Chip8918L", "----- Polling cancelled");
        }
    }

    public static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int[] f2067a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f2068b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f2069c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f2070d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f2071e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f2072f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public d f2073g;

        public c(int[] iArr, int i2, int i3, int i4, int i5, int i6) {
            this.f2067a = null;
            this.f2068b = -1;
            this.f2069c = -1;
            this.f2070d = -1;
            this.f2071e = -1;
            this.f2072f = -1;
            this.f2073g = null;
            if (iArr != null) {
                this.f2073g = new d(iArr[4], iArr[9], iArr[1]);
            }
            this.f2067a = iArr;
            this.f2068b = i2;
            this.f2069c = i3;
            this.f2070d = i4;
            this.f2071e = i5;
            this.f2072f = i6;
        }

        public boolean a(int i2, int i3, int i4) {
            d dVar = this.f2073g;
            return dVar != null && dVar.a(i2, i3, i4);
        }

        public void b(d dVar) {
            this.f2073g = dVar;
        }

        public boolean equals(Object obj) {
            return obj instanceof c ? Arrays.equals(((c) obj).f2067a, this.f2067a) : super.equals(obj);
        }

        public int hashCode() {
            return Arrays.hashCode(this.f2067a) + (this.f2073g.hashCode() * 31) + (this.f2068b * 29) + (this.f2069c * 27) + (this.f2070d * 25) + (this.f2071e * 23) + (this.f2072f * 22);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("FixTiming: [ ");
            sb.append(this.f2073g);
            StringBuilder sb2 = new StringBuilder();
            sb2.append("value8312 = ");
            sb2.append(this.f2068b != -1 ? "%02X" : "%d");
            sb.append(String.format(sb2.toString(), Integer.valueOf(this.f2068b)));
            StringBuilder sb3 = new StringBuilder();
            sb3.append("value8313 = ");
            sb3.append(this.f2069c != -1 ? "%02X" : "%d");
            sb.append(String.format(sb3.toString(), Integer.valueOf(this.f2069c)));
            StringBuilder sb4 = new StringBuilder();
            sb4.append("value7033 = ");
            sb4.append(this.f2070d != -1 ? "%02X" : "%d");
            sb.append(String.format(sb4.toString(), Integer.valueOf(this.f2070d)));
            StringBuilder sb5 = new StringBuilder();
            sb5.append("value7034 = ");
            sb5.append(this.f2071e != -1 ? "%02X" : "%d");
            sb.append(String.format(sb5.toString(), Integer.valueOf(this.f2071e)));
            StringBuilder sb6 = new StringBuilder();
            sb6.append("value8111 = ");
            sb6.append(this.f2072f == -1 ? "%d" : "%02X");
            sb.append(String.format(sb6.toString(), Integer.valueOf(this.f2072f)));
            sb.append(" ]");
            return sb.toString();
        }
    }

    public static class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f2074a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f2075b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f2076c;

        public d(int i2, int i3, int i4) {
            this.f2074a = i2;
            this.f2075b = i3;
            this.f2076c = i4;
        }

        public boolean a(int i2, int i3, int i4) {
            return i2 == this.f2074a && i3 == this.f2075b && i4 == this.f2076c;
        }

        public void b(int i2) {
            this.f2076c = i2;
        }

        public void c(int i2) {
            this.f2074a = i2;
        }

        public void d(int i2) {
            this.f2075b = i2;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof d)) {
                return super.equals(obj);
            }
            d dVar = (d) obj;
            return this.f2074a == dVar.f2074a && this.f2075b == dVar.f2075b && this.f2076c == dVar.f2076c;
        }

        public int hashCode() {
            return (this.f2074a * 1000000) + (this.f2075b * 1000) + this.f2076c;
        }

        public String toString() {
            return "TimingIndex: [" + this.f2074a + "," + this.f2075b + ", " + this.f2076c + "]";
        }
    }

    static {
        c0(2048, 729, 40, null, -1, -1, 14, 2, -1);
        c0(2048, 729, 40, new int[]{40, 40, 48, 1920, 2048, 4, 2, 3, MediaProperties.HEIGHT_720, 729}, -1, -1, 14, 2, 224);
        c0(2182, 729, 24, null, -1, -1, 16, 2, -1);
        c0(1578, 560, 60, null, -1, -1, 9, 2, -1);
        c0(1984, 1160, 8, null, -1, -1, 26, 2, -1);
        c0(1176, 525, 128, null, -1, -1, 5, 2, -1);
        c0(1744, 525, 128, null, -1, -1, 9, 2, -1);
        c0(BluetoothClass.Device.AUDIO_VIDEO_CAR_AUDIO, 525, 10, null, -1, -1, 5, 2, -1);
        c0(2048, 781, 32, null, -1, -1, 14, 2, -1);
    }

    public m(int i2, p1.a aVar, int i3, Handler handler) {
        super(15, i2, aVar, i3, handler);
        this.P = true;
        this.Q = true;
        this.R = false;
        this.S = false;
        this.T = new q.c(-1, -1);
        this.U = -1;
        this.V = -1;
        this.W = new q1.b(-1, 3);
        this.X = new l0();
        this.Y = new l0();
        this.Z = new Object();
        this.f2048a0 = -1;
        this.f2049b0 = -1;
        this.f2050c0 = null;
        this.f2052e0 = false;
        this.f2053f0 = 0;
        this.f2054g0 = null;
        this.f2055h0 = null;
        this.f2056i0 = new a();
        this.f2057j0 = new int[]{230, 24, 8, 1920, 2182, 4, 2, 3, MediaProperties.HEIGHT_720, 729};
        this.f2058k0 = new c(null, -1, -1, 16, 2, -1);
        this.f2059l0 = null;
        this.f2060m0 = null;
        this.f2061n0 = null;
        this.f2062o0 = 0;
        this.f2063p0 = -1;
        SharedPreferences sharedPreferences = App.c().getSharedPreferences("Chip8918L", 0);
        this.f2050c0 = sharedPreferences;
        this.f2062o0 = sharedPreferences.getInt(f2046q0, s0.m("sys.chip8918l.timing_index", -1));
        this.Q = Configure.Property.CHIP8918L_LVDS_DUAL_PORT.b(true);
    }

    public static /* synthetic */ int a0(m mVar) {
        int i2 = mVar.f2053f0;
        mVar.f2053f0 = i2 + 1;
        return i2;
    }

    public static void c0(int i2, int i3, int i4, int[] iArr, int i5, int i6, int i7, int i8, int i9) {
        c cVar = new c(iArr, i5, i6, i7, i8, i9);
        cVar.b(new d(i2, i3, i4));
        k0(cVar);
    }

    public static synchronized void k0(c cVar) {
        if (f2047r0 == null) {
            f2047r0 = new HashMap<>();
        }
        LinkedList<c> linkedList = f2047r0.get(cVar.f2073g);
        if (linkedList != null) {
            linkedList.add(cVar);
        } else {
            LinkedList<c> linkedList2 = new LinkedList<>();
            linkedList2.add(cVar);
            f2047r0.put(cVar.f2073g, linkedList2);
        }
        Log.e("Chip8918L", "==== timingMap size: " + f2047r0.size());
    }

    @Override // f1.q
    public boolean C(int i2, y.b bVar) {
        if (i2 != 174) {
            return false;
        }
        x.v(bVar, i2, this.f2145i, 0, this.f2048a0);
        int i3 = this.f2049b0;
        if (i3 >= 0) {
            x.v(bVar, i2, this.f2145i, 2, i3);
        }
        int[] iArr = new int[4];
        iArr[0] = this.f2145i;
        iArr[1] = 500;
        iArr[2] = this.f2062o0;
        LinkedList<c> linkedList = this.f2054g0;
        iArr[3] = linkedList != null ? linkedList.size() : 0;
        x.v(bVar, i2, iArr);
        return true;
    }

    @Override // f1.q
    public void D() {
        if (n()) {
            return;
        }
        super.D();
        Log.e("Chip8918L", "==============================>> RESET  Waiting onUEvent START 1 chipid : " + this.f2144h);
        this.U = -1;
        this.V = -1;
        ToolsJni.cmd_33_reset_videoIc(this.f2144h);
        Log.e("Chip8918L", "==============================>> RESET Waiting onUEvent END 1 chipid : " + this.f2144h);
    }

    @Override // f1.q
    public boolean M() {
        Log.e("Chip8918L", "==============================>> setup()  chipid : " + this.f2144h + " loaded: " + this.f2154r);
        if (n()) {
            return true;
        }
        if (!this.f2154r) {
            Handler handler = this.f2155s;
            if (handler != null) {
                handler.removeCallbacks(this.f2056i0);
            }
            D();
        }
        return this.f2154r;
    }

    @Override // f1.q
    public void U(y.b bVar) {
        q.c cVar = this.T;
        if (cVar == null) {
            x.v(bVar, 173, y(-1, -1));
            return;
        }
        int i2 = cVar.f2164a;
        x.v(bVar, 173, y(i2, i2));
        Log.e("Chip8918L", "==============================>> 02 update " + this.T + " chipid : " + this.f2144h);
    }

    @Override // f1.q, e1.l
    public void a() {
        d0();
        this.V = -1;
        this.U = -1;
        q.c cVar = this.T;
        cVar.f2164a = -1;
        cVar.f2165b = -1;
        this.S = false;
        Log.e("Chip8918L", "==============================>> 03 update " + this.T + " chipid : " + this.f2144h);
        int i2 = this.T.f2164a;
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
        this.Q = Configure.Property.CHIP8918L_LVDS_DUAL_PORT.b(true);
        Log.e("Chip8918L", "==============================>> 04 openVideo channel " + i2 + " loaded : " + this.f2154r + " chipid : " + this.f2144h);
        if (this.f2145i != i2) {
            this.f2145i = i2;
            Handler handler = this.f2155s;
            if (handler != null) {
                handler.removeCallbacks(this.f2056i0);
            }
        }
        if (this.f2154r) {
            synchronized (this.Z) {
                if (this.U <= 0 || this.V <= 0) {
                    g0();
                }
            }
        } else {
            D();
        }
    }

    @Override // f1.q, e1.l
    public void d() {
        this.f2155s.removeCallbacks(this.f2056i0);
        super.d();
    }

    public void d0() {
        if (this.f2052e0) {
            this.f2052e0 = false;
            Runnable runnable = this.f2051d0;
            if (runnable != null) {
                this.f2155s.removeCallbacks(runnable);
                this.f2051d0 = null;
            }
            Log.e("Chip8918L", "----- Polling task cancelled");
        }
    }

    public int e0() {
        if (n()) {
            return 1;
        }
        v0(128);
        int iA = A(32);
        Log.e("Chip8918L", "----- checkHasSignal 0x8020 value :" + String.format("%02X", Integer.valueOf(iA)));
        return (iA >> 6) & 255;
    }

    public void f0() {
        v0(128);
        V(51, 12);
        s0.C(10L);
        Log.e("Chip8918L", "=====================>>>  checkTiming() fm_value == " + (((((A(48) & 15) << 8) + A(49)) << 8) + A(50)));
        int iA = A(66);
        int iA2 = ((A(78) & 15) << 8) | A(79);
        int iA3 = ((A(76) & 15) << 8) | A(77);
        int iA4 = ((A(82) & 15) << 8) | A(83);
        int iA5 = ((A(80) & 15) << 8) | A(81);
        int iA6 = ((A(68) & 15) << 8) | A(69);
        int iA7 = ((A(72) & 15) << 8) | A(73);
        int iA8 = ((A(74) & 15) << 8) | A(75);
        int iA9 = A(67);
        int iA10 = A(70);
        int iA11 = A(71);
        Integer numValueOf = Integer.valueOf(iA5);
        boolean z2 = true;
        Log.e("Chip8918L", String.format("00 hactive : %d,  vactive : %d sync_polarity : %d ", Integer.valueOf(iA4), numValueOf, Integer.valueOf(iA)));
        Log.e("Chip8918L", String.format("00 htotal : %d,  vtotal : %d,  hsa : %d", Integer.valueOf(iA2), Integer.valueOf(iA3), Integer.valueOf(iA6)));
        Log.e("Chip8918L", String.format("00 hsa : %d,  vsa : %d ", Integer.valueOf(iA6), Integer.valueOf(iA9)));
        Log.e("Chip8918L", String.format("00 hbp : %d,  vbp : %d ", Integer.valueOf(iA7), Integer.valueOf(iA10)));
        Log.e("Chip8918L", String.format("00 hfp : %d,  vfp : %d ", Integer.valueOf(iA8), Integer.valueOf(iA11)));
        this.f2063p0 = Math.max(this.f2062o0, 0);
        c cVar = this.f2059l0;
        if (cVar != null) {
            if (cVar.a(iA2, iA3, iA6)) {
                this.f2054g0 = null;
                z2 = false;
            } else {
                this.f2060m0 = this.f2059l0;
                this.f2059l0 = null;
            }
        }
        if (z2) {
            d dVar = this.f2055h0;
            if (dVar == null) {
                this.f2055h0 = new d(iA2, iA3, iA6);
            } else {
                dVar.c(iA2);
                this.f2055h0.d(iA3);
                this.f2055h0.b(iA6);
            }
            Log.e("Chip8918L", " Indexs:" + Arrays.toString(f2047r0.keySet().toArray()));
            LinkedList<c> orDefault = f2047r0.getOrDefault(this.f2055h0, null);
            this.f2054g0 = orDefault;
            if (orDefault == null) {
                Log.e("Chip8918L", this.f2055h0 + "to mTimings is NULL");
                return;
            }
            if (this.f2063p0 >= orDefault.size()) {
                this.f2063p0 = 0;
            }
            Log.e("Chip8918L", this.f2055h0 + "to mTimings size : " + this.f2054g0.size());
        }
    }

    public final void g0() {
        if (!n()) {
            l0((m0() && o0()) && n0());
        } else {
            this.U = s0.m("sys.c8918.w", 800);
            this.V = s0.m("sys.c8918.h", 480);
        }
    }

    @Override // e1.l
    public void h(int i2, int i3, int i4, int i5) {
        if (i2 == 2) {
            if (i3 < 0 || this.f2049b0 == i3) {
                return;
            }
            this.f2049b0 = i3;
            u0.d.I3(174, this.f2145i, 2, i3);
            synchronized (this.Z) {
                if (v0(112)) {
                    V(51, i3);
                }
            }
            return;
        }
        if (i2 == 500 && this.f2062o0 != i3) {
            LinkedList<c> linkedList = this.f2054g0;
            int iMin = Math.min(i3, linkedList == null ? 0 : linkedList.size());
            int iMax = Math.max(-1, i3);
            this.f2062o0 = iMax;
            this.f2060m0 = null;
            this.f2059l0 = null;
            int iMax2 = Math.max(0, Math.min(iMax, iMin));
            this.f2050c0.edit().putInt(f2046q0, this.f2062o0).apply();
            u0.d.I3(174, this.f2145i, 500, iMax2, iMin);
            if (this.f2063p0 == iMax2 || !this.f2154r) {
                return;
            }
            synchronized (this.Z) {
                if (this.U <= 0 || this.V <= 0) {
                    g0();
                }
            }
        }
    }

    public boolean h0(int i2) {
        return true;
    }

    public boolean i0() {
        Log.e("Chip8918L", "----- init_LT8918L_State");
        if (n()) {
            return true;
        }
        return (((m0()) && o0()) && n0()) && p0();
    }

    public final void j0(boolean z2) {
        if (!z2) {
            Log.e("Chip8918L", "----- Polling failed after max attempts");
            return;
        }
        Log.e("Chip8918L", "----- vdLT8918L_TX_DPHY_Logic_Reset");
        boolean zQ0 = q0();
        Log.e("Chip8918L", "----- vdLT8918L_TxPll_Output_Config");
        if ((zQ0 && s0()) && r0()) {
            t0();
        }
    }

    @Override // f1.q
    public int k() {
        boolean z2 = this.W.d() == 1;
        if (this.X.c(150)) {
            this.X.a();
            z2 = this.W.g(e0()) == 1;
        }
        int i2 = (z2 && this.R && this.f2145i > 0) ? 1 : 0;
        if (this.W.e() && !z2) {
            this.U = -1;
            this.V = -1;
            q.c cVar = this.T;
            cVar.f2164a = -1;
            cVar.f2165b = -1;
            this.f2147k = -1;
            u0.d.I3(173, y(-1, -1));
        }
        if (this.Y.c(200)) {
            this.Y.a();
            Log.e("Chip8918L", "  CHECK SIGNAL : imagType :  " + this.f2145i + " last  imagFormat :  " + this.f2147k + "  isHasSignal  : " + this.R + " mSignalMarker: " + this.W + " chipid : " + this.f2144h);
        }
        if (i2 != 0) {
            q.c cVar2 = this.T;
            int i3 = cVar2.f2164a;
            int i4 = this.U;
            if (i3 != i4 || cVar2.f2165b != this.V) {
                cVar2.f2164a = i4;
                cVar2.f2165b = this.V;
                this.S = true;
                Log.e("Chip8918L", "==============================>> 00 SET " + this.T + " videoWidth : " + this.U + " videoHeight : " + this.V + " chipid : " + this.f2144h);
            } else if (this.S) {
                this.S = false;
                String strH = Configure.Property.REAL_PLATFORM.h(ProxyProperties.LOCAL_EXCL_LIST);
                q.c cVar3 = this.T;
                int i5 = cVar3.f2164a;
                int i6 = cVar3.f2165b;
                if (s0.j("6321", strH) && i6 == 540 && i5 == 1440) {
                    i6 = 536;
                }
                u0.d.I3(173, y(i5, i6));
                Log.e("Chip8918L", "==============================>> 01 update " + this.T + " chipid : " + this.f2144h);
            }
        }
        return i2;
    }

    public final void l0(boolean z2) {
        this.f2052e0 = true;
        this.f2053f0 = 0;
        b bVar = new b(z2);
        this.f2051d0 = bVar;
        this.f2155s.post(bVar);
    }

    public boolean m0() {
        boolean z2 = v0(96) && V(238, 1) > 0;
        if (z2) {
            f0();
        }
        return z2;
    }

    public boolean n0() {
        boolean zV0 = v0(129);
        return ((((!this.Q ? !(!zV0 || V(17, 8) <= 0) : !(!zV0 || V(17, 32) <= 0)) && V(18, 0) > 0) && V(22, 48) > 0) && V(23, 4) > 0) && V(24, 1) > 0;
    }

    public boolean o0() {
        LinkedList<c> linkedList = this.f2054g0;
        if (linkedList != null) {
            int i2 = this.f2063p0;
            if (i2 >= 0 && i2 < linkedList.size()) {
                this.f2059l0 = this.f2054g0.get(this.f2063p0);
            }
        } else if (this.f2059l0 == null) {
            this.f2059l0 = this.f2058k0;
        }
        Log.e("Chip8918L", "------------------>> targetTimingIndex: " + this.f2063p0);
        Log.e("Chip8918L", "------------------>> target timing: " + Arrays.toString(this.f2061n0));
        boolean z2 = ((((((((((v0(112) && V(4, 4) > 0) && V(5, 254) > 0) && V(7, 171) > 0) && V(8, 0) > 0) && V(9, 8) > 0) && V(15, 4) > 0) && V(16, 255) > 0) && V(17, 170) > 0) && V(18, 171) > 0) && V(19, 8) > 0) && V(20, 8) > 0;
        boolean z3 = (!this.Q ? !(!z2 || V(24, 120) <= 0) : !(!z2 || V(24, 124) <= 0)) && V(25, 176) > 0;
        boolean z4 = (!this.Q ? !(!z3 || V(28, 72) <= 0) : !(!z3 || V(28, 76) <= 0)) && V(56, 176) > 0;
        v0(128);
        return z4 && V(56, 5) > 0;
    }

    @Override // f1.q
    public void p() {
        synchronized (this.Z) {
            boolean z2 = false;
            if (h0(0) && i0()) {
                z2 = true;
            }
            H(z2);
        }
    }

    public boolean p0() {
        boolean z2 = v0(96) && V(16, 95) > 0;
        s0.C(5L);
        return z2 && V(16, 255) > 0;
    }

    @Override // f1.q
    public boolean q(int[] iArr) {
        boolean z2;
        if (iArr == null || iArr.length < 2) {
            throw new RuntimeException("flushParams  data is NULL  or  data  size < 2 !!!! ");
        }
        Log.e("Chip8918L", "flushParams =============>> i2cInvalid : " + this.f2158v);
        if (this.f2158v) {
            return false;
        }
        synchronized (this.f2157u) {
            int length = iArr.length / 2;
            Log.e("Chip8918L", "flushParams  START  data  length = " + iArr.length);
            int i2 = 0;
            z2 = true;
            while (i2 < length) {
                int i3 = i2 * 2;
                int i4 = iArr[i3];
                int i5 = iArr[i3 + 1];
                int iV = V(i4, i5);
                boolean z3 = iV >= 0;
                Log.e("Chip8918L", String.format("[ %02X,  %02X]", Integer.valueOf(i4), Integer.valueOf(i5)) + "  result : " + z3 + " ret : " + iV);
                if (!z3) {
                    z2 = z3;
                    break;
                }
                i2++;
                z2 = z3;
            }
            Log.e("Chip8918L", "flushParams  END  data  length = " + iArr.length + " result:" + z2);
        }
        return z2;
    }

    public boolean q0() {
        boolean z2 = v0(96) && V(13, 0) > 0;
        s0.C(5L);
        return z2 && V(13, 255) > 0;
    }

    public boolean r0() {
        boolean z2 = v0(128) && V(51, 9) > 0;
        s0.C(10L);
        int iA = (((((A(48) & 15) << 8) + A(49)) << 8) + A(50)) / 1000;
        int i2 = iA / 10;
        int i3 = i2 + 2;
        int i4 = iA / 12;
        int i5 = i4 + 5;
        int i6 = (iA / 6) + 4;
        int i7 = i2 + 3;
        int i8 = i2 + 10;
        int i9 = i4 + 2;
        int i10 = (iA / 4) + 4;
        v0(131);
        return ((((((((z2 && V(64, 0) > 0) && V(65, i8) > 0) && V(66, i3) > 0) && V(67, i9) > 0) && V(68, i10) > 0) && V(70, i3) > 0) && V(71, i5) > 0) && V(72, i7) > 0) && V(74, (i3 + i5) + i6) > 0;
    }

    public boolean s0() {
        int i2;
        boolean z2 = (v0(112) && V(48, 0) > 0) && V(49, 44) > 0;
        int i3 = 70;
        if (this.f2059l0 != null) {
            Log.e("Chip8918L", ProxyProperties.LOCAL_EXCL_LIST + this.f2059l0);
            c cVar = this.f2059l0;
            i2 = cVar.f2070d;
            if (i2 < 0) {
                i2 = 10;
            }
            int i4 = cVar.f2071e;
            if (i4 >= 0) {
                i3 = i4;
            }
        } else {
            i2 = 10;
        }
        if (this.f2049b0 != i2) {
            this.f2049b0 = i2;
            u0.d.I3(174, this.f2145i, 2, i2);
        }
        boolean z3 = (((((z2 && V(51, i2) > 0) && V(52, i3) > 0) && V(36, 100) > 0) && V(35, 47) > 0) && V(35, 175) > 0) && V(35, 159) > 0;
        int i5 = 0;
        do {
            s0.C(20L);
            i5++;
            if ((A(53) & 1) != 0) {
                break;
            }
        } while (i5 < 5);
        if (i5 >= 5) {
            Log.e("Chip8918L", "\r\nLT8918L PLL lock timeout! (chip individual difference)");
        }
        boolean z4 = ((((z3 && v0(128)) && V(51, 12) > 0) && V(106, 10) > 0) && V(190, 64) > 0) && V(51, 9) > 0;
        s0.C(10L);
        A(48);
        A(49);
        A(50);
        return z4;
    }

    public boolean t0() {
        int i2;
        if (this.f2059l0 == null) {
            c cVar = this.f2060m0;
            if (cVar == null) {
                cVar = this.f2058k0;
            }
            this.f2059l0 = cVar;
        }
        int[] iArr = this.f2059l0.f2067a;
        this.f2061n0 = iArr;
        if (iArr == null) {
            this.f2061n0 = this.f2057j0;
        }
        v0(131);
        V(17, 0);
        s0.C(2L);
        V(17, 0);
        s0.C(2L);
        boolean zV0 = v0(131);
        int i3 = 223;
        c cVar2 = this.f2059l0;
        if (cVar2 != null) {
            i2 = cVar2.f2068b;
            if (i2 < 0) {
                i2 = 0;
            }
            int i4 = cVar2.f2069c;
            if (i4 >= 0) {
                i3 = i4;
            }
        } else {
            i2 = 0;
        }
        return ((((((((((((((zV0 && V(18, i2) > 0) && V(19, i3) > 0) && V(20, this.f2061n0[6] % 256) > 0) && V(21, this.f2061n0[7] % 256) > 0) && V(22, this.f2061n0[8] / 256) > 0) && V(23, this.f2061n0[8] % 256) > 0) && V(24, this.f2061n0[5] % 256) > 0) && V(25, 30) > 0) && V(26, 30) > 0) && V(27, 30) > 0) && V(28, this.f2061n0[3] / 256) > 0) && V(29, this.f2061n0[3] % 256) > 0) && V(31, 4) > 0) && V(16, 88) > 0) && V(17, 12) > 0;
    }

    public boolean u0() {
        int i2;
        v0(128);
        V(51, 12);
        s0.C(10L);
        Log.e("Chip8918L", "=====================>>>  vdLT8918L_Video_check() fm_value == " + (((((A(48) & 15) << 8) + A(49)) << 8) + A(50)));
        int iA = A(66);
        int iA2 = ((A(78) & 15) << 8) | A(79);
        int iA3 = ((A(76) & 15) << 8) | A(77);
        int iA4 = ((A(82) & 15) << 8) | A(83);
        int iA5 = ((A(80) & 15) << 8) | A(81);
        int iA6 = ((A(68) & 15) << 8) | A(69);
        int iA7 = ((A(72) & 15) << 8) | A(73);
        int iA8 = ((A(74) & 15) << 8) | A(75);
        int iA9 = A(67);
        int iA10 = A(70);
        int iA11 = A(71);
        Log.e("Chip8918L", String.format("hactive : %d,  vactive : %d sync_polarity : %d ", Integer.valueOf(iA4), Integer.valueOf(iA5), Integer.valueOf(iA)));
        Log.e("Chip8918L", String.format("htotal : %d,  vtotal : %d ", Integer.valueOf(iA2), Integer.valueOf(iA3)));
        Log.e("Chip8918L", String.format("hsa : %d,  vsa : %d ", Integer.valueOf(iA6), Integer.valueOf(iA9)));
        Log.e("Chip8918L", String.format("hbp : %d,  vbp : %d ", Integer.valueOf(iA7), Integer.valueOf(iA10)));
        Log.e("Chip8918L", String.format("hfp : %d,  vfp : %d ", Integer.valueOf(iA8), Integer.valueOf(iA11)));
        u0.d.I3(174, this.f2145i, 255, iA4, iA5, iA, iA2, iA3, iA6, iA9, iA7, iA10, iA8, iA11);
        if (iA4 <= 100 || iA4 > 3000 || iA5 <= 100 || iA5 > 2000) {
            this.R = false;
            this.U = iA4;
            this.V = iA5;
            this.f2147k = -1;
            return false;
        }
        int i3 = iA4 - (iA4 % 4);
        int i4 = iA5 - (iA5 % 4);
        this.U = i3;
        this.V = i4;
        if (this.f2147k != 14) {
            this.f2147k = 14;
        }
        v0(129);
        if ((iA & 1) == 0) {
            V(17, A(17) | 64);
        }
        if ((iA & 2) == 0) {
            V(17, A(17) | 128);
        }
        c cVar = this.f2059l0;
        if (cVar != null && (i2 = cVar.f2072f) >= 0) {
            V(17, i2);
        }
        int[] iArr = this.f2057j0;
        iArr[4] = iA2;
        iArr[9] = iA3;
        iArr[3] = i3;
        iArr[8] = i4;
        iArr[1] = iA6;
        iArr[6] = iA9;
        iArr[2] = iA7;
        iArr[7] = iA10;
        iArr[0] = iA8;
        iArr[5] = iA11;
        this.R = true;
        return true;
    }

    public boolean v0(int i2) {
        return V(255, i2) > 0;
    }
}
