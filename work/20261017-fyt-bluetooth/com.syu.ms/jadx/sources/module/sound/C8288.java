package module.sound;

import a.i;
import android.media.AudioManager;
import android.util.Log;
import android.util.SparseIntArray;
import chip.Chip;
import com.syu.jni.ToolsJni;
import g.g;
import java.util.Arrays;
import module.video.V8288$CHANNEL;
import n0.c4;
import n0.j4;
import o1.d0;
import o1.e0;
import o1.k;
import o1.o0;
import o1.q0;
import y0.h;

/* JADX INFO: loaded from: classes2.dex */
public class C8288 extends AudioDevice {
    public final boolean I0;
    public final String J0;
    public final int[] K0;
    public int[] L0;
    public final int[] M0;
    public final int[] N0;
    public final int[] O0;
    public final int[] P0;
    public final int[] Q0;
    public final int[] R0;
    public final int[] S0;
    public final int[] T0;
    public int[] U0;
    public e0 V0;
    public AudioManager W0;
    public SparseIntArray X0;
    public SparseIntArray Y0;
    public SparseIntArray Z0;

    /* JADX INFO: renamed from: a1, reason: collision with root package name */
    public Runnable f16035a1;

    /* JADX INFO: renamed from: b1, reason: collision with root package name */
    public int f16036b1;

    /* JADX INFO: renamed from: c1, reason: collision with root package name */
    public final Runnable f16037c1;

    /* JADX INFO: renamed from: d1, reason: collision with root package name */
    public Runnable f16038d1;

    /* JADX INFO: renamed from: e1, reason: collision with root package name */
    public Runnable f16039e1;

    /* JADX INFO: renamed from: f1, reason: collision with root package name */
    public Runnable f16040f1;

    public enum CHANNLE {
        BTAV(0),
        AUX(1),
        TV(2),
        IPOD(3),
        RADIO(4),
        DVD(5),
        GPS(6),
        GUSB(7),
        PHONE(8),
        NULL(9),
        BTAV_785(32),
        PHONE_785(33);


        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f16054a;

        CHANNLE(int i2) {
            this.f16054a = i2;
        }
    }

    public enum SBID {
        BTAV(0),
        AUX(1),
        TV(2),
        IPOD(3),
        RADIO(4),
        DVD(5),
        GPS(6),
        GUSB(7),
        PHONE(8),
        NULL(9),
        BTAV785(32),
        BTPHONE785(33);


        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f16068a;

        SBID(int i2) {
            this.f16068a = i2;
        }
    }

    public enum STATE {
        DVD(0),
        RADIO(1),
        TV(2),
        CDC(3),
        GPS(4),
        AV1(5),
        RADAR(6),
        PHONE(7),
        IPOD(8),
        BTAV(9),
        DVR(10),
        NULL(14),
        MP3(21),
        USB(22),
        SD(23),
        PHONE_785(24),
        RADAR_IN_785(25),
        RADAR_OUT_785(26),
        PHONEOUT(27),
        DVR_IN(28),
        DVR_OUT(29),
        NAVI_SOUND(30),
        IPOD_PUSH_OUT(31),
        RIGHT_CAMERA(32),
        OUT_RIGHT_CAMERA(33);


        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f16094a;

