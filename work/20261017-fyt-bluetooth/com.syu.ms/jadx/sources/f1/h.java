package f1;

import android.media.videoeditor.MediaProperties;
import android.net.ConnectivityManager;
import android.net.ProxyProperties;
import android.os.Handler;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.util.Log;
import app.App;
import base.Configure;
import com.syu.jni.ToolsJni;
import com.syu.ms.R;
import java.util.Arrays;
import o1.b0;
import o1.s0;

/* JADX INFO: loaded from: classes2.dex */
public class h extends s {
    public final boolean T;
    public int U;
    public int V;
    public int W;
    public int X;
    public int Y;
    public Object Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public volatile boolean f1979a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public final Runnable f1980b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public boolean f1981c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public final Runnable f1982d0;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int size = h.this.f2141e.size();
            for (int i2 = 0; i2 < size; i2++) {
                s.a aVarValueAt = h.this.f2141e.valueAt(i2);
                if (aVarValueAt != null) {
                    aVarValueAt.n();
                    aVarValueAt.o();
                }
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h hVar = h.this;
            hVar.i0(hVar.f2160x);
        }
    }

    public class c extends s.a {

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public int f1985n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public boolean f1986o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public q1.b f1987p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public q1.b f1988q;

        public c(int i2, int i3, boolean z2, int... iArr) {
            super();
            this.f1985n = 1;
            this.f1986o = true;
            this.f1987p = new q1.b(-1, 4);
            this.f1988q = new q1.b(-1, 4);
            this.f2169b = i2;
            this.f2170c = i3;
            this.f2168a = z2;
            this.f2176i = new q1.b(-1, 3);
            this.f2177j = new q1.b(-1, 3);
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            for (int i4 : iArr) {
                this.f2172e.add(Integer.valueOf(i4));
            }
        }

        @Override // f1.s.a
        public void a() {
            o();
        }

        @Override // f1.s.a
        public boolean c() {
            int i2;
            String string;
            int[] iArrD;
            int i3 = this.f2170c;
            if (i3 < 0) {
                return false;
            }
            if (!this.f2179l && i3 != q.L) {
                this.f2175h = -1;
            }
            int i4 = this.f2175h;
            if (i4 <= -1) {
                return false;
            }
            if (i4 == 0) {
                i2 = R.raw.chip6854_cvbs_ntsc;
                string = "VIDEO_NP_NTSC";
            } else if (i4 != 1) {
                if (i4 == 2) {
                    i2 = this.f1986o ? R.raw.chip6854_720p25 : R.raw.chip6854_720p25_tvi;
                    StringBuilder sb = new StringBuilder();
                    sb.append("VIDEO_NP_R720P25_");
                    sb.append(this.f1986o ? "AHD" : "TVI");
                    string = sb.toString();
                } else if (i4 == 3) {
                    i2 = this.f1986o ? R.raw.chip6854_720p30 : R.raw.chip6854_720p30_tvi;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("VIDEO_NP_R720P30_");
                    sb2.append(this.f1986o ? "AHD" : "TVI");
                    string = sb2.toString();
                } else if (i4 == 6) {
                    i2 = R.raw.chip6854_1080p25;
                    string = "VIDEO_NP_R1080P25";
                } else if (i4 != 7) {
                    string = "VIDEO_UNKNOW";
                    i2 = 0;
                } else {
                    i2 = R.raw.chip6854_1080p30;
                    string = "VIDEO_NP_R1080P30";
                }
            } else {
                i2 = R.raw.chip6854_cvbs_pal;
                string = "VIDEO_NP_PAL";
            }
            if (i2 == 0) {
                return false;
            }
            Log.e("Chip6854", "handleSignal  index : " + this.f2169b + " videoFormat:" + string + " hasSignal:" + this.f2179l);
            boolean z2 = (((h.this.Z(255, this.f2169b)) && h.this.q(s0.A(App.c(), i2, 16))) && h.this.Z(86, this.f1985n)) && h.this.Z(63, this.f2170c | 16);
            Log.e("Chip6854", "handleSignal  index : " + this.f2169b + " videoFormat:" + string + "  ret : " + z2);
            if (this.f2170c == q.O && this.f2175h == 6) {
                String strO = s0.o("persist.lsec.chip6854.fix_params", ProxyProperties.LOCAL_EXCL_LIST);
                if (!s0.t(strO) && (iArrD = s0.D(strO)) != null) {
                    Log.e("Chip6854", "params:" + b0.e(iArrD, 0, iArrD.length));
                    h.this.Z(iArrD);
                }
            }
            return z2;
        }

        /* JADX WARN: Code duplicated, block: B:54:0x0156  */
        /* JADX WARN: Code duplicated, block: B:55:0x015a  */
        /* JADX WARN: Code duplicated, block: B:56:0x015e  */
        /* JADX WARN: Code duplicated, block: B:57:0x0162  */
        /* JADX WARN: Code duplicated, block: B:58:0x0166  */
        /* JADX WARN: Code duplicated, block: B:59:0x016a  */
        @Override // f1.s.a
        public boolean f() {
            int i2;
            int iA;
            boolean z2 = this.f2170c < 0 || !this.f2168a || h.this.f1981c0;
            if (z2) {
                i2 = 1;
                iA = 255;
            } else {
                h.this.V(211, 80);
                h.this.V(255, this.f2169b);
                iA = h.this.A(0);
                i2 = (iA >> 4) & 1;
            }
            if (h.this.R.c(1000)) {
                Log.e("Chip6854", "handleSignal  index : " + this.f2169b + " ret : " + i2 + String.format(" value: %02X", Integer.valueOf(iA)) + " videoFormat: " + this.f2175h + " " + this.f2177j + " isReady :" + h.this.f1979a0);
                if (this.f2170c == q.O) {
                    this.f1987p.g(h.this.A(123));
                    this.f1988q.g(h.this.A(126));
                    Log.e("Chip6854", "handleSignal Reg 7B: " + String.format("%02X", Integer.valueOf(this.f1987p.d())) + " Reg 7E: " + String.format("%02X", Integer.valueOf(this.f1988q.d())));
                }
            }
            if (i2 == 0) {
                this.f2177j.g(1);
            } else {
                this.f2177j.g(0);
            }
            if (this.f2177j.d() == 1) {
                int iA2 = z2 ? 255 : h.this.A(0) & i.a.Theme_actionModeShareDrawable;
                if (this.f2170c == q.L) {
                    d(h.this.Y);
                } else if (iA2 == 0) {
                    d(1);
                } else if (iA2 == 1) {
                    d(0);
                } else if (iA2 == 32) {
                    d(2);
                } else if (iA2 == 33) {
                    d(3);
                } else if (iA2 == 64) {
                    d(6);
                } else if (iA2 == 65) {
                    d(7);
                } else if (iA2 == 128) {
                    d(1);
                } else if (iA2 == 129) {
                    d(0);
                } else if (iA2 == 160) {
                    d(2);
                } else if (iA2 == 161) {
                    d(3);
                } else if (iA2 == 192) {
                    d(6);
                } else if (iA2 != 193) {
                    d(-1);
                } else {
                    d(7);
                }
            } else {
                d(-1);
            }
            this.f2178k = this.f2176i.e() && this.f2176i.d() > -1 && !this.f2176i.f(this.f2175h);
            if (this.f2176i.d() == 2 || this.f2176i.d() == 3) {
                boolean z3 = (h.this.A(75) & 15) != 1;
                if (!this.f2178k && z3 != this.f1986o) {
                    this.f2178k = true;
                }
                this.f1986o = z3;
            }
            if (this.f2178k && h.this.f1979a0) {
                h.this.o0(false);
            }
            if (this.f2177j.e()) {
                this.f2179l = this.f2177j.d() == 1;
                Log.e("Chip6854", "00 handleSignal  index : " + this.f2169b + " signalMark.getValue():" + this.f2177j.d() + " hasSignal:" + this.f2179l);
                if (h.this.f1979a0) {
                    o();
                }
            }
            if (this.f2178k) {
                this.f1986o = (h.this.A(75) & 15) != 1;
                int iD = this.f2176i.d();
                this.f2175h = iD;
                if (iD == 0 || iD == 1) {
                    h.this.W |= 1 << this.f2169b;
                } else if (this.f2170c != q.L) {
                    h.this.W &= (~(1 << this.f2169b)) & 65535;
                }
                if (iD == 6 || iD == 7) {
                    h.this.U |= 1 << this.f2169b;
                } else {
                    h.this.U &= (~(1 << this.f2169b)) & 15;
                }
                if (h.this.f1979a0) {
                    n();
                }
            }
            return this.f2177j.d() == 1;
        }

        @Override // f1.s.a
        public void g(int i2, int i3, int i4) {
            if (((h.this.Z(255, this.f2169b)) && h.this.Z(1, i2)) && h.this.Z(2, i4)) {
                h.this.Z(3, i3);
            }
        }

        @Override // f1.s.a
        public void j() {
            int i2 = this.f2175h;
            boolean z2 = true;
            if (i2 != 0 && i2 != 1) {
                z2 = false;
            }
            String str = h.this.F.get(this.f2170c, null);
            q.c cVarE = e();
            if (str == null || !cVarE.a()) {
                return;
            }
            String strZ = h.this.z();
            s0.F(strZ + str + ".di", ProxyProperties.LOCAL_EXCL_LIST + z2);
            if (z2) {
                String str2 = strZ + str + ".v_act";
                StringBuilder sb = new StringBuilder();
                sb.append(ProxyProperties.LOCAL_EXCL_LIST);
                sb.append(this.f2175h == 0 ? i.a.Theme_actionModePopupWindowStyle : MediaProperties.HEIGHT_288);
                s0.F(str2, sb.toString());
                String str3 = strZ + str + ".v_blank";
                StringBuilder sb2 = new StringBuilder();
                sb2.append(ProxyProperties.LOCAL_EXCL_LIST);
                sb2.append(this.f2175h == 0 ? 19 : 25);
                s0.F(str3, sb2.toString());
            }
        }

        @Override // f1.s.a
        public void k(boolean z2) {
            boolean z3 = this.f2168a;
            if (z3 != z2 && z3) {
                this.f2177j.a();
            }
            super.k(z2);
        }

        @Override // f1.s.a
        public void m(int i2) {
            super.m(i2);
            if (this.f2168a) {
                o();
                n();
            }
        }

        @Override // f1.s.a
        public void o() {
            int[] iArrH = h((this.f2175h > -1 && this.f2179l && h.this.f1979a0 && this.f2168a) ? 1 : 0, this.f2171d);
            u0.d.I3(69, iArrH);
            Log.e("Signal", "===>>Multi updateSignalFlag  chipId : " + h.this.f2144h + " channel : " + this.f2169b + " data: " + Arrays.toString(iArrH));
        }
    }

    public h(int i2, p1.a aVar, int i3, Handler handler) {
        super(17, i2, aVar, i3, handler);
        this.T = true;
        this.U = 2;
        this.V = 10;
        this.W = 240;
        this.X = 192;
        this.Y = 7;
        this.Z = new Object();
        this.f1979a0 = false;
        this.f1980b0 = new a();
        this.f1981c0 = false;
        this.f1982d0 = new b();
        this.Y = Configure.Property.CHIP6854_INIT_FORMAT.d(7);
        this.f2139c = 60;
        l(0, MediaProperties.HEIGHT_720, 504);
        l(1, MediaProperties.HEIGHT_720, 604);
        Log.e("Chip6854", "------------->> setupVChannels mVirtualChannels : " + this.f2141e + " " + this);
    }

    @Override // f1.q
    public void D() {
        if (n()) {
            return;
        }
        super.D();
        Log.e("Chip6854", "==============================>> RESET  Waiting onUEvent START 1 chipid : " + this.f2144h);
        ToolsJni.cmd_33_reset_videoIc(this.f2144h);
        Log.e("Chip6854", "==============================>> RESET Waiting onUEvent END 1 chipid : " + this.f2144h);
    }

    @Override // f1.q
    public int E() {
        if (u0.b.f17357r0 != 1) {
            return 2;
        }
        return super.E();
    }

    @Override // f1.s, f1.q
    public void I(boolean z2) {
        Log.e("chip", this + " setReadyToReversing:  " + this.D);
        synchronized (this.Z) {
            if (this.D) {
                Log.e("Chip6854", "setReadyToReversing:  last readyToReversing  : " + this.f2160x + "    readyToReversing: " + z2);
            } else {
                Log.e("Chip6854", this + " isSupportReversing:  " + this.D);
            }
            if (this.D && this.f2160x != z2) {
                this.f2160x = z2;
                this.f2155s.removeCallbacks(this.f1982d0);
                this.f1981c0 = false;
                this.f2151o = SystemClock.elapsedRealtime() > 50000 ? z2 && SystemProperties.getBoolean("persist.lesc.video.ignore", false) ? 0 : 2000 : ConnectivityManager.CONNECTIVITY_CHANGE_DELAY_DEFAULT;
                if (z2) {
                    this.f2162z = SystemClock.elapsedRealtime();
                    S();
                } else {
                    Log.e("Chip6854", "   ==========>>> 003  reversing HandlerMain.backcar(0);  chipid : " + this.f2144h + " reverseId: " + E());
                    u0.d.C(0);
                    a();
                    int size = this.f2141e.size();
                    s.a aVarD0 = d0();
                    Log.e("Signal", "   ==========>>>  0101  rvChannel  " + aVarD0.f2174g + " " + aVarD0.f2171d);
                    if (aVarD0.f2174g != E()) {
                        Log.e("Signal", "   ==========>>>    setVideoId  VIDEO_ID_NULL");
                        aVarD0.m(0);
                        aVarD0.k(false);
                        s0.C(150L);
                        this.f2162z = 2147483647L;
                    }
                    for (int i2 = 0; i2 < size; i2++) {
                        s.a aVarValueAt = this.f2141e.valueAt(i2);
                        int i3 = aVarValueAt.f2174g;
                        if (i3 != 0) {
                            if (this.f2143g.contains(Integer.valueOf(i3))) {
                                c(aVarValueAt.f2174g);
                            }
                            aVarValueAt.f2174g = 0;
                        } else if (aVarValueAt.f2170c != q.L) {
                            aVarValueAt.b();
                        }
                    }
                }
                int iP0 = p0(z2);
                boolean z3 = iP0 != this.V;
                this.f1981c0 = z3;
                this.f2155s.postDelayed(this.f1982d0, z3 ? 500L : 0L);
                Log.e("Signal", " 0000   ==========>>>    isWaitingFix0x81 : " + this.f1981c0 + " channelSignalFlag: " + Integer.toBinaryString(this.V & 255) + " flag: " + Integer.toBinaryString(iP0 & 255));
            }
        }
    }

    @Override // f1.s, f1.q
    public boolean M() {
        if (!this.f2154r) {
            D();
        }
        return this.f2154r;
    }

    @Override // f1.q
    public void N() {
        this.f2141e.put(q.M, new c(q.M, q.L, true, new int[0]));
        int i2 = q.N;
        this.f2141e.put(q.N, new c(i2, i2, false, new int[0]));
        int i3 = q.O;
        c cVar = new c(i3, i3, false, new int[0]);
        cVar.f2179l = true;
        cVar.f2177j.h(1);
        cVar.f2175h = 2;
        this.f2141e.put(q.O, cVar);
        Log.e("Chip6854", "------------->> Chip6854  setupVirtualChannels :" + this.f2141e);
    }

    @Override // f1.s, f1.q
    public void S() {
        int i2;
        Log.e("Chip6854", "   ==========>>>syncReservingk()    loaded : " + this.f2154r + " readyToReversing: " + this.f2160x + " chip id = " + this.f2144h + " type : " + this.G);
        if (this.D) {
            if (!this.f2154r) {
                p();
            }
            if (this.f2160x) {
                int size = this.f2141e.size();
                s.a aVarD0 = d0();
                aVarD0.f2174g = aVarD0.f2171d;
                if (!m()) {
                    Log.e("Chip6854", "  closeVideo 000");
                    Log.e("Signal", "   ==========>>> 01    setVideoId  VIDEO_ID_NULL");
                    aVarD0.m(0);
                    s0.C(150L);
                }
                for (int i3 = 0; i3 < size; i3++) {
                    s.a aVarValueAt = this.f2141e.valueAt(i3);
                    if (aVarValueAt.f2170c != q.L) {
                        if (aVarValueAt == aVarD0 && !m()) {
                            aVarValueAt.m(E());
                            aVarValueAt.k(true);
                        } else if (aVarValueAt != aVarD0 && (i2 = aVarValueAt.f2171d) != 0) {
                            aVarValueAt.f2174g = i2;
                            aVarValueAt.b();
                        }
                    }
                }
            }
        }
    }

    @Override // f1.s
    public void c0(int i2, int i3) {
        if (!this.f2160x || i2 == E()) {
            synchronized (this.Z) {
                Log.e("Chip6854", "00 ==>> requestVideo  videoId : " + i3 + " what : " + i2);
                int size = this.f2141e.size();
                s.a aVar = this.f2141e.get(a0(i2));
                if (i2 == i3 && aVar != null) {
                    for (int i4 = 0; i4 < size; i4++) {
                        s.a aVarValueAt = this.f2141e.valueAt(i4);
                        if (aVarValueAt.f2170c != q.L) {
                            boolean zContains = aVarValueAt.f2172e.contains(Integer.valueOf(i2));
                            if (!zContains || this.Q.get(aVarValueAt.f2169b, 0) != i2) {
                                aVarValueAt.k(zContains);
                                if (!zContains) {
                                    Log.e("Signal", "   ==========>>> 02   setVideoId  VIDEO_ID_NULL");
                                    aVarValueAt.m(0);
                                    this.Q.delete(aVarValueAt.f2169b);
                                }
                            }
                        } else {
                            aVarValueAt.k(true);
                        }
                        Log.e("Chip6854", "requestVideo ===  vChannel index : " + aVarValueAt.f2169b + " vChannel: " + aVarValueAt.f2170c + " " + aVarValueAt.f2168a);
                    }
                }
                Log.e("Chip6854", "01 ==>> requestVideo() videoId : " + i3);
                super.c0(i2, i3);
                Log.e("Chip6854", "02 ==>> requestVideo() videoId : " + i3);
                if (i3 != 0) {
                    this.f2155s.removeCallbacks(this.f1982d0);
                    this.f1981c0 = true;
                    this.f2155s.postDelayed(this.f1982d0, 300L);
                }
            }
        }
    }

    @Override // f1.s
    public void f0() {
        super.f0();
        this.f2155s.removeCallbacks(this.f1982d0);
        this.f1981c0 = true;
        this.f2155s.postDelayed(this.f1982d0, 300L);
    }

    @Override // f1.s
    public void g0() {
        Log.e("Chip6854", "updateParameters  index : " + String.format(" channelHdFlag: %02X", Integer.valueOf(this.W)) + " channelSignalFlag: " + Integer.toBinaryString(this.V & 255));
        synchronized (this.S) {
            j0();
            m0();
            k0();
            l0();
            o0(true);
        }
        Log.e("Chip6854", "updateParameters  END!!");
    }

    @Override // f1.s, e1.l
    public void h(int i2, int i3, int i4, int i5) {
        int iA0 = a0(i2);
        if (iA0 > 0) {
            synchronized (this.S) {
                s.a aVar = this.f2141e.get(iA0, null);
                if (aVar != null) {
                    aVar.g(i3, i4, i5);
                }
            }
        }
    }

    public final void i0(boolean z2) {
        Log.e("Chip6854", "START fix0x81  mChannelHdEnable: " + Integer.toBinaryString(this.U & 255) + " channelSignalFlag: " + Integer.toBinaryString(this.V & 255));
        int i2 = this.V;
        int iP0 = p0(z2);
        this.V = iP0;
        if (i2 != iP0) {
            Z(129, iP0);
            Log.e("Signal", "End fix0x81 channelSignalFlag: " + Integer.toBinaryString(this.V & 255) + " mChannelHdEnable: " + Integer.toBinaryString(this.U & 255));
        }
        if (this.f1981c0) {
            s0.C(100L);
            this.f1981c0 = false;
        }
    }

    public final void j0() {
        int size = this.f2141e.size();
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            if (this.f2141e.valueAt(i3).e().f2165b == 1080) {
                i2 = 192;
            }
        }
        this.X = i2;
        for (int i4 = 0; i4 < size; i4++) {
            s.a aVarValueAt = this.f2141e.valueAt(i4);
            if (aVarValueAt instanceof c) {
                ((c) aVarValueAt).f1985n = this.X == 192 ? 2 : 1;
            }
        }
    }

    public boolean k0() {
        int size = this.f2141e.size();
        boolean z2 = false;
        for (int i2 = 0; i2 < size; i2++) {
            s.a aVarValueAt = this.f2141e.valueAt(i2);
            boolean zC = aVarValueAt == null ? false : aVarValueAt.c();
            if (zC) {
                aVarValueAt.l();
            }
            z2 = z2 || zC;
        }
        return z2;
    }

    public final boolean l0() {
        s.a aVar;
        s.a aVar2;
        s.a aVar3;
        s.a aVar4;
        Log.e("Chip6854", "postFlush  index : " + String.format(" channelHdFlag: %02X", Integer.valueOf(this.W)) + String.format(" channelSignalFlag: %02X", Integer.valueOf(this.V)));
        boolean z2 = Z(255, 9, 0, 3, 255, 8, 4, 3, 108, this.V | 16, 6, 124, 33, 1, 52, 6, 53, 11);
        if (this.f2141e.indexOfKey(q.L) >= 0 && (aVar4 = this.f2141e.get(q.L)) != null && aVar4.f2179l && aVar4.e().a()) {
            q.c cVarE = aVar4.e();
            z2 = z2 && Z(120, s0.c(cVarE.f2164a / 2, 0), 121, s0.c(cVarE.f2164a / 2, 1));
        }
        if (this.f2141e.indexOfKey(q.M) >= 0 && (aVar3 = this.f2141e.get(q.M)) != null && aVar3.f2179l && aVar3.e().a()) {
            q.c cVarE2 = aVar3.e();
            z2 = z2 && Z(122, s0.c(cVarE2.f2164a / 2, 0), 123, s0.c(cVarE2.f2164a / 2, 1));
        }
        if (this.f2141e.indexOfKey(q.N) >= 0 && (aVar2 = this.f2141e.get(q.N)) != null && aVar2.f2179l && aVar2.e().a()) {
            q.c cVarE3 = aVar2.e();
            z2 = z2 && Z(124, s0.c(cVarE3.f2164a / 2, 0), 125, s0.c(cVarE3.f2164a / 2, 1));
        }
        if (this.f2141e.indexOfKey(q.O) >= 0 && (aVar = this.f2141e.get(q.O)) != null && aVar.f2179l && aVar.e().a()) {
            q.c cVarE4 = aVar.e();
            z2 = z2 && Z(126, s0.c(cVarE4.f2164a / 2, 0), 127, s0.c(cVarE4.f2164a / 2, 1));
        }
        return z2 && Z(108, this.V, 4, 0, 32, 170, 7, 5, 255, 10, 108, 16, 255, 0);
    }

    public final boolean m0() {
        return Z(129, this.V, 163, 4, 223, this.W, 240, this.X, 136, 64, i.a.Theme_preferencePanelStyle, 64, 211, 80);
    }

    public boolean n0() {
        boolean z2 = Z(225, 128) && Z(250, 129);
        A(251);
        A(251);
        A(251);
        A(251);
        int iA = A(251);
        int iA2 = A(251);
        boolean z3 = !(iA2 == 0 && iA == 0) ? !((iA2 == 52 && iA == 169) || (iA2 == 44 && iA == 168)) ? z2 && Z(239, 170, 252, 96, 255, 9, 3, 24, 255, 11, 3, 24) : z2 && Z(239, 170, 231, 255, 252, 96, 255, 9, 3, 24, 255, 11, 3, 24) : !(z2 && Z(239, 170, 231, 255, 255, 9, 3, 12, 255, 11, 3, 12));
        int size = this.f2141e.size();
        for (int i2 = 0; i2 < size; i2++) {
            z3 = z3 && Z(255, this.f2141e.valueAt(i2).f2169b, 73, 129, 25, 10, 211, 80);
        }
        return z3;
    }

    @Override // f1.q
    public void o() {
        super.o();
        G(1, q.O);
        G(2, q.N);
        G(3, q.N);
        G(4, q.N);
        G(5, q.N);
        G(6, q.N);
        G(7, q.N);
        G(8, q.N);
        G(9, q.O);
        G(15, q.O);
        G(16, q.M);
    }

    public void o0(boolean z2) {
        this.f2155s.removeCallbacks(this.f1980b0);
        if (this.f1979a0 != z2) {
            Log.e("Chip6854", "setReady  old == " + this.f1979a0 + " to new : " + z2);
            Log.e("ImageDevice2", "setReady  old == " + this.f1979a0 + " to new : " + z2);
            this.f1979a0 = z2;
            if (this.f1979a0) {
                this.f2155s.postDelayed(this.f1980b0, 150L);
                return;
            }
            int size = this.f2141e.size();
            for (int i2 = 0; i2 < size; i2++) {
                s.a aVarValueAt = this.f2141e.valueAt(i2);
                if (aVarValueAt != null) {
                    aVarValueAt.a();
                }
            }
        }
    }

    @Override // f1.q
    public synchronized void p() {
        Log.e("Chip6854", "------------->> flushParams  mVirtualChannels :" + this.f2141e);
        boolean zN0 = n0();
        int size = this.f2141e.size();
        for (int i2 = 0; i2 < size; i2++) {
            s.a aVarValueAt = this.f2141e.valueAt(i2);
            if (aVarValueAt.f2170c == q.L) {
                aVarValueAt.f2179l = true;
                aVarValueAt.f2177j.h(1);
                aVarValueAt.f2175h = this.Y;
            }
        }
        g0();
        for (int i3 = 0; i3 < size; i3++) {
            s.a aVarValueAt2 = this.f2141e.valueAt(i3);
            if (aVarValueAt2.f2170c != q.L) {
                aVarValueAt2.f2179l = false;
                aVarValueAt2.f2177j.h(0);
                aVarValueAt2.f2175h = -1;
            }
        }
        Log.e("Chip6854", "==>> flushParams() chipid : " + this.f2144h + " cnt: " + size + " result:" + zN0);
        H(zN0);
    }

    public final int p0(boolean z2) {
        int size = this.f2141e.size();
        int i2 = this.V;
        int i3 = 0;
        if (z2) {
            while (i3 < size) {
                s.a aVarValueAt = this.f2141e.valueAt(i3);
                Log.e("Chip6854", "001 fix0x81 vChannel index : " + aVarValueAt.f2169b + " vChannel: " + aVarValueAt.f2170c + " " + aVarValueAt.f2168a);
                i2 = (aVarValueAt.f2170c == q.L || aVarValueAt.f2173f) ? (1 << aVarValueAt.f2169b) | 2 : (~(1 << aVarValueAt.f2169b)) & 15 & i2;
                i3++;
            }
        } else {
            while (i3 < size) {
                s.a aVarValueAt2 = this.f2141e.valueAt(i3);
                Log.e("Chip6854", "000 fix0x81 vChannel index : " + aVarValueAt2.f2169b + " vChannel: " + aVarValueAt2.f2170c + " " + aVarValueAt2.f2168a);
                i2 = (aVarValueAt2.f2170c == q.L || aVarValueAt2.f2168a) ? (1 << aVarValueAt2.f2169b) | 2 : (~(1 << aVarValueAt2.f2169b)) & 15 & i2;
                i3++;
            }
        }
        return i2;
    }

    @Override // f1.q
    public String z() {
        return "sys.fyt.main2.vc_";
    }
}
