package com.android.fmradio;

import android.hardware.Camera;
import android.net.ProxyProperties;
import android.net.wifi.WifiEnterpriseConfig;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.SystemClock;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseIntArray;
import app.App;
import base.Configure;
import com.google.gson.Gson;
import com.syu.ms.R;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import o1.h0;
import o1.s0;
import o1.x;
import w0.i;
import y0.j;
import z.k;

/* JADX INFO: loaded from: classes.dex */
public class b implements w0.g {
    public static int T = 10;
    public static int U = 18;
    public static int V = 0;
    public static int W = 100;
    public static int X = 47;
    public static int Y = 0;
    public static int Z = 100;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public static int f697a0 = -1;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public static int f698b0 = 0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public static int f699c0 = 1;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public static int f700d0 = 2;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public static int f701e0 = 5;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public static b f702f0;
    public boolean A;
    public boolean B;
    public int C;
    public RdsTextChars D;
    public f E;
    public g F;
    public g G;
    public g H;
    public e I;
    public Handler J;
    public long K;
    public FmNative L;
    public h0 M;
    public boolean N;
    public int O;
    public final Runnable P;
    public final Runnable Q;
    public final Runnable R;
    public final Runnable S;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public volatile int f703a = f697a0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f704b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f705c = 8750;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f706d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f707e = 65536;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f708f = 2;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f709g = V;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f710h = Y;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f711i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f712j = true;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f713k = false;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f714l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public SparseArray<h.a> f715m = new SparseArray<>();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public SparseIntArray f716n = new SparseIntArray();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f717o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f718p = 0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public com.android.fmradio.a.C0017a f719q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public com.android.fmradio.a f720r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f721s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f722t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f723u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public boolean f724v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public boolean f725w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f726x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public boolean f727y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public boolean f728z;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            j.a3().h3(0, 0);
        }
    }

    /* JADX INFO: renamed from: com.android.fmradio.b$b, reason: collision with other inner class name */
    public class RunnableC0018b implements Runnable {
        public RunnableC0018b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            j jVarA3 = j.a3();
            if (jVarA3 == null || jVarA3.g3(0)) {
                return;
            }
            jVarA3.h3(1, 0);
        }
    }

    public class c implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f731a = false;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f732b = -1;

        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f731a = u0.b.f17306a0 == 1 && u0.b.f17323g != 0;
            b.this.J.removeCallbacks(this);
            boolean z2 = this.f731a;
            if (z2) {
                b bVar = b.this;
                if (!bVar.N) {
                    bVar.n0();
                    b bVar2 = b.this;
                    if (bVar2.N) {
                        return;
                    }
                    bVar2.J.postDelayed(this, 800L);
                    return;
                }
            }
            if (z2) {
                return;
            }
            b bVar3 = b.this;
            if (bVar3.N) {
                bVar3.R();
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (b.this.f703a != b.f697a0) {
                b.this.m0();
            }
            Handler handler = b.this.J;
            if (handler != null) {
                handler.removeCallbacks(this);
                b.this.J.postDelayed(this, 1000L);
            }
        }
    }

    public class e extends h {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f735b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f736c;

        public e() {
            super();
            this.f735b = b.this.f707e;
            this.f736c = false;
            this.f736c = b.this.d0(b.this.f704b);
        }

        public boolean a() {
            Log.e("NativeRadio", "Scan Channel stop!! mState : " + b.this.f703a);
            b.this.J.removeCallbacks(this);
            if (b.this.f703a == b.f697a0) {
                return false;
            }
            w0.f.z(0);
            if (b.this.f703a == b.f698b0) {
                return false;
            }
            b.this.F0(this.f735b);
            b.this.f703a = b.f698b0;
            return true;
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = b.this.f703a;
            int i3 = b.f699c0;
            if (i2 != i3) {
                b.this.f703a = i3;
            }
            w0.f.z(1);
            b.this.J.removeCallbacks(this);
            if (this.f736c) {
                int i4 = this.f735b;
                int i5 = 65536;
                if (i4 >= 65536 && i4 < (b.this.f717o + 65536) - 1) {
                    i5 = i4 + 1;
                }
                this.f735b = i5;
            } else {
                int i6 = this.f735b;
                this.f735b = (i6 < 0 || i6 >= (b.this.f718p + 0) - 1) ? 0 : i6 + 1;
            }
            h.a aVar = b.this.f715m.get(this.f735b, null);
            Log.e("NativeRadio", "Scan Channel nextId : " + this.f735b + " station: " + aVar);
            if (aVar != null) {
                b bVar = b.this;
                bVar.D0(aVar.f2404c, false, bVar.f703a == b.f699c0, true);
                w0.f.f(aVar.f2403b);
            }
            int i7 = this.f735b;
            b bVar2 = b.this;
            if (i7 == bVar2.f707e) {
                a();
            } else if (bVar2.f703a == b.f699c0) {
                b.this.J.postDelayed(this, 3000L);
            }
        }
    }

    public class f extends h {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f738b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public float f739c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public boolean f740d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f741e;

        public f(int i2, float f2) {
            super();
            this.f738b = 1;
            this.f740d = true;
            this.f741e = -1;
            this.f738b = i2;
            this.f739c = f2;
        }

        public boolean a() {
            if (b.this.f703a == b.f697a0) {
                return false;
            }
            b.this.J.removeCallbacks(this);
            this.f740d = false;
            Log.e("NativeRadio", "-------------- remove SearchRunner : " + this + " mState : " + b.this.f703a);
            if (b.this.f703a == b.f698b0) {
                return false;
            }
            b.this.L.opStopScan();
            Log.e("NativeRadio", "-------------- opStopScan SearchRunner : " + this);
            b.this.f703a = b.f698b0;
            w0.f.A(0);
            return true;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f740d) {
                int i2 = (int) (b.this.d0(this.f738b) ? this.f739c / 10.0f : this.f739c);
                w0.f.A(1);
                boolean zG = b.this.G(this.f738b, i2);
                Log.e("NativeRadio", "-------------------->>>>  SearchRunner start: " + i2 + " result: " + zG);
                if (zG) {
                    b bVar = b.this;
                    bVar.z(bVar.d0(this.f738b) ? 65536 : 0);
                } else {
                    b bVar2 = b.this;
                    bVar2.A0(bVar2.f705c);
                }
            }
        }
    }

    public class g extends f {

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public Boolean f743g;

        public g(b bVar, float f2, boolean z2) {
            this(f2, Boolean.valueOf(z2), 6);
        }

        @Override // com.android.fmradio.b.f
        public boolean a() {
            if (b.this.f703a == b.f697a0) {
                return false;
            }
            b.this.J.removeCallbacks(this);
            Log.e("NativeRadio", "-------------- remove SeekStationRunner : " + this + " cmdId: " + this.f741e + " mState : " + b.this.f703a);
            if (b.this.f703a == b.f698b0) {
                return false;
            }
            b.this.L.opStopScan();
            Log.e("NativeRadio", "-------------- opStopScan SeekStationRunner : " + this + " cmdId: " + this.f741e);
            b.this.f703a = b.f698b0;
            return true;
        }

        public void b() {
            b.this.J.removeCallbacks(this);
            c(20000L);
        }

        public void c(long j2) {
            Log.e("NativeRadio", "---->> Seek Task:" + this + " id: : " + this.f741e + " isEnable:" + this.f740d + " delay time: " + j2);
            b.this.J.postDelayed(this, j2);
        }

        /* JADX WARN: Code duplicated, block: B:63:0x0130  */
        @Override // com.android.fmradio.b.f, java.lang.Runnable
        public void run() {
            boolean z2;
            if (this.f740d && u0.b.D == 1) {
                b bVar = b.this;
                int i2 = bVar.f705c;
                float f2 = i2 > 5000 ? ((i2 * 10) + 2) / 1000.0f : i2;
                bVar.J.removeCallbacks(this);
                int i3 = this.f741e;
                if (i3 == 28) {
                    b bVar2 = b.this;
                    if (!bVar2.f727y) {
                        bVar2.A0(bVar2.f705c);
                        return;
                    }
                }
                if (i3 == 29) {
                    b bVar3 = b.this;
                    if (!bVar3.f728z) {
                        bVar3.A0(bVar3.f705c);
                        return;
                    }
                }
                Log.e("NativeRadio", "---->> SeekStationRunner startFreq : " + this.f739c + " cmdid : " + this.f741e + "  task:" + this);
                b bVar4 = b.this;
                float[] fArrS = bVar4.S(bVar4.f704b, f2, this.f743g, this.f741e);
                StringBuilder sb = new StringBuilder();
                sb.append("---->> findStation stations : ");
                sb.append(fArrS == null ? WifiEnterpriseConfig.EMPTY_VALUE : Integer.valueOf(fArrS.length));
                sb.append(" isEnable: ");
                sb.append(this.f740d);
                sb.append(" ptySeekRunner: ");
                sb.append(b.this.G);
                Log.e("NativeRadio", sb.toString());
                if (s0.g(fArrS, 0)) {
                    int i4 = (int) (fArrS[0] < 2000.0f ? fArrS[0] * 100.0f : fArrS[0]);
                    Log.e("NativeRadio", "---->> findStation findStation : " + i4);
                    b.this.B0(i4, true);
                    if (this.f741e != 28) {
                        b bVar5 = b.this;
                        if (bVar5.f727y) {
                            this.f740d = false;
                            if (bVar5.F == null) {
                                bVar5.F = new g(bVar5, bVar5.f705c, 28);
                            }
                            b.this.F.c(20000L);
                            return;
                        }
                        return;
                    }
                    return;
                }
                if (this.f740d) {
                    int i5 = this.f741e;
                    boolean z3 = i5 == 29 && b.this.H == null;
                    boolean z4 = i5 == 6 && b.this.G == null;
                    if (i5 == 28) {
                        b bVar6 = b.this;
                        if (bVar6.G == null && bVar6.H == null) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                    } else {
                        z2 = false;
                    }
                    if (z3 || z4 || z2) {
                        b bVar7 = b.this;
                        bVar7.A0(bVar7.f705c);
                    }
                    if (u0.b.D == 1) {
                        b bVar8 = b.this;
                        if (bVar8.f727y && this.f741e == 28) {
                            if (bVar8.F == this) {
                                b();
                                return;
                            }
                            this.f740d = false;
                            bVar8.F = new g(bVar8, bVar8.f705c, 28);
                            b.this.F.c(20000L);
                        }
                    }
                }
            }
        }

        public g(b bVar, float f2, int i2) {
            this(f2, null, i2);
        }

        public g(float f2, Boolean bool, int i2) {
            super(b.this.f704b, f2);
            this.f743g = null;
            this.f743g = bool;
            this.f741e = i2;
        }
    }

    public class h implements Runnable {
        public h() {
        }
    }

    public b() {
        com.android.fmradio.a aVar = com.android.fmradio.a.f684f;
        com.android.fmradio.a aVar2 = com.android.fmradio.a.f689k;
        this.f719q = new com.android.fmradio.a.C0017a(aVar, aVar2);
        this.f720r = new com.android.fmradio.a(0, 0, 0);
        this.f721s = false;
        this.f722t = false;
        this.f723u = false;
        this.f724v = true;
        this.f725w = false;
        this.f726x = false;
        this.f727y = false;
        this.f728z = false;
        this.A = false;
        this.B = false;
        this.C = 0;
        this.D = null;
        this.E = null;
        this.F = null;
        this.G = null;
        this.H = null;
        this.I = null;
        this.J = null;
        this.K = 0L;
        this.L = null;
        this.M = null;
        this.N = false;
        this.O = 4;
        this.P = new a();
        this.Q = new RunnableC0018b();
        this.R = new c();
        this.S = new d();
        T = Configure.Property.RADIO_LOC_FM_SENS_OFFSET.d(T);
        HandlerThread handlerThread = new HandlerThread("radio_work_thread");
        handlerThread.start();
        this.f719q = new com.android.fmradio.a.C0017a(aVar, aVar2);
        this.f720r = new com.android.fmradio.a(0, 0, 0);
        this.J = new Handler(handlerThread.getLooper());
        this.M = new h0("native_radio");
        this.L = FmNative.getInstance();
    }

    public static b i0() {
        if (f702f0 == null) {
            f702f0 = new b();
        }
        return f702f0;
    }

    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v3, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r0v5 */
    @Override // w0.g
    public void A(int i2) {
        if (K()) {
            ?? r1 = 0;
            if (i2 == 1) {
                r1 = 1;
            } else if (i2 == 2) {
                r1 = !this.f713k;
            }
            if (this.f713k != r1) {
                this.f713k = r1;
                w0.f.k(r1);
            }
        }
    }

    public void A0(int i2) {
        B0(i2, true);
    }

    @Override // w0.g
    public void B() {
        if (this.H != null && this.f703a == f700d0) {
            this.J.removeCallbacks(this.H);
            this.H.a();
            s0.C(150L);
            this.H = null;
            return;
        }
        if (N() && O() && M() && P()) {
            g gVar = new g(this, this.f705c, false);
            this.H = gVar;
            gVar.c(200L);
        }
    }

    public final void B0(int i2, boolean z2) {
        C0(i2, false, z2);
    }

    @Override // w0.g
    public void C(int i2) {
        if (i2 == 0) {
            k.s(1, 0, 98);
            return;
        }
        if (i2 == 1) {
            k.s(1, 0, 99);
        } else {
            if (i2 != 2) {
                return;
            }
            if (w0.d.C == 0) {
                C(1);
            } else {
                C(0);
            }
        }
    }

    public void C0(int i2, boolean z2, boolean z3) {
        boolean zD0 = d0(this.f704b);
        int i3 = zD0 ? 65536 : 0;
        int i4 = zD0 ? this.f717o : this.f718p;
        int i5 = this.f707e - i3;
        int i6 = i5;
        do {
            h.a aVar = this.f715m.get(i3 + i6, null);
            if (aVar != null && aVar.f2404c == i2) {
                F0(aVar.f2403b);
                break;
            } else if (z3) {
                i6++;
                if (i6 >= i4) {
                    i6 = 0;
                }
            } else {
                i6--;
                if (i6 < 0) {
                    i6 = i4 - 1;
                }
            }
        } while (i6 != i5);
        D0(i2, z2, false, true);
    }

    public void D0(int i2, boolean z2, boolean z3, boolean z4) {
        g gVar;
        g gVar2;
        if (!z2) {
            Log.e("NativeRadio", "---->> toFreq : " + i2 + " seeking:" + z2 + " searching:" + z3 + " mState : " + this.f703a);
        }
        if (z2) {
            this.K = SystemClock.elapsedRealtime();
        }
        boolean z5 = this.f727y && this.F != null;
        if (!z2 && !z3) {
            O();
            N();
            L();
            M();
            P();
            if (z5 && (gVar2 = this.F) != null) {
                gVar2.b();
            }
        }
        if (z2 || z3 || this.f703a == f698b0) {
            com.android.fmradio.a aVar = this.f720r;
            int iMax = Math.max(aVar.f690a, Math.min(aVar.f691b, i2));
            if (!z2 && this.f705c != iMax) {
                this.f705c = iMax;
                this.M.q((this.f708f * 100) + 5 + (this.f704b * 10), iMax);
            } else if (z2) {
                if (z5) {
                    this.F.b();
                }
                if (z4) {
                    this.f705c = iMax;
                    this.M.q((this.f708f * 100) + 5 + (this.f704b * 10), iMax);
                } else if (this.f705c == this.f706d) {
                    this.f706d = 0;
                }
            }
            w0.f.h(iMax);
            if (!z2 || this.f703a == f698b0) {
                boolean z6 = this.f705c == this.f706d;
                if (z3 && z5 && (gVar = this.F) != null) {
                    gVar.b();
                }
                if (z6) {
                    return;
                }
                if (SystemClock.elapsedRealtime() - this.K > 300 && !j.a3().g3(0)) {
                    j0();
                    s0.C(100L);
                }
                this.L.setFreq(iMax);
                this.f706d = iMax;
                E0();
            }
        }
    }

    public final void E0() {
        this.J.removeCallbacks(this.P);
        this.J.postDelayed(this.P, 300L);
    }

    public final void F0(int i2) {
        if (this.f707e != i2) {
            this.f707e = i2;
            this.M.q(6, i2);
            w0.f.f(i2);
            Log.e("NativeRadio", "---->> updateChannel channel: " + i2);
        }
    }

    public boolean G(int i2, int i3) {
        boolean z2;
        boolean z3;
        Log.e("NativeRadio", "autoScan ------------------->>>> start_freq " + i3);
        if (this.f703a == f697a0) {
            return false;
        }
        this.f703a = f701e0;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        boolean zS0 = i2 >= 4 ? s0(i2, i3, arrayList, arrayList2) : (i3 >= 740 || this.f703a != f701e0) ? s0(i2, i3, arrayList, arrayList2) : s0(i2, 875, arrayList, arrayList2);
        Log.e("NativeRadio", "autoScan -------->>>> fmList.size() " + arrayList.size() + "  amList.size() : " + arrayList2.size());
        if (arrayList.size() > 0 || arrayList2.size() > 0) {
            int size = this.f715m.size();
            if (arrayList.size() > 0) {
                for (int i4 = 0; i4 < size; i4++) {
                    h.a aVar = new h.a(this.f715m.valueAt(i4));
                    if (e0(aVar.f2404c)) {
                        Iterator it = arrayList.iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                z3 = false;
                                break;
                            }
                            h.a aVar2 = (h.a) it.next();
                            if (aVar2.f2403b == aVar.f2403b) {
                                aVar = new h.a(aVar2);
                                z3 = true;
                                break;
                            }
                        }
                        if (!z3) {
                            aVar.f2404c = 8750;
                            aVar.f2405d = 0;
                        }
                        Log.e("NativeRadio", "----->>> fm station:  " + aVar);
                        G0(aVar);
                    }
                }
            }
            if (arrayList2.size() > 0) {
                for (int i5 = 0; i5 < size; i5++) {
                    h.a aVar3 = new h.a(this.f715m.valueAt(i5));
                    if (!e0(aVar3.f2404c)) {
                        Iterator it2 = arrayList2.iterator();
                        while (true) {
                            if (!it2.hasNext()) {
                                z2 = false;
                                break;
                            }
                            h.a aVar4 = (h.a) it2.next();
                            if (aVar4.f2403b == aVar3.f2403b) {
                                aVar3 = new h.a(aVar4);
                                z2 = true;
                                break;
                            }
                        }
                        if (!z2) {
                            aVar3.f2404c = 522;
                            aVar3.f2405d = 0;
                        }
                        Log.e("NativeRadio", "----->>> fm station:  " + aVar3);
                        G0(aVar3);
                    }
                }
            }
            T();
            w0.e.f17818d.c();
            r0();
        }
        if (this.f703a != f701e0) {
            return false;
        }
        this.f703a = f698b0;
        w0.f.A(0);
        return zS0;
    }

    public void G0(h.a aVar) {
        int iIndexOfKey = this.f715m.indexOfKey(aVar.f2403b);
        boolean z2 = iIndexOfKey < 0;
        this.f716n.put(aVar.f2403b, aVar.f2404c);
        if (!z2) {
            z2 = this.f715m.valueAt(iIndexOfKey).f2404c != aVar.f2404c;
        }
        if (z2) {
            this.f715m.put(aVar.f2403b, aVar);
            w0.f.J(4, aVar.f2403b, aVar.f2404c);
        }
    }

    public void H(int i2) {
        int i3;
        com.android.fmradio.a aVar;
        if (i2 < 0 || i2 >= 2) {
            i3 = (i2 < 65536 || i2 >= 65539) ? 1 : (i2 - 65536) + 1;
        } else {
            i3 = i2 + 0 + 4;
        }
        Log.e("NativeRadio", "---->> band2Local mBand = " + this.f704b + " to localBand = " + i3 + " to UI value: " + i2);
        if (i3 != this.f704b) {
            this.f704b = i3;
            this.M.q(3, i3);
            this.M.e(3);
            F0(d0(this.f704b) ? 65536 : 0);
            w0.f.e(i2);
            if (!d0(this.f704b)) {
                aVar = this.f719q.f695b;
            } else if (this.f719q.f696c.b()) {
                com.android.fmradio.a.C0017a c0017a = this.f719q;
                int i4 = c0017a.f696c.f690a;
                com.android.fmradio.a aVar2 = c0017a.f694a;
                aVar = new com.android.fmradio.a(i4, aVar2.f691b, aVar2.f692c);
            } else {
                aVar = this.f719q.f694a;
            }
            if (aVar.equals(this.f720r)) {
                return;
            }
            this.f720r = aVar;
            w0.f.J(16, aVar.f690a, aVar.f691b, aVar.f692c, aVar.f693d);
            int iH = this.M.h((this.f708f * 100) + 5 + (this.f704b * 10), this.f720r.f690a);
            this.f705c = iH;
            A0(iH);
        }
    }

    public int I(int i2) {
        if (i2 >= 1 && i2 <= 3) {
            return 65536 + (i2 - 1);
        }
        if (i2 < 4 || i2 > 5) {
            return 65536;
        }
        return (i2 + 0) - 4;
    }

    public int J(int i2, String str, int i3) {
        Bundle bundle = new Bundle();
        bundle.putInt(str, i3);
        return this.L.systemCtrl(i2, bundle, null);
    }

    public boolean K() {
        boolean z2 = false;
        boolean z3 = (N() && O() && L() && M()) ? false : true;
        if (!z3) {
            if (this.f727y && this.F != null) {
                z2 = true;
            }
            if (z2) {
                if (w0.d.f17806r == 1) {
                    this.F.a();
                }
                s0.C(150L);
                this.F.b();
            } else {
                P();
            }
        }
        return !z3;
    }

    public boolean L() {
        if (this.f703a == f697a0) {
            return false;
        }
        g gVar = this.H;
        if (gVar == null) {
            return true;
        }
        this.J.removeCallbacks(gVar);
        this.H.a();
        this.H = null;
        s0.C(150L);
        return true;
    }

    public boolean M() {
        if (this.f703a == f697a0) {
            return false;
        }
        g gVar = this.G;
        if (gVar == null) {
            return true;
        }
        this.J.removeCallbacks(gVar);
        this.G.a();
        this.G = null;
        s0.C(150L);
        return true;
    }

    public boolean N() {
        if (this.f703a == f697a0) {
            return false;
        }
        e eVar = this.I;
        if (eVar == null) {
            return true;
        }
        this.J.removeCallbacks(eVar);
        this.I.a();
        this.I = null;
        s0.C(150L);
        return true;
    }

    public boolean O() {
        if (this.f703a == f697a0) {
            return false;
        }
        f fVar = this.E;
        if (fVar == null) {
            return true;
        }
        this.J.removeCallbacks(fVar);
        this.E.a();
        this.E = null;
        s0.C(150L);
        return true;
    }

    public boolean P() {
        if (this.f703a == f697a0) {
            return false;
        }
        g gVar = this.F;
        if (gVar == null) {
            return true;
        }
        this.J.removeCallbacks(gVar);
        this.F.a();
        s0.C(150L);
        return true;
    }

    public void Q(boolean z2) {
        g gVar;
        Log.e("NativeRadio", "-------------->>> checkTaTask enable : " + z2);
        if (!z2 && (gVar = this.F) != null) {
            if (w0.d.f17806r == 1) {
                P();
            } else {
                this.J.removeCallbacks(gVar);
            }
            this.F = null;
            return;
        }
        if (z2) {
            K();
            Log.e("NativeRadio", "-------------->>> 01 checkTaTask enable : " + z2);
            g gVar2 = this.F;
            if (gVar2 == null || !gVar2.f740d) {
                this.F = new g(this, this.f705c, 28);
            }
            this.F.c(300L);
        }
    }

    public boolean R() {
        K();
        y0.h.Y(4096, true);
        s0.C(200L);
        boolean zCloseDev = this.L.closeDev(0);
        this.f703a = f697a0;
        s0.C(100L);
        y0.h.Y(4096, false);
        Log.e("NativeRadio", "---->> closeRadio result: " + zCloseDev);
        this.N = false;
        w0.f.m(0);
        return zCloseDev;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final float[] S(int i2, float f2, Boolean bool, int i3) {
        if (this.f703a == f697a0) {
            return new float[]{-1.0f, -1.0f};
        }
        Log.e("NativeRadio", "---->> findStation band : " + i2 + " startFreq:" + f2 + " up:" + bool + " type:" + i3 + " mState: " + this.f703a);
        this.f703a = f700d0;
        Bundle bundle = new Bundle();
        Bundle bundle2 = new Bundle();
        bundle.putFloat("startfreq", f2);
        if (bool != null) {
            bundle.putInt("isup", bool.booleanValue() ? 1 : 0);
        }
        bundle.putInt("sensitivity", i2 >= 4 ? this.f710h : W());
        if (i2 > 3) {
            bundle.putInt("isuseam", 1);
        }
        this.L.systemCtrl(i3, bundle, bundle2);
        float[] floatArray = bundle2.getFloatArray("freqrssi");
        Log.e("NativeRadio", "---->> findStation fRet : " + Arrays.toString(floatArray) + " mState: " + this.f703a);
        if (this.f703a != f700d0) {
            return null;
        }
        this.f703a = f698b0;
        return floatArray;
    }

    public final synchronized void T() {
        int size = this.f715m.size();
        this.f717o = 0;
        this.f718p = 0;
        for (int i2 = 0; i2 < size; i2++) {
            if (65536 <= this.f715m.keyAt(i2)) {
                this.f717o++;
            } else {
                this.f718p++;
            }
        }
    }

    public String U(int[] iArr, String str, String str2) {
        if (!s0.h(iArr, 0) || s0.t(str)) {
            try {
                return new String(s0.r(iArr), str2);
            } catch (Exception unused) {
                return ProxyProperties.LOCAL_EXCL_LIST;
            }
        }
        StringBuffer stringBuffer = new StringBuffer();
        RdsTextChars.CharTable charTable = null;
        for (RdsTextChars.CharTable charTable2 : this.D.tables) {
            if (s0.j(charTable2.table, str)) {
                charTable = charTable2;
                break;
            }
        }
        if (charTable != null) {
            for (int i2 : iArr) {
                stringBuffer.append(charTable.a(String.format("%02X", Integer.valueOf(i2))));
            }
        }
        return stringBuffer.toString();
    }

    public int V() {
        return this.f712j ? X : this.f710h;
    }

    public int W() {
        int i2 = this.f712j ? U : this.f709g;
        return this.f713k ? i2 + T : i2;
    }

    public int[] X(int i2, String str) {
        Bundle bundle = new Bundle();
        this.L.systemCtrl(i2, null, bundle);
        byte[] byteArray = bundle.getByteArray(str);
        return (byteArray == null || byteArray.length <= 0) ? new int[0] : s0.e(byteArray);
    }

    public boolean Y() {
        int iB0 = b0(22, "rdsonoff", -1);
        Log.e("NativeRadio", "------------------>>>  getRdsEnable  ret: " + iB0);
        if (iB0 == -1) {
            return s0.j(Camera.Parameters.FLASH_MODE_ON, s0.o("persist.fyt.fm.rdsstate", ProxyProperties.LOCAL_EXCL_LIST));
        }
        return iB0 == 1;
    }

    public String Z() {
        Bundle bundle = new Bundle();
        Bundle bundle2 = new Bundle();
        int iSystemCtrl = this.L.systemCtrl(31, bundle, bundle2);
        String strU = ProxyProperties.LOCAL_EXCL_LIST;
        if (iSystemCtrl == 0) {
            bundle2.getInt("TextSize");
            try {
                byte[] byteArray = bundle2.getByteArray("Text");
                if (byteArray != null) {
                    strU = U(s0.e(byteArray), FmService.rdsTable, "ascii");
                }
            } catch (Exception unused) {
            }
        }
        Log.e("NativeRadio", "------------>>> RdsText : " + strU);
        return strU;
    }

    @Override // w0.g
    public void a() {
        this.J.removeCallbacks(this.R);
        u0.c.f17386m.a(this.R, 0);
        u0.c.f17378e.a(this.R, 1);
    }

    public int a0(int i2, String str) {
        return b0(i2, str, 0);
    }

    @Override // w0.g
    public void b() {
        this.J.removeCallbacks(this.R);
        u0.c.f17386m.d(this.R);
        u0.c.f17378e.d(this.R);
        R();
    }

    public int b0(int i2, String str, int i3) {
        Bundle bundle = new Bundle();
        this.L.systemCtrl(i2, null, bundle);
        return bundle.getInt(str, i3);
    }

    @Override // w0.g
    public void c() {
        F0(k0());
        z(this.f707e);
    }

    public int c0(int i2, boolean z2) {
        int i3 = z2 ? 65536 + i2 : i2 + 0;
        Log.e("NativeRadio", ">>> indexLocal2Ui index : " + i2 + " to ui station id: " + i3);
        return i3;
    }

    @Override // w0.g
    public void d() {
        int iMin;
        if (K()) {
            if (d0(this.f704b) && this.f719q.f696c.b() && this.f719q.f696c.a(this.f705c)) {
                int i2 = this.f705c;
                com.android.fmradio.a aVar = this.f719q.f696c;
                int i3 = aVar.f690a;
                iMin = i2 <= i3 ? com.android.fmradio.a.f684f.f691b : Math.max(i3, Math.min(aVar.f691b, i2 - aVar.f692c));
            } else {
                com.android.fmradio.a aVar2 = this.f720r;
                int i4 = aVar2.f690a;
                int i5 = this.f705c;
                iMin = i4 >= i5 ? aVar2.f691b : Math.min(aVar2.f691b, Math.max(i4, i5 - aVar2.f692c));
                if (d0(this.f704b) && this.f719q.f696c.b() && !com.android.fmradio.a.f686h.a(iMin)) {
                    iMin = this.f719q.f696c.f691b;
                }
            }
            A0(iMin);
        }
    }

    public boolean d0(int i2) {
        return i2 <= 3;
    }

    @Override // w0.g
    public void e(int i2) {
        if (K()) {
            A0(i2);
        }
    }

    public boolean e0(int i2) {
        return i2 >= com.android.fmradio.a.f685g.f690a && i2 <= com.android.fmradio.a.f684f.f691b;
    }

    @Override // w0.g
    public void f(int i2) {
        if (K() && i2 >= 0 && i2 < this.O && this.f708f != i2) {
            p0(i2);
        }
    }

    public boolean f0() {
        return this.N;
    }

    @Override // w0.g
    public void g() {
        F0(o0());
        z(this.f707e);
    }

    public void g0() {
        this.f708f = this.M.h(4, s0.m("ro.fyt.area", 2));
        this.f704b = this.M.h(3, 1);
        p0(this.f708f);
        this.f712j = w0.d.f17811w == 1;
        boolean z2 = this.f721s && s0.j(s0.o("persist.fyt.fm.rdsstate", ProxyProperties.LOCAL_EXCL_LIST), Camera.Parameters.FLASH_MODE_ON);
        this.f725w = z2;
        this.f727y = z2 && a0(26, "TAconfig") == 1;
        this.f726x = a0(26, "AFconfig") == 1;
        Log.e("NativeRadio", "---->> NativeRadio  isRdsEnable: " + this.f725w + "  isRdsTaEnable : " + this.f727y);
        U = s0.m("ro.fyt.fmsens", U);
        X = s0.m("ro.fyt.amsens", X);
        this.O = s0.m("persist.fyt.radio.area.size", 4);
        this.f709g = this.M.h(2, U);
        this.f710h = this.M.h(1, X);
        Log.e("NativeRadio", "---->> NativeRadio  mFmSens: " + this.f709g + "  mAmSens : " + this.f710h);
        this.f705c = this.M.h((this.f708f * 100) + 5 + (this.f704b * 10), 8750);
        this.f707e = this.M.h(6, 65536);
        this.f711i = this.M.h(8, 0);
        w0.f.e(I(this.f704b));
    }

    @Override // w0.g
    public void h() {
        if (this.H != null && this.f703a == f700d0) {
            this.J.removeCallbacks(this.H);
            this.H.a();
            s0.C(150L);
            this.H = null;
            return;
        }
        if (N() && O() && M() && P()) {
            g gVar = new g(this, this.f705c, true);
            this.H = gVar;
            gVar.c(200L);
        }
    }

    /* JADX WARN: Code duplicated, block: B:23:0x002b A[EXC_TOP_SPLITTER, PHI: r0
  0x002b: PHI (r0v3 java.io.InputStream) = (r0v2 java.io.InputStream), (r0v11 java.io.InputStream) binds: [B:11:0x0036, B:4:0x0029] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    public final void h0() {
        InputStream inputStreamOpenRawResource = null;
        try {
            inputStreamOpenRawResource = App.c().getResources().openRawResource(R.raw.rds_chars_table);
            this.D = (RdsTextChars) new Gson().fromJson((Reader) new BufferedReader(new InputStreamReader(inputStreamOpenRawResource)), RdsTextChars.class);
            if (inputStreamOpenRawResource != null) {
                try {
                    inputStreamOpenRawResource.close();
                } catch (Exception unused) {
                }
            }
        } catch (Exception unused2) {
            if (inputStreamOpenRawResource != null) {
                inputStreamOpenRawResource.close();
            }
        } catch (Throwable th) {
            if (inputStreamOpenRawResource != null) {
                try {
                    inputStreamOpenRawResource.close();
                } catch (Exception unused3) {
                }
            }
            throw th;
        }
        if (this.D == null) {
            Log.e("NativeRadio", "---->> RdsTextChars is NULL ");
            return;
        }
        Log.e("NativeRadio", "---->> RdsTextChars size : " + this.D.tables.size());
        for (RdsTextChars.CharTable charTable : this.D.tables) {
            charTable.b();
            Log.e("NativeRadio", "---->> RdsTextChar : " + charTable);
        }
    }

    @Override // w0.g
    public void i() {
        int iMax;
        if (K()) {
            if (d0(this.f704b) && this.f719q.f696c.b() && this.f719q.f696c.a(this.f705c)) {
                int i2 = this.f705c;
                com.android.fmradio.a aVar = this.f719q.f696c;
                int i3 = aVar.f691b;
                iMax = i2 >= i3 ? com.android.fmradio.a.f684f.f690a : Math.max(aVar.f690a, Math.min(i3, i2 + aVar.f692c));
            } else {
                int i4 = this.f705c;
                com.android.fmradio.a aVar2 = this.f720r;
                int i5 = aVar2.f691b;
                iMax = i4 >= i5 ? aVar2.f690a : Math.max(aVar2.f690a, Math.min(i5, i4 + aVar2.f692c));
            }
            A0(iMax);
        }
    }

    @Override // w0.g
    public void j(int i2) {
        if (K()) {
            h.a aVar = new h.a(this.f705c, 0);
            aVar.f2403b = i2;
            G0(aVar);
            r0();
        }
    }

    public final void j0() {
        this.J.removeCallbacks(this.Q);
        this.J.postDelayed(this.Q, 0L);
    }

    @Override // w0.g
    public void k() {
        if (this.f703a == f697a0) {
            return;
        }
        if (this.I != null) {
            N();
            return;
        }
        if (P() && O() && L() && M()) {
            Log.e("NativeRadio", "----------------->>> scan");
            e eVar = new e();
            this.I = eVar;
            this.J.postDelayed(eVar, 300L);
        }
    }

    public int k0() {
        boolean zD0 = d0(this.f704b);
        int i2 = this.f707e;
        if (zD0) {
            if (i2 < 65536 || i2 >= (this.f717o + 65536) - 1) {
                return 65536;
            }
            return i2 + 1;
        }
        if (i2 < 0 || i2 >= (this.f718p + 0) - 1) {
            return 0;
        }
        return i2 + 1;
    }

    @Override // w0.g
    public void l(int i2, int i3) {
        if (i2 == 0) {
            if (i3 >= 0) {
                com.android.fmradio.a aVar = this.f720r;
                if (i3 <= aVar.f693d) {
                    A0((int) ((i3 * (aVar.f691b - aVar.f690a)) / aVar.f692c));
                    return;
                }
                return;
            }
            return;
        }
        if (i2 == 1) {
            com.android.fmradio.a aVar2 = this.f720r;
            if (i3 < aVar2.f690a || i3 > aVar2.f691b) {
                return;
            }
            A0(i3);
            return;
        }
        if (i2 != 3) {
            return;
        }
        com.android.fmradio.a aVar3 = this.f720r;
        if (i3 < aVar3.f690a || i3 > aVar3.f691b) {
            return;
        }
        A0(i3);
    }

    public void l0() {
        w0.f.x(Z());
    }

    @Override // w0.g
    public boolean m(y.b bVar, int i2) {
        x xVarL2 = i.X2().L2();
        if (i2 == 4) {
            int size = this.f715m.size();
            for (int i3 = 0; i3 < size; i3++) {
                h.a aVarValueAt = this.f715m.valueAt(i3);
                if (aVarValueAt != null) {
                    xVarL2.G(bVar, i2, aVarValueAt.f2403b, aVarValueAt.f2404c);
                }
            }
        } else {
            if (i2 != 14) {
                return false;
            }
            int size2 = this.f715m.size();
            for (int i4 = 0; i4 < size2; i4++) {
                h.a aVarValueAt2 = this.f715m.valueAt(i4);
                if (aVarValueAt2 != null) {
                    xVarL2.E(bVar, i2, aVarValueAt2.f2403b, aVarValueAt2.f2406e);
                }
            }
        }
        return true;
    }

    public void m0() {
        if (d0(this.f704b)) {
            int i2 = 0;
            if (a0(19, "isforcemono") == 0) {
                i2 = a0(9, "monostero") == 1 ? 1 : 2;
            }
            w0.f.F(i2);
        }
    }

    @Override // w0.g
    public void n(int i2) {
        if (this.f721s && this.f725w) {
            int i3 = i2 == 1 ? 1 : 0;
            int iA0 = a0(26, "AFconfig");
            Log.e("NativeRadio", "---->> rdsAfEnable: to value: " + i2 + " toVar: " + i3 + " state: " + iA0);
            if (i3 != iA0) {
                w0.f.q(i3);
                this.f726x = i3 == 1;
                J(24, "configdata", i3);
            }
        }
    }

    public boolean n0() {
        String[] strArrSplit;
        if (this.f703a != f697a0) {
            return true;
        }
        if (this.D == null) {
            h0();
        }
        y0.h.Y(4096, true);
        s0.C(200L);
        boolean zOpenDev = this.L.openDev(this.f705c);
        s0.C(100L);
        Log.e("NativeRadio", "---->> OpenDev result: " + zOpenDev + "  isRdsEnable: " + this.f725w);
        if (zOpenDev) {
            Log.e("NativeRadio", "---->> isRdsSupport: " + this.f721s + " isAreaSupport: " + this.f722t + " isAmSupport: " + this.f723u);
            String strO = s0.o("persist.fyt.fm.default", ProxyProperties.LOCAL_EXCL_LIST);
            if (!s0.t(strO) && (strArrSplit = strO.split(" ")) != null && strArrSplit.length >= 6) {
                U = Integer.parseInt(strArrSplit[0]);
                V = Integer.parseInt(strArrSplit[1]);
                W = Integer.parseInt(strArrSplit[2]);
                X = Integer.parseInt(strArrSplit[3]);
                Y = Integer.parseInt(strArrSplit[4]);
                Z = Integer.parseInt(strArrSplit[5]);
            }
            SparseIntArray sparseIntArrayK = this.M.k(10);
            this.f716n = sparseIntArrayK;
            if (sparseIntArrayK != null && sparseIntArrayK.size() > 0) {
                int size = this.f716n.size();
                for (int i2 = 0; i2 < size; i2++) {
                    int iKeyAt = this.f716n.keyAt(i2);
                    int iValueAt = this.f716n.valueAt(i2);
                    h.a aVar = new h.a(iValueAt, 0);
                    aVar.f2402a = e0(iValueAt) ? iKeyAt - 65536 : iKeyAt;
                    aVar.f2403b = iKeyAt;
                    G0(aVar);
                }
            }
            T();
            g0();
            this.f706d = 0;
            this.f703a = f698b0;
            w0.f.h(this.f705c);
            w0.f.r(this.f725w ? 1 : 0);
            w0.f.D(this.f709g);
            w0.f.C(this.f710h);
            w0.f.o(this.f711i);
            w0.f.F(this.f724v ? 1 : 0);
            w0.f.j(this.f723u ? 1 : 0);
            w0.f.G(this.f722t ? 1 : 0);
            w0.f.q(this.f726x ? 1 : 0);
            w0.f.v(this.f727y ? 1 : 0);
            w0.f.y(this.B ? 1 : 0);
            A0(this.f705c);
            w0(this.f724v);
            w0.f.f(this.f707e);
        }
        this.N = zOpenDev;
        w0.f.m(zOpenDev ? 1 : 0);
        y0.h.Y(4096, false);
        return zOpenDev;
    }

    @Override // w0.g
    public void o(int i2) {
        if (K() && this.f721s && this.f725w) {
            u0(i2);
        }
    }

    public int o0() {
        boolean zD0 = d0(this.f704b);
        int i2 = this.f707e;
        if (zD0) {
            if (i2 <= 65536 || i2 >= this.f717o + 65536) {
                i2 = this.f717o + 65536;
            }
        } else if (i2 <= 0 || i2 >= this.f718p + 0) {
            return (this.f718p + 0) - 1;
        }
        return i2 - 1;
    }

    @Override // w0.g
    public void p(int i2) {
        Log.e("NativeRadio", "---->> stero: to value: " + i2);
        if (i2 == 0) {
            w0(false);
        } else if (i2 == 1) {
            w0(true);
        } else {
            if (i2 != 2) {
                return;
            }
            w0(!this.f724v);
        }
    }

    /* JADX WARN: Type inference failed for: r12v13 */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v3, types: [boolean, int] */
    public void p0(int i2) {
        com.android.fmradio.a aVar;
        Log.e("NativeRadio", "-----------------radioArea  area: " + i2);
        Bundle bundle = new Bundle();
        bundle.putInt("setradioarea", i2 + 1);
        Bundle bundle2 = new Bundle();
        if (this.L.systemCtrl(20, bundle, bundle2) == 0) {
            int iM = s0.m("persist.fyt.fm.surport", this.f714l);
            this.f714l = iM;
            ?? r12 = (iM & 4) != 0 ? 1 : 0;
            this.f721s = r12;
            this.f722t = (iM & 8) != 0;
            this.f723u = (iM & 16) != 0;
            w0.f.H(r12);
            int[] intArray = bundle2.getIntArray("radiorangs");
            int[] intArray2 = bundle2.getIntArray("defaultband");
            Log.e("NativeRadio", Arrays.toString(intArray));
            Log.e("NativeRadio", Arrays.toString(intArray2));
            if (intArray != null && intArray.length >= 9) {
                this.f719q.f694a = new com.android.fmradio.a(intArray[1], intArray[0], intArray[2]);
                this.f719q.f695b = new com.android.fmradio.a(intArray[4], intArray[3], intArray[5]);
                this.f719q.f696c = new com.android.fmradio.a(intArray[7], intArray[6], intArray[8]);
            }
            if (this.f708f != i2 || this.f715m.size() <= 0) {
                this.f716n.clear();
                this.f715m.clear();
                w0.f.J(4, -1, -1);
                if (intArray2 != null && intArray2.length >= 30) {
                    int i3 = 0;
                    for (int i4 = 0; i4 < intArray2.length; i4++) {
                        h.a aVar2 = new h.a(intArray2[i4], 0);
                        if (!e0(aVar2.f2404c) && i3 == 0) {
                            i3 = i4;
                        }
                        int i5 = i4 - i3;
                        aVar2.f2402a = i5;
                        aVar2.f2403b = c0(i5, e0(aVar2.f2404c));
                        Log.e("NativeRadio", "---->>>  add Station : " + aVar2);
                        G0(aVar2);
                    }
                    T();
                    w0.e.f17818d.c();
                    r0();
                }
            }
        }
        this.f708f = i2;
        this.f706d = 0;
        this.M.q(4, i2);
        this.M.e(4);
        w0.f.c(i2);
        if (!d0(this.f704b)) {
            aVar = this.f719q.f695b;
        } else if (this.f719q.f696c.b()) {
            com.android.fmradio.a.C0017a c0017a = this.f719q;
            int i6 = c0017a.f696c.f690a;
            com.android.fmradio.a aVar3 = c0017a.f694a;
            aVar = new com.android.fmradio.a(i6, aVar3.f691b, aVar3.f692c);
        } else {
            aVar = this.f719q.f694a;
        }
        if (!aVar.equals(this.f720r)) {
            this.f720r = aVar;
            w0.f.J(16, aVar.f690a, aVar.f691b, aVar.f692c, aVar.f693d);
            int iH = this.M.h((this.f708f * 100) + 5 + (this.f704b * 10), this.f705c);
            this.f705c = iH;
            A0(iH);
        }
        Log.e("NativeRadio", "mRang : " + this.f720r + " oirt :" + this.f719q.f696c);
    }

    @Override // w0.g
    public void q(int i2) {
    }

    public void q0(y.b bVar) {
        com.android.fmradio.a aVar = this.f720r;
        bVar.H0(16, new int[]{aVar.f690a, aVar.f691b, aVar.f692c, aVar.f693d}, null, null);
    }

    @Override // w0.g
    public void r(int i2) {
    }

    public void r0() {
        this.M.s(10, this.f716n);
        this.M.e(10);
    }

    @Override // w0.g
    public void reset() {
        K();
        this.M.c();
        this.f706d = 0;
        this.f724v = false;
        this.f725w = false;
        this.f726x = false;
        this.f727y = false;
        this.f728z = false;
        this.A = false;
        this.B = false;
        this.f715m.clear();
        this.f716n.clear();
        w0.f.J(4, -1, -1);
        g0();
        if (this.f721s) {
            u(this.f725w ? 1 : 0);
        }
        s(1);
        w0.f.r(this.f725w ? 1 : 0);
        w0.f.D(this.f709g);
        w0.f.C(this.f710h);
        w0.f.o(this.f711i);
        w0.f.F(this.f724v ? 1 : 0);
        w0.f.j(this.f723u ? 1 : 0);
        w0.f.G(this.f722t ? 1 : 0);
        w0.f.q(this.f726x ? 1 : 0);
        w0.f.v(this.f727y ? 1 : 0);
        w0.f.y(this.B ? 1 : 0);
        A0(this.f705c);
        w0.f.f(this.f707e);
    }

    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r0v2 */
    @Override // w0.g
    public void s(int i2) {
        ?? r1 = i2 != 1 ? 0 : 1;
        if (this.f712j != r1) {
            this.f712j = r1;
            w0.f.d(r1);
        }
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0108  */
    public final boolean s0(int i2, int i3, List<h.a> list, List<h.a> list2) {
        boolean z2;
        Bundle bundle = new Bundle();
        Bundle bundle2 = new Bundle();
        bundle.putInt("param0", i3);
        int iV = i2 >= 4 ? V() : W();
        bundle.putInt("sensitivity", iV);
        Log.e("NativeRadio", "------------------->>>>scan  isFm " + d0(i2) + "  sens: " + iV);
        if (!d0(i2)) {
            bundle.putInt("isuseam", 1);
        }
        int iSystemCtrl = this.L.systemCtrl(1, bundle, bundle2);
        Log.e("NativeRadio", "scan XXXXXXX  ------------------->>>> systemCtrl start_freq: " + i3 + " ret: " + iSystemCtrl + " outparam : " + bundle2);
        if (iSystemCtrl == -1) {
            return false;
        }
        short[] shortArray = bundle2.getShortArray("param0");
        short[] shortArray2 = bundle2.getShortArray("param1");
        StringBuilder sb = new StringBuilder();
        sb.append("-------------------->>> scan result size :  ");
        sb.append(shortArray == null ? 0 : shortArray.length);
        sb.append(" start_freq: ");
        sb.append(i3);
        Log.e("NativeRadio", sb.toString());
        if (shortArray != null) {
            int length = shortArray.length;
            Log.e("NativeRadio", "-------------------->>>scan size :  " + length + " start_freq: " + i3);
            if (length > 0) {
                for (int i4 = 0; i4 < length; i4++) {
                    boolean z3 = !d0(this.f704b);
                    h.a aVar = new h.a(z3 ? shortArray[i4] : shortArray[i4] * 10, shortArray2[i4]);
                    if (z3) {
                        int size = list2.size();
                        aVar.f2402a = size;
                        aVar.f2403b = c0(size, false);
                        list2.add(aVar);
                    } else {
                        int size2 = list.size();
                        aVar.f2402a = size2;
                        aVar.f2403b = c0(size2, true);
                        list.add(aVar);
                    }
                }
                z2 = true;
            } else {
                z2 = false;
            }
        } else {
            z2 = false;
        }
        if (list.size() > 0) {
            for (int i5 = 0; i5 < list.size(); i5++) {
                h.a aVar2 = list.get(i5);
                aVar2.f2402a = i5;
                aVar2.f2403b = c0(i5, true);
                G0(aVar2);
            }
        }
        if (list2.size() > 0) {
            for (int i6 = 0; i6 < list2.size(); i6++) {
                h.a aVar3 = list2.get(i6);
                aVar3.f2402a = i6;
                aVar3.f2403b = c0(i6, false);
                G0(aVar3);
            }
        }
        return z2;
    }

    @Override // w0.g
    public void save() {
        if (K()) {
            h.a aVar = this.f715m.get(this.f707e, null);
            aVar.f2404c = this.f705c;
            aVar.f2405d = 0;
            Log.e("NativeRadio", "----------------->>> save station : " + aVar);
            G0(aVar);
        }
    }

    @Override // w0.g
    public void t(int i2, int[] iArr, float[] fArr, String[] strArr) {
    }

    public void t0(String str) {
        String str2;
        if (this.f725w && d0(this.f704b) && !s0.t(str)) {
            str2 = "PS:" + str;
        } else {
            str2 = ProxyProperties.LOCAL_EXCL_LIST;
        }
        w0.f.n(str2);
    }

    @Override // w0.g
    public void u(int i2) {
        if (K()) {
            J(21, "rdsonoff", i2 != 1 ? 0 : 1);
            boolean zY = Y();
            if (this.f725w != zY) {
                this.f725w = zY;
            }
            w0.f.r(this.f725w ? 1 : 0);
        }
    }

    /* JADX WARN: Code duplicated, block: B:15:0x001c  */
    public void u0(int i2) {
        int i3 = this.f711i;
        if (i2 == 0) {
            i3 = 0;
        } else if (i2 != 1) {
            if (i2 != 2) {
                int i4 = i2 > 2 ? i2 - 3 : i3;
                if (i4 < 41) {
                    i3 = i4;
                }
            } else {
                i3++;
                if (i3 >= 41) {
                    i3 = 0;
                }
            }
        }
        Log.e("NativeRadio", "------------>>> ptyIndex to value : " + i3);
        if (i3 != this.f711i) {
            Log.e("NativeRadio", "------------>>> ptyIndex to value : " + i3);
            if (J(25, "configdata", i3) == 0) {
                v0(i3, true);
            }
        }
    }

    @Override // w0.g
    public void v(int i2) {
        if (this.E != null) {
            O();
            return;
        }
        if (N() && P() && L() && M()) {
            Log.e("NativeRadio", "----------------->>> search");
            f fVar = new f(d0(this.f704b) ? 1 : 4, this.f720r.f690a);
            this.E = fVar;
            this.J.postDelayed(fVar, 300L);
        }
    }

    public void v0(int i2, boolean z2) {
        g gVar;
        Log.e("NativeRadio", "---->> setPtyId ptyIndex = " + this.f711i + " to pty = " + i2 + "  mState: " + this.f703a);
        if (this.f703a == f697a0) {
            return;
        }
        Log.e("NativeRadio", "---->> setPtyId ptyIndex = " + this.f711i + " to pty = " + i2 + "  value: " + b0(22, "PTYconfig", this.f711i));
        if (this.f711i != i2) {
            this.f711i = i2;
            this.f728z = i2 > 0;
            this.M.q(8, i2);
        }
        Log.e("NativeRadio", "setPtyId ptyIndex = " + this.f711i + " to pty = " + i2 + "  toSeek: " + z2 + " isRdsPtyEnable :" + this.f728z);
        if (z2 && this.f725w) {
            K();
            if (this.f727y && (gVar = this.F) != null) {
                gVar.b();
            }
            if (this.f725w && this.f728z) {
                g gVar2 = new g(this, this.f705c, 29);
                this.G = gVar2;
                gVar2.c(300L);
            }
        }
        w0.f.o(this.f711i);
    }

    @Override // w0.g
    public void w(int i2) {
        if (this.f721s && this.f725w) {
            int i3 = 0;
            if (i2 != 0) {
                if (i2 == 1) {
                    i3 = 1;
                } else if (i2 == 2) {
                    i3 = !this.f727y ? 1 : 0;
                }
            }
            Log.e("NativeRadio", "-------------->>> rdsTaEnable toVar : " + i3);
            if (i3 != this.f727y) {
                J(23, "configdata", i3);
            }
        }
    }

    public boolean w0(boolean z2) {
        if ((b0(19, "isforcemono", 0) == 0) != z2) {
            J(10, "forcemono", !z2 ? 1 : 0);
        }
        boolean z3 = b0(19, "isforcemono", 0) == 0;
        this.f724v = z3;
        this.J.removeCallbacks(this.S);
        if (z3) {
            this.J.postDelayed(this.S, 100L);
        } else {
            w0.f.F(0);
        }
        return z3;
    }

    @Override // w0.g
    public void x(int i2) {
        if (K()) {
            Log.e("NativeRadio", "---->> band value: " + i2);
            int i3 = this.f704b;
            if (i2 == -4) {
                x(I(i3 < 4 ? 4 : 1));
                return;
            }
            if (i2 == -3) {
                if (i3 != 1) {
                    i3 = 1;
                }
                x(I(i3));
            } else if (i2 == -2) {
                if (i3 != 4) {
                    i3 = 4;
                }
                x(I(i3));
            } else if (i2 != -1) {
                H(i2);
            } else {
                x(-4);
            }
        }
    }

    public void x0(int i2) {
        boolean z2 = i2 == 1;
        if (this.f727y != z2) {
            this.f727y = z2;
        }
        Q(this.f727y);
        w0.f.v(this.f727y ? 1 : 0);
    }

    @Override // w0.g
    public void y(int i2, int i3) {
        int i4;
        int iMin = 0;
        if (i2 == 0) {
            if (i3 == -1) {
                i3 = Math.max(Y, Math.min(this.f710h + 1, Z));
            } else if (i3 == -2) {
                i3 = Math.min(Z, Math.max(this.f710h - 1, Y));
            } else if (i3 < Y || i3 > Z) {
                i3 = 0;
            }
            Log.e("NativeRadio", "------------AM mAmSens : " + this.f710h + " to value: " + i3);
            if (i3 != this.f710h) {
                this.f710h = i3;
                this.M.q(1, i3);
                this.M.e(1);
                w0.f.C(i3);
                return;
            }
            return;
        }
        if (i2 != 1) {
            return;
        }
        int i5 = V;
        if (i3 >= i5 && i3 <= (i4 = W)) {
            if (((!this.f713k ? 1 : 0) & (i3 == 0 ? 1 : 0)) != 0) {
                i3 = 1;
            }
            iMin = Math.min(i4, Math.max(i3, i5));
        } else if (i3 == -1) {
            if (((!this.f713k ? 1 : 0) & (i5 == 0 ? 1 : 0)) != 0) {
                i5 = 1;
            }
            iMin = Math.max(i5, Math.min(this.f709g + 1, W));
        } else if (i3 == -2) {
            if (((!this.f713k ? 1 : 0) & (i5 == 0 ? 1 : 0)) != 0) {
                i5 = 1;
            }
            iMin = Math.min(W, Math.max(this.f709g - 1, i5));
        }
        Log.e("NativeRadio", "------------FM mFmSens : " + this.f709g + " to value: " + iMin);
        if (iMin != this.f709g) {
            this.f709g = iMin;
            this.M.q(2, iMin);
            this.M.e(2);
            w0.f.D(iMin);
        }
    }

    public void y0(int i2) {
        g gVar;
        if (this.C != i2) {
            this.C = i2;
            if (this.f725w && this.f727y) {
                Log.e("NativeRadio", "-------------->>> setTaState state : " + i2);
                int i3 = this.C;
                if (i3 == 0) {
                    if (this.f703a == f698b0 && w0.d.f17806r != 1) {
                        P();
                        this.F = null;
                    }
                    if (w0.d.f17806r == 0) {
                        Log.e("NativeRadio", "-------------->>> 00 setTaState state : " + i2);
                        g gVar2 = this.F;
                        if (gVar2 == null || !gVar2.f740d) {
                            this.F = new g(this, this.f705c, 28);
                        }
                        this.F.c(20000L);
                    }
                } else if (i3 == 1 && (gVar = this.F) != null) {
                    this.J.removeCallbacks(gVar);
                }
            }
        }
        w0.f.u(i2);
    }

    @Override // w0.g
    public void z(int i2) {
        Log.e("NativeRadio", "selectChannel----->>> mState : " + this.f703a);
        if (K()) {
            if (d0(this.f704b) && i2 < 65536) {
                i2 = c0(i2 - 1, true);
            }
            h.a aVar = this.f715m.get(i2, null);
            Log.e("NativeRadio", "selectChannel stationId : " + i2 + " station: " + aVar);
            if (aVar != null) {
                A0(aVar.f2404c);
                Log.e("NativeRadio", "-------------------->>>station:  station.id: " + aVar.f2403b);
                F0(aVar.f2403b);
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r0v2 */
    public void z0(int i2) {
        ?? r1 = i2 != 1 ? 0 : 1;
        this.B = r1;
        w0.f.y(r1);
    }
}
