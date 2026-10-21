package module.sound;

import android.util.Log;
import h0.c;
import java.util.Arrays;
import n0.j4;
import o1.n;
import o1.o0;
import u0.b;
import y0.f;
import y0.h;

/* JADX INFO: loaded from: classes2.dex */
public class C2313 extends AudioDevice {

    /* JADX INFO: renamed from: i1, reason: collision with root package name */
    public static int f15167i1 = 68;
    public final boolean I0;
    public final String J0;
    public int[] K0;
    public int[] L0;
    public int[] M0;
    public final int[] N0;
    public final int[] O0;
    public int[] P0;
    public final int[] Q0;
    public final int[] R0;
    public final int[] S0;
    public final int[] T0;
    public final int[] U0;
    public final int[] V0;
    public final int[] W0;
    public final int[] X0;
    public n Y0;
    public boolean Z0;

    /* JADX INFO: renamed from: a1, reason: collision with root package name */
    public int f15168a1;

    /* JADX INFO: renamed from: b1, reason: collision with root package name */
    public int f15169b1;

    /* JADX INFO: renamed from: c1, reason: collision with root package name */
    public int f15170c1;

    /* JADX INFO: renamed from: d1, reason: collision with root package name */
    public int f15171d1;

    /* JADX INFO: renamed from: e1, reason: collision with root package name */
    public int f15172e1;

    /* JADX INFO: renamed from: f1, reason: collision with root package name */
    public int f15173f1;

    /* JADX INFO: renamed from: g1, reason: collision with root package name */
    public int f15174g1;

    /* JADX INFO: renamed from: h1, reason: collision with root package name */
    public int f15175h1;

    public enum CHANNEL {
        IN1(0),
        IN2(1),
        IN3(2),
        IN4(3);


        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f15181a;

        CHANNEL(int i2) {
            this.f15181a = i2;
        }
    }

    public enum REG {
        VOL(0),
        RL(192),
        RR(224),
        FL(128),
        FR(160),
        SW(64),
        BASS(96),
        TREBLE(112);


        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f15191a;

        REG(int i2) {
            this.f15191a = i2;
        }
    }

    public C2313(n nVar) {
        super(2, 1);
        this.I0 = false;
        this.J0 = "C2313";
        this.K0 = new int[]{63, 50, 40, 35, 32, 31, 30, 29, 28, 27, 26, 25, 24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0};
        this.L0 = new int[]{0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 6, 9, 12, 16, 20, 24, 31};
        this.M0 = new int[]{0, 1, 2, 3, 4, 5, 6, 7, 14, 13, 12, 11, 10, 9, 8};
        this.N0 = new int[]{24, 16, 8, 0};
        this.O0 = new int[]{4, 0};
        int[] iArr = {10, 10};
        this.P0 = iArr;
        int[] iArr2 = {10, 10};
        this.Q0 = iArr2;
        int[] iArr3 = {16, 16};
        this.R0 = iArr3;
        int[] iArr4 = {15, 13};
        this.S0 = iArr4;
        int[] iArr5 = {14, 8};
        this.T0 = iArr5;
        int[] iArr6 = {14, 12};
        this.U0 = iArr6;
        int[] iArr7 = {10, 14};
        this.V0 = iArr7;
        int[] iArr8 = {10, 12};
        this.W0 = iArr8;
        int[] iArr9 = {14, 10};
        this.X0 = iArr9;
        this.Y0 = null;
        this.Z0 = false;
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
        this.K = false;
        x(this.K0);
        this.Y0 = nVar;
    }

    @Override // module.sound.AudioDevice
    public void A1(int i2, boolean z2) {
        if (i2 < 0 || i2 >= AudioDevice.G0.length) {
            return;
        }
        if (z2 || i2 != this.f15054g) {
            this.f15054g = i2;
        }
        M1(i2);
    }

    public void D1(int i2) {
        int[] iArr = this.M0;
        int i3 = this.M0[Math.max(0, Math.min((int) ((i2 * ((iArr.length - 1) / 20.0f)) + 0.5f), iArr.length - 1))] | REG.BASS.f15191a;
        this.f15174g1 = i3;
        N1(i3);
    }

    public void E1(int i2) {
        int i3 = this.f15173f1 & 31;
        this.f15173f1 = i3;
        int i4 = i3 | REG.SW.f15191a;
        this.f15173f1 = i4;
        int i5 = i4 & (-4);
        this.f15173f1 = i5;
        int i6 = i2 | i5;
        this.f15173f1 = i6;
        N1(i6);
    }

