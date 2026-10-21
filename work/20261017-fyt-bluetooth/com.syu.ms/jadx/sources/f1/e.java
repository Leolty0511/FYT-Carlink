package f1;

import android.net.ProxyProperties;
import android.os.Handler;
import android.os.SystemClock;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseIntArray;
import app.App;
import base.Configure;
import com.syu.jni.ToolsJni;
import com.syu.ms.R;
import java.util.Arrays;
import java.util.Locale;
import o1.k0;
import o1.s0;

/* JADX INFO: loaded from: classes2.dex */
public class e extends s {
    public static int W = 64;
    public volatile boolean T;
    public final Runnable U;
    public int V;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int size = e.this.f2141e.size();
            for (int i2 = 0; i2 < size; i2++) {
                s.a aVarValueAt = e.this.f2141e.valueAt(i2);
                if (aVarValueAt != null) {
                    aVarValueAt.n();
                    aVarValueAt.o();
                }
            }
        }
    }

    public class b extends s.a {

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public int f1952n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public boolean f1953o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public int f1954p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public int f1955q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        public int f1956r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        public boolean f1957s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        public int f1958t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        public int f1959u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        public int f1960v;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        public SparseArray<C0042b> f1961w;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public SparseIntArray f1962x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        public a f1963y;

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        public k0 f1964z;

        public class a implements Runnable {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public int f1965a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f1966b;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public long f1969e;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public boolean f1967c = false;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public boolean f1968d = false;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public final long f1970f = 500;

            public a(int i2, int i3) {
                this.f1965a = 0;
                this.f1966b = 0;
                this.f1969e = 0L;
                this.f1965a = i2;
                this.f1966b = i3;
                this.f1969e = SystemClock.elapsedRealtime();
            }

            @Override // java.lang.Runnable
            public void run() {
                boolean z2;
                boolean z3;
                Log.e("Chip2863", "SetupVideoIdTask ====>>> setVideoId videoId: " + this.f1966b + " lastVideoId : " + this.f1965a + " isReady: " + e.this.T + " mTask: " + b.this.f1963y);
                b bVar = b.this;
                int i2 = bVar.f1962x.get(this.f1966b, bVar.f2170c == q.M ? e.W : 16);
                if (i2 == -1) {
                    return;
                }
                if (e.this.T) {
                    z2 = false;
                } else {
                    Log.e("lseccamm", "Cam State Check START!!");
                    z2 = false;
                    for (int i3 = 8; i3 < 12; i3++) {
                        String str = String.format(Locale.US, "sys.fyt.cam%d_sta", Integer.valueOf(i3));
                        boolean z4 = s0.m(str, 0) == 1;
                        if (z4) {
                            Log.e("lseccamm", str + " = 1");
                            z2 = this.f1968d ? SystemClock.elapsedRealtime() - this.f1969e < 500 : z4;
                            if (z2) {
                                break;
                            }
                        } else {
                            z2 = z4;
                        }
                    }
                    Log.e("lseccamm", "Cam State Check END!!");
                }
                e.this.f2155s.removeCallbacks(this);
                if (z2) {
                    e.this.f2155s.postDelayed(this, 150L);
                    return;
                }
                synchronized (e.this.S) {
                    Log.e("Chip2863", "SetupVideoIdTask ====>>> setVideoId videoId: " + this.f1966b + " lastVideoId : " + this.f1965a);
                    b bVar2 = b.this;
                    e.this.V(64, bVar2.f2170c);
                    int iA = e.this.A(80);
                    int i4 = (i2 >> 4) & 5;
                    int i5 = i2 & 5;
                    int i6 = iA & 255;
                    Log.e("Chip2863", String.format("SetupVideoIdTask setVideoId 0x50 Reg value : %02X to %02X  VIN: %02X", Integer.valueOf(i6), Integer.valueOf(i5), Integer.valueOf(i2)));
                    int i7 = iA & 15 & i4;
                    Log.e("Chip2863", String.format("SetupVideoIdTask setVideoId value : %02X, iv: %02X, bit: %02X, ret: %02X", Integer.valueOf(i6), Integer.valueOf(i5), Integer.valueOf(i4), Integer.valueOf(i7)));
                    if (i7 != i5) {
                        z3 = this.f1966b > 0;
                        if (i5 > 0) {
                            int i8 = (iA | i5) & 5;
                            Log.e("Chip2863", String.format("SetupVideoIdTask setVideoId ==== 0x50 Reg value : %02X to %02X ", Integer.valueOf(i6), Integer.valueOf(i8)));
                            e.this.Z(80, i8);
                        } else {
                            int i9 = (iA ^ i4) & (i5 | iA) & 5;
                            Log.e("Chip2863", String.format("SetupVideoIdTask setVideoId ==== 0x50 Reg value : %02X to %02X ", Integer.valueOf(i6), Integer.valueOf(i9)));
                            e.this.Z(80, i9);
                        }
                    } else {
                        z3 = false;
                    }
                    int iA2 = e.this.A(42);
                    b bVar3 = b.this;
                    int i10 = this.f1966b;
                    bVar3.f2171d = i10;
                    int[] iArrH = bVar3.h(i10, i10 > 0 ? 1 : 0);
                    u0.d.I3(68, iArrH);
                    Log.e("Signal", "===>>Multi setVideoId  chipId : " + e.this.f2144h + " channel : " + b.this.f2169b + " data: " + Arrays.toString(iArrH));
                    b bVar4 = b.this;
                    C0042b c0042b = bVar4.f1961w.get(this.f1966b, bVar4.new C0042b());
                    int i11 = c0042b.f1972a;
                    Log.e("Chip2863", "setVideoId channelChanged : " + z3 + " toVideoId: " + this.f1966b + " sChannel : " + c0042b + " videoFormat : " + b.this.f2175h);
                    if (i11 > -1) {
                        b bVar5 = b.this;
                        if (i11 != bVar5.f2175h) {
                            if (i11 != 0 && i11 != 1) {
                                int i12 = bVar5.f1956r;
                                int i13 = c0042b.f1973b;
                                if (i12 != i13) {
                                    bVar5.f1956r = i13;
                                }
                            }
                            bVar5.f2175h = i11;
                            bVar5.f2177j.h(0);
                            b bVar6 = b.this;
                            bVar6.f2179l = false;
                            bVar6.f1960v = 3;
                            bVar6.f2178k = true;
                        }
                    }
                    Log.e("Signal", "setVideoId channelChanged : " + z3 + " toVideoId: " + this.f1966b + " sChannel : " + c0042b + " videoFormat : " + b.this.f2175h);
                    if (this.f1966b > 0) {
                        b bVar7 = b.this;
                        if (!bVar7.f2178k) {
                            if (iA2 != 48) {
                                e.this.Z(42, 48);
                            }
                            if (!e.this.T) {
                                e.this.j0(true);
                            }
                        }
                    }
                }
                if (equals(b.this.f1963y)) {
                    b.this.f1963y = null;
                }
            }
        }

        /* JADX INFO: renamed from: f1.e$b$b, reason: collision with other inner class name */
        public class C0042b {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public int f1972a = -1;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f1973b = 0;

            public C0042b() {
            }

            public String toString() {
                return "Signal[ntcsPal : " + this.f1972a + " mAhd:" + this.f1973b + "]";
            }
        }

        public b(int i2) {
            super();
            this.f1952n = -1;
            this.f1953o = false;
            this.f1954p = 0;
            this.f1955q = -1;
            this.f1956r = 0;
            this.f1957s = false;
            this.f1958t = 0;
            this.f1959u = 0;
            this.f1960v = 3;
            this.f1961w = new SparseArray<>();
            this.f1962x = new SparseIntArray();
            this.f1963y = null;
            this.f1964z = new k0();
            this.f2170c = i2;
            this.f2169b = i2;
        }

        @Override // f1.s.a
        public void b() {
            k(false);
            this.f2175h = -1;
            this.f2179l = false;
            o();
            n();
        }

        /* JADX WARN: Code duplicated, block: B:102:0x01e0  */
        /* JADX WARN: Code duplicated, block: B:104:0x01e6  */
        /* JADX WARN: Code duplicated, block: B:105:0x01e8  */
        /* JADX WARN: Code duplicated, block: B:109:0x01ef  */
        /* JADX WARN: Code duplicated, block: B:114:0x0209  */
        /* JADX WARN: Code duplicated, block: B:121:0x021d  */
        /* JADX WARN: Code duplicated, block: B:126:0x0235  */
        /* JADX WARN: Code duplicated, block: B:128:0x0238  */
        /* JADX WARN: Code duplicated, block: B:131:0x0241  */
        /* JADX WARN: Code duplicated, block: B:51:0x009c A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:52:0x009d  */
        /* JADX WARN: Code duplicated, block: B:58:0x00ce  */
        /* JADX WARN: Code duplicated, block: B:61:0x0136  */
        /* JADX WARN: Code duplicated, block: B:62:0x0138  */
        /* JADX WARN: Code duplicated, block: B:67:0x014a  */
        /* JADX WARN: Code duplicated, block: B:73:0x0161  */
        /* JADX WARN: Code duplicated, block: B:78:0x0173  */
        /* JADX WARN: Code duplicated, block: B:81:0x0186  */
        /* JADX WARN: Code duplicated, block: B:82:0x0189  */
        /* JADX WARN: Code duplicated, block: B:84:0x018d  */
        /* JADX WARN: Code duplicated, block: B:89:0x01a7  */
        /* JADX WARN: Code duplicated, block: B:94:0x01b9  */
        /* JADX WARN: Code duplicated, block: B:99:0x01cb  */
        /* JADX WARN: Instruction removed from duplicated block: B:52:0x009d, please report this as an issue */
        @Override // f1.s.a
        public boolean c() {
            int i2;
            String str;
            int i3;
            int i4;
            int iIntValue;
            int iCallSystemCtrl;
            boolean z2;
            boolean z3;
            boolean z4;
            boolean z5;
            int i5;
            int i6;
            int i7;
            boolean z6;
            boolean z7;
            boolean z8;
            int i8;
            int i9;
            boolean z9;
            int i10;
            int i11;
            int i12;
            int i13;
            String string;
            if (this.f2170c < 0) {
                return false;
            }
            boolean z10 = this.f1956r == 0;
            int i14 = this.f2175h;
            if (i14 != 0) {
                if (i14 != 1) {
                    if (i14 == 2) {
                        i13 = z10 ? R.raw.tp2863_ahd_720_25 : R.raw.tp2863_tvi_720_25;
                        StringBuilder sb = new StringBuilder();
                        sb.append("VIDEO_NP_R720P25_");
                        sb.append(z10 ? "AHD" : "TVI");
                        string = sb.toString();
                    } else if (i14 != 3) {
                        if (i14 == 6) {
                            i2 = z10 ? R.raw.tp2863_ahd_1080_25 : R.raw.tp2863_tvi_1080_25;
                            str = "VIDEO_NP_R1080P25";
                        } else if (i14 != 7) {
                            str = "VIDEO_UNKNOW";
                            i2 = 0;
                            i3 = 0;
                            i4 = 0;
                        } else {
                            i2 = z10 ? R.raw.tp2863_ahd_1080_30 : R.raw.tp2863_tvi_1080_30;
                            str = "VIDEO_NP_R1080P30";
                        }
                        i4 = 0;
                        i3 = 1;
                    } else {
                        i13 = z10 ? R.raw.tp2863_ahd_720_30 : R.raw.tp2863_tvi_720_30;
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("VIDEO_NP_R720P30_");
                        sb2.append(z10 ? "AHD" : "TVI");
                        string = sb2.toString();
                    }
                    i3 = 0;
                    i4 = 0;
                    int i15 = i13;
                    str = string;
                    i2 = i15;
                } else {
                    i2 = R.raw.tp2863_cvbs_p;
                    str = "VIDEO_NP_PAL";
                }
                if (i2 == 0) {
                    return false;
                }
                String path = e.this.f2157u.getPath();
                try {
                    iIntValue = Integer.valueOf(ProxyProperties.LOCAL_EXCL_LIST + path.charAt(path.length() - 1)).intValue();
                } catch (Exception unused) {
                    iIntValue = -1;
                }
                iCallSystemCtrl = iIntValue >= 0 ? ToolsJni.callSystemCtrl(249, "i2cindex", iIntValue, "lockhandle") : -1;
                Log.e("lseccamm", "i2cName : " + path + " i2cIndex:" + iIntValue + " lockRet:" + iCallSystemCtrl);
                Log.e("lseccamm", "flush START: vChannel : " + this.f2170c + " videoFormat:" + str + " hasSignal:" + this.f2179l);
                if (e.this.Z(64, this.f2170c)) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (z2 || !e.this.Z(42, 56)) {
                    z3 = false;
                } else {
                    z3 = true;
                }
                if (z3 || !e.this.q(s0.A(App.c(), i2, 16))) {
                    z4 = false;
                } else {
                    z4 = true;
                }
                if (z4 || !e.this.Z(42, 48)) {
                    z5 = false;
                } else {
                    z5 = true;
                }
                int iA = e.this.A(66);
                i5 = iA & 1;
                i6 = (iA >> 1) & 1;
                i7 = this.f2170c;
                if (i7 == q.L) {
                    i5 = i3 ^ 1;
                } else if (i7 == q.M) {
                    i6 = i3 ^ 1;
                }
                if (z5 || !e.this.Z(66, (i6 << 1) | 240 | i5)) {
                    z6 = false;
                } else {
                    z6 = true;
                }
                if (z6 || !e.this.Z(67, 0)) {
                    z7 = false;
                } else {
                    z7 = true;
                }
                if (z7 || !e.this.Z(64, 8)) {
                    z8 = false;
                } else {
                    z8 = true;
                }
                int iA2 = e.this.A(34);
                i8 = (iA2 >> 1) & 1;
                i9 = iA2 & 1;
                if (g.f.n(14)) {
                    i9 = 0;
                    i4 = 0;
                } else {
                    i12 = this.f2170c;
                    if (i12 == q.L) {
                        i9 = i4;
                    } else if (i12 != q.M) {
                    }
                    i4 = i8;
                }
                if (z8 || !e.this.Z(34, i9 | (i4 << 1) | 32)) {
                    z9 = false;
                } else {
                    z9 = true;
                }
                if (!g.f.n(11) || g.f.n(14)) {
                    i10 = R.raw.tp2863_mipiout_7870;
                } else {
                    i10 = R.raw.tp2863_mipiout;
                }
                boolean z11 = !z9 && e.this.q(s0.A(App.c(), i10, 16));
                if (iCallSystemCtrl >= 0) {
                    ToolsJni.callSystemCtrl(248, "lockhandle", iCallSystemCtrl);
                }
                i11 = this.f2171d;
                if (i11 != 0) {
                    C0042b c0042b = this.f1961w.get(i11, new C0042b());
                    c0042b.f1972a = this.f2175h;
                    this.f1961w.put(this.f2171d, c0042b);
                }
                Log.e("lseccamm", "flush END:  vChannel : " + this.f2170c + " videoFormat:" + str + "  ret : " + z11);
                this.f2178k = false;
                return z11;
            }
            i2 = R.raw.tp2863_cvbs_n;
            str = "VIDEO_NP_NTSC";
            i3 = 0;
            i4 = 1;
            if (i2 == 0) {
                return false;
            }
            String path2 = e.this.f2157u.getPath();
            iIntValue = Integer.valueOf(ProxyProperties.LOCAL_EXCL_LIST + path2.charAt(path2.length() - 1)).intValue();
            if (iIntValue >= 0) {
            }
            Log.e("lseccamm", "i2cName : " + path2 + " i2cIndex:" + iIntValue + " lockRet:" + iCallSystemCtrl);
            Log.e("lseccamm", "flush START: vChannel : " + this.f2170c + " videoFormat:" + str + " hasSignal:" + this.f2179l);
            if (e.this.Z(64, this.f2170c)) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (z2) {
                z3 = false;
            } else {
                z3 = false;
            }
            if (z3) {
                z4 = false;
            } else {
                z4 = false;
            }
            if (z4) {
                z5 = false;
            } else {
                z5 = false;
            }
            int iA3 = e.this.A(66);
            i5 = iA3 & 1;
            i6 = (iA3 >> 1) & 1;
            i7 = this.f2170c;
            if (i7 == q.L) {
                i5 = i3 ^ 1;
            } else if (i7 == q.M) {
                i6 = i3 ^ 1;
            }
            if (z5) {
                z6 = false;
            } else {
                z6 = false;
            }
            if (z6) {
                z7 = false;
            } else {
                z7 = false;
            }
            if (z7) {
                z8 = false;
            } else {
                z8 = false;
            }
            int iA4 = e.this.A(34);
            i8 = (iA4 >> 1) & 1;
            i9 = iA4 & 1;
            if (g.f.n(14)) {
                i12 = this.f2170c;
                if (i12 == q.L) {
                    i9 = i4;
                } else if (i12 != q.M) {
                }
                i4 = i8;
            } else {
                i9 = 0;
                i4 = 0;
            }
            if (z8) {
                z9 = false;
            } else {
                z9 = false;
            }
            if (g.f.n(11)) {
                i10 = R.raw.tp2863_mipiout_7870;
            } else {
                i10 = R.raw.tp2863_mipiout_7870;
            }
            if (z9) {
            }
            if (iCallSystemCtrl >= 0) {
                ToolsJni.callSystemCtrl(248, "lockhandle", iCallSystemCtrl);
            }
            i11 = this.f2171d;
            if (i11 != 0) {
                C0042b c0042b2 = this.f1961w.get(i11, new C0042b());
                c0042b2.f1972a = this.f2175h;
                this.f1961w.put(this.f2171d, c0042b2);
            }
            Log.e("lseccamm", "flush END:  vChannel : " + this.f2170c + " videoFormat:" + str + "  ret : " + z11);
            this.f2178k = false;
            return z11;
        }

        @Override // f1.s.a
        public boolean f() {
            int iQ;
            e eVar = e.this;
            if (!eVar.f2154r) {
                return false;
            }
            if (eVar.n()) {
                return true;
            }
            if (this.f2171d == 0) {
                return false;
            }
            e.this.V(64, this.f2170c);
            t();
            boolean zP = p();
            if (this.f1957s && (iQ = q()) != -1 && this.f2175h != iQ) {
                this.f2175h = iQ;
                this.f2178k = true;
                Log.e("Chip2863", "channel : " + this.f2171d + " hasSignal : " + zP + " TO  videoFormat :  " + this.f2175h + " vTypeOrAhd: " + this.f1956r + " chipid : " + e.this.f2144h + " vChannel: " + this.f2170c);
            }
            boolean z2 = this.f1956r != -1 && this.f1957s;
            boolean z3 = zP && e.this.T && z2;
            if (this.f2179l != z3) {
                this.f2179l = z3;
                o();
            }
            if (this.f2178k) {
                n();
            }
            return z2;
        }

        @Override // f1.s.a
        public void g(int i2, int i3, int i4) {
            synchronized (e.this.S) {
                e.this.X();
                e.this.V(64, this.f2170c);
                boolean z2 = e.this.Z(16, i2 & 255);
                e.this.X();
                e.this.V(64, this.f2170c);
                boolean z3 = z2 && e.this.Z(17, i4 & 255);
                e.this.X();
                e.this.V(64, this.f2170c);
                if (z3) {
                    e.this.Z(18, i3 & 255);
                }
            }
        }

        @Override // f1.s.a
        public void m(int i2) {
            int iA;
            int i3;
            boolean z2;
            Log.e("Chip2863", " setVideoId ==>> videoId : " + i2 + " this.videoId: " + this.f2171d);
            if (i2 == 0) {
                return;
            }
            int i4 = 0;
            if (this.f2171d != i2) {
                this.f2175h = -1;
                this.f2179l = false;
                n();
                o();
            }
            int i5 = this.f1962x.get(i2, this.f2170c == q.M ? e.W : 16);
            if (i5 == -1) {
                return;
            }
            synchronized (e.this.S) {
                e.this.V(64, this.f2170c);
                iA = e.this.A(80);
                int i6 = (i5 >> 4) & 5;
                i3 = i5 & 5;
                z2 = (i6 & (iA & 15)) != i3;
            }
            a aVar = this.f1963y;
            if (aVar != null) {
                if (aVar.f1967c && !z2) {
                    e.this.j0(true);
                }
                e.this.f2155s.removeCallbacks(this.f1963y);
                this.f1963y = null;
            }
            Log.e("Chip2863", "====>>> setVideoId videoId: " + i2 + " last : " + this.f2171d + " changeChannel : " + z2);
            if (this.f2171d == i2 && !z2) {
                if (i2 > 0) {
                    o();
                    n();
                    return;
                }
                return;
            }
            Log.e("Chip2863", String.format("setVideoId 0x50 Reg value : %02X to %02X ", Integer.valueOf(iA & 255), Integer.valueOf(i3)));
            if (z2) {
                e.this.j0(false);
                i4 = 300;
            }
            a aVar2 = new a(this.f2171d, i2);
            this.f1963y = aVar2;
            aVar2.f1967c = z2;
            e.this.f2155s.postDelayed(aVar2, i4);
        }

        public boolean p() {
            int iA = e.this.A(1) & 255;
            boolean z2 = (iA & 112) == 112;
            boolean z3 = (iA & 96) == 96;
            if (z2 || z3) {
                int i2 = this.f1959u;
                if (i2 < this.f1960v) {
                    int i3 = i2 + 1;
                    this.f1959u = i3;
                    if (this.f1953o) {
                        int iU = u((iA >> 2) & 1);
                        C0042b c0042b = this.f1961w.get(this.f2171d, new C0042b());
                        if (this.f1956r != iU) {
                            Log.e("Chip2863", " CHECK SIGNAL  SURE old Ahd : " + this.f1956r + "  to New AHD: " + iU + "  this.videoId : " + this.f2171d + " chipid : " + e.this.f2144h);
                            this.f1956r = iU;
                            c0042b.f1973b = iU;
                            this.f1961w.put(this.f2171d, c0042b);
                            this.f2178k = true;
                            this.f1959u = 1;
                            this.f1960v = 3;
                        } else if (z2) {
                            this.f1960v = 3;
                            Log.e("Chip2863", " 111111  CHECK SIGNAL  SURE old Ahd : " + this.f1956r + "  to New AHD: " + iU + " chipid : " + e.this.f2144h);
                        } else if (z3) {
                            Log.e("Chip2863", " 222222  CHECK SIGNAL  SURE old Ahd : " + this.f1956r + "  to New AHD: " + iU + " chipid : " + e.this.f2144h);
                        }
                    } else {
                        this.f1960v = 3;
                        this.f1959u = Math.min(i3, 3);
                    }
                } else if (z3 && !z2) {
                    int i4 = this.f2175h;
                    boolean z4 = (i4 == 13 || i4 == 0 || i4 == 1) ? false : true;
                    this.f1953o = z4;
                    this.f1960v = z4 ? 6 : 3;
                    Log.e("Chip2863", " CHECK SIGNAL  SURE  is0x60:" + z3 + " ahd videoFormat : " + this.f2175h + "  needCheckAhd : " + this.f1953o);
                }
            } else {
                int i5 = this.f1959u;
                if (i5 > 0) {
                    if (i5 == this.f1960v) {
                        this.f1959u = 0;
                    } else {
                        this.f1959u = i5 - 1;
                    }
                }
            }
            if (this.f1964z.c(1000)) {
                this.f1964z.b();
                Log.e("Chip2863", "hasSignal() " + this + String.format(" 0x01: %02X 0x03: %02X", Integer.valueOf(iA), Integer.valueOf(e.this.A(3))) + " isReady: " + e.this.T + " chipid : " + e.this.f2144h);
            }
            return this.f1959u >= this.f1960v;
        }

        public int q() {
            if (e.this.n()) {
                return this.f2175h;
            }
            int i2 = 3;
            int iA = e.this.A(3) & 7;
            e.this.A(1);
            switch (iA) {
                case 0:
                    i2 = 5;
                    break;
                case 1:
                    i2 = 4;
                    break;
                case 2:
                    i2 = 7;
                    break;
                case 3:
                    i2 = 6;
                    break;
                case 4:
                    break;
                case 5:
                    i2 = 2;
                    break;
                case 6:
                    e.this.V(47, 9);
                    s0.C(50L);
                    int iA2 = e.this.A(4);
                    if (iA2 == 147) {
                        i2 = 0;
                        break;
                    } else {
                        if (iA2 == 148) {
                            i2 = 1;
                        }
                        break;
                    }
                case 7:
                default:
                    i2 = -1;
                    break;
            }
            return r(i2);
        }

        public final int r(int i2) {
            int i3 = this.f2175h;
            if (i3 == i2) {
                this.f1958t = 0;
                return i2;
            }
            if (i2 == this.f1952n) {
                int i4 = this.f1958t + 1;
                this.f1958t = i4;
                if (i4 >= 3) {
                    this.f1958t = 0;
                    return i2;
                }
            } else {
                this.f1958t = 1;
                this.f1952n = i2;
            }
            return i3;
        }

        public void s(int i2, int i3) {
            this.f1962x.append(i2, i3);
        }

        public boolean t() {
            if (s0.m("sys.fyt.cvbs.iic.busy", -1) == 1) {
                return this.f1957s;
            }
            if (e.this.n()) {
                this.f1957s = true;
                return true;
            }
            int iA = e.this.A(1);
            boolean z2 = ((iA >> 7) & 1) == 0;
            if (this.f1957s != z2) {
                this.f1957s = z2;
                Log.e("Chip2863", "vChannel :" + this.f2170c + " signalOn= " + this.f1957s + String.format("    0x01 REG : %02X", Integer.valueOf(iA)) + "  this.videoId  = " + this.f2171d + "  videoFormat :  " + this.f2175h + "    hasSingnal:  " + z2 + " chipid : " + e.this.f2144h);
            }
            return this.f1957s;
        }

        public String toString() {
            return "Channel: [ index:" + this.f2169b + " vChannel:" + this.f2170c + " videoId:" + this.f2171d + " isReverse:" + this.f2173f + " videoFormat:" + this.f2175h + " vSignalOn:" + this.f1957s + " vSignalCnt:" + this.f1959u + "]";
        }

        public int u(int i2) {
            int i3 = this.f1956r;
            if (i3 == i2) {
                this.f1955q = 0;
                return i2;
            }
            if (i2 == this.f1955q) {
                int i4 = this.f1954p + 1;
                this.f1954p = i4;
                if (i4 >= 3) {
                    this.f1954p = 0;
                    return i2;
                }
            } else {
                this.f1954p = 1;
                this.f1955q = i2;
            }
            return i3;
        }
    }

    public e(int i2, p1.a aVar, int i3, Handler handler) {
        super(18, i2, aVar, i3, handler);
        this.T = false;
        this.U = new a();
        this.V = 6;
        this.f2139c = 60;
    }

    @Override // f1.q
    public void D() {
        if (n()) {
            return;
        }
        super.D();
        Log.e("Chip2863", "============>> RESET START  chipid : " + this.f2144h);
        ToolsJni.cmd_33_reset_videoIc(this.f2144h);
        Log.e("Chip2863", "+===========>> RESET END  chipid : " + this.f2144h);
    }

    @Override // f1.q
    public int E() {
        if (u0.b.f17357r0 != 1) {
            return 2;
        }
        return super.E();
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
        b bVar = new b(q.L);
        bVar.s(0, 16);
        this.f2141e.put(q.L, bVar);
        this.V = Configure.Property.CHIP9963_INIT_FORMAT.d(7);
        b bVar2 = new b(q.M);
        bVar2.s(0, W);
        bVar2.f2175h = this.V;
        this.f2141e.put(q.M, bVar2);
    }

    @Override // f1.s
    public void X() {
        int i2 = 20;
        while (true) {
            i2--;
            if (i2 <= 0 || s0.m("sys.fyt.cvbs.iic.busy", -1) != 1) {
                return;
            } else {
                a.i.a0(10L);
            }
        }
    }

    @Override // f1.s
    public void c0(int i2, int i3) {
        if (!this.f2160x || i2 == E()) {
            int iA0 = a0(i2);
            this.f2141e.get(iA0).m(i3);
            if (!this.f2154r) {
                Log.e(getClass().getSimpleName(), "==============>>  openVideo  init chipid : " + this.f2144h);
                p();
            }
            s.a aVar = this.f2141e.get(iA0, null);
            if (aVar == null) {
                return;
            }
            if (aVar.f2173f && this.f2160x) {
                if (i3 == 0) {
                    return;
                }
                if (i3 != E()) {
                    i3 = E();
                }
            }
            if (i3 == 0) {
                aVar.b();
                if (this.Q.indexOfKey(aVar.f2169b) >= 0) {
                    this.Q.delete(aVar.f2169b);
                    return;
                }
                return;
            }
            aVar.m(i3);
            if (this.Q.indexOfKey(aVar.f2169b) < 0) {
                this.Q.put(aVar.f2169b, i3);
            }
        }
    }

    @Override // f1.s
    public s.a d0() {
        int size = this.f2141e.size();
        for (int i2 = 0; i2 < size; i2++) {
            s.a aVar = this.f2141e.get(i2, null);
            boolean zContains = aVar.f2172e.contains(Integer.valueOf(E()));
            aVar.f2173f = zContains;
            if (zContains) {
                return aVar;
            }
        }
        return super.d0();
    }

    @Override // f1.s
    public void g0() {
        Log.e("Chip2863", "===============>> updateParameters");
        synchronized (this.S) {
            int size = this.f2141e.size();
            for (int i2 = 0; i2 < size; i2++) {
                s.a aVarValueAt = this.f2141e.valueAt(i2);
                aVarValueAt.f2179l = false;
                aVarValueAt.o();
            }
            for (int i3 = 0; i3 < size; i3++) {
                s.a aVarValueAt2 = this.f2141e.valueAt(i3);
                if (aVarValueAt2.f2178k) {
                    boolean zC = aVarValueAt2.c();
                    aVarValueAt2.f2178k = false;
                    if (zC) {
                        aVarValueAt2.l();
                    }
                }
            }
            j0(true);
        }
    }

    public boolean h0() {
        boolean z2;
        synchronized (this.S) {
            int size = this.f2141e.size();
            z2 = false;
            for (int i2 = 0; i2 < size; i2++) {
                s.a aVarValueAt = this.f2141e.valueAt(i2);
                boolean zC = aVarValueAt.c();
                if (zC) {
                    aVarValueAt.l();
                }
                z2 = z2 || zC;
            }
            j0(true);
        }
        return z2;
    }

    public void i0(int i2, int i3, int i4) {
        s.a bVar;
        if (this.f2141e.indexOfKey(i3) < 0) {
            bVar = new b(i3);
            this.f2141e.put(i3, bVar);
        } else {
            bVar = this.f2141e.get(i3);
        }
        if (bVar instanceof b) {
            ((b) bVar).s(i2, i4);
        }
        super.G(i2, i3);
    }

    public void j0(boolean z2) {
        this.f2155s.removeCallbacks(this.U);
        if (this.T != z2) {
            this.T = z2;
            if (this.T) {
                this.f2155s.postDelayed(this.U, 250L);
                return;
            }
            int size = this.f2141e.size();
            for (int i2 = 0; i2 < size; i2++) {
                s.a aVarValueAt = this.f2141e.valueAt(i2);
                if (aVarValueAt != null) {
                    aVarValueAt.f2179l = false;
                    aVarValueAt.o();
                }
            }
        }
    }

    @Override // f1.q
    public void o() {
        super.o();
        i0(2, q.L, 17);
        i0(5, q.L, 17);
        i0(4, q.L, 17);
        i0(6, q.L, 17);
        i0(7, q.L, 17);
        i0(8, q.L, 17);
        i0(9, q.L, 16);
        i0(15, q.L, 16);
        i0(16, q.M, W);
    }

    @Override // f1.q
    public void p() {
        synchronized (this.S) {
            int size = this.f2141e.size();
            for (int i2 = 0; i2 < size; i2++) {
                s.a aVarValueAt = this.f2141e.valueAt(i2);
                aVarValueAt.f2175h = aVarValueAt.f2170c == q.M ? this.V : 2;
            }
            boolean zH0 = h0();
            for (int i3 = 0; i3 < size; i3++) {
                this.f2141e.valueAt(i3).f2175h = -1;
            }
            H(zH0);
        }
    }
}
