package module.sound;

import chip.Chip;
import g.e;
import h0.c;
import java.util.Arrays;
import n0.j4;
import o1.n;
import o1.o0;
import y.b;
import y0.f;
import y0.h;

/* JADX INFO: loaded from: classes2.dex */
public class C3702 extends AudioDevice {

    /* JADX INFO: renamed from: a1, reason: collision with root package name */
    public static final int[] f15416a1 = {255, 54, 50, 46, 42, 38, 34, 32, 30, 28, 27, 25, 23, 21, 20, 19, 18, 17, 16, 15, 14, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0, -1, -2, -3};

    /* JADX INFO: renamed from: b1, reason: collision with root package name */
    public static final int[] f15417b1 = {255, 153, 148, 145, 143, 140, 138, 136, 134, 132, 130};

    /* JADX INFO: renamed from: c1, reason: collision with root package name */
    public static int f15418c1 = 64;

    /* JADX INFO: renamed from: d1, reason: collision with root package name */
    public static int f15419d1 = 4;

    /* JADX INFO: renamed from: e1, reason: collision with root package name */
    public static int f15420e1 = 5;
    public final boolean I0;
    public final String J0;
    public final int[] K0;
    public final int[] L0;
    public int[] M0;
    public int[] N0;
    public int[] O0;
    public final int[] P0;
    public final int[] Q0;
    public final int[] R0;
    public final int[] S0;
    public final int[] T0;
    public final int[] U0;
    public final int[] V0;
    public final int[] W0;
    public n X0;
    public int Y0;
    public int[] Z0;

    public enum CHANNEL {
        A(0),
        B(1),
        C(2),
        D(3),
        E1(10),
        E2(11),
        D_DIFF(6),
        E_FULL(8),
        SHORT(9),
        BIAS(128);


        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f15432a;

        CHANNEL(int i2) {
            this.f15432a = i2;
        }
    }

    public enum REG {
        CHANNEL(5),
        SB(6),
        MAIN_VOL(32),
        FL(41),
        FR(40),
        RL(43),
        RR(42),
        SUBWOOF_VOL(44),
        MIX_VOL(48),
        BASS(81),
        SENOR(84),
        TREBLE(87);


        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f15446a;

        REG(int i2) {
            this.f15446a = i2;
        }
    }

