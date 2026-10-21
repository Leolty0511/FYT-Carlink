package f1;

import android.os.Handler;
import android.util.Log;
import android.util.SparseIntArray;
import com.syu.jni.ToolsJni;
import o1.b0;
import o1.l0;
import o1.s0;

/* JADX INFO: loaded from: classes2.dex */
public class k extends q {
    public final byte A0;
    public final byte B0;
    public final byte C0;
    public final byte D0;
    public final byte E0;
    public final byte F0;
    public final byte G0;
    public final byte H0;
    public final byte I0;
    public final byte J0;
    public final byte K0;
    public final boolean L0;
    public final boolean M0;
    public final boolean N0;
    public final boolean O0;
    public final boolean P;
    public final int P0;
    public boolean Q;
    public final int Q0;
    public boolean R;
    public boolean R0;
    public l0 S;
    public boolean S0;
    public l0 T;
    public boolean T0;
    public int U;
    public boolean U0;
    public SparseIntArray V;
    public boolean V0;
    public final int W;
    public int W0;
    public final int X;
    public int X0;
    public final int Y;
    public boolean Y0;
    public final int Z;
    public int Z0;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public final int f1990a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public final int f1991b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public final int f1992c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public final int f1993d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public final int f1994e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public final int f1995f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public final int f1996g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public final int f1997h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public final int f1998i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public final int f1999j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public final int f2000k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public final int f2001l0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public final int f2002m0;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public final int f2003n0;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public final int f2004o0;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public final int f2005p0;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public final int f2006q0;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public final int[] f2007r0;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public final int[] f2008s0;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    public final int[] f2009t0;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    public final byte[] f2010u0;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    public final byte f2011v0;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    public final byte f2012w0;

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    public final byte f2013x0;

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    public final byte f2014y0;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    public final byte f2015z0;

