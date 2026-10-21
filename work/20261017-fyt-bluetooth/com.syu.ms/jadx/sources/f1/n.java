package f1;

import android.bluetooth.BluetoothClass;
import android.content.SharedPreferences;
import android.media.videoeditor.MediaProperties;
import android.os.FileObserver;
import android.os.Handler;
import android.util.Log;
import app.App;
import com.syu.jni.ToolsJni;
import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedList;
import o1.l0;
import o1.s0;
import o1.x;

/* JADX INFO: loaded from: classes2.dex */
public class n extends q {

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public static String f2077p0 = "timing_start";

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public static String f2078q0 = "value_926";

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public static String f2079r0 = "value_8002_";

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public static int f2080s0;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    public static HashMap<e, LinkedList<d>> f2081t0;
    public final boolean P;
    public boolean Q;
    public boolean R;
    public q.c S;
    public int T;
    public int U;
    public q1.b V;
    public l0 W;
    public l0 X;
    public final Object Y;
    public int Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public SharedPreferences f2082a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public Runnable f2083b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public boolean f2084c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public int f2085d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public LinkedList<d> f2086e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public e f2087f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public Runnable f2088g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public final Runnable f2089h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public int[] f2090i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public final d f2091j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public d f2092k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public d f2093l0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public int[] f2094m0;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public int f2095n0;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public int f2096o0;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            n nVar = n.this;
            if (nVar.f2154r && u0.b.f17306a0 == 1) {
                nVar.f2155s.removeCallbacks(nVar.f2089h0);
                n nVar2 = n.this;
                nVar2.f2155s.postDelayed(nVar2.f2089h0, 800L);
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            n.this.D();
        }
    }

    public class c implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ boolean f2099a;

        public c(boolean z2) {
            this.f2099a = z2;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (n.this.f2084c0) {
                n nVar = n.this;
                if (nVar.f2154r) {
                    nVar.t0();
                    s0.C(50L);
                    boolean zY0 = n.this.y0();
                    if (!zY0) {
                        n nVar2 = n.this;
                        if (nVar2.f2086e0 != null && nVar2.f2085d0 < n.this.f2086e0.size() + 1) {
                            if (n.this.s0()) {
                                n.this.r0();
                            }
                            n.a0(n.this);
                            if (n.this.f2084c0) {
                                n.this.f2155s.postDelayed(this, 20L);
                                return;
                            }
                            return;
                        }
                    }
                    n.this.f2084c0 = false;
                    n.this.n0(this.f2099a && zY0);
                    return;
                }
            }
            Log.e("Chip8918P", "----- Polling cancelled");
        }
    }

    public static class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int[] f2101a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f2102b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f2103c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f2104d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f2105e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f2106f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public e f2107g;

        public d(int[] iArr, int i2, int i3, int i4, int i5, int i6) {
            this.f2101a = null;
            this.f2102b = -1;
            this.f2103c = -1;
            this.f2104d = -1;
            this.f2105e = -1;
            this.f2106f = -1;
            this.f2107g = null;
            this.f2107g = new e(iArr[4], iArr[9], iArr[1]);
            this.f2101a = iArr;
            this.f2102b = i2;
            this.f2103c = i3;
            this.f2104d = i4;
            this.f2105e = i5;
            this.f2106f = i6;
        }

        public boolean a(int i2, int i3, int i4) {
            int[] iArr = this.f2101a;
            return iArr[4] == i2 && iArr[9] == i3 && iArr[1] == i4;
        }

        public void b(e eVar) {
            this.f2107g = eVar;
        }

        public boolean equals(Object obj) {
            return obj instanceof d ? Arrays.equals(((d) obj).f2101a, this.f2101a) : super.equals(obj);
        }

        public int hashCode() {
            return Arrays.hashCode(this.f2101a) + (this.f2107g.hashCode() * 31);
        }
    }

    public static class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f2108a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f2109b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f2110c;

        public e(int i2, int i3, int i4) {
            this.f2108a = i2;
            this.f2109b = i3;
            this.f2110c = i4;
        }

        public void a(int i2) {
            this.f2110c = i2;
        }

        public void b(int i2) {
            this.f2108a = i2;
        }

        public void c(int i2) {
            this.f2109b = i2;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof e)) {
                return super.equals(obj);
            }
            e eVar = (e) obj;
            return this.f2108a == eVar.f2108a && this.f2109b == eVar.f2109b && this.f2110c == eVar.f2110c;
        }

        public int hashCode() {
            return (this.f2108a * 1000000) + (this.f2109b * 1000) + this.f2110c;
        }

        public String toString() {
            return "TimingIndex: [" + this.f2108a + "," + this.f2109b + ", " + this.f2110c + "]";
        }
    }

    static {
        d0(new int[]{125, 2, 130, 800, 1057, 43, 1, 2, 480, 526});
        e0(new int[]{2, 70, 185, 800, 1057, 44, 1, 1, 480, 526}, -1, 178, 8);
        d0(new int[]{168, 20, 68, 800, BluetoothClass.Device.AUDIO_VIDEO_CAR_AUDIO, 32, 2, 11, 480, 525});
        d0(new int[]{234, 20, 2, 800, BluetoothClass.Device.AUDIO_VIDEO_CAR_AUDIO, 25, 2, 18, 480, 525});
        f0(new int[]{234, 20, 2, 800, BluetoothClass.Device.AUDIO_VIDEO_CAR_AUDIO, 15, 2, 28, 480, 525}, -1, 71, 10, 80);
        e0(new int[]{123, 5, 128, 800, BluetoothClass.Device.AUDIO_VIDEO_CAR_AUDIO, 19, 5, 21, 480, 525}, -1, -1, 12);
        e0(new int[]{32, 5, 8, 1280, 1326, 20, 2, 1, 540, 563}, -1, 114, 19);
        c0(BluetoothClass.Device.AUDIO_VIDEO_CAR_AUDIO, 525, 128, new int[]{170, 80, 6, 800, BluetoothClass.Device.AUDIO_VIDEO_CAR_AUDIO, 11, 2, 32, 480, 525}, -1, 40, -1, -1, 1);
        d0(new int[]{26, 3, 31, 800, 860, 26, 3, 2, 480, 513});
        e0(new int[]{141, 3, 42, 800, 986, 66, 3, 76, 480, 626}, -1, -1, 15);
        e0(new int[]{324, 10, 38, 800, 1178, 16, 4, 22, 480, BluetoothClass.Device.PHONE_SMART}, -1, -1, 11);
        e0(new int[]{143, 5, 38, 800, 986, 70, 4, 68, 480, 622}, -1, -1, 14);
        e0(new int[]{141, 5, 38, 800, 984, 70, 4, 68, 480, 622}, -1, -1, 14);
        e0(new int[]{178, 8, 2, 1280, 1468, 11, 2, 3, 768, 784}, -1, -1, 26);
        e0(new int[]{118, 2, 136, 800, BluetoothClass.Device.AUDIO_VIDEO_CAR_AUDIO, 40, 1, 4, 480, 525}, -1, -1, 10);
        e0(new int[]{34, 84, 100, 800, 1018, 32, 3, 31, 480, 546}, -1, -1, 12);
        e0(new int[]{34, 84, 100, 800, 1018, 32, 3, 31, 480, 548}, -1, -1, 12);
        g0(new int[]{20, 10, 40, 1920, 1990, 12, 2, 43, 1080, 1137}, -1, -1, 25, -1, 1);
        e0(new int[]{32, 12, 10, MediaProperties.HEIGHT_720, 774, 3, 4, 9, 1920, 1936}, -1, -1, 22);
    }

    public n(int i2, p1.a aVar, int i3, Handler handler) {
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
        this.f2082a0 = null;
        this.f2084c0 = false;
        this.f2085d0 = 0;
        this.f2086e0 = null;
        this.f2087f0 = null;
        this.f2088g0 = new a();
        this.f2089h0 = new b();
        this.f2090i0 = new int[]{26, 3, 31, 800, 860, 26, 3, 2, 480, 513};
        this.f2091j0 = new d(new int[]{26, 3, 31, 800, 860, 26, 3, 2, 480, 513}, -1, -1, -1, -1, -1);
        this.f2092k0 = null;
        this.f2093l0 = null;
        this.f2094m0 = null;
        this.f2095n0 = 0;
        this.f2096o0 = -1;
        SharedPreferences sharedPreferences = App.c().getSharedPreferences("Chip8918P", 0);
        this.f2082a0 = sharedPreferences;
        this.Z = sharedPreferences.getInt(f2078q0, s0.m("sys.c926.mode", -1));
        this.f2095n0 = this.f2082a0.getInt(f2077p0, s0.m("sys.chip8918p.timing_index", -1));
    }

    public static /* synthetic */ int a0(n nVar) {
        int i2 = nVar.f2085d0;
        nVar.f2085d0 = i2 + 1;
        return i2;
    }

    public static void c0(int i2, int i3, int i4, int[] iArr, int i5, int i6, int i7, int i8, int i9) {
        d dVar = new d(iArr, i5, i6, i7, i8, i9);
        dVar.b(new e(i2, i3, i4));
        o0(dVar);
    }

    public static void d0(int[] iArr) {
        e0(iArr, -1, -1, -1);
    }

    public static void e0(int[] iArr, int i2, int i3, int i4) {
        f0(iArr, i2, i3, i4, -1);
    }

    public static void f0(int[] iArr, int i2, int i3, int i4, int i5) {
        g0(iArr, i2, i3, i4, i5, -1);
    }

    public static void g0(int[] iArr, int i2, int i3, int i4, int i5, int i6) {
        o0(new d(iArr, i2, i3, i4, i5, i6));
    }

    public static synchronized void o0(d dVar) {
        if (f2081t0 == null) {
            f2081t0 = new HashMap<>();
        }
        LinkedList<d> linkedList = f2081t0.get(dVar.f2107g);
        if (linkedList != null) {
            linkedList.add(dVar);
        } else {
            LinkedList<d> linkedList2 = new LinkedList<>();
            linkedList2.add(dVar);
            f2081t0.put(dVar.f2107g, linkedList2);
        }
        Log.e("Chip8918P", "==== timingMap size: " + f2081t0.size());
    }

    public final boolean A0(int i2) {
        boolean z2 = W(44, 2, i2) > 0 && (W(44, 1, 2) > 0);
        if (B(44, 2) != i2) {
            s0.C(20L);
            W(44, 2, i2);
        }
        return W(44, 1, 1) > 0 && (z2 && B(44, 2) == i2);
    }

    @Override // f1.q
    public boolean C(int i2, y.b bVar) {
        if (i2 != 174) {
            return false;
        }
        x.v(bVar, i2, this.f2145i, 4, this.f2082a0.getInt(f2079r0, f2080s0));
        x.v(bVar, i2, this.f2145i, 0, this.Z);
        int[] iArr = new int[4];
        iArr[0] = this.f2145i;
        iArr[1] = 500;
        iArr[2] = this.f2095n0;
        LinkedList<d> linkedList = this.f2086e0;
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
        Log.e("Chip8918P", "==============================>> RESET  Waiting onUEvent START 1 chipid : " + this.f2144h);
        this.T = -1;
        this.U = -1;
        ToolsJni.cmd_33_reset_videoIc(this.f2144h);
        Log.e("Chip8918P", "==============================>> RESET Waiting onUEvent END 1 chipid : " + this.f2144h);
    }

    @Override // f1.q
    public boolean M() {
        Log.e("Chip8918P", "==============================>> setup()  chipid : " + this.f2144h + " loaded: " + this.f2154r);
        if (n()) {
            return true;
        }
        if (!this.f2154r) {
            Handler handler = this.f2155s;
            if (handler != null) {
                handler.removeCallbacks(this.f2089h0);
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
        Log.e("Chip8918P", "==============================>> 02 update " + this.S + " chipid : " + this.f2144h);
    }

    @Override // f1.q, e1.l
    public void a() {
        h0();
        this.U = -1;
        this.T = -1;
        q.c cVar = this.S;
        cVar.f2164a = -1;
        cVar.f2165b = -1;
        this.R = false;
        Log.e("Chip8918P", "==============================>> 03 update " + this.S + " chipid : " + this.f2144h);
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
        Log.e("Chip8918P", "==============================>> 04 openVideo channel " + i2 + " loaded : " + this.f2154r + " chipid : " + this.f2144h);
        if (this.f2145i != i2) {
            this.f2145i = i2;
            Handler handler = this.f2155s;
            if (handler != null) {
                handler.removeCallbacks(this.f2089h0);
            }
        }
        if (this.f2154r) {
            synchronized (this.Y) {
                if (this.T <= 0 || this.U <= 0) {
                    k0();
                }
            }
        } else {
            D();
        }
    }

    @Override // f1.q, e1.l
    public void d() {
        this.f2155s.removeCallbacks(this.f2089h0);
        super.d();
    }

    @Override // e1.l
    public void h(int i2, int i3, int i4, int i5) {
        if (i2 == 4) {
            int i6 = this.f2082a0.getInt(f2079r0, f2080s0);
            if (i6 != i3) {
                this.f2082a0.edit().putInt(f2079r0, i3).apply();
                u0.d.I3(174, this.f2145i, 4, i3);
                synchronized (this.Y) {
                    boolean zZ0 = z0(128);
                    Log.e("Chip8918P", String.format("001 write 0x80 0x02 %02x", Integer.valueOf(i6)));
                    if (zZ0) {
                        V(2, i6);
                    }
                }
                return;
            }
            return;
        }
        if (i2 == 500 && this.f2095n0 != i3) {
            LinkedList<d> linkedList = this.f2086e0;
            int iMin = Math.min(i3, linkedList == null ? 0 : linkedList.size());
            int iMax = Math.max(-1, i3);
            this.f2095n0 = iMax;
            this.f2093l0 = null;
            this.f2092k0 = null;
            int iMax2 = Math.max(0, Math.min(iMax, iMin));
            this.f2082a0.edit().putInt(f2077p0, this.f2095n0).apply();
            u0.d.I3(174, this.f2145i, 500, iMax2, iMin);
            if (this.f2096o0 == iMax2 || !this.f2154r) {
                return;
            }
            synchronized (this.Y) {
                if (this.T <= 0 || this.U <= 0) {
                    k0();
                }
            }
        }
    }

    public void h0() {
        if (this.f2084c0) {
            this.f2084c0 = false;
            Runnable runnable = this.f2083b0;
            if (runnable != null) {
                this.f2155s.removeCallbacks(runnable);
                this.f2083b0 = null;
            }
            Log.e("Chip8918P", "----- Polling task cancelled");
        }
    }

    public int i0() {
        if (n()) {
            return 1;
        }
        z0(128);
        return (A(32) >> 6) & 255;
    }

    public void j0() {
        boolean z2;
        z0(128);
        V(56, 22);
        V(51, 9);
        s0.C(10L);
        Log.e("Chip8918P", String.format("Reset READ fm_value : %d ", Integer.valueOf(((((A(48) & 15) << 8) + A(49)) << 8) + A(50))));
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
        Log.e("Chip8918P", String.format("00 hactive : %d,  vactive : %d sync_polarity : %d ", Integer.valueOf(iA3), Integer.valueOf(iA4), Integer.valueOf(A(66))));
        Log.e("Chip8918P", String.format("00 htotal : %d,  vtotal : %d,  hsa : %d", Integer.valueOf(iA), Integer.valueOf(iA2), Integer.valueOf(iA5)));
        Log.e("Chip8918P", String.format("00 hfp : %d,  vfp : %d ", Integer.valueOf(iA7), Integer.valueOf(iA10)));
        Log.e("Chip8918P", String.format("00 hsa : %d,  vsa : %d ", Integer.valueOf(iA5), Integer.valueOf(iA8)));
        Log.e("Chip8918P", String.format("00 hbp : %d,  vbp : %d ", Integer.valueOf(iA6), Integer.valueOf(iA9)));
        this.f2096o0 = Math.max(this.f2095n0, 0);
        d dVar = this.f2092k0;
        if (dVar == null) {
            z2 = true;
        } else if (dVar.a(iA, iA2, iA5)) {
            this.f2086e0 = null;
            z2 = false;
        } else {
            this.f2093l0 = this.f2092k0;
            this.f2092k0 = null;
            z2 = true;
        }
        if (z2) {
            e eVar = this.f2087f0;
            if (eVar == null) {
                this.f2087f0 = new e(iA, iA2, iA5);
            } else {
                eVar.b(iA);
                this.f2087f0.c(iA2);
                this.f2087f0.a(iA5);
            }
            Log.e("Chip8918P", " Indexs:" + Arrays.toString(f2081t0.keySet().toArray()));
            LinkedList<d> orDefault = f2081t0.getOrDefault(this.f2087f0, null);
            this.f2086e0 = orDefault;
            if (orDefault == null) {
                Log.e("Chip8918P", this.f2087f0 + "to mTimings is NULL");
                return;
            }
            if (this.f2096o0 >= orDefault.size()) {
                this.f2096o0 = 0;
            }
            Log.e("Chip8918P", this.f2087f0 + "to mTimings size : " + this.f2086e0.size());
        }
    }

    /* JADX WARN: Code duplicated, block: B:36:0x010c  */
    /* JADX WARN: Instruction removed from duplicated block: B:36:0x010c, please report this as an issue */
    @Override // f1.q
    public int k() {
        boolean z2 = this.V.d() == 1;
        if (this.W.c(150)) {
            this.W.a();
            z2 = this.V.g(i0()) == 1;
        }
        int i2 = (z2 && this.Q && this.f2145i > 0) ? 1 : 0;
        if (this.V.e() && !z2) {
            this.T = -1;
            this.U = -1;
            q.c cVar = this.S;
            cVar.f2164a = -1;
            cVar.f2165b = -1;
            this.f2147k = -1;
            u0.d.I3(173, y(-1, -1));
        }
        if (this.X.c(200)) {
            this.X.a();
            Log.e("Chip8918P", "  CHECK SIGNAL : imagType :  " + this.f2145i + " last  imagFormat :  " + this.f2147k + "  isHasSignal  : " + this.Q + " mSignalMarker: " + this.V + " chipid : " + this.f2144h);
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
                    Log.e("Chip8918P", "==============================>> 00 SET " + this.S + " videoWidth : " + this.T + " videoHeight : " + this.U + " chipid : " + this.f2144h);
                } else if (this.R) {
                    this.R = false;
                    new q.c(i4, i6);
                    u0.d.I3(174, this.f2145i, 4, this.f2082a0.getInt(f2079r0, f2080s0));
                    q.c cVar3 = this.S;
                    u0.d.I3(173, y(cVar3.f2164a, cVar3.f2165b));
                    Log.e("Chip8918P", "==============================>> 01 update " + this.S + " chipid : " + this.f2144h);
                }
            } else {
                cVar2.f2164a = i4;
                cVar2.f2165b = this.U;
                this.R = true;
                Log.e("Chip8918P", "==============================>> 00 SET " + this.S + " videoWidth : " + this.T + " videoHeight : " + this.U + " chipid : " + this.f2144h);
            }
        }
        return i2;
    }

    public final void k0() {
        if (!n()) {
            p0((q0() && s0()) && r0());
        } else {
            this.T = s0.m("sys.c8918.w", 800);
            this.U = s0.m("sys.c8918.h", 480);
        }
    }

    public boolean l0(int i2) {
        return true;
    }

    public boolean m0() {
        Log.e("Chip8918P", "----- init_LT8918L_State");
        if (n()) {
            this.T = s0.m("sys.c8918.w", 800);
            this.U = s0.m("sys.c8918.h", 480);
            return true;
        }
        int i2 = 5;
        do {
            int i3 = this.Z;
            boolean zA0 = i3 > 0 ? A0(i3) : true;
            s0.C(50L);
            if (zA0) {
                break;
            }
            i2--;
        } while (i2 > 0);
        return (((q0()) && s0()) && r0()) && t0();
    }

    public final void n0(boolean z2) {
        if (!z2) {
            Log.e("Chip8918P", "----- Polling failed after max attempts");
            return;
        }
        Log.e("Chip8918P", "----- vdLT8918L_TX_DPHY_Logic_Reset");
        boolean zU0 = u0();
        Log.e("Chip8918P", "----- vdLT8918L_TxPll_Output_Config");
        if ((zU0 && w0()) && v0()) {
            x0();
        }
    }

    @Override // f1.q
    public void p() {
        synchronized (this.Y) {
            boolean z2 = false;
            if (l0(0) && m0()) {
                z2 = true;
            }
            H(z2);
        }
    }

    public final void p0(boolean z2) {
        this.f2084c0 = true;
        this.f2085d0 = 0;
        c cVar = new c(z2);
        this.f2083b0 = cVar;
        this.f2155s.post(cVar);
    }

    @Override // f1.q
    public boolean q(int[] iArr) {
        boolean z2;
        if (iArr == null || iArr.length < 2) {
            throw new RuntimeException("flushParams  data is NULL  or  data  size < 2 !!!! ");
        }
        Log.e("Chip8918P", "flushParams =============>> i2cInvalid : " + this.f2158v);
        if (this.f2158v) {
            return false;
        }
        synchronized (this.f2157u) {
            int length = iArr.length / 2;
            Log.e("Chip8918P", "flushParams  START  data  length = " + iArr.length);
            int i2 = 0;
            z2 = true;
            while (i2 < length) {
                int i3 = i2 * 2;
                int i4 = iArr[i3];
                int i5 = iArr[i3 + 1];
                int iV = V(i4, i5);
                boolean z3 = iV >= 0;
                Log.e("Chip8918P", String.format("[ %02X,  %02X]", Integer.valueOf(i4), Integer.valueOf(i5)) + "  result : " + z3 + " ret : " + iV);
                if (!z3) {
                    z2 = z3;
                    break;
                }
                i2++;
                z2 = z3;
            }
            Log.e("Chip8918P", "flushParams  END  data  length = " + iArr.length + " result:" + z2);
        }
        return z2;
    }

    public boolean q0() {
        boolean z2 = z0(96) && V(238, 1) > 0;
        if (z2) {
            j0();
        }
        return z2;
    }

    public boolean r0() {
        int i2 = this.f2082a0.getInt(f2079r0, f2080s0);
        boolean zZ0 = z0(128);
        Log.e("Chip8918P", String.format("002 write 0x80 0x02 %02x", Integer.valueOf(i2)));
        return zZ0 && V(2, i2) > 0;
    }

    /* JADX WARN: Code duplicated, block: B:77:0x010e  */
    /* JADX WARN: Code duplicated, block: B:82:0x0124  */
    /* JADX WARN: Code duplicated, block: B:88:0x013a  */
    /* JADX WARN: Code duplicated, block: B:93:0x0150  */
    /* JADX WARN: Code restructure failed: missing block: B:174:0x022b, code lost:
    
        if (V(56, 22) > 0) goto L123;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean s0() {
        /*
            Method dump skipped, instruction units count: 560
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: f1.n.s0():boolean");
    }

    public boolean t0() {
        boolean z2 = z0(96) && V(16, 0) > 0;
        s0.C(5L);
        return z2 && V(16, 255) > 0;
    }

    public boolean u0() {
        boolean z2 = z0(96) && V(13, 0) > 0;
        s0.C(5L);
        return z2 && V(13, 255) > 0;
    }

    public boolean v0() {
        boolean z2 = z0(128) && V(51, 9) > 0;
        s0.C(10L);
        int iA = (((((A(48) & 15) << 8) + A(49)) << 8) + A(50)) / 1000;
        int i2 = iA / 10;
        int i3 = iA / 12;
        int i4 = iA / 6;
        int i5 = iA / 4;
        return (((((z2 && z0(131)) && V(64, 0) > 0) && V(70, 8) > 0) && V(71, 8) > 0) && V(72, 10) > 0) && V(74, 48) > 0;
    }

    public boolean w0() {
        int i2;
        int i3;
        boolean z2 = (z0(112) && V(48, 0) > 0) && V(49, 44) > 0;
        new q.c(this.T, this.U);
        d dVar = this.f2092k0;
        if (dVar == null || (i2 = dVar.f2104d) < 0) {
            i2 = 10;
        }
        boolean z3 = ((((((z2 && V(51, i2) > 0) && V(52, 2) > 0) && V(36, 100) > 0) && V(35, 47) > 0) && V(35, 175) > 0) && V(35, 159) > 0) && z0(128);
        d dVar2 = this.f2092k0;
        if (dVar2 == null || (i3 = dVar2.f2106f) < 0) {
            i3 = 0;
        }
        boolean z4 = z3 && V(51, (i3 << 5) | 12) > 0;
        s0.C(10L);
        A(48);
        A(49);
        A(50);
        boolean z5 = (((z4 && z0(128)) && V(51, (i3 << 5) | 9) > 0) && V(106, 10) > 0) && V(190, 64) > 0;
        s0.C(10L);
        A(48);
        A(49);
        A(50);
        return z5;
    }

    /* JADX WARN: Code duplicated, block: B:18:0x004b  */
    /* JADX WARN: Code duplicated, block: B:28:0x0062  */
    public boolean x0() {
        boolean z2;
        boolean z3;
        if (this.f2092k0 == null) {
            d dVar = this.f2093l0;
            if (dVar == null) {
                dVar = this.f2091j0;
            }
            this.f2092k0 = dVar;
        }
        this.f2094m0 = this.f2092k0.f2101a;
        Log.e("Chip8918P", "xx------------------>> target timing: " + Arrays.toString(this.f2094m0));
        if (z0(131)) {
            int i2 = this.f2092k0.f2102b;
            if (i2 < 0) {
                i2 = 2;
            }
            if (V(18, i2) > 0) {
                z2 = true;
            } else {
                z2 = false;
            }
        } else {
            z2 = false;
        }
        if (z2) {
            int i3 = this.f2092k0.f2103c;
            if (i3 < 0) {
                i3 = 88;
            }
            if (V(19, i3) > 0) {
                z3 = true;
            } else {
                z3 = false;
            }
        } else {
            z3 = false;
        }
        return ((((((((((((z3 && V(20, this.f2094m0[6] % 256) > 0) && V(21, this.f2094m0[7] % 256) > 0) && V(22, this.f2094m0[8] / 256) > 0) && V(23, this.f2094m0[8] % 256) > 0) && V(24, this.f2094m0[5] % 256) > 0) && V(25, 1) > 0) && V(26, 1) > 0) && V(27, 1) > 0) && V(28, this.f2094m0[3] / 256) > 0) && V(29, this.f2094m0[3] % 256) > 0) && V(16, 88) > 0) && V(31, 4) > 0) && V(17, 44) > 0;
    }

    public boolean y0() {
        String str;
        int i2;
        int i3;
        z0(128);
        V(56, 22);
        V(51, 9);
        s0.C(10L);
        Log.e("Chip8918P", "=====================>>>  vdLT8918L_Video_check() fm_value == " + (((((A(48) & 15) << 8) + A(49)) << 8) + A(50)));
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
        Log.e("Chip8918P", String.format("hactive : %d,  vactive : %d sync_polarity : %d ", Integer.valueOf(iA3), Integer.valueOf(iA4), Integer.valueOf(iA11)));
        Log.e("Chip8918P", String.format("htotal : %d,  vtotal : %d ", Integer.valueOf(iA), Integer.valueOf(iA2)));
        Log.e("Chip8918P", String.format("hsa : %d,  vsa : %d ", Integer.valueOf(iA5), Integer.valueOf(iA8)));
        Log.e("Chip8918P", String.format("hbp : %d,  vbp : %d ", Integer.valueOf(iA6), Integer.valueOf(iA9)));
        Log.e("Chip8918P", String.format("hfp : %d,  vfp : %d ", Integer.valueOf(iA7), Integer.valueOf(iA10)));
        u0.d.I3(174, this.f2145i, 255, iA3, iA4, iA11, iA, iA2, iA5, iA8, iA6, iA9, iA7, iA10);
        if (iA3 <= 100 || iA3 > 3000 || iA4 <= 100 || iA4 > 2000) {
            LinkedList<d> linkedList = this.f2086e0;
            if (linkedList != null && !linkedList.isEmpty()) {
                int i4 = this.f2096o0;
                if (this.f2095n0 < 0 && i4 < this.f2086e0.size() - 1) {
                    this.f2096o0++;
                }
                Log.e("Chip8918P", "00 targetTimingIndex: " + i4 + " ==> " + this.f2096o0);
            }
            this.Q = false;
            this.T = iA3;
            this.U = iA4;
            this.f2147k = -1;
            return false;
        }
        d dVar = this.f2092k0;
        if (dVar != null) {
            this.f2094m0 = dVar.f2101a;
        }
        if (this.f2094m0 != null) {
            Log.e("Chip8918P", "current targetTiming hsa: " + this.f2094m0[1] + " hbp: " + this.f2094m0[2] + " hfp: " + this.f2094m0[0]);
        }
        StringBuilder sb = new StringBuilder();
        sb.append("mTimings: ");
        if (this.f2086e0 == null) {
            str = " is Null !!";
        } else {
            str = " size is: " + this.f2086e0.size();
        }
        sb.append(str);
        Log.e("Chip8918P", sb.toString());
        int[] iArr = this.f2094m0;
        if (iArr != null && iA == iArr[4] && iA2 == iArr[9] && iA5 != iArr[1]) {
            LinkedList<d> linkedList2 = this.f2086e0;
            if (linkedList2 != null && !linkedList2.isEmpty()) {
                int i5 = this.f2096o0;
                if (this.f2095n0 < 0 && i5 < this.f2086e0.size()) {
                    this.f2096o0++;
                }
                Log.e("Chip8918P", "01 targetTimingIndex: " + i5 + " ==> " + this.f2096o0);
            }
            LinkedList<d> linkedList3 = this.f2086e0;
            if (linkedList3 != null && this.f2096o0 < linkedList3.size()) {
                this.Q = false;
                this.T = iA3;
                this.U = iA4;
                this.f2147k = -1;
                return false;
            }
        }
        this.T = iA3 - (iA3 % 4);
        this.U = iA4 - (iA4 % 4);
        if (this.f2147k != 14) {
            this.f2147k = 14;
        }
        z0(128);
        if ((iA11 & 1) == 0) {
            i2 = 3;
            V(3, A(3) | 64);
        } else {
            i2 = 3;
        }
        if ((2 & iA11) == 0) {
            V(i2, A(i2) | 128);
        }
        d dVar2 = this.f2092k0;
        if (dVar2 != null && (i3 = dVar2.f2105e) >= 0) {
            V(i2, i3);
        }
        this.Q = true;
        return true;
    }

    public boolean z0(int i2) {
        return V(255, i2) > 0;
    }
}
