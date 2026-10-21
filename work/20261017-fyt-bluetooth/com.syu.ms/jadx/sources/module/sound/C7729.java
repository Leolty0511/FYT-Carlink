package module.sound;

import h0.c;
import java.util.Arrays;
import n0.j4;
import o1.n;
import o1.o0;
import u0.b;
import y0.f;
import y0.h;

/* JADX INFO: loaded from: classes2.dex */
public class C7729 extends AudioDevice {

    /* JADX INFO: renamed from: n1, reason: collision with root package name */
    public static int f15545n1;

    /* JADX INFO: renamed from: o1, reason: collision with root package name */
    public static int f15546o1;

    /* JADX INFO: renamed from: p1, reason: collision with root package name */
    public static final int[] f15547p1 = {96, 75, 69, 64, 60, 56, 53, 50, 47, 45, 43, 41, 40, 39, 38, 37, 36, 35, 34, 33, 32, 31, 30, 29, 28, 27, 26, 25, 24, 23, 22, 21, 20, 19, 18, 17, 16};

    /* JADX INFO: renamed from: q1, reason: collision with root package name */
    public static int f15548q1 = 68;
    public final boolean I0;
    public final String J0;
    public int K0;
    public int L0;
    public int M0;
    public int N0;
    public final int[] O0;
    public final int[] P0;
    public final int[] Q0;
    public final int[] R0;
    public int[] S0;
    public int[] T0;
    public int[] U0;
    public int[] V0;
    public int[] W0;
    public int[] X0;
    public final int[] Y0;
    public final int[] Z0;

    /* JADX INFO: renamed from: a1, reason: collision with root package name */
    public final int[] f15549a1;

    /* JADX INFO: renamed from: b1, reason: collision with root package name */
    public final int[] f15550b1;

    /* JADX INFO: renamed from: c1, reason: collision with root package name */
    public final int[] f15551c1;

    /* JADX INFO: renamed from: d1, reason: collision with root package name */
    public final int[] f15552d1;

    /* JADX INFO: renamed from: e1, reason: collision with root package name */
    public final int[] f15553e1;

    /* JADX INFO: renamed from: f1, reason: collision with root package name */
    public final int[] f15554f1;

    /* JADX INFO: renamed from: g1, reason: collision with root package name */
    public n f15555g1;

    /* JADX INFO: renamed from: h1, reason: collision with root package name */
    public int f15556h1;

    /* JADX INFO: renamed from: i1, reason: collision with root package name */
    public int f15557i1;

    /* JADX INFO: renamed from: j1, reason: collision with root package name */
    public int f15558j1;

    /* JADX INFO: renamed from: k1, reason: collision with root package name */
    public int f15559k1;

    /* JADX INFO: renamed from: l1, reason: collision with root package name */
    public int f15560l1;

    /* JADX INFO: renamed from: m1, reason: collision with root package name */
    public int f15561m1;

    public enum CHANNEL {
        IN0(64),
        IN1(65),
        IN2(66),
        IN3(67),
        IN4(68),
        IN5(69),
        IN6(70),
        IN7(71);


        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f15571a;

        CHANNEL(int i2) {
            this.f15571a = i2;
        }
    }

    public enum REG {
        CHANNEL(0),
        MIX_VOL(2),
        MIX(3),
        MUTE(4),
        LOUD(7),
        SB(8),
        TREBLE(9),
        SENOR(10),
        BASS(11),
        SUBW(12),
        FL(13),
        FR(14),
        RL(15),
        RR(16),
        SWL(17),
        SWR(18);


        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f15589a;

        REG(int i2) {
            this.f15589a = i2;
        }
    }

