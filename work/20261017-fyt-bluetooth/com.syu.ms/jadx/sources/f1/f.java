package f1;

import android.net.ProxyProperties;
import android.os.Handler;
import android.util.Log;
import app.App;
import com.syu.jni.ToolsJni;
import com.syu.ms.R;
import o1.s0;

/* JADX INFO: loaded from: classes2.dex */
public class f extends r {
    public int S;
    public boolean T;
    public int U;
    public int V;
    public int W;
    public int X;
    public boolean Y;
    public int Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public int f1975a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public int f1976b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public int f1977c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public int f1978d0;

    public f(int i2, p1.a aVar, int i3, Handler handler) {
        this(18, i2, aVar, i3, handler);
    }

    @Override // f1.q
    public void D() {
        if (n()) {
            return;
        }
        super.D();
        Log.e("Chip2863Limit", "=========>> 2863 Limit RESET  Waiting onUEvent START 1 chipid : " + this.f2144h);
        ToolsJni.cmd_33_reset_videoIc(this.f2144h);
        Log.e("Chip2863Limit", "========>> 2863 Limit RESET Waiting onUEvent END 1 chipid : " + this.f2144h);
    }

    @Override // f1.q
    public boolean M() {
        if (n()) {
            return true;
        }
        if (!this.f2154r) {
            D();
        }
        return this.f2154r;
    }

    @Override // f1.q, e1.l
    public void a() {
        if (n()) {
            o.g().E(this.f2144h, 0);
            return;
        }
        int i2 = this.f2145i;
        super.a();
        if (i2 != 0) {
            this.T = false;
        }
    }

    public boolean b0() {
        boolean z2;
        synchronized (this.P) {
            X(64, this.f1978d0);
            int iA = A(1) & 255;
            boolean z3 = (iA & 112) == 112;
            boolean z4 = (iA & 96) == 96;
            if (z3 || z4) {
                int i2 = this.Z;
                if (i2 < this.f1975a0) {
                    int i3 = i2 + 1;
                    this.Z = i3;
                    if (this.T) {
                        int iI0 = i0((iA >> 2) & 1);
                        r.a aVar = this.R.get(this.f2146j, new r.a());
                        if (this.W != iI0) {
                            Log.e("Chip2863Limit", " CHECK SIGNAL  SURE old Ahd : " + this.W + "  to New AHD: " + iI0 + "  this.videoId : " + this.f2146j + " chipid : " + this.f2144h);
                            this.W = iI0;
                            aVar.f2167b = iI0;
                            this.R.put(this.f2146j, aVar);
                            d0(this.f2147k);
                            this.Z = 1;
                            this.f1975a0 = 3;
                        } else if (z3) {
                            this.f1975a0 = 3;
                            Log.e("Chip2863Limit", " 111111  CHECK SIGNAL  SURE old Ahd : " + this.W + "  to New AHD: " + iI0 + " chipid : " + this.f2144h);
                        } else if (z4) {
                            Log.e("Chip2863Limit", " 222222  CHECK SIGNAL  SURE old Ahd : " + this.W + "  to New AHD: " + iI0 + " chipid : " + this.f2144h);
                        }
                    } else {
                        this.f1975a0 = 3;
                        this.Z = Math.min(i3, 3);
                    }
                } else if (z4 && !z3) {
                    int i4 = this.f2147k;
                    boolean z5 = (i4 == 13 || i4 == 0 || i4 == 1) ? false : true;
                    this.T = z5;
                    this.f1975a0 = z5 ? 6 : 3;
                    Log.e("Chip2863Limit", " CHECK SIGNAL  SURE  is0x60:" + z4 + " ahd imagFormat : " + this.f2147k + "  needCheckAhd : " + this.T);
                }
            } else {
                int i5 = this.Z;
                if (i5 > 0) {
                    if (i5 == this.f1975a0) {
                        this.Z = 0;
                    } else {
                        this.Z = i5 - 1;
                    }
                }
            }
            if (this.Q.c(300)) {
                this.Q.b();
                Log.e("Chip2863Limit", "hasSignal() " + this + String.format(" 0x01: %02X 0x03: %02X", Integer.valueOf(iA), Integer.valueOf(A(3))) + " chipid : " + this.f2144h);
            }
            z2 = this.Z >= this.f1975a0;
        }
        return z2;
    }