    public k(int i2, p1.a aVar, int i3, Handler handler) {
        super(13, i2, aVar, i3, handler);
        this.P = true;
        this.Q = false;
        this.R = false;
        this.S = new l0();
        this.T = new l0();
        this.U = -1;
        this.V = new SparseIntArray();
        this.W = 32;
        this.X = 32;
        this.Y = 47;
        this.Z = 0;
        this.f1990a0 = 3;
        this.f1991b0 = 3;
        this.f1992c0 = 2500;
        this.f1993d0 = 255;
        this.f1994e0 = 20;
        this.f1995f0 = 27026;
        this.f1996g0 = 33782;
        this.f1997h0 = 40539;
        this.f1998i0 = 74249;
        this.f1999j0 = 92811;
        this.f2000k0 = 111374;
        this.f2001l0 = 148498;
        this.f2002m0 = 185623;
        this.f2003n0 = 222748;
        this.f2004o0 = 296701;
        this.f2005p0 = 250000;
        this.f2006q0 = 340000;
        this.f2007r0 = new int[]{76, 12, 116, 52, 84, 20, 100, 36, 68, 4, 120, 56, 88, 24, 104};
        this.f2008s0 = new int[]{76, 12, 116, 52, 84, 20, 100, 36, 68, 4, 120, 56, 88, 24, 104};
        this.f2009t0 = new int[]{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
        this.f2010u0 = new byte[]{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
        this.f2011v0 = (byte) 1;
        this.f2012w0 = (byte) 0;
        this.f2013x0 = (byte) 2;
        this.f2014y0 = (byte) 0;
        this.f2015z0 = (byte) 4;
        this.A0 = (byte) 0;
        this.B0 = (byte) 8;
        this.C0 = (byte) 0;
        this.D0 = (byte) 1;
        this.E0 = (byte) 2;
        this.F0 = (byte) 4;
        this.G0 = (byte) 8;
        this.H0 = (byte) 16;
        this.I0 = (byte) 32;
        this.J0 = (byte) 64;
        this.K0 = (byte) -128;
        this.L0 = false;
        this.M0 = true;
        this.N0 = false;
        this.O0 = true;
        this.P0 = 10240;
        this.Q0 = 16384;
        this.R0 = false;
        this.Z0 = 0;
    }

    public void A0(boolean z2) {
        if (this.R0) {
            if (this.Y0) {
                return;
            }
            boolean zE0 = e0();
            this.Y0 = zE0;
            if (zE0) {
                return;
            }
        }
        if (!z2) {
            Z(166, X(166) & 207);
            return;
        }
        if (this.T0) {
            Z(228, (X(228) & 192) | 47);
            Z(162, (X(162) & 192) | 3);
            Z(164, (X(164) & 192) | 3);
            Z(165, (X(165) & 192) | 3);
            Z(166, X(166) | 48);
        } else if (this.W0 <= 250000) {
            Z(228, (X(228) & 192) | 32);
            Z(162, (X(162) & 192) | 0);
            Z(164, (X(164) & 192) | 0);
            Z(165, (X(165) & 192) | 0);
            Z(166, X(166) | 48);
        } else {
            Z(228, (X(228) & 192) | 32);
            Z(162, (X(162) & 192) | 3);
            Z(164, (X(164) & 192) | 3);
            Z(165, (X(165) & 192) | 3);
            Z(166, X(166) | 48);
        }
        Z(229, 60);
    }

    public boolean B0() {
        return Z(160, 80) > 0 && Z(159, 10) > 0 && Z(159, 11) > 0;
    }

    public boolean C0(int i2) {
        return true;
    }

    @Override // f1.q
    public void D() {
        if (n()) {
            return;
        }
        super.D();
        Log.e("Chip8641", "==============================>> RESET  Waiting onUEvent START 1");
        ToolsJni.cmd_33_reset_videoIc(this.f2144h);
        Log.e("Chip8641", "==============================>> RESET Waiting onUEvent END 1");
    }

    public int D0(int i2) {
        return this.f2142f.get(i2, 0);
    }

    public boolean E0(boolean z2) {
        if (n()) {
            return true;
        }
        if (z2) {
            int i2 = this.B;
            if (i2 < 3) {
                this.B = i2 + 1;
            }
        } else {
            int i3 = this.B;
            if (i3 > 0) {
                if (i3 == 3) {
                    this.B = 0;
                } else if (i3 > 0) {
                    this.B = i3 - 1;
                }
            }
        }
        Log.e("Chip8641", "  hasSignal()  SURE : imagType :  " + this.f2145i + " last  imagFormat :  " + this.f2147k + " tmp signalOn : " + this.Q + " checkCnt : " + this.B + " signal : " + z2);
        return this.B >= 3;
    }

    public void F0(int i2) {
        ToolsJni.cmd_251_Normal_Io_Set(15, i2);
    }

    public void G0(int i2) {
        ToolsJni.cmd_251_Normal_Io_Set(14, i2);
    }

    public int H0() {
        return w(this.U);
    }

    public int[] I0(int i2, int i3) {
        return this.f2157u.e(i3, 43, true, i2);
    }

    public boolean J0() {
        int i2;
        switch (this.f2145i) {
            case 11:
                i2 = 2;
                break;
            case 12:
                i2 = 1;
                break;
            case 13:
                i2 = 4;
                break;
            case 14:
                i2 = 8;
                break;
            default:
                i2 = 0;
                break;
        }
        Log.e("Chip8641", String.format("  0xF7 : %02X   0xF5 : %02X", Integer.valueOf(X(i.a.Theme_preferenceHeaderPanelStyle)), Integer.valueOf(X(i.a.Theme_preferenceFragmentStyle))));
        boolean z2 = ((byte) (i2 & X(i.a.Theme_preferenceHeaderPanelStyle))) != 0;
        this.Q = z2;
        return z2;
    }

    public int K0(int i2, int... iArr) {
        if (n()) {
            return 1;
        }
        p1.a aVar = this.f2157u;
        if (aVar == null || this.f2158v) {
            return -1;
        }
        return aVar.d(this.f2159w, new int[]{i2}, iArr);
    }

    public int L0(int i2, int... iArr) {
        if (n()) {
            return 1;
        }
        p1.a aVar = this.f2157u;
        int iD = (aVar == null || this.f2158v) ? -1 : aVar.d(43, new int[]{i2}, iArr);
        Log.e("Chip8641", String.format("WRITE 2 6911C  [%02X  - %02X " + b0.e(iArr, 0, iArr.length) + "]", 43, Integer.valueOf(i2)) + "  result : " + iD + " i2c: " + this.f2157u);
        return iD;
    }

    @Override // f1.q
    public boolean M() {
        Log.e("Chip8641", "==============================>> 8641 setup() loaded: " + this.f2154r);
        if (!this.f2154r) {
            D();
        }
        return this.f2154r;
    }

    public int X(int i2) {
        return A(i2);
    }

    public int Y(int i2) {
        return I0(i2, 1)[0];
    }

    public int Z(int i2, int i3) {
        return K0(i2, i3);
    }

    @Override // f1.q, e1.l
    public void a() {
        if (n()) {
            o.g().E(this.f2144h, 0);
            return;
        }
        this.f2150n = false;
        if (m()) {
            s0.F("sys.fyt.cvbs.mirror", "0");
        }
        Log.e("Signal", "========================>>002 closeVideo videoId: " + this.f2145i + " chipId : " + this.f2144h);
        o.g().D(this.f2144h, -1);
        o.g().E(this.f2144h, 0);
        o.g().G(this.f2144h, this.f2145i, 0);
    }

    public boolean a0() {
        boolean z2 = Z(234, 0) > 0 && Z(231, 15) > 0 && q0() && u0() && x0() && B0() && z0() && Z(209, 12) > 0 && Z(210, 7) > 0;
        if (z2) {
            d0(0);
        }
        return z2;
    }

    public void b0(int i2) {
        Log.e("Chip8641", "InputDDCHPD_Select  rx_num ----- " + i2);
        if (i2 == 0) {
            Z(234, 0);
            Log.e("Chip8641", "InputDDCHPD_Select  rx_num ----- 0xEA,0x00");
            return;
        }
        if (i2 == 1) {
            F0(1);
            G0(0);
            Z(234, 2);
            Log.e("Chip8641", "InputDDCHPD_Select  rx_num ----- 0xEA,0x02");
            return;
        }
        if (i2 == 2) {
            F0(0);
            G0(0);
            Z(234, 1);
            Log.e("Chip8641", "InputDDCHPD_Select  rx_num ----- 0xEA,0x01");
            return;
        }
        if (i2 == 3) {
            F0(0);
            G0(1);
            Z(234, 4);
            Log.e("Chip8641", "InputDDCHPD_Select  rx_num ----- 0xEA,0x04");
            return;
        }
        if (i2 != 4) {
            return;
        }
        F0(1);
        G0(1);
        Z(234, 8);
        Log.e("Chip8641", "InputDDCHPD_Select  rx_num ----- 0xEA,0x08");
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
        super.c(i2);
        if (this.f2145i != i2 && !m()) {
            int iD0 = D0(i2);
            this.f2145i = i2;
            this.U = this.V.get(i2, -1);
            d0(iD0);
            b0(iD0);
        }
    }

    public boolean c0(boolean z2) {
        byte b2;
        int i2;
        if (this.Y0) {
            return false;
        }
        boolean zE0 = e0();
        this.Y0 = zE0;
        if (zE0) {
            return false;
        }
        Z(35, (byte) (X(35) | 128));
        if (z2) {
            int[] iArr = this.f2009t0;
            iArr[0] = 65535;
            iArr[1] = 65535;
            iArr[2] = 65535;
            iArr[13] = 65535;
            iArr[14] = 65535;
            b2 = 3;
        } else {
            b2 = 0;
        }
        while (true) {
            if (z2) {
                Z(214, this.f2008s0[b2]);
            } else {
                if (((byte) (X(111) & 2)) != 0) {
                    return false;
                }
                Z(214, this.f2007r0[b2]);
            }
            byte bX = (byte) (X(3) & 254);
            Z(3, bX);
            Z(3, (byte) (bX | 1));
            s0.C(10L);
            if (z2 || ((byte) (X(92) & 4)) != 0) {
                int iX = X(105) << 8;
                int iX2 = X(104);
                i2 = iX + iX2;
            } else {
                i2 = 65535;
            }
            this.f2009t0[b2] = i2;
            b2 = (byte) (b2 + 1);
            if (!z2) {
                if (b2 > 14) {
                    break;
                }
            } else {
                if (b2 > 12) {
                    break;
                }
            }
        }
        byte b3 = 0;
        for (byte b4 = 1; b4 < 15; b4 = (byte) (b4 + 1)) {
            int[] iArr2 = this.f2009t0;
            if (iArr2[b4] <= iArr2[b3]) {
                b3 = b4;
            }
        }
        if (this.f2009t0[b3] > 255) {
            this.R0 = false;
            A0(false);
            return false;
        }
        byte b5 = 0;
        for (byte b6 = 0; b6 < 15; b6 = (byte) (b6 + 1)) {
            int[] iArr3 = this.f2009t0;
            if (iArr3[b3] == iArr3[b6]) {
                this.f2010u0[b5] = b6;
                b5 = (byte) (b5 + 1);
            }
        }
        byte b7 = b5 % 2 == 0 ? this.f2010u0[b5 / 2] : b5 == 1 ? this.f2010u0[((b5 + 1) / 2) - 1] : this.f2010u0[(b5 + 1) / 2];
        if (z2) {
            Z(214, this.f2008s0[b7]);
        } else {
            Z(214, this.f2007r0[b7]);
        }
        if (z2) {
            Z(212, this.f2008s0[b7]);
            Z(216, this.f2008s0[b7]);
        } else {
            Z(212, this.f2007r0[b7]);
            Z(216, this.f2007r0[b7]);
        }
        return true;
    }

    public void d0(int i2) {
        this.R0 = false;
        A0(true);
        f0(true);
        h0();
        b0(0);
        if (i2 == 0) {
            v0(false);
        } else if (i2 == 1) {
            Z(202, 64);
            v0(true);
        } else if (i2 == 2) {
            Z(202, 0);
            v0(true);
        } else if (i2 == 3) {
            Z(202, 128);
            v0(true);
        } else if (i2 == 4) {
            Z(202, 192);
            v0(true);
        }
        if (this.U0) {
            w0(false);
            s0.C(20L);
            this.V0 = false;
            this.T0 = false;
            this.U0 = false;
        }
    }

    public boolean e0() {
        for (byte b2 = 0; b2 < 1; b2 = (byte) (b2 + 1)) {
            int iK0 = k0();
            int i2 = this.W0;
            if (iK0 >= i2) {
                if (iK0 - i2 <= 10240) {
                    return false;
                }
            } else if (i2 - iK0 <= 10240) {
                return false;
            }
        }
        return true;
    }

    public void f0(boolean z2) {
        if (this.R0) {
            boolean zE0 = e0();
            this.Y0 = zE0;
            if (zE0) {
                return;
            }
        }
        int iX = X(196);
        int iX2 = X(203);
        if (z2) {
            Z(196, iX & 223);
            Z(203, iX2 | 64);
        } else {
            Z(196, iX | 32);
            Z(203, iX2 & 191);
        }
    }

    public boolean g0() {
        if (this.R0) {
            for (byte b2 = 0; b2 < 3; b2 = (byte) (b2 + 1)) {
                int iK0 = k0();
                this.W0 = iK0;
                int i2 = this.X0;
                if (i2 >= iK0) {
                    if (i2 - iK0 <= 10240) {
                        Log.e("Chip8641", "LT8641UX_ClkStableDetect  ----- 004!!!!");
                        return true;
                    }
                } else if (iK0 - i2 <= 10240) {
                    Log.e("Chip8641", "LT8641UX_ClkStableDetect  ----- 005!!!!");
                    return true;
                }
            }
            this.W0 = 0;
            this.X0 = 0;
            Log.e("Chip8641", "LT8641UX_ClkStableDetect  ----- 006!!!!");
            return false;
        }
        if (k0() < 16384) {
            Log.e("Chip8641", "LT8641UX_ClkStableDetect  ----- no valid CLK!!!!");
            return false;
        }
        this.X0 = k0();
        s0.C(5L);
        int iK1 = k0();
        this.W0 = iK1;
        int i3 = this.X0;
        if (i3 >= iK1) {
            if (i3 - iK1 <= 10240 && iK1 >= 16384) {
                Log.e("Chip8641", "LT8641UX_ClkStableDetect  ----- 000!!!!");
                return true;
            }
            this.W0 = 0;
            this.X0 = 0;
            Log.e("Chip8641", "LT8641UX_ClkStableDetect  ----- 001!!!!");
            return false;
        }
        if (iK1 - i3 <= 10240 && i3 >= 16384) {
            Log.e("Chip8641", "LT8641UX_ClkStableDetect  ----- 002!!!!");
            return true;
        }
        this.W0 = 0;
        this.X0 = 0;
        Log.e("Chip8641", "LT8641UX_ClkStableDetect  ----- 003!!!!");
        return false;
    }

    public void h0() {
        int iX = X(2);
        Z(2, iX & 223);
        Z(2, iX | 32);
    }

    public void i0() {
        int iX = X(2);
        Z(2, iX & 239);
        Z(2, iX | 16);
    }

    public void j0(boolean z2) {
        int iX = X(203);
        if (z2) {
            Z(203, iX | 1);
        } else {
            Z(203, iX & 254);
        }
    }

    @Override // f1.q
    public int k() {
        int iH0;
        Log.e("Chip8641", "   checkSignal  ============================>>>  00 imagType : " + this.f2145i);
        boolean z2 = false;
        if (!this.f2154r) {
            return 0;
        }
        J0();
        if (g0()) {
            boolean z3 = this.R0;
            if (z3 && (!z3 || this.S0)) {
                boolean zM0 = m0();
                this.S0 = zM0;
                if (zM0) {
                    z2 = true;
                } else {
                    Log.e("Chip8641", " =========================>>>  006 ntcsPal()  PLL NO LOCK");
                    this.R0 = false;
                    A0(false);
                }
            } else if (this.Q) {
                this.Y0 = false;
                this.R0 = true;
                this.S0 = true;
                f0(false);
                t0();
                r0();
                n0();
                y0();
                A0(true);
                if (c0(this.T0)) {
                    s0();
                    e0();
                    if (this.Y0 || !l0()) {
                        this.Y0 = false;
                        this.R0 = false;
                        A0(false);
                    }
                }
            }
        } else if (this.R0) {
            this.R0 = false;
            A0(false);
            f0(true);
        }
        boolean zE0 = E0(z2);
        if (zE0 && (iH0 = H0()) != -1 && this.f2147k != iH0) {
            this.f2147k = iH0;
            C0(iH0);
        }
        return zE0 ? 1 : 0;
    }

    public int k0() {
        int iX = X(5);
        Z(5, iX & 251);
        if (this.S.c(500)) {
            this.S.a();
            Log.e("Chip8641", String.format("  0xF2 : %02X     0xF3 : %02X    0xF4 : %02X", Integer.valueOf(X(i.a.Theme_actionModeFindDrawable)), Integer.valueOf(X(i.a.Theme_actionModeWebSearchDrawable)), Integer.valueOf(X(i.a.Theme_actionModePopupWindowStyle))));
        }
        int iX2 = ((X(i.a.Theme_actionModeFindDrawable) & 7) << 16) + (X(i.a.Theme_actionModeWebSearchDrawable) << 8) + X(i.a.Theme_actionModePopupWindowStyle);
        Z(5, iX | 4);
        if (this.T.c(500)) {
            this.T.a();
            Log.e("Chip8641", "==============>>> LT8641UX_GetClkFreq clk_freq == " + iX2);
        }
        return iX2;
    }

    public boolean l0() {
        byte bX = (byte) (X(3) & 254);
        Z(3, bX);
        Z(3, (byte) (bX | 1));
        s0.C(2L);
        return (X(103) << 8) + X(102) <= 255 && (X(105) << 8) + X(104) <= 255 && (X(107) << 8) + X(106) <= 255;
    }

    public boolean m0() {
        return ((byte) (X(92) & 1)) != 0;
    }

    public void n0() {
        if (this.Y0) {
            return;
        }
        int iX = X(136);
        Z(136, iX | 1);
        Z(136, iX & (-2));
        Z(2, 254);
        Z(3, 199);
        Z(2, 255);
        Z(3, 255);
    }

    @Override // f1.q
    public void o() {
        G(0, 0);
        G(11, 1);
        G(12, 2);
        G(13, 3);
        G(14, 4);
    }

    public void o0() {
        Z(137, 64);
    }

    @Override // f1.q
    public void p() {
        H(a0());
    }

    public void p0() {
        Z(55, 27);
        Z(49, 218);
        Z(2, 127);
        Z(2, 255);
        Z(133, X(133) | 4);
        Z(202, (X(202) & 208) | 35);
    }

    public boolean q0() {
        return Z(205, 0) > 0 && Z(132, 192) > 0 && Z(139, 72) > 0 && Z(131, 0) > 0 && Z(134, 17) > 0 && Z(135, 80) > 0 && Z(206, 113) > 0;
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0078 A[PHI: r11 r12
  0x0078: PHI (r11v15 byte) = (r11v4 byte), (r11v18 byte) binds: [B:47:0x00ad, B:30:0x0076] A[DONT_GENERATE, DONT_INLINE]
  0x0078: PHI (r12v11 byte) = (r12v2 byte), (r12v13 byte) binds: [B:47:0x00ad, B:30:0x0076] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:63:0x00db A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:74:0x00dd A[EDGE_INSN: B:74:0x00dd->B:64:0x00dd BREAK  A[LOOP:1: B:51:0x00b5->B:76:?], SYNTHETIC] */
    public void r0() {
        boolean z2;
        byte bX;
        byte b2;
        int iK0;
        if (this.Y0) {
            return;
        }
        boolean zE0 = e0();
        this.Y0 = zE0;
        if (zE0) {
            return;
        }
        int i2 = (X(111) & 2) != 0 ? 4 : 6;
        o0();
        j0(false);
        int iK1 = k0();
        p0();
        j0(true);
        i0();
        s0.C(2L);
        int iK2 = k0() << i2;
        if (iK2 != iK1) {
            if (iK2 < iK1) {
                bX = 0;
                while (true) {
                    if (iK2 < iK1) {
                        if (iK1 - iK2 <= 2500) {
                            z2 = true;
                            break;
                        }
                        bX = (byte) (((byte) (X(137) & 240)) + 16);
                        if (bX == 0) {
                            bX = -1;
                        } else {
                            Z(137, bX);
                            i0();
                            s0.C(2L);
                            iK2 = k0() << i2;
                        }
                    }
                    z2 = false;
                    break;
                }
                b2 = (byte) (bX - 16);
                if (iK2 > iK1 && iK2 - iK1 <= 2500) {
                    z2 = true;
                }
            } else if (iK2 > iK1) {
                byte bX2 = 0;
                while (true) {
                    if (iK2 <= iK1) {
                        z2 = false;
                    } else if (iK2 - iK1 <= 2500) {
                        z2 = true;
                    } else {
                        bX2 = (byte) (((byte) (X(137) & 240)) - 16);
                        if ((bX2 & 255) == 240) {
                            z2 = false;
                            b2 = 0;
                            break;
                        } else {
                            Z(137, bX2);
                            i0();
                            s0.C(2L);
                            iK2 = k0() << i2;
                        }
                    }
                    b2 = bX2;
                    break;
                }
                bX = (byte) (b2 + 16);
                if (iK1 > iK2 && iK1 - iK2 <= 2500) {
                    z2 = true;
                }
            } else {
                z2 = false;
                bX = 0;
                b2 = 0;
            }
            if (!z2) {
                do {
                    byte b3 = (byte) ((bX + b2) / 2);
                    Z(137, b3);
                    i0();
                    s0.C(2L);
                    iK0 = k0() << i2;
                    if (iK0 >= iK1) {
                        if (iK0 - iK1 > 2500) {
                            bX = b3;
                            if (bX - b2 > 1) {
                                break;
                                break;
                            }
                        } else {
                            break;
                        }
                    } else if (iK1 - iK0 > 2500) {
                        b2 = b3;
                        if (bX - b2 > 1) {
                            break;
                        }
                    } else {
                        break;
                    }
                } while (iK0 != iK1);
            }
        } else {
            X(137);
        }
        byte bX3 = (byte) (X(137) & 255);
        if (bX3 < 10) {
            Z(137, 10);
            bX3 = 10;
        }
        Z(142, 4 | X(142));
        Z(146, bX3);
        Z(49, 202);
        j0(false);
    }

    public void s0() {
        int iX = X(2);
        Z(2, iX | 64);
        s0.C(50L);
        Z(2, iX & 191);
    }

    public void t0() {
        if (this.Y0) {
            return;
        }
        boolean zE0 = e0();
        this.Y0 = zE0;
        if (zE0) {
            return;
        }
        if ((X(111) & 2) != 0) {
            Z(139, 79);
            Z(134, 6);
            Z(135, 16);
            Z(143, 22);
            Z(144, 16);
            Z(196, X(196) & 248);
            Z(197, (X(197) & 128) | 103);
            Z(198, X(198) & 252);
            Z(201, 20);
            int iX = X(249);
            Z(201, X(201) | 8);
            if (207 > iX) {
                Z(199, iX + 48);
            } else {
                Z(199, 255);
            }
            Z(221, 1);
            Z(133, X(133) | 32);
            Z(136, X(136) & i.a.Theme_actionModeWebSearchDrawable);
            Z(142, X(142) | 32);
            Z(145, X(145) & i.a.Theme_actionModeWebSearchDrawable);
            Z(206, X(206) & i.a.Theme_dialogTitleDecorLayout);
            this.T0 = true;
            return;
        }
        Z(139, 72);
        Z(134, 24);
        Z(135, 52);
        Z(143, 24);
        Z(144, 52);
        Z(197, 127);
        Z(221, 10);
        Z(133, X(133) | 32);
        int iX2 = X(136);
        int iK0 = k0();
        if (iK0 < 60000) {
            Z(134, 20);
            Z(135, 84);
            Z(143, 20);
            Z(144, 84);
        }
        if (iK0 > 192000) {
            Z(136, iX2 & i.a.Theme_actionModeWebSearchDrawable);
        } else if (iK0 > 96000 && iK0 <= 192000) {
            Z(136, (iX2 & i.a.Theme_actionModeWebSearchDrawable) | 8);
        } else if (iK0 > 16600 && iK0 <= 96000) {
            Z(136, iX2 | 12);
        }
        Z(142, X(142) | 32);
        int iX3 = X(145);
        if (iK0 > 192000) {
            Z(145, iX3 & i.a.Theme_actionModeWebSearchDrawable);
        } else if (iK0 > 96000 && iK0 <= 192000) {
            Z(145, (iX3 & i.a.Theme_actionModeWebSearchDrawable) | 8);
        } else if (iK0 > 16600 && iK0 <= 96000) {
            Z(145, iX3 | 12);
        }
        if (iK0 > 210000) {
            Z(196, (X(196) & 248) | 1);
            Z(197, (X(197) & 128) | 43);
            Z(198, (X(198) & 252) | 1);
            Z(201, 20);
            int iX4 = X(249);
            Z(201, X(201) | 8);
            if (iX4 > 32) {
                Z(199, iX4);
            } else {
                Z(199, 174);
            }
        } else if (iK0 <= 106000 || iK0 > 210000) {
            Z(196, (X(196) & 248) | 3);
            Z(197, (X(197) & 128) | 8);
            Z(198, (X(198) & 252) | 3);
            Z(201, 20);
            int iX5 = X(249);
            Z(201, X(201) | 8);
            if (iX5 > 64) {
                Z(199, iX5);
            } else {
                Z(199, 174);
            }
        } else {
            Z(196, (X(196) & 248) | 2);
            Z(197, (X(197) & 128) | 9);
            Z(198, (X(198) & 252) | 2);
            Z(201, 20);
            int iX6 = X(249);
            Z(201, X(201) | 8);
            if (iX6 > 64) {
                Z(199, iX6);
            } else {
                Z(199, 174);
            }
        }
        Z(206, X(206) | 2);
        this.T0 = false;
    }

    public boolean u0() {
        boolean z2 = Z(202, 128) > 0 && Z(201, 4) > 0 && Z(201, 20) > 0;
        int iX = X(249);
        boolean z3 = z2 && Z(201, X(201) | 8) > 0;
        if (207 > iX) {
            if (z3 && Z(199, iX + 48) > 0) {
                return true;
            }
        } else if (z3 && Z(199, 255) > 0) {
            return true;
        }
        return false;
    }

    public void v0(boolean z2) {
        int iX = X(196);
        if (z2) {
            Z(196, iX & i.a.Theme_preferenceHeaderPanelStyle);
        } else {
            Z(196, iX | 8);
        }
    }

    public void w0(boolean z2) {
        if (z2) {
            Z(209, X(209) | 8);
        } else {
            Z(209, X(209) & i.a.Theme_preferenceHeaderPanelStyle);
        }
    }

    @Override // f1.q
    public boolean x(String str) {
        int i2;
        int i3;
        if (!this.f2154r || (i2 = this.f2145i) < 11 || i2 > 14) {
            return false;
        }
        L0(255, 128);
        L0(238, 1);
        L0(255, 210);
        L0(131, 17);
        int iY = Y(150);
        int iY2 = Y(151);
        int iX = s0.x(iY, iY2);
        if (iX == 480) {
            i3 = 0;
        } else if (iX != 720) {
            i3 = iX != 1080 ? -1 : 6;
        } else {
            i3 = 2;
        }
        L0(255, 128);
        L0(238, 0);
        if (this.U != i3) {
            if (iX <= 0) {
                this.B = 0;
                this.f2147k = -1;
            }
            this.U = i3;
            int i4 = this.f2145i;
            if (i4 >= 11 && i4 <= 14) {
                this.V.put(i4, i3);
            }
        }
        Log.e("Chip8641", "Chip8641 ======================>>> " + str + " sNtscPal: " + this.U + "  np: " + iX + String.format(" %02X %02X", Integer.valueOf(iY), Integer.valueOf(iY2)));
        return true;
    }

    public boolean x0() {
        return Z(141, 192) > 0 && Z(148, 8) > 0 && Z(140, 0) > 0 && Z(143, 24) > 0 && Z(144, 48) > 0;
    }

    public void y0() {
        if (this.Y0) {
            return;
        }
        Z(3, i.a.Theme_dialogTitleDecorLayout);
        Z(3, 255);
        s0.C(2L);
        int iX = X(145);
        Z(145, iX | 1);
        Z(145, iX & (-2));
    }

    public boolean z0() {
        return Z(166, 128) > 0 && Z(161, 64) > 0 && Z(162, 192) > 0 && Z(164, 192) > 0 && Z(165, 192) > 0 && Z(228, 96) > 0;
    }
}