    public C7729(n nVar) {
        super(3, 3);
        this.I0 = false;
        this.J0 = "C7729";
        this.K0 = 27;
        this.L0 = 111;
        this.M0 = 25;
        this.N0 = 77;
        this.O0 = new int[]{0, 1, 2, 3};
        this.P0 = new int[]{0, 66, 1, 225, 2, 255, 3, 31, 4, 222, 5, 0, 6, 248, 7, 122, 8, 65, 9, 27, 10, 111, 11, 25, 12, 77, 13, 42, 14, 42, 15, 50, 16, 50, 17, 50, 18, 50, 19, 66, 20, 66};
        this.Q0 = new int[]{251, 251, 251, 251, 251, 251, i.a.Theme_actionModeWebSearchDrawable, 235, 227, 219, 211, 203, 195, 187, 179, 171, 163, 155, 147, 139, 131, 123, 115, 107, 99, 91, 83, 75, 67, 59, 51, 43, 35, 27, 19, 11, 3};
        this.R0 = new int[]{96, 75, 69, 64, 60, 56, 53, 50, 47, 45, 43, 41, 40, 39, 38, 37, 36, 35, 34, 33, 32, 31, 30, 29, 28, 27, 26, 25, 24, 23, 22, 21, 20, 19, 18, 17, 16, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
        this.S0 = new int[]{5, 7, 9, 11, 13, 15, 29, 27, 25, 23, 21};
        this.T0 = new int[]{5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 30, 29, 28, 27, 26, 25, 24, 23, 22, 21};
        this.U0 = new int[]{0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 4, 6, 8, 10, 12, 14, 96};
        this.V0 = new int[]{0, 1, 2, 3};
        this.W0 = new int[]{0, 1, 2, 3};
        int[] iArr = {10, 0, 0, 10, 3, 3, 10, 0, -1};
        this.X0 = iArr;
        int[] iArr2 = {10, 0, 0, 10, 3, 3, 10, 0, -1};
        this.Y0 = iArr2;
        int[] iArr3 = {16, 0, 0, 10, 3, 3, 16, 0, -1};
        this.Z0 = iArr3;
        int[] iArr4 = {16, 0, 0, 14, 3, 3, 16, 0, -1};
        this.f15549a1 = iArr4;
        int[] iArr5 = {14, 0, 0, 14, 3, 3, 8, 0, -1};
        this.f15550b1 = iArr5;
        int[] iArr6 = {14, 0, 0, 14, 3, 3, 12, 0, -1};
        this.f15551c1 = iArr6;
        int[] iArr7 = {10, 0, 0, 14, 3, 3, 14, 0, -1};
        this.f15552d1 = iArr7;
        int[] iArr8 = {10, 0, 0, 14, 3, 3, 12, 0, -1};
        this.f15553e1 = iArr8;
        int[] iArr9 = {14, 0, 0, 12, 3, 3, 14, 0, -1};
        this.f15554f1 = iArr9;
        this.f15555g1 = null;
        this.f15556h1 = 0;
        this.f15557i1 = -1;
        this.f15558j1 = 8;
        this.f15559k1 = 8;
        this.f15560l1 = 8;
        this.f15561m1 = 8;
        Z0(0, iArr);
        Z0(1, iArr2);
        Z0(2, iArr3);
        Z0(3, iArr4);
        Z0(4, iArr5);
        Z0(5, iArr6);
        Z0(6, iArr7);
        Z0(7, iArr8);
        Z0(8, iArr9);
        b.V3 = true;
        x(f15547p1);
        this.f15555g1 = nVar;
    }

    @Override // module.sound.AudioDevice
    public void A1(int i2, boolean z2) {
        if (i2 < 0 || i2 >= AudioDevice.G0.length) {
            return;
        }
        if (z2 || i2 != this.f15054g) {
            if (i2 != this.f15054g) {
                this.f15054g = i2;
            }
            J1(REG.MUTE, i2 <= 0 ? 222 : 223);
            H1(REG.FL, i2, this.f15558j1);
            H1(REG.FR, i2, this.f15559k1);
            H1(REG.RL, i2, this.f15560l1);
            H1(REG.RR, i2, this.f15561m1);
            o(this.f15557i1);
        }
    }

    public boolean D1(int[] iArr, int i2) {
        int[] iArrG1;
        return i2 == 0 || (iArrG1 = G1(i2)) == null || !Arrays.equals(iArr, iArrG1);
    }

    public void E1(int i2, int... iArr) {
        if (this.f15072p == iArr.length) {
            int i3 = iArr[0];
            int[] iArr2 = this.T0;
            if (i3 < iArr2.length) {
                if (i2 == 0) {
                    int i4 = (this.M0 & 128) | iArr2[iArr[0]] | (this.W0[iArr[2]] << 5);
                    this.M0 = i4;
                    J1(REG.BASS, i4);
                    int i5 = (this.N0 & 159) | (this.V0[iArr[1]] << 5);
                    this.N0 = i5;
                    J1(REG.SUBW, i5);
                    return;
                }
                if (i2 != 1) {
                    if (i2 == 2) {
                        int i6 = (this.K0 & 128) | iArr2[iArr[0]] | (this.V0[iArr[1]] << 5);
                        this.K0 = i6;
                        J1(REG.TREBLE, i6);
                        return;
                    }
                    return;
                }
                int i7 = (this.L0 & 128) | iArr2[iArr[0]] | (this.W0[iArr[2]] << 5);
                this.L0 = i7;
                J1(REG.SENOR, i7);
                int i8 = (this.N0 & 231) | (this.V0[iArr[1]] << 3);
                this.N0 = i8;
                J1(REG.SUBW, i8);
            }
        }
    }

    @Override // module.sound.AudioDevice
    public void F() {
        CHANNEL channel = CHANNEL.IN5;
        L0(0, channel.f15571a);
        L0(1, CHANNEL.IN1.f15571a);
        L0(2, channel.f15571a);
        L0(3, channel.f15571a);
        CHANNEL channel2 = CHANNEL.IN4;
        L0(4, channel2.f15571a);
        L0(5, CHANNEL.IN0.f15571a);
        L0(6, channel2.f15571a);
        L0(7, channel.f15571a);
        L0(8, channel.f15571a);
        L0(9, channel.f15571a);
        L0(10, channel.f15571a);
        L0(11, channel2.f15571a);
        L0(12, channel2.f15571a);
        L0(13, channel2.f15571a);
        L0(14, channel.f15571a);
        L0(15, channel.f15571a);
        L0(16, channel.f15571a);
    }

    public void F1(int[] iArr) {
        int length = iArr.length / this.f15072p;
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = this.f15072p;
            E1(i2, iArr[i2 * i3], iArr[(i2 * i3) + 1], iArr[(i3 * i2) + 2]);
        }
    }