    @Override // f1.q, e1.l
    public synchronized void c(int i2) {
        if (this.f2158v) {
            return;
        }
        if (n() && !m()) {
            T(i2, 1);
            return;
        }
        if (this.f2145i != i2 && !m()) {
            super.c(i2);
            int iE0 = e0(i2);
            this.f1978d0 = -1;
            this.f1977c0 = -1;
            if (iE0 == 1) {
                this.f1978d0 = 0;
                this.f1977c0 = 0;
            } else if (iE0 == 2) {
                this.f1978d0 = 0;
                this.f1977c0 = 1;
            } else if (iE0 == 3) {
                this.f1978d0 = 1;
                this.f1977c0 = 0;
            }
            Log.e("Signal", "======>> openVideo   chipId : " + this.f2144h + " to Channel: " + i2 + " videoPort: " + iE0 + " value0x40:" + this.f1978d0);
            if (this.f1977c0 != -1) {
                int i3 = 0;
                while (true) {
                    V(64, 4);
                    V(80, this.f1977c0);
                    s0.C(5L);
                    boolean z2 = A(80) == this.f1977c0;
                    Log.e("Chip2863Limit", "   channel :  " + i2 + "  value0x50 :  " + this.f1977c0 + "  result:" + z2 + " chipid : " + this.f2144h + " cnt = " + i3);
                    if (!z2) {
                        s0.C(20L);
                    }
                    int i4 = i3 + 1;
                    if (i3 >= 5 || z2) {
                        break;
                        break;
                    }
                    i3 = i4;
                }
                this.f2145i = i2;
                r.a aVar = this.R.get(i2, new r.a());
                int i5 = aVar.f2166a;
                if (i5 != -1 && i5 != this.f2147k) {
                    if (i5 != 13 && i5 != 0 && i5 != 1) {
                        int i6 = this.W;
                        int i7 = aVar.f2167b;
                        if (i6 != i7) {
                            this.W = i7;
                        }
                    }
                    Log.e("Chip2863Limit", "   channel :  " + i2 + " Last imagFormat :  " + i5 + " chipid : " + this.f2144h);
                    synchronized (this.P) {
                        d0(i5);
                    }
                    this.f2147k = i5;
                    this.f1975a0 = 3;
                }
            }
            return;
        }
        u0.d.I3(70, this.f2148l, this.f2146j);
        u0.d.I3(69, this.f2149m, this.f2146j);
        Log.e("Signal", "   ==========>> signalNtscPal   chipId : " + this.f2144h + " videoId: " + this.f2146j + " ntscPal: " + this.f2148l);
        Log.e("Signal", "   ==========>> signalOn   chipId : " + this.f2144h + " videoId: " + this.f2146j + " sSignalOn: " + this.f2149m);
    }