        STATE(int i2) {
            this.f16094a = i2;
        }
    }

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = y0.f.L * 20;
            int i3 = y0.f.M;
            C8288.this.L1(0, 168, (i2 + (i3 >> 1)) / i3);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C8288 c8288 = C8288.this;
            c8288.f15064l = -1;
            int[] iArr = AudioDevice.G0;
            if (iArr != null || iArr.length > 0) {
                c8288.x(iArr);
                C8288 c8289 = C8288.this;
                c8289.f15076r.removeCallbacks(c8289.f16037c1);
                C8288 c82810 = C8288.this;
                int i2 = c82810.f16036b1 + 1;
                c82810.f16036b1 = i2;
                if (i2 <= 3) {
                    c82810.f15076r.postDelayed(c82810.f16037c1, 600L);
                }
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17320f == 1 || u0.b.f17306a0 == 1 || (u0.b.f17326h == 0 && u0.b.P3 != 1)) {
                C8288 c8288 = C8288.this;
                c8288.f16036b1 = 0;
                c8288.f15076r.removeCallbacks(c8288.f16037c1);
                C8288 c8289 = C8288.this;
                c8289.f15076r.postDelayed(c8289.f16037c1, 300L);
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C8288.this.L1(0, 171, (y0.f.R * 100) / y0.f.S);
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C8288.this.L1(0, 167, (y0.f.f18085x == 0 ? 0 : 1) | (y0.f.J == 0 ? 0 : 2) | 4);
        }
    }

    public class f implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ int f16100a;

        public f(int i2) {
            this.f16100a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            C8288.this.E1(this.f16100a);
        }
    }

    public C8288(e0 e0Var) {
        super(7, 1);
        this.I0 = false;
        this.J0 = "C8288";
        this.K0 = new int[]{6, 6, 0, 0, 3, 5, 2};
        this.L0 = new int[]{D1(16), D1(16), D1(16), D1(16), D1(16), D1(16), D1(16)};
        int[] iArr = {D1(16), D1(16), D1(16), D1(16), D1(16), D1(16), D1(16)};
        this.M0 = iArr;
        int[] iArr2 = {D1(21), D1(18), D1(12), D1(16), D1(20), D1(24), D1(26)};
        this.N0 = iArr2;
        int[] iArr3 = {D1(14), D1(16), D1(14), D1(15), D1(16), D1(15), D1(13)};
        this.O0 = iArr3;
        int[] iArr4 = {D1(18), D1(17), D1(16), D1(16), D1(17), D1(18), D1(19)};
        this.P0 = iArr4;
        int[] iArr5 = {D1(22), D1(20), D1(18), D1(16), D1(18), D1(20), D1(22)};
        this.Q0 = iArr5;
        int[] iArr6 = {D1(26), D1(25), D1(22), D1(25), D1(22), D1(19), D1(16)};
        this.R0 = iArr6;
        int[] iArr7 = {D1(24), D1(22), D1(19), D1(12), D1(21), D1(12), D1(26)};
        this.S0 = iArr7;
        int[] iArr8 = {D1(16), D1(19), D1(22), D1(25), D1(28), D1(25), D1(26)};
        this.T0 = iArr8;
        this.U0 = new int[]{0, 15, 25, 55, 75, 90, 100, 107, 114, 120, 125, 130, 134, 135, 139, 143, 147, 151, 155, 160, 165, 169, 173, 177, 181, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194};
        this.W0 = null;
        this.X0 = null;
        this.Y0 = null;
        this.Z0 = null;
        this.f16035a1 = new a();
        this.f16036b1 = 0;
        this.f16037c1 = new b();
        this.f16038d1 = new c();
        this.f16039e1 = new d();
        this.f16040f1 = new e();
        Z0(0, this.L0);
        Z0(1, iArr);
        Z0(2, iArr2);
        Z0(3, iArr3);
        Z0(4, iArr4);
        Z0(5, iArr5);
        Z0(6, iArr6);
        Z0(7, iArr7);
        Z0(8, iArr8);
        this.W0 = a.f.f();
        G1();
        this.V0 = e0Var;
        x(this.U0);
    }

    public static int D1(int i2) {
        return (int) (((i2 * y0.f.f18047f0) / 32.0f) + 0.5f);
    }

    public static int J1(int i2) {
        return (int) (((Math.min(y0.f.f18047f0, i2) * 32.0f) / y0.f.f18047f0) + 0.5f);
    }

    @Override // module.sound.AudioDevice
    public void A1(int i2, boolean z2) {
        if (i2 < 0 || i2 >= AudioDevice.G0.length) {
            return;
        }
        if (i2 != this.f15054g) {
            this.f15054g = i2;
        }
        L1(0, 1, i2);
    }

    public void E1(int i2) {
        boolean z2;
        g gVar;
        int i3 = i2;
        int i4 = this.f15048d.get(i3) & 15;
        if (i4 < 0) {
            i4 = STATE.MP3.f16094a;
        }
        if (h0.c.G == 0) {
            L1(0, 16, 27, CHANNLE.NULL.f16054a, V8288$CHANNEL.CVNULL.f16277a);
        }
        if (u0.b.o4 == 6) {
            i3 = 5;
        }
        int i5 = this.X0.indexOfKey(i3) < 0 ? STATE.NULL.f16094a : this.X0.get(i3);
        int i6 = this.Z0.indexOfKey(i3) < 0 ? V8288$CHANNEL.CVNULL.f16277a : this.Z0.get(i3);
        boolean z3 = i4 == CHANNLE.GUSB.f16054a;
        c4 c4Var = j4.f16466d;
        if (c4Var == null || !c4Var.l3()) {
            z2 = false;
        } else {
            z2 = true;
            z3 = false;
        }
        if (!z2 && i3 == 1 && (gVar = g.e.f2254a) != null && ((Chip) gVar).M()) {
            z2 = true;
            z3 = false;
        }
        if (this.f15086w) {
            if (i3 == 2) {
                z3 = false;
            } else if (!z3) {
                z3 = !z2;
            }
            d0.e(AudioManager.class.getName(), this.W0, "setAudioSwitch2iis", new Class[]{Boolean.TYPE}, Boolean.valueOf(z3));
        }
        L1(0, 16, i5, i4, i6);
        int i7 = y0.f.f18090z0[i3];
        if (i7 < 0 || i7 >= 48) {
            return;
        }
        m(i7, y0.f.f18084w0[i7]);
    }

    @Override // module.sound.AudioDevice
    public void F() {
        CHANNLE channle = CHANNLE.RADIO;
        L0(1, channle.f16054a);
        L0(2, CHANNLE.PHONE_785.f16054a);
        L0(3, CHANNLE.BTAV_785.f16054a);
        L0(4, CHANNLE.DVD.f16054a);
        CHANNLE channle2 = CHANNLE.AUX;
        L0(5, channle2.f16054a);
        L0(6, CHANNLE.TV.f16054a);
        L0(7, CHANNLE.IPOD.f16054a);
        CHANNLE channle3 = CHANNLE.GUSB;
        L0(8, channle3.f16054a);
        L0(9, channle3.f16054a);
        L0(10, channle3.f16054a);
        L0(11, channle.f16054a);
        L0(12, channle2.f16054a);
        L0(13, channle2.f16054a);
        L0(14, channle2.f16054a);
        L0(15, channle3.f16054a);
        L0(16, channle3.f16054a);
    }

    public boolean F1(int[] iArr, int i2) {
        int[] iArrK1;
        return i2 == 0 || (iArrK1 = K1(i2)) == null || !Arrays.equals(iArr, iArrK1);
    }

    public void G1() {
        if (this.X0 == null) {
            this.X0 = new SparseIntArray();
        }
        SparseIntArray sparseIntArray = this.X0;
        STATE state = STATE.RADIO;
        sparseIntArray.put(1, state.f16094a);
        this.X0.put(2, STATE.PHONE_785.f16094a);
        this.X0.put(3, STATE.BTAV.f16094a);
        this.X0.put(4, STATE.DVD.f16094a);
        this.X0.put(5, state.f16094a);
        this.X0.put(6, STATE.TV.f16094a);
        this.X0.put(7, STATE.IPOD.f16094a);
        SparseIntArray sparseIntArray2 = this.X0;
        STATE state2 = STATE.MP3;
        sparseIntArray2.put(8, state2.f16094a);
        this.X0.put(9, state2.f16094a);
        this.X0.put(10, state2.f16094a);
        this.X0.put(11, state.f16094a);
        this.X0.put(12, state.f16094a);
        this.X0.put(14, state.f16094a);
        this.X0.put(15, state2.f16094a);
        this.X0.put(16, state2.f16094a);
        if (this.Z0 == null) {
            this.Z0 = new SparseIntArray();
        }
        SparseIntArray sparseIntArray3 = this.Z0;
        V8288$CHANNEL v8288$channel = V8288$CHANNEL.CVNULL;
        sparseIntArray3.put(1, v8288$channel.f16277a);
        this.Z0.put(2, v8288$channel.f16277a);
        this.Z0.put(3, v8288$channel.f16277a);
        this.Z0.put(4, v8288$channel.f16277a);
        this.Z0.put(5, v8288$channel.f16277a);
        this.Z0.put(6, V8288$CHANNEL.CVBS2.f16277a);
        this.Z0.put(7, v8288$channel.f16277a);
        this.Z0.put(8, v8288$channel.f16277a);
        this.Z0.put(9, v8288$channel.f16277a);
        this.Z0.put(10, v8288$channel.f16277a);
        this.Z0.put(11, v8288$channel.f16277a);
        this.Z0.put(12, v8288$channel.f16277a);
        this.Z0.put(13, v8288$channel.f16277a);
        this.Z0.put(14, V8288$CHANNEL.CVBS1.f16277a);
        this.Z0.put(15, v8288$channel.f16277a);
        this.Z0.put(16, v8288$channel.f16277a);
        if (this.Y0 == null) {
            this.Y0 = new SparseIntArray();
        }
        this.Y0.put(0, SBID.RADIO.f16068a);
        SparseIntArray sparseIntArray4 = this.Y0;
        SBID sbid = SBID.GPS;
        sparseIntArray4.put(2, sbid.f16068a);
        this.Y0.put(3, SBID.BTAV.f16068a);
        this.Y0.put(1, SBID.DVD.f16068a);
        SparseIntArray sparseIntArray5 = this.Y0;
        SBID sbid2 = SBID.AUX;
        sparseIntArray5.put(5, sbid2.f16068a);
        this.Y0.put(8, SBID.TV.f16068a);
        this.Y0.put(4, SBID.IPOD.f16068a);
        this.Y0.put(6, SBID.GUSB.f16068a);
        this.Y0.put(7, sbid.f16068a);
        this.Y0.put(11, sbid2.f16068a);
        this.Y0.put(9, sbid2.f16068a);
        this.Y0.put(10, sbid2.f16068a);
    }

    public void H1(int[] iArr) {
        int length = this.K0.length;
        if (iArr == null || iArr.length != length) {
            return;
        }
        int[] iArr2 = new int[length];
        for (int i2 = 0; i2 < length; i2++) {
            iArr2[i2] = J1(I1(iArr[i2], this.f15052f ? 0 : this.K0[i2]));
        }
        L1(0, 162, 0, iArr2[0], iArr2[1], iArr2[2], iArr2[3], iArr2[4], iArr2[5], iArr2[6]);
    }

    public final int I1(int i2, int i3) {
        int i4 = i2 + i3;
        if (i4 < 0) {
            return 0;
        }
        if (i4 > 20) {
            return 20;
        }
        return i4;
    }

    public int[] K1(int i2) {
        int[] iArr = this.M0;
        int[] iArrCopyOf = Arrays.copyOf(iArr, iArr.length);
        int[] iArrX = X(i2);
        return iArrX != null ? Arrays.copyOf(iArrX, iArrX.length) : iArrCopyOf;
    }

    public void L1(int... iArr) {
        if (iArr == null) {
            return;
        }
        int length = iArr.length;
        byte[] bArr = new byte[length + 5];
        bArr[0] = -1;
        bArr[1] = 85;
        bArr[2] = (byte) (length >> 8);
        bArr[3] = (byte) (length & 255);
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3++) {
            bArr[i3 + 4] = (byte) iArr[i3];
            i2 += iArr[i3];
        }
        bArr[length + 4] = (byte) (~i2);
        this.V0.i(bArr);
    }

    @Override // module.sound.AudioDevice
    public void M(int i2, int i3) {
        int i4 = this.f15072p * i2;
        int[] iArr = this.f15074q;
        if (i4 >= iArr.length) {
            return;
        }
        iArr[i4] = i3;
        H1(iArr);
        super.M(i2, i3);
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
        w0(this.f15062k);
        j(null);
        a(u0.b.D);
        y1(y0.f.C0);
        y0.g.f18092b.a(this.f16035a1, 1);
        y0.g.f18096f.a(this.f16040f1, 1);
        y0.g.f18098h.a(this.f16040f1, 1);
        y0.g.f18097g.a(this.f16039e1, 1);
        u0.c.f17376c.a(this.f16038d1, 1);
        u0.c.f17386m.a(this.f16038d1, 1);
        u0.c.f17384k.a(this.f16038d1, 1);
    }

    @Override // y0.e
    public synchronized void a(int i2) {
        int i3 = 1;
        this.f15090y = true;
        if (h0.c.G == 1) {
            i2 = 2;
        }
        int i4 = u0.b.E;
        if (i4 >= 0) {
            i2 = i4;
        }
        boolean z2 = this.f15064l != i2;
        this.f15064l = i2;
        E1(i2);
        if (this.X0.get(i2) != STATE.DVD.f16094a) {
            k.a().postDelayed(new f(i2), 500L);
        }
        if (z2) {
            int i5 = u0.b.D;
            int i6 = this.f15048d.get(i2) & 15;
            if (i5 < 0 || i5 >= 20 || (i6 != CHANNLE.BTAV_785.f16054a && i6 != CHANNLE.PHONE_785.f16054a && i6 != CHANNLE.PHONE.f16054a && i6 != CHANNLE.BTAV.f16054a && i6 != CHANNLE.GUSB.f16054a)) {
                i3 = 0;
            }
            i.a0(200L);
            q0.i(i3);
        }
        this.f15090y = false;
    }

    @Override // module.sound.AudioDevice
    public int[] c1() {
        return null;
    }

    @Override // module.sound.AudioDevice, y0.e
    public void f() {
        super.f();
        y0.g.f18092b.d(this.f16035a1);
        y0.g.f18096f.d(this.f16040f1);
        y0.g.f18098h.d(this.f16040f1);
        y0.g.f18097g.d(this.f16039e1);
        u0.c.f17376c.d(this.f16038d1);
        u0.c.f17386m.d(this.f16038d1);
        u0.c.f17384k.d(this.f16038d1);
    }

    @Override // module.sound.AudioDevice, y0.e
    public void j(int[] iArr) {
        int iA = o0.a(16 - y0.f.L0, 0, 16);
        int iA2 = o0.a(16 - y0.f.M0, 0, 16);
        if (h0.c.G != 0 && u0.b.j2) {
            int[] iArrL2 = j4.f16466d.L2();
            int i2 = 16 - iArrL2[0];
            iA2 = 16 - iArrL2[1];
            iA = i2;
        }
        int i3 = 16 - iA;
        int i4 = 16 - iA2;
        L1(0, 161, Math.min(iA, iA2), Math.min(i3, iA2), Math.min(iA, i4), Math.min(i3, i4));
        super.j(iArr);
    }

    @Override // module.sound.AudioDevice
    public int j0(int i2) {
        int i3 = this.f15048d.get(i2);
        int i4 = this.f15048d.get(10);
        if (i3 < 0) {
            i3 = i4;
        }
        return i3 == i4 ? 1 : 0;
    }

    @Override // y0.e
    public void m(int i2, int i3) {
        if (i2 < 0 || i2 >= 48) {
            return;
        }
        int i4 = u0.b.D;
        int i5 = y0.f.f18088y0[i2];
        if (i4 < 0 || i4 >= 20 || y0.f.f18090z0[i4] != i2) {
            return;
        }
        int iA = o0.a(i3, 0, 10);
        int i6 = this.Y0.get(i2);
        int i7 = (iA * 10) / i5;
        Log.e("C8288", String.format("reg : %2X, param: %d", Integer.valueOf(i6), Integer.valueOf(i7)));
        L1(0, 165, i6, i7);
    }

    @Override // module.sound.AudioDevice
    public void m0() {
        super.m0();
    }

    @Override // module.sound.AudioDevice
    public int p0() {
        return 210;
    }

    @Override // module.sound.AudioDevice
    public int q0() {
        return 5;
    }

    @Override // module.sound.AudioDevice
    public void r0(int i2) {
        ToolsJni.cmd_2_soundMix(i2 > 0 ? 1 : 0);
    }

    @Override // module.sound.AudioDevice
    public void w0(int i2) {
        int[] iArrK1 = K1(i2);
        if (F1(this.f15074q, i2)) {
            System.arraycopy(iArrK1, 0, this.f15074q, 0, iArrK1.length);
            h.H(iArrK1, null, null, this.f15060j, this);
        }
        H1(iArrK1);
    }

    @Override // module.sound.AudioDevice
    public void x(int[] iArr) {
        super.x(iArr);
        int[] iArr2 = new int[39];
        iArr2[0] = 0;
        iArr2[1] = 170;
        System.arraycopy(AudioDevice.G0, 0, iArr2, 2, 37);
        Log.e("DVD", "Array: " + Arrays.toString(iArr2));
        L1(iArr2);
    }
}