    public int[] G1(int i2) {
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

    public void H1(REG reg, int i2, int i3) {
        int iM1 = m1(i2) + this.U0[i3];
        if (iM1 > 96) {
            iM1 = 96;
        }
        J1(reg, iM1);
    }

    public int I1(int i2, int... iArr) {
        n nVar = this.f15555g1;
        if (nVar != null) {
            return nVar.d(f15548q1, new int[]{i2}, iArr);
        }
        return -1;
    }

    public int J1(REG reg, int i2) {
        return I1(reg.f15589a, i2);
    }

    @Override // module.sound.AudioDevice
    public void L(int i2, int i3) {
        if (i3 < 0 || i3 >= this.V0.length) {
            return;
        }
        int i4 = this.f15072p * i2;
        int i5 = i4 + 1;
        int[] iArr = this.f15074q;
        int i6 = i5 + 1;
        if (iArr.length <= i6) {
            return;
        }
        iArr[i5] = i3;
        E1(i2, iArr[i4], iArr[i5], iArr[i6]);
        super.L(i2, i3);
    }

    @Override // module.sound.AudioDevice
    public void M(int i2, int i3) {
        if (i3 < 0 || i3 >= this.T0.length) {
            return;
        }
        int i4 = this.f15072p * i2;
        int[] iArr = this.f15074q;
        int i5 = i4 + 2;
        if (iArr.length <= i5) {
            return;
        }
        iArr[i4] = i3;
        E1(i2, iArr[i4], iArr[i4 + 1], iArr[i5]);
        super.M(i2, i3);
    }

    @Override // module.sound.AudioDevice
    public void O(int i2, int i3) {
        if (i2 != 2 && i3 >= 0 && i3 < this.W0.length) {
            int i4 = this.f15072p * i2;
            int i5 = i4 + 2;
            int[] iArr = this.f15074q;
            if (iArr.length <= i5) {
                return;
            }
            iArr[i5] = i3;
            E1(i2, iArr[i4], iArr[i4 + 1], iArr[i5]);
            super.O(i2, i3);
        }
    }

    /* JADX WARN: Code duplicated, block: B:33:0x0096  */
    /* JADX WARN: Code duplicated, block: B:38:? A[RETURN, SYNTHETIC] */
    @Override // module.sound.AudioDevice
    public boolean U(int i2, y.b bVar) {
        boolean z2 = false;
        if (i2 == 9) {
            int[] iArr = this.f15074q;
            for (int i3 = 0; i3 < this.f15060j; i3++) {
                r1(bVar, i2, i3, iArr[this.f15072p * i3] + x0(i3));
            }
        } else if (i2 == 10) {
            r1(bVar, i2, this.f15062k);
        } else if (i2 == 18) {
            int[] iArr2 = this.f15074q;
            for (int i4 = 0; i4 < this.f15060j; i4++) {
                r1(bVar, i2, i4, iArr2[(this.f15072p * i4) + 1]);
            }
        } else if (i2 == 20) {
            int[] iArr3 = this.f15074q;
            for (int i5 = 0; i5 < this.f15060j; i5++) {
                r1(bVar, i2, i5, iArr3[(this.f15072p * i5) + 2] + y0(i5));
            }
        } else {
            if (i2 != 27) {
                if (i2 == 38) {
                    r1(bVar, i2, this.A ? 1 : 0);
                }
                if (z2) {
                    return z2;
                }
                return super.U(i2, bVar);
            }
            r1(bVar, i2, 0, this.f15556h1);
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
        int length = this.P0.length / 2;
        int iI1 = 0;
        do {
            if (iI1 < 0) {
                try {
                    Thread.sleep(600L);
                } catch (InterruptedException e2) {
                    e2.printStackTrace();
                }
            }
            for (int i2 = 0; i2 < length; i2++) {
                int[] iArr = this.P0;
                int i3 = i2 * 2;
                iI1 = I1(iArr[i3], iArr[i3 + 1]);
                if (iI1 < 0) {
                    break;
                }
            }
        } while (iI1 < 0);
        f15545n1 = this.f15052f ? 3 : 0;
        o(this.A ? o0.a(f.V0, 0, 10) : 0);
        e1(0, this.f15556h1);
        w0(this.f15062k);
        j(null);
        l(this.f15052f ? 1 : 0);
        a(b.D);
        y1(f.C0);
    }

    @Override // module.sound.AudioDevice
    public void Y0(int[] iArr) {
    }

    @Override // y0.e
    public void a(int i2) {
        if (c.G == 1) {
            i2 = 2;
        }
        int i3 = b.E;
        if (i3 >= 0) {
            i2 = i3;
        }
        this.f15064l = i2;
        int i4 = this.f15048d.get(i2) & 255;
        if (i4 < 0) {
            i4 = CHANNEL.IN5.f15571a;
        }
        int i5 = CHANNEL.IN5.f15571a;
        J1(REG.CHANNEL, this.f15052f ? i4 | 16 : i4 & 239);
        int i6 = f.f18090z0[i2];
        if (i6 < 0 || i6 >= 48) {
            return;
        }
        m(i6, f.f18084w0[i6]);
    }

    @Override // module.sound.AudioDevice
    public int[] c1() {
        return null;
    }

    @Override // module.sound.AudioDevice
    public void e1(int i2, int i3) {
        if (this.A) {
            int iMax = Math.max(0, Math.min(i3, this.O0.length - 1));
            if (i2 == 0) {
                this.f15556h1 = iMax;
                int i4 = (this.N0 & 252) | this.O0[iMax];
                this.N0 = i4;
                J1(REG.SUBW, i4);
                super.e1(i2, iMax);
            }
        }
    }

    @Override // module.sound.AudioDevice
    public void f1(boolean z2) {
        if (this.A == z2) {
            return;
        }
        this.A = z2;
        if (z2) {
            int i2 = this.f15054g + this.f15557i1;
            J1(REG.SWL, this.R0[i2]);
            J1(REG.SWR, this.R0[i2]);
        } else {
            J1(REG.SWL, this.R0[0]);
            J1(REG.SWR, this.R0[0]);
        }
        super.f1(z2);
    }

    @Override // module.sound.AudioDevice, y0.e
    public void j(int[] iArr) {
        if (this.f15050e) {
            int iA = o0.a(f.L0, 0, 16);
            int iA2 = o0.a(f.M0, 0, 16);
            if (c.G != 0 && b.j2) {
                int[] iArrL2 = j4.f16466d.L2();
                int i2 = iArrL2[0];
                iA2 = iArrL2[1];
                iA = i2;
            }
            this.f15558j1 = Math.max(iA, iA2);
            int i3 = 16 - iA;
            this.f15559k1 = Math.max(i3, iA2);
            int i4 = 16 - iA2;
            this.f15560l1 = Math.max(iA, i4);
            this.f15561m1 = Math.max(i3, i4);
            A1(this.f15054g, true);
            super.j(null);
        }
    }

    @Override // module.sound.AudioDevice
    public int j0(int i2) {
        int i3 = this.f15048d.get(i2);
        if (i3 < 0) {
            i3 = CHANNEL.IN5.f15571a;
        }
        return i3 == CHANNEL.IN5.f15571a ? 1 : 0;
    }

    @Override // module.sound.AudioDevice, y0.e
    public void l(int i2) {
        this.f15052f = i2 == 1;
        super.l(i2);
        J1(REG.LOUD, this.f15052f ? 102 : 64);
        int i3 = f15545n1;
        int i4 = this.f15052f ? 3 : 0;
        f15545n1 = i4;
        if (i3 != i4) {
            a(b.D);
        }
    }

    @Override // y0.e
    public void m(int i2, int i3) {
        int i4;
        if (i2 < 0 || i2 >= 48 || (i4 = b.D) < 0 || i4 >= 20) {
            return;
        }
        if (f.f18090z0[i4] == i2 || i2 == 7) {
            J1(REG.SB, ((~(o0.a(i3, 0, 10) + f15545n1 + f15546o1)) & 255 & 31) | 64);
        }
    }

    @Override // module.sound.AudioDevice
    public void m0() {
        super.m0();
        this.f15556h1 = this.f15080t.h(AudioDevice.STORE.SBWLFREQ.ordinal(), 0);
    }

    @Override // module.sound.AudioDevice, y0.e
    public void o(int i2) {
        int iA = !this.A ? 0 : o0.a(i2, 0, 10);
        this.f15557i1 = iA;
        int i3 = this.D ? 0 : !this.A ? 0 : this.f15054g + iA;
        J1(REG.SWL, this.R0[i3]);
        J1(REG.SWR, this.R0[i3]);
        super.o(this.f15557i1);
    }

    @Override // module.sound.AudioDevice
    public void r0(int i2) {
        J1(REG.MIX_VOL, this.Q0[i2]);
        J1(REG.MIX, i2 == 0 ? 31 : 28);
    }

    @Override // module.sound.AudioDevice
    public void w0(int i2) {
        int i3;
        int[] iArrG1 = G1(i2);
        if (D1(this.f15074q, i2)) {
            int i4 = 0;
            System.arraycopy(iArrG1, 0, this.f15074q, 0, iArrG1.length);
            int i5 = this.f15060j;
            int[] iArr = new int[i5];
            int[] iArr2 = new int[i5];
            int[] iArr3 = new int[i5];
            while (true) {
                i3 = this.f15060j;
                if (i4 >= i3) {
                    break;
                }
                int i6 = this.f15072p;
                iArr2[i4] = iArrG1[(i4 * i6) + 1];
                iArr[i4] = iArrG1[i4 * i6];
                iArr3[i4] = iArrG1[(i6 * i4) + 2];
                i4++;
            }
            h.H(iArr, iArr2, iArr3, i3, this);
        }
        F1(iArrG1);
    }

    @Override // module.sound.AudioDevice
    public int x0(int i2) {
        int[] iArr = this.f15068n;
        if (iArr != null) {
            int i3 = this.f15072p;
            if ((i2 + 1) * i3 <= iArr.length) {
                return iArr[i2 * i3];
            }
        }
        return 0;
    }
}