    public void c0() {
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

    public boolean d0(int i2) {
        int i3;
        String str;
        int iIntValue;
        int i4;
        String string;
        boolean z2 = false;
        if (this.f1978d0 < 0) {
            return false;
        }
        boolean z3 = this.W == 0;
        if (i2 == 0) {
            i3 = R.raw.chip2863_limit_cvbs_ntsc;
            str = "VIDEO_NP_NTSC";
        } else if (i2 != 1) {
            if (i2 == 2) {
                i4 = z3 ? R.raw.chip2863_limit_ahd_720p25 : R.raw.chip2863_limit_tvi_720p25;
                StringBuilder sb = new StringBuilder();
                sb.append("VIDEO_NP_R720P25_");
                sb.append(z3 ? "AHD" : "TVI");
                string = sb.toString();
            } else if (i2 == 3) {
                i4 = z3 ? R.raw.chip2863_limit_ahd_720p30 : R.raw.chip2863_limit_tvi_720p30;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("VIDEO_NP_R720P30_");
                sb2.append(z3 ? "AHD" : "TVI");
                string = sb2.toString();
            } else if (i2 == 6) {
                i3 = z3 ? R.raw.chip2863_limit_ahd_1080p25 : R.raw.chip2863_limit_tvi_1080p25;
                str = "VIDEO_NP_R1080P25";
            } else if (i2 != 7) {
                str = "VIDEO_UNKNOW";
                i3 = 0;
            } else {
                i3 = z3 ? R.raw.chip2863_limit_ahd_1080p30 : R.raw.chip2863_limit_tvi_1080p30;
                str = "VIDEO_NP_R1080P30";
            }
            int i5 = i4;
            str = string;
            i3 = i5;
        } else {
            i3 = R.raw.chip2863_limit_cvbs_pal;
            str = "VIDEO_NP_PAL";
        }
        if (i3 == 0) {
            return false;
        }
        String path = this.f2157u.getPath();
        try {
            iIntValue = Integer.valueOf(ProxyProperties.LOCAL_EXCL_LIST + path.charAt(path.length() - 1)).intValue();
        } catch (Exception unused) {
            iIntValue = -1;
        }
        int iCallSystemCtrl = iIntValue >= 0 ? ToolsJni.callSystemCtrl(249, "i2cindex", iIntValue, "lockhandle") : -1;
        Log.e("lseccamm", "i2cName : " + path + " i2cIndex:" + iIntValue + " lockRet:" + iCallSystemCtrl);
        Log.e("lseccamm", "flush START: value0x40 : " + this.f1978d0 + " videoFormat:" + str + " imageSignal:" + this.f2150n);
        boolean z4 = q(s0.A(App.c(), i3, 16));
        if (iCallSystemCtrl >= 0) {
            ToolsJni.callSystemCtrl(248, "lockhandle", iCallSystemCtrl);
        }
        int i6 = this.f2146j;
        if (i6 != 0) {
            r.a aVar = this.R.get(i6, new r.a());
            aVar.f2166a = i2;
            this.R.put(this.f2146j, aVar);
        }
        if (i2 != 0 && i2 != 1) {
            z2 = true;
        }
        this.T = z2;
        Log.e("Chip2863Limit", " CHECK SIGNAL  SURE ahd format : " + i2 + "  needCheckAhd : " + this.T);
        this.f1975a0 = this.T ? 6 : 3;
        a0(i2);
        Log.e("lseccamm", "flush END:  value0x40 : " + this.f1978d0 + " videoFormat:" + str + "  ret : " + z4);
        return z4;
    }

    public int e0(int i2) {
        return this.f2142f.get(i2, 0);
    }

    public void f0(int i2) {
        String str = (i2 == 0 || i2 == 1) ? "1" : "0";
        String str2 = this.f2144h == 1 ? "sys.fyt.cvbs.needdeinterlace" : "sys.fyt.cvbs_2.needdeinterlace";
        if (s0.o(str2, ProxyProperties.LOCAL_EXCL_LIST).equals(str)) {
            return;
        }
        s0.F(str2, str);
        Log.e("Chip2863Limit", "************ ===============needdeinterlace  ntcsPal : " + i2 + " key : " + str2 + "  value: " + str + " chipid : " + this.f2144h);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:23:0x003f  */
    public int g0() {
        int iW;
        if (n()) {
            return this.f2147k;
        }
        synchronized (this.P) {
            int i2 = 3;
            switch (A(3) & 7) {
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
                    V(47, 9);
                    s0.C(50L);
                    int iA = A(4);
                    if (iA == 147) {
                        i2 = 0;
                    } else if (iA != 148) {
                        i2 = -1;
                    } else {
                        i2 = 1;
                    }
                    break;
                case 7:
                    i2 = -1;
                    break;
                default:
                    i2 = -1;
                    break;
            }
            iW = w(i2);
        }
        return iW;
    }

    @Override // e1.l
    public void h(int i2, int i3, int i4, int i5) {
        synchronized (this.P) {
            c0();
            boolean z2 = X(64, this.f1978d0) && X(16, i3 & 255);
            c0();
            boolean z3 = (z2 && X(64, this.f1978d0)) && X(17, i5 & 255);
            c0();
            if (z3 && X(64, this.f1978d0)) {
                X(18, i4 & 255);
            }
        }
    }

    public final void h0() {
        if (s0.m("sys.fyt.cvbs.iic.busy", -1) == 1) {
            return;
        }
        if (n()) {
            this.Y = true;
            return;
        }
        synchronized (this.P) {
            X(64, this.f1978d0);
            int iA = A(1);
            boolean z2 = ((iA >> 7) & 1) == 0;
            if (this.Q.c(300)) {
                Log.e("Chip2863Limit", "===============>> checkFormat value0x40: " + this.f1978d0 + " value0x50: " + this.f1977c0 + String.format(" Reg 0x01 : %02X", Integer.valueOf(iA)) + " imagFormat: " + this.f2147k + " hasSingnal: " + z2);
            }
            if (this.Y != z2) {
                this.Y = z2;
                Log.e("Chip2863Limit", "value0x40 :" + this.f1978d0 + " signalOn= " + this.Y + String.format("    0x01 REG : %02X", Integer.valueOf(iA)) + "  this.videoId  = " + this.f2146j + "  imagFormat :  " + this.f2147k + "    hasSingnal:  " + z2 + " chipid : " + this.f2144h);
            }
        }
    }

    public int i0(int i2) {
        if (this.f2147k == i2) {
            this.V = 0;
            return i2;
        }
        if (i2 != this.V) {
            this.U = 1;
            this.V = i2;
            return this.W;
        }
        int i3 = this.U + 1;
        this.U = i3;
        if (i3 < 3) {
            return this.W;
        }
        this.U = 0;
        return i2;
    }

    @Override // f1.q
    public int k() {
        int i2 = 0;
        if (!this.f2154r) {
            return 0;
        }
        boolean zB0 = this.Y;
        if (!this.I) {
            h0();
            zB0 = b0();
            int iG0 = this.Y ? g0() : -1;
            if (this.Y) {
                f0(iG0);
                if (iG0 != -1 && this.f2147k != iG0) {
                    this.f2147k = iG0;
                    if (this.f2145i != 0) {
                        Log.e("Chip2863Limit", " record  channel :  " + this.f2145i + " TO  imagFormat :  " + this.f2147k + " chipid : " + this.f2144h);
                        r.a aVar = this.R.get(this.f2145i, new r.a());
                        aVar.f2166a = this.f2147k;
                        this.R.put(this.f2145i, aVar);
                    }
                    Log.e("Chip2863Limit", "  CHECK SIGNAL  SURE : imagType :  " + this.f2145i + " last     imagFormat :  " + this.f2147k + "   imagFormat:" + iG0 + " signalOn : " + this.Y + "     hasSignal  : " + zB0 + " chipid : " + this.f2144h);
                    synchronized (this.P) {
                        d0(iG0);
                    }
                }
            }
        }
        if (this.W != -1 && zB0) {
            i2 = 1;
        }
        if (this.Q.c(300)) {
            this.Q.b();
        }
        return i2;
    }

    @Override // f1.q
    public void o() {
        super.o();
        G(2, 2);
        G(5, 2);
        G(4, 2);
        G(6, 3);
        G(7, 2);
        G(8, 2);
        G(9, 1);
        G(1, 1);
    }

    @Override // f1.q
    public void p() {
        if (n()) {
            return;
        }
        this.f2147k = 2;
        this.f1978d0 = 0;
        this.f1977c0 = 0;
        R();
        synchronized (this.P) {
            X(80, 0);
            H(d0(this.f2147k));
        }
    }

    @Override // f1.q
    public int w(int i2) {
        int i3 = this.f2147k;
        if (i3 == i2) {
            this.X = 0;
            return i2;
        }
        if (i2 == this.S) {
            int i4 = this.X + 1;
            this.X = i4;
            if (i4 >= 3) {
                this.X = 0;
                return i2;
            }
        } else {
            this.X = 1;
            this.S = i2;
        }
        return i3;
    }

    public f(int i2, int i3, p1.a aVar, int i4, Handler handler) {
        super(i2, i3, aVar, i4, handler);
        this.S = -1;
        this.T = false;
        this.U = 0;
        this.V = -1;
        this.W = 0;
        this.X = 0;
        this.Y = false;
        this.Z = 0;
        this.f1975a0 = 3;
        this.f1976b0 = 0;
        this.f1977c0 = -1;
        this.f1978d0 = -1;
    }
}