    @Override // module.sound.AudioDevice
    public void F() {
        CHANNEL channel = CHANNEL.IN1;
        L0(0, channel.f15181a);
        L0(1, CHANNEL.IN2.f15181a);
        L0(2, channel.f15181a);
        L0(3, channel.f15181a);
        CHANNEL channel2 = CHANNEL.IN3;
        L0(4, channel2.f15181a);
        L0(5, channel2.f15181a);
        L0(6, channel2.f15181a);
        L0(7, channel.f15181a);
        L0(8, channel.f15181a);
        L0(9, channel.f15181a);
        L0(10, channel.f15181a);
        L0(11, channel2.f15181a);
        L0(12, channel2.f15181a);
        L0(13, channel2.f15181a);
        L0(14, channel.f15181a);
        L0(15, channel.f15181a);
        L0(16, channel.f15181a);
    }

    public void F1(int i2) {
        int i3 = this.L0[i2] | REG.FL.f15191a;
        this.f15169b1 = i3;
        N1(i3);
    }

    public void G1(int i2) {
        int i3 = this.L0[i2] | REG.FR.f15191a;
        this.f15170c1 = i3;
        N1(i3);
    }

    public void H1(int i2) {
        int i3 = this.f15173f1 & 31;
        this.f15173f1 = i3;
        int i4 = i3 | REG.SW.f15191a;
        this.f15173f1 = i4;
        int i5 = i4 & (-25);
        this.f15173f1 = i5;
        int i6 = i2 | i5;
        this.f15173f1 = i6;
        N1(i6);
    }

    public void I1(int i2) {
        int i3 = this.f15173f1 & 31;
        this.f15173f1 = i3;
        int i4 = i3 | REG.SW.f15191a;
        this.f15173f1 = i4;
        int i5 = i4 & (-5);
        this.f15173f1 = i5;
        int i6 = this.O0[i2] | i5;
        this.f15173f1 = i6;
        N1(i6);
    }

    public void J1(int i2) {
        int i3 = this.L0[i2] | REG.RL.f15191a;
        this.f15171d1 = i3;
        N1(i3);
    }

    public void K1(int i2) {
        int i3 = this.L0[i2] | REG.RR.f15191a;
        this.f15172e1 = i3;
        N1(i3);
    }

    public void L1(int i2) {
        int[] iArr = this.M0;
        int i3 = this.M0[Math.max(0, Math.min((int) ((i2 * ((iArr.length - 1) / 20.0f)) + 0.5f), iArr.length - 1))] | REG.TREBLE.f15191a;
        this.f15175h1 = i3;
        N1(i3);
    }

    @Override // module.sound.AudioDevice
    public void M(int i2, int i3) {
        int i4 = this.f15072p * i2;
        int[] iArr = this.f15074q;
        if (i4 >= iArr.length) {
            return;
        }
        iArr[i4] = i3;
        P1(i4, i3);
        super.M(i2, i3);
    }

    public void M1(int i2) {
        int iM1 = m1(i2) | REG.VOL.f15191a;
        this.f15168a1 = iM1;
        N1(iM1);
    }

    public int N1(int i2) {
        return this.Y0.d(f15167i1, new int[]{i2}, i2);
    }

    public boolean O1(int[] iArr, int i2) {
        int[] iArrR1;
        return i2 == 0 || (iArrR1 = R1(i2)) == null || !Arrays.equals(iArr, iArrR1);
    }

    public void P1(int i2, int... iArr) {
        if (this.f15072p != iArr.length || iArr[0] > 20) {
            return;
        }
        int iMin = Math.min(f.f18047f0, iArr[0]);
        if (i2 == 0) {
            D1(iMin);
        } else if (i2 == 1) {
            L1(iMin);
        }
    }

    public void Q1(int[] iArr) {
        int length = iArr.length / this.f15072p;
        for (int i2 = 0; i2 < length; i2++) {
            P1(i2, iArr[this.f15072p * i2]);
        }
    }