    public C3702(n nVar) {
        super(3, 1);
        this.I0 = false;
        this.J0 = "C3702";
        this.K0 = new int[]{254, 129, 1, 231, 2, 3, 3, 25, 144, 48, 65, 16, 68, 17, 71, 1, 117, 96};
        int[] iArr = {255, 38, 33, 32, 31, 30, 29, 28, 27, 26, 25, 24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0, -1, -2, -3, -4, -5, -6, -7, -7, -7, -7, -7, -7, -7, -7, -7, -7};
        this.L0 = iArr;
        this.M0 = new int[]{128, 128, 128, 128, 128, 128, 128, 128, 128, 131, 134, 137, 140, 143, 146, 149, 255};
        this.N0 = new int[]{138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
        this.O0 = new int[]{10, 10, 10};
        int[] iArr2 = {10, 10, 10};
        this.P0 = iArr2;
        int[] iArr3 = {16, 10, 16};
        this.Q0 = iArr3;
        int[] iArr4 = {16, 14, 16};
        this.R0 = iArr4;
        int[] iArr5 = {14, 14, 8};
        this.S0 = iArr5;
        int[] iArr6 = {14, 14, 12};
        this.T0 = iArr6;
        int[] iArr7 = {10, 14, 14};
        this.U0 = iArr7;
        int[] iArr8 = {10, 14, 12};
        this.V0 = iArr8;
        int[] iArr9 = {14, 12, 10};
        this.W0 = iArr9;
        this.X0 = null;
        this.Y0 = -1;
        this.Z0 = null;
        f15418c1 = ((Chip) e.f2254a).y(1);
        Z0(0, this.O0);
        Z0(1, iArr2);
        Z0(2, iArr3);
        Z0(3, iArr4);
        Z0(4, iArr5);
        Z0(5, iArr6);
        Z0(6, iArr7);
        Z0(7, iArr8);
        Z0(8, iArr9);
        I1(f15416a1, 131);
        J1(iArr, 131);
        this.X0 = nVar;
    }

    @Override // module.sound.AudioDevice
    public void A1(int i2, boolean z2) {
        if (i2 < 0 || i2 >= AudioDevice.G0.length) {
            return;
        }
        if (i2 != this.f15054g) {
            this.f15054g = i2;
        }
        M1(REG.MAIN_VOL, m1(i2));
    }

    public boolean D1(int[] iArr, int i2) {
        int[] iArrH1;
        return i2 == 0 || (iArrH1 = H1(i2)) == null || !Arrays.equals(iArr, iArrH1);
    }

    public void E1(int i2, int... iArr) {
        if (this.f15072p == iArr.length) {
            int i3 = iArr[0];
            int[] iArr2 = this.N0;
            if (i3 < iArr2.length) {
                int iMin = Math.min(iArr2.length - 1, iArr[0]);
                if (i2 == 0) {
                    M1(REG.BASS, G1(this.N0[iMin], this.f15052f ? f15419d1 : 0));
                } else if (i2 == 1) {
                    M1(REG.SENOR, G1(this.N0[iMin], this.f15052f ? f15419d1 : 0));
                } else if (i2 == 2) {
                    M1(REG.TREBLE, G1(this.N0[iMin], this.f15052f ? f15420e1 : 0));
                }
            }
        }
    }

    @Override // module.sound.AudioDevice
    public void F() {
        CHANNEL channel = CHANNEL.E2;
        L0(0, channel.f15432a);
        L0(1, CHANNEL.A.f15432a);
        L0(2, channel.f15432a);
        L0(3, channel.f15432a);
        CHANNEL channel2 = CHANNEL.D;
        L0(4, channel2.f15432a);
        CHANNEL channel3 = CHANNEL.C;
        L0(5, channel3.f15432a);
        L0(6, CHANNEL.B.f15432a);
        L0(7, channel.f15432a);
        L0(8, channel.f15432a);
        L0(9, channel.f15432a);
        L0(10, channel.f15432a);
        L0(11, channel3.f15432a);
        L0(12, channel3.f15432a);
        L0(13, channel3.f15432a);
        L0(14, channel2.f15432a);
        L0(15, channel.f15432a);
        L0(16, channel.f15432a);
    }

    public void F1(int[] iArr) {
        int length = iArr.length / this.f15072p;
        for (int i2 = 0; i2 < length; i2++) {
            E1(i2, iArr[this.f15072p * i2]);
        }
    }

    public final int G1(int i2, int i3) {
        if ((i2 & 128) != 0) {
            i2 = -(i2 & 127);
        }
        int i4 = i2 + i3;
        if (i4 < -20) {
            i4 = -20;
        } else if (i4 > 20) {
            i4 = 20;
        }
        return i4 < 0 ? ((-i4) & 127) | 128 : i4;
    }

    public int[] H1(int i2) {
        int[] iArr = new int[this.f15060j * this.f15072p];
        int[] iArrX = X(i2);
        if (iArrX != null) {
            int length = iArrX.length;
            int i3 = this.f15060j;
            int i4 = this.f15072p;
            if (length == i3 * i4) {
                System.arraycopy(iArrX, 0, iArr, 0, length);
            } else if (length < i3 * i4) {
                System.arraycopy(iArrX, 0, iArr, 0, length);
                System.arraycopy(iArrX, 0, iArr, length, (this.f15060j * this.f15072p) - length);
            }
        }
        return iArr;
    }

    public void I1(int[] iArr, int i2) {
        x(K1(iArr, i2));
    }

    public void J1(int[] iArr, int i2) {
        int[] iArrK1 = K1(iArr, i2);
        this.Z0 = Arrays.copyOf(iArrK1, iArrK1.length);
    }

    public int[] K1(int[] iArr, int i2) {
        if (iArr == null || iArr.length == 0) {
            return null;
        }
        int[] iArr2 = new int[iArr.length];
        iArr2[0] = 255;
        for (int i3 = 1; i3 < iArr.length; i3++) {
            iArr2[i3] = iArr[i3] + i2;
        }
        return iArr2;
    }

    public int L1(int i2, int... iArr) {
        n nVar = this.X0;
        if (nVar != null) {
            return nVar.d(f15418c1, new int[]{i2}, iArr);
        }
        return -1;
    }

    @Override // module.sound.AudioDevice
    public void M(int i2, int i3) {
        int i4 = this.f15072p * i2;
        int[] iArr = this.f15074q;
        if (i4 >= iArr.length) {
            return;
        }
        iArr[i4] = i3;
        E1(i4, i3);
        super.M(i2, i3);
    }

    public int M1(REG reg, int i2) {
        return L1(reg.f15446a, i2);
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0034  */
    /* JADX WARN: Code duplicated, block: B:18:? A[RETURN, SYNTHETIC] */
    @Override // module.sound.AudioDevice
    public boolean U(int i2, b bVar) {
        boolean z2 = false;
        if (i2 != 9) {
            if (i2 == 10) {
                r1(bVar, i2, this.f15062k);
            }
            if (z2) {
                return z2;
            }
            return super.U(i2, bVar);
        }
        int[] iArr = this.f15074q;
        for (int i3 = 0; i3 < this.f15060j; i3++) {
            r1(bVar, i2, i3, iArr[i3] + x0(i3));
        }
        z2 = true;
        if (z2) {
            return z2;
        }
        return super.U(i2, bVar);
    }

    @Override // module.sound.AudioDevice
    public void W0() {
        super.W0();
        int length = this.K0.length / 2;
        int i2 = 0;
        do {
            if (i2 < 0) {
                try {
                    Thread.sleep(520L);
                } catch (InterruptedException e2) {
                    e2.printStackTrace();
                }
            }
            int i3 = 0;
            while (i3 < length) {
                int[] iArr = this.K0;
                int i4 = i3 * 2;
                int i5 = iArr[i4];
                int i6 = iArr[i4 + 1];
                int iL1 = L1(i5, i6);
                if (!(i5 == 144 && i6 == 48) && iL1 < 0) {
                    i2 = iL1;
                    break;
                } else {
                    i3++;
                    i2 = iL1;
                }
            }
        } while (i2 < 0);
        M1(REG.SUBWOOF_VOL, f15417b1[this.A ? o0.a(f.V0, 0, 10) : 0]);
        w0(this.f15062k);
        j(null);
        l(this.f15052f ? 1 : 0);
        a(u0.b.D);
        A1(f.C0, true);
    }

    @Override // y0.e
    public void a(int i2) {
        if (c.G == 1) {
            i2 = 2;
        }
        int i3 = u0.b.E;
        if (i3 >= 0) {
            i2 = i3;
        }
        this.f15064l = i2;
        int i4 = this.f15048d.get(i2) & 15;
        if (i4 < 0) {
            i4 = CHANNEL.E2.f15432a;
        }
        M1(REG.CHANNEL, i4);
        int i5 = f.f18090z0[i2];
        if (i5 < 0 || i5 >= 48) {
            return;
        }
        m(i5, f.f18084w0[i5]);
    }

    @Override // module.sound.AudioDevice
    public int[] c1() {
        return null;
    }

    @Override // module.sound.AudioDevice
    public void f1(boolean z2) {
        if (this.A == z2) {
            return;
        }
        this.A = z2;
        o(this.f15092z);
        super.f1(z2);
    }

    @Override // module.sound.AudioDevice, y0.e
    public void j(int[] iArr) {
        if (this.f15050e) {
            int iA = o0.a(f.L0, 0, 16);
            int iA2 = o0.a(f.M0, 0, 16);
            if (c.G != 0 && u0.b.j2) {
                int[] iArrL2 = j4.f16466d.L2();
                int i2 = iArrL2[0];
                iA2 = iArrL2[1];
                iA = i2;
            }
            int iMax = Math.max(iA, iA2);
            int i3 = 16 - iA;
            int iMax2 = Math.max(i3, iA2);
            int i4 = 16 - iA2;
            int iMax3 = Math.max(iA, i4);
            int iMax4 = Math.max(i3, i4);
            M1(REG.FL, this.M0[iMax]);
            M1(REG.FR, this.M0[iMax2]);
            M1(REG.RL, this.M0[iMax3]);
            M1(REG.RR, this.M0[iMax4]);
            super.j(null);
        }
    }

    @Override // module.sound.AudioDevice
    public int j0(int i2) {
        int i3 = this.f15048d.get(i2);
        if (i3 < 0) {
            i3 = CHANNEL.E2.f15432a;
        }
        return i3 == CHANNEL.E2.f15432a ? 1 : 0;
    }

    @Override // module.sound.AudioDevice, y0.e
    public void l(int i2) {
        this.f15052f = i2 == 1;
        super.l(i2);
        F1(this.f15074q);
    }

    @Override // y0.e
    public void m(int i2, int i3) {
        int i4;
        if (i2 < 0 || i2 >= 48 || (i4 = u0.b.D) < 0 || i4 >= 20 || f.f18090z0[i4] != i2) {
            return;
        }
        M1(REG.SB, o0.a(i3, 0, 10));
    }

    @Override // module.sound.AudioDevice
    public void m0() {
        super.m0();
    }

    @Override // module.sound.AudioDevice, y0.e
    public void o(int i2) {
        int iA = !this.A ? 0 : o0.a(i2, 0, 10);
        this.Y0 = iA;
        M1(REG.SUBWOOF_VOL, f15417b1[this.D ? 0 : iA]);
        super.o(this.Y0);
    }

    @Override // module.sound.AudioDevice
    public int p0() {
        return 113;
    }

    @Override // module.sound.AudioDevice
    public int q0() {
        return 240;
    }

    @Override // module.sound.AudioDevice
    public void r0(int i2) {
        M1(REG.MIX_VOL, i2 == 0 ? this.Z0[i2] : Math.max(p0(), Math.min(this.Z0[i2] - F0(), q0())));
    }

    @Override // module.sound.AudioDevice
    public void w0(int i2) {
        int[] iArrH1 = H1(i2);
        if (D1(this.f15074q, i2)) {
            System.arraycopy(iArrH1, 0, this.f15074q, 0, iArrH1.length);
            h.H(iArrH1, null, null, this.f15060j, this);
        }
        F1(iArrH1);
    }
}