    public int[] R1(int i2) {
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

    /* JADX WARN: Code duplicated, block: B:15:0x0034  */
    /* JADX WARN: Code duplicated, block: B:18:? A[RETURN, SYNTHETIC] */
    @Override // module.sound.AudioDevice
    public boolean U(int i2, y.b bVar) {
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
        int iN1 = 0;
        do {
            if (iN1 < 0) {
                try {
                    Thread.sleep(520L);
                } catch (InterruptedException e2) {
                    e2.printStackTrace();
                }
            }
            iN1 = N1(128);
        } while (iN1 < 0);
        w0(this.f15062k);
        l(this.f15052f ? 1 : 0);
        j(null);
        a(b.D);
        A1(f.C0, true);
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
        int i4 = this.f15048d.get(i2) & 15;
        if (i4 < 0) {
            i4 = CHANNEL.IN1.f15181a;
        }
        int i5 = CHANNEL.IN1.f15181a;
        E1(i4);
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
    public boolean g1() {
        return this.K;
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
            int iMax = Math.max(iA, iA2);
            int i3 = 16 - iA;
            int iMax2 = Math.max(i3, iA2);
            int i4 = 16 - iA2;
            int iMax3 = Math.max(iA, i4);
            int iMax4 = Math.max(i3, i4);
            F1(iMax);
            G1(iMax2);
            J1(iMax3);
            K1(iMax4);
            super.j(null);
        }
    }

    @Override // module.sound.AudioDevice
    public int j0(int i2) {
        int i3 = this.f15048d.get(i2);
        if (i3 < 0) {
            i3 = CHANNEL.IN1.f15181a;
        }
        return i3 == CHANNEL.IN1.f15181a ? 1 : 0;
    }

    @Override // module.sound.AudioDevice, y0.e
    public void l(int i2) {
        this.f15052f = i2 == 1;
        super.l(i2);
        I1(this.f15052f ? 1 : 0);
    }

    @Override // y0.e
    public void m(int i2, int i3) {
        int i4;
        if (i2 < 0 || i2 >= 48 || (i4 = b.D) < 0 || i4 >= 20 || f.f18090z0[i4] != i2) {
            return;
        }
        float fA = o0.a(i3, 0, 10);
        int[] iArr = this.N0;
        H1(this.N0[o0.a((int) ((fA * ((iArr.length - 1.0f) / 10.0f)) + 0.5f), 0, iArr.length - 1)]);
    }

    @Override // module.sound.AudioDevice
    public void m0() {
        super.m0();
    }

    @Override // module.sound.AudioDevice
    public int p0() {
        return 0;
    }

    @Override // module.sound.AudioDevice
    public int q0() {
        return 62;
    }

    @Override // module.sound.AudioDevice
    public void r0(int i2) {
        int i3 = b.D;
        Log.e("C2313", "======================   mix   mix   vol : " + i2 + " ");
        if (!this.K) {
            if (i2 > 0 && j0(this.f15064l) != 1) {
                a(0);
                return;
            } else {
                if (i2 > 0 || j0(i3) == 1) {
                    return;
                }
                a(i3);
                return;
            }
        }
        if (f.J == 0 || f.L == 0) {
            if (i2 > 0 && j0(this.f15064l) != 1) {
                a(0);
                this.Z0 = true;
                return;
            } else {
                if (i2 > 0 || j0(i3) == 1) {
                    return;
                }
                this.Z0 = false;
                a(i3);
                return;
            }
        }
        if (i2 <= 0) {
            if (this.Z0) {
                this.Z0 = false;
                a(i3);
                return;
            }
            float f2 = f.f18084w0[f.f18090z0[b.D]];
            int[] iArr = this.N0;
            int iA = o0.a((int) ((f2 * ((iArr.length - 1.0f) / 10.0f)) + 0.5f), 0, iArr.length - 1);
            Log.e("C2313", "======================   isSupportNaviMix " + this.K + "   mix   vol : " + iA);
            H1(this.N0[iA]);
            return;
        }
        Log.e("C2313", "======================   isSupportNaviMix " + this.K + "   mix   vol : 1 vol : " + i2);
        if (f.T0 != 0 && j0(this.f15064l) != 1) {
            a(0);
            this.Z0 = true;
            return;
        }
        if (f.T0 == 0 && this.Z0) {
            this.Z0 = false;
            a(i3);
        }
        if (f.L < 20) {
            H1(this.N0[i3 != 5 ? (char) 1 : (char) 0]);
        }
    }

    @Override // module.sound.AudioDevice
    public void w0(int i2) {
        int[] iArrR1 = R1(i2);
        if (O1(this.f15074q, i2)) {
            System.arraycopy(iArrR1, 0, this.f15074q, 0, iArrR1.length);
            h.H(iArrR1, null, null, this.f15060j, this);
        }
        Q1(iArrR1);
    }
}
