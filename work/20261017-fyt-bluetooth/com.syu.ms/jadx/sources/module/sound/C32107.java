package module.sound;

import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.app.FragmentTransaction;
import android.bluetooth.BluetoothClass;
import android.content.Context;
import android.media.AudioManager;
import android.media.videoeditor.MediaArtistNativeHelper;
import android.net.ConnectivityManager;
import android.net.ProxyProperties;
import android.net.dhcp.DhcpPacket;
import android.net.wifi.WifiStateMachine;
import android.opengl.GLES10;
import android.text.format.DateUtils;
import android.util.Log;
import app.App;
import base.Configure;
import chip.Chip;
import com.syu.ms.R;
import g.e;
import g.g;
import h0.d;
import java.util.Arrays;
import n0.c4;
import n0.j4;
import o1.d0;
import o1.n;
import o1.o0;
import o1.s0;
import y0.f;
import y0.h;

/* JADX INFO: loaded from: classes2.dex */
public class C32107 extends AudioDevice {
    public static int A1 = 11;
    public static int B1 = 64;
    public static int C1 = 20;
    public static int D1 = 11;
    public static int E1 = 2;
    public static int[] F1 = {0, 26, 25, 24, 23, 21, 20, 19, 18, 17, 16, 15, 14, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
    public static int z1 = 29;
    public final String I0;
    public int J0;
    public final int K0;
    public int[] L0;
    public int[] M0;
    public final int[] N0;
    public int[] O0;
    public int[] P0;
    public int[] Q0;
    public int[] R0;
    public int[] S0;
    public final int[] T0;
    public final int[] U0;
    public final int[] V0;
    public final int[] W0;
    public final int[] X0;
    public final int[] Y0;
    public final int[] Z0;

    /* JADX INFO: renamed from: a1, reason: collision with root package name */
    public final int[] f15192a1;

    /* JADX INFO: renamed from: b1, reason: collision with root package name */
    public EQType f15193b1;

    /* JADX INFO: renamed from: c1, reason: collision with root package name */
    public int f15194c1;

    /* JADX INFO: renamed from: d1, reason: collision with root package name */
    public n f15195d1;

    /* JADX INFO: renamed from: e1, reason: collision with root package name */
    public boolean f15196e1;

    /* JADX INFO: renamed from: f1, reason: collision with root package name */
    public boolean f15197f1;

    /* JADX INFO: renamed from: g1, reason: collision with root package name */
    public boolean f15198g1;

    /* JADX INFO: renamed from: h1, reason: collision with root package name */
    public int[] f15199h1;

    /* JADX INFO: renamed from: i1, reason: collision with root package name */
    public int[] f15200i1;

    /* JADX INFO: renamed from: j1, reason: collision with root package name */
    public int[] f15201j1;

    /* JADX INFO: renamed from: k1, reason: collision with root package name */
    public int f15202k1;

    /* JADX INFO: renamed from: l1, reason: collision with root package name */
    public int f15203l1;

    /* JADX INFO: renamed from: m1, reason: collision with root package name */
    public int[] f15204m1;

    /* JADX INFO: renamed from: n1, reason: collision with root package name */
    public int f15205n1;

    /* JADX INFO: renamed from: o1, reason: collision with root package name */
    public int f15206o1;

    /* JADX INFO: renamed from: p1, reason: collision with root package name */
    public AudioManager f15207p1;

    /* JADX INFO: renamed from: q1, reason: collision with root package name */
    public int f15208q1;
    public boolean r1;
    public Boolean s1;
    public Integer t1;
    public boolean u1;
    public boolean v1;
    public boolean w1;
    public final Runnable x1;
    public final Runnable y1;

    public enum CHANNEL {
        MUSIC(0),
        TV(1),
        DVD(2),
        RADIO(3),
        AUX(4);


        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f15215a;

        CHANNEL(int i2) {
            this.f15215a = i2;
        }
    }

    public enum EQType {
        BIT_16(0),
        BIT_32(1);


        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f15219a;

        EQType(int i2) {
            this.f15219a = i2;
        }
    }

    public enum HPF {
        FA(0),
        FB(1),
        RA(2),
        RB(3);


        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f15225a;

        HPF(int i2) {
            this.f15225a = i2;
        }
    }

    public enum IIR {
        A(6),
        B(7);


        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f15229a;

        IIR(int i2) {
            this.f15229a = i2;
        }
    }

    public enum P2BFreq {
        THROUGH(0),
        HZ54(1),
        HZ68(2),
        HZ86(3),
        HZ108(4),
        HZ134(5),
        HZ172(6),
        HZ214(7);


        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f15239a;

        P2BFreq(int i2) {
            this.f15239a = i2;
        }
    }

    public enum P2BGain {
        DB00(0),
        DB01(1),
        DB02(2),
        DB03(3),
        DB04(4),
        DB05(5),
        DB06(6),
        DB07(7),
        DB08(8),
        DB09(9),
        DB10(10),
        DB11(11),
        DB12(12);


        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f15254a;

        P2BGain(int i2) {
            this.f15254a = i2;
        }
    }

    public enum REG {
        SLAVE(128),
        SPECTRUM(40960),
        RESET(65278),
        SETUP1(1),
        SETUP(2),
        SB(257),
        CHANNEL(259),
        MIXON(265),
        MIXVOL(2309),
        IISINPOUT(514),
        DSP1(515),
        DSP3(517),
        DSP4(518),
        DSP5(519),
        TIME_ALIGNMENT_FL(1024),
        TIME_ALIGNMENT_FR(1026),
        TIME_ALIGNMENT_RL(1028),
        TIME_ALIGNMENT_RR(1030),
        TIME_ALIGNMENT_S(1032),
        TIME_ALIGNMENT_RL2(1034),
        TIME_ALIGNMENT_RR2(1036),
        EQ_FRONT_GAIN_BASE(1552),
        EQ_REAR_GAIN_BASE(1568),
        HPF_FRONT(1795),
        HPF_REAR(BluetoothClass.Device.WEARABLE_WRIST_WATCH),
        P2B_FRONT(1797),
        P2B_REAR(1798),
        SUBLPF(1799),
        SUBHPF(BluetoothClass.Device.WEARABLE_PAGER),
        IIR_DIRCOEF_SET(1801),
        BEEP_LEVEL(2048),
        BEEP_TYPE(GLES10.GL_EXP2),
        BEEP_SETUP(2051),
        VOL_FL(2304),
        VOL_FR(2305),
        VOL_RL(2306),
        VOL_RR(2307),
        VOL_SL(BluetoothClass.Device.HEALTH_BLOOD_PRESSURE),
        VOL_SR(2309),
        VOL_FL_BOOST(2310),
        VOL_FR_BOOST(2311),
        VOL_RL_BOOST(BluetoothClass.Device.HEALTH_THERMOMETER),
        VOL_RR_BOOST(2313),
        VOL_SL_BOOST(2314),
        VOL_SR_BOOST(2315),
        FL(DateUtils.FORMAT_NO_NOON_MIDNIGHT),
        FR(2561),
        RL(2562),
        RR(2563),
        SWL(2564),
        SWR(2565),
        EQCOEFSELECTOR(4096),
        EQCOEF(FragmentTransaction.TRANSIT_FRAGMENT_OPEN),
        IIRCOEFSELECTOR(4352),
        IIRCOEF(4353),
        READBACKH(208),
        READBACKL(0);


        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f15287a;

        REG(int i2) {
            this.f15287a = i2;
        }
    }

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Boolean bool;
            C32107 c32107;
            boolean z2;
            boolean z3 = h0.c.G == 1;
            if (z3 && (z2 = (c32107 = C32107.this).f15197f1) && c32107.s1 == null) {
                c32107.s1 = Boolean.valueOf(z2);
                C32107.this.l1(false);
            } else {
                if (z3 || (bool = C32107.this.s1) == null) {
                    return;
                }
                if (bool.booleanValue()) {
                    C32107 c32108 = C32107.this;
                    c32108.l1(c32108.s1.booleanValue());
                }
                C32107.this.s1 = null;
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C32107.this.j(null);
            C32107 c32107 = C32107.this;
            c32107.A1(c32107.f15054g, true);
        }
    }

    public static /* synthetic */ class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f15290a;

        static {
            int[] iArr = new int[EQType.values().length];
            f15290a = iArr;
            try {
                iArr[EQType.BIT_16.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f15290a[EQType.BIT_32.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public C32107(int i2, int i3, n nVar) {
        super(i2, i3);
        this.I0 = "c32107";
        this.J0 = -1;
        this.K0 = 28;
        this.L0 = null;
        this.M0 = new int[]{0, 180, 168, 158, 150, 143, 137, 131, 126, 122, 118, 114, 112, 110, 108, 106, 104, 102, 100, 98, 96, 94, 92, 90, 88, 86, 84, 82, 80, 78, 76, 74, 72, 70, 68, 66, 64};
        this.N0 = new int[]{0, 159, 152, 146, 141, 136, 132, 128, 125, 122, 119, 116, 114, 112, 110, 108, 106, 104, 102, 100, 98, 96, 94, 92, 90, 88, 86, 84, 82, 80, 78, 76, 74, 72, 70, 68, 66};
        this.O0 = new int[]{128, 181, 178, 175, 172, 170, 168, 166, 164, 162, 160};
        this.P0 = new int[]{160, 160, 160, 160, 160, 160, 160, 160, 160, 162, 164, 166, 168, 170, 175, 181, 128};
        this.Q0 = new int[]{13, 14, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 15, 29, 30, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 31};
        this.R0 = new int[]{-12, -11, -10, -9, -8, -7, -6, -5, -4, -3, -2, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12};
        this.S0 = new int[]{30, 12, 14, 50, 12, 14, 80, 12, 14, 125, 12, 14, 200, 12, 14, 320, 12, 14, 500, 12, 14, 800, 12, 14, 1000, 12, 14, 1250, 12, 14, 2000, 12, 14, ConnectivityManager.CONNECTIVITY_CHANGE_DELAY_DEFAULT, 12, 14, 5000, 12, 14, MediaArtistNativeHelper.AudioSamplingFrequency.FREQ_8000, 12, 14, MediaArtistNativeHelper.AudioSamplingFrequency.FREQ_12000, 12, 14, 16000, 12, 14};
        int[] iArr = {30, 12, 14, 50, 12, 14, 80, 12, 14, 125, 12, 14, 200, 12, 14, 320, 12, 14, 500, 12, 14, 800, 12, 14, 1000, 12, 14, 1250, 12, 14, 2000, 12, 14, ConnectivityManager.CONNECTIVITY_CHANGE_DELAY_DEFAULT, 12, 14, 5000, 12, 14, MediaArtistNativeHelper.AudioSamplingFrequency.FREQ_8000, 12, 14, MediaArtistNativeHelper.AudioSamplingFrequency.FREQ_12000, 12, 14, 16000, 12, 14};
        this.T0 = iArr;
        int[] iArr2 = {30, 15, 14, 50, 16, 14, 80, 17, 14, 125, 17, 14, 200, 14, 14, 320, 11, 14, 500, 9, 14, 800, 9, 14, 1000, 10, 14, 1250, 13, 14, 2000, 15, 14, ConnectivityManager.CONNECTIVITY_CHANGE_DELAY_DEFAULT, 16, 14, 5000, 17, 14, MediaArtistNativeHelper.AudioSamplingFrequency.FREQ_8000, 17, 14, MediaArtistNativeHelper.AudioSamplingFrequency.FREQ_12000, 16, 14, 16000, 15, 14};
        this.U0 = iArr2;
        int[] iArr3 = {30, 13, 14, 50, 12, 14, 80, 11, 14, 125, 11, 14, 200, 10, 14, 320, 9, 14, 500, 8, 14, 800, 9, 14, 1000, 10, 14, 1250, 10, 14, 2000, 12, 14, ConnectivityManager.CONNECTIVITY_CHANGE_DELAY_DEFAULT, 12, 14, 5000, 14, 14, MediaArtistNativeHelper.AudioSamplingFrequency.FREQ_8000, 15, 14, MediaArtistNativeHelper.AudioSamplingFrequency.FREQ_12000, 16, 14, 16000, 14, 14};
        this.V0 = iArr3;
        int[] iArr4 = {30, 12, 14, 50, 14, 14, 80, 13, 14, 125, 14, 14, 200, 13, 14, 320, 12, 14, 500, 12, 14, 800, 12, 14, 1000, 12, 14, 1250, 12, 14, 2000, 12, 14, ConnectivityManager.CONNECTIVITY_CHANGE_DELAY_DEFAULT, 12, 14, 5000, 13, 14, MediaArtistNativeHelper.AudioSamplingFrequency.FREQ_8000, 15, 14, MediaArtistNativeHelper.AudioSamplingFrequency.FREQ_12000, 16, 14, 16000, 14, 14};
        this.W0 = iArr4;
        int[] iArr5 = {30, 12, 14, 50, 14, 14, 80, 15, 14, 125, 16, 14, 200, 17, 14, 320, 15, 14, 500, 13, 14, 800, 12, 14, 1000, 11, 14, 1250, 10, 14, 2000, 10, 14, ConnectivityManager.CONNECTIVITY_CHANGE_DELAY_DEFAULT, 12, 14, 5000, 14, 14, MediaArtistNativeHelper.AudioSamplingFrequency.FREQ_8000, 15, 14, MediaArtistNativeHelper.AudioSamplingFrequency.FREQ_12000, 16, 14, 16000, 14, 14};
        this.X0 = iArr5;
        int[] iArr6 = {30, 8, 14, 50, 8, 14, 80, 9, 14, 125, 11, 14, 200, 12, 14, 320, 13, 14, 500, 14, 14, 800, 15, 14, 1000, 16, 14, 1250, 16, 14, 2000, 16, 14, ConnectivityManager.CONNECTIVITY_CHANGE_DELAY_DEFAULT, 16, 14, 5000, 16, 14, MediaArtistNativeHelper.AudioSamplingFrequency.FREQ_8000, 16, 14, MediaArtistNativeHelper.AudioSamplingFrequency.FREQ_12000, 16, 14, 16000, 16, 14};
        this.Y0 = iArr6;
        int[] iArr7 = {30, 13, 14, 50, 17, 14, 80, 16, 14, 125, 17, 14, 200, 13, 14, 320, 12, 14, 500, 10, 14, 800, 12, 14, 1000, 12, 14, 1250, 12, 14, 2000, 13, 14, ConnectivityManager.CONNECTIVITY_CHANGE_DELAY_DEFAULT, 14, 14, 5000, 13, 14, MediaArtistNativeHelper.AudioSamplingFrequency.FREQ_8000, 15, 14, MediaArtistNativeHelper.AudioSamplingFrequency.FREQ_12000, 16, 14, 16000, 14, 14};
        this.Z0 = iArr7;
        int[] iArr8 = {30, 9, 14, 50, 11, 14, 80, 13, 14, 125, 16, 14, 200, 17, 14, 320, 17, 14, 500, 17, 14, 800, 17, 14, 1000, 16, 14, 1250, 16, 14, 2000, 14, 14, ConnectivityManager.CONNECTIVITY_CHANGE_DELAY_DEFAULT, 14, 14, 5000, 13, 14, MediaArtistNativeHelper.AudioSamplingFrequency.FREQ_8000, 13, 14, MediaArtistNativeHelper.AudioSamplingFrequency.FREQ_12000, 12, 14, 16000, 12, 14};
        this.f15192a1 = iArr8;
        EQType eQType = EQType.BIT_16;
        this.f15193b1 = eQType;
        this.f15194c1 = 0;
        this.f15195d1 = null;
        this.f15196e1 = false;
        this.f15197f1 = true;
        this.f15198g1 = true;
        this.f15199h1 = new int[]{0, 0};
        this.f15200i1 = new int[]{0, 0};
        this.f15201j1 = new int[4];
        this.f15202k1 = 8;
        this.f15203l1 = 8;
        this.f15204m1 = new int[]{25, 12, 12, 0};
        this.f15205n1 = D1;
        this.f15206o1 = E1;
        this.f15207p1 = null;
        this.f15208q1 = 6;
        this.r1 = false;
        this.s1 = null;
        this.t1 = null;
        this.u1 = true;
        this.v1 = false;
        this.w1 = false;
        this.x1 = new a();
        this.y1 = new b();
        this.u1 = s0.l("ro.syu.naviMix", true);
        Z0(0, this.S0);
        Z0(1, iArr);
        Z0(2, iArr2);
        Z0(3, iArr3);
        Z0(4, iArr4);
        Z0(5, iArr5);
        Z0(6, iArr6);
        Z0(7, iArr7);
        Z0(8, iArr8);
        x(this.M0);
        f.f18047f0 = 24;
        f.f18077t = 1;
        this.f15207p1 = (AudioManager) App.c().getSystemService(Context.AUDIO_SERVICE);
        this.f15193b1 = i2 != 16 ? EQType.BIT_32 : eQType;
        if (nVar == null) {
            throw new RuntimeException("C32107 i2c  Device Can't be NULL");
        }
        this.f15195d1 = nVar;
    }

    @Override // module.sound.AudioDevice
    public void A0() {
        if (this.f15062k == 1) {
            J1();
        }
    }

    @Override // module.sound.AudioDevice
    public void A1(int i2, boolean z2) {
        if (i2 < 0 || i2 >= AudioDevice.G0.length) {
            return;
        }
        Log.e("Sound", "=====>>>volume vol : " + i2 + " force: " + z2);
        B1(i2, z2);
        if (z2 || i2 != this.f15054g) {
            this.f15054g = i2;
        }
        L1();
        boolean z3 = this.f15052f;
        if (z3) {
            l(z3 ? 1 : 0);
        }
    }

    @Override // module.sound.AudioDevice
    public boolean B() {
        if (u0.b.n4 == 0 || u0.b.f17320f == 0 || u0.b.f17306a0 == 0) {
            return false;
        }
        return (W1(REG.SETUP1.f15287a) == 28 || W1(REG.BEEP_SETUP.f15287a) == 4) ? false : true;
    }

    @Override // module.sound.AudioDevice
    public void B0(int i2, int i3, int i4) {
        if (this.f15198g1) {
            REG reg = null;
            if (i2 == 65536) {
                reg = REG.P2B_FRONT;
            } else if (i2 == 131072) {
                reg = REG.P2B_REAR;
            }
            if (reg != null) {
                T1(reg, i3, i4);
                super.B0(i2, i3, i4);
            }
        }
    }

    @Override // module.sound.AudioDevice
    public void B1(int i2, boolean z2) {
        ValueAnimator valueAnimator;
        int iM1 = m1(i2);
        Log.e("Sound", "=====>>>volumeAnimatorExec vol : " + i2 + " this.vol:" + this.f15054g + " target:" + iM1 + " tempVol:" + this.Q + " targetVol:" + this.U + " lastValue:" + this.J0 + " needInited:" + this.R);
        Log.e("Sound", "=====>>>volumeAnimatorExec -1");
        if ((this.f15054g == i2 && this.U == i2) && (valueAnimator = this.S) != null && valueAnimator.isRunning()) {
            return;
        }
        ValueAnimator valueAnimator2 = this.S;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
        }
        this.S = null;
        this.T = -1;
        int i3 = this.J0;
        if (i3 != iM1 || this.Q != i2 || this.R || z2) {
            if (this.Q == Integer.MIN_VALUE) {
                this.Q = 0;
            }
            if (z2) {
                if (this.Q == i2) {
                    this.Q = Integer.MIN_VALUE;
                }
                if (i3 == iM1) {
                    this.Q = Integer.MIN_VALUE;
                }
                C1(i2);
                this.U = Integer.MIN_VALUE;
                return;
            }
            int i4 = this.U;
            if (i4 != Integer.MIN_VALUE && this.Q != i4) {
                C1(i4);
                this.U = Integer.MIN_VALUE;
            }
            float fAbs = Math.abs(this.f15054g - i2) / 5.0f;
            long j2 = 1200;
            if (fAbs < 0.4d) {
                C1(i2);
                return;
            }
            if (fAbs <= 0.6f) {
                j2 = 500;
            } else if (fAbs <= 1.0f) {
                j2 = 800;
            }
            this.U = i2;
            ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(this.Q, i2);
            this.S = valueAnimatorOfInt;
            valueAnimatorOfInt.addUpdateListener(this.f15049d0);
            this.S.setDuration(j2);
            this.S.start();
        }
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0037  */
    /* JADX WARN: Code duplicated, block: B:17:0x003b  */
    /* JADX WARN: Code duplicated, block: B:19:0x0041  */
    /* JADX WARN: Code duplicated, block: B:20:0x004b  */
    @Override // module.sound.AudioDevice
    public void C0(int i2, int i3) {
        REG reg;
        int[] iArr;
        if (i2 == 65536) {
            reg = REG.P2B_FRONT;
        } else {
            reg = i2 == 131072 ? REG.P2B_REAR : null;
        }
        if (reg != null) {
            int iMax = Math.max(P2BFreq.THROUGH.f15239a, Math.min(i3, P2BFreq.HZ214.f15239a));
            boolean z2 = true;
            if (reg == REG.P2B_FRONT) {
                int[] iArr2 = this.f15199h1;
                if (iMax != iArr2[0]) {
                    iArr2[0] = iMax;
                    T1(reg, iArr2[0], iArr2[1]);
                } else if (reg == REG.P2B_REAR) {
                    iArr = this.f15200i1;
                    if (iMax != iArr[0]) {
                        iArr[0] = iMax;
                        T1(reg, iArr[0], iArr[1]);
                    } else {
                        z2 = false;
                    }
                } else {
                    z2 = false;
                }
            } else if (reg == REG.P2B_REAR) {
                iArr = this.f15200i1;
                if (iMax != iArr[0]) {
                    iArr[0] = iMax;
                    T1(reg, iArr[0], iArr[1]);
                } else {
                    z2 = false;
                }
            } else {
                z2 = false;
            }
            if (z2) {
                super.C0(i2, iMax);
            }
        }
    }

    @Override // module.sound.AudioDevice
    public void C1(int i2) {
        int iM1 = m1(i2);
        if (this.Q != i2 || this.R) {
            this.R = false;
            this.Q = i2;
            this.J0 = iM1;
            Log.e("Sound", ">>>>>>>>>>>>>>>>>>>>>> C32107  writeVolume value:  " + i2 + " targetValue:" + iM1);
            f2(REG.VOL_FL.f15287a, iM1);
            f2(REG.VOL_FR.f15287a, iM1);
            f2(REG.VOL_RL.f15287a, iM1);
            f2(REG.VOL_RR.f15287a, iM1);
            f2(REG.VOL_SL.f15287a, iM1);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v11, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r2v14 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r2v7 */
    @Override // module.sound.AudioDevice
    public void D(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 58) {
            if (s0.h(iArr, 0)) {
                ?? r2 = iArr[0] == 1 ? 1 : 0;
                if (this.B != r2) {
                    this.B = r2;
                    G0(AudioDevice.STORE.SUBWOOF_SYNC, r2);
                    h.s0(58, this.B ? 1 : 0);
                    o(this.f15092z);
                    return;
                }
                return;
            }
            return;
        }
        if (i2 == 59 && s0.h(iArr, 0)) {
            ?? r3 = iArr[0] == 1 ? 1 : 0;
            if (this.r1 != r3) {
                this.r1 = r3;
                G0(AudioDevice.STORE.SUBWOOF_PHASE, r3);
                h.s0(59, this.r1 ? 1 : 0);
                a2(this.r1);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0038  */
    /* JADX WARN: Code duplicated, block: B:18:0x003c  */
    /* JADX WARN: Code duplicated, block: B:20:0x0042  */
    @Override // module.sound.AudioDevice
    public void D0(int i2, int i3) {
        REG reg;
        int[] iArr;
        if (i2 == 65536) {
            reg = REG.P2B_FRONT;
        } else {
            reg = i2 == 131072 ? REG.P2B_REAR : null;
        }
        if (reg != null) {
            int iMax = Math.max(P2BGain.DB00.f15254a, Math.min(i3, P2BGain.DB12.f15254a));
            boolean z2 = false;
            if (reg == REG.P2B_FRONT) {
                int[] iArr2 = this.f15199h1;
                if (iMax != iArr2[1]) {
                    iArr2[1] = iMax;
                    T1(reg, iArr2[0], iArr2[1]);
                } else if (reg == REG.P2B_REAR) {
                    iArr = this.f15200i1;
                    if (iMax != iArr[1]) {
                        iArr[1] = iMax;
                        T1(reg, iArr[0], iArr[1]);
                    }
                }
                z2 = true;
            } else if (reg == REG.P2B_REAR) {
                iArr = this.f15200i1;
                if (iMax != iArr[1]) {
                    iArr[1] = iMax;
                    T1(reg, iArr[0], iArr[1]);
                    z2 = true;
                }
            }
            if (z2) {
                super.D0(i2, iMax);
            }
        }
    }

    public void D1(boolean z2) {
        if (!z2) {
            f2(REG.TIME_ALIGNMENT_FL.f15287a, s0.a(14));
            return;
        }
        c2(69632, this.f15204m1[0]);
        c2(73728, this.f15204m1[1]);
        c2(135168, this.f15204m1[2]);
        c2(139264, this.f15204m1[3]);
    }

    @Override // module.sound.AudioDevice
    public void E0(boolean z2) {
        if (this.f15198g1 == z2) {
            return;
        }
        this.f15198g1 = z2;
        U1(z2);
        super.E0(z2);
    }

    public boolean E1(int[] iArr, int i2) {
        int[] iArrO1;
        return i2 == 0 || (iArrO1 = O1(i2)) == null || !Arrays.equals(iArr, iArrO1);
    }

    @Override // module.sound.AudioDevice
    public void F() {
        CHANNEL channel = CHANNEL.MUSIC;
        L0(0, channel.f15215a);
        L0(1, CHANNEL.RADIO.f15215a);
        L0(2, channel.f15215a);
        L0(3, channel.f15215a);
        L0(4, CHANNEL.DVD.f15215a);
        CHANNEL channel2 = CHANNEL.AUX;
        L0(5, channel2.f15215a);
        L0(6, CHANNEL.TV.f15215a);
        L0(7, channel.f15215a);
        L0(8, channel.f15215a);
        L0(9, channel.f15215a);
        L0(10, channel.f15215a);
        L0(11, channel2.f15215a);
        L0(12, channel2.f15215a);
        L0(13, channel2.f15215a);
        L0(14, channel2.f15215a);
        L0(15, channel.f15215a);
        L0(16, channel.f15215a);
        L0(17, channel.f15215a);
    }

    public void F1(boolean z2) {
        REG reg = REG.DSP1;
        int iW1 = W1(reg.f15287a);
        int i2 = reg.f15287a;
        int[] iArr = new int[1];
        iArr[0] = z2 ? iW1 | 128 : iW1 & 127;
        f2(i2, iArr);
    }

    @Override // module.sound.AudioDevice
    public void G(int i2) {
        super.G(i2);
        if (i2 == 1) {
            this.f15080t.v(AudioDevice.STORE.CUSTOMS_EQ_MODE1.ordinal());
            this.f15080t.v(AudioDevice.STORE.CUSTOMS_EQ_MODE2.ordinal());
            this.f15080t.v(AudioDevice.STORE.MODE.ordinal());
            this.f15080t.v(AudioDevice.STORE.TYPE.ordinal());
            this.f15062k = -1;
            this.f15193b1 = EQType.BIT_32;
            C();
            T0(EQType.BIT_16.f15219a);
            C();
            n0();
            h(1);
            return;
        }
        if (i2 == 3) {
            this.f15080t.v(AudioDevice.STORE.SURRON.ordinal());
            this.f15080t.v(AudioDevice.STORE.SURRLEVEL.ordinal());
            this.f15080t.v(AudioDevice.STORE.SURRGAIN.ordinal());
            this.f15080t.v(AudioDevice.STORE.SURRMOED.ordinal());
            l1(true);
            i1(1073741824, 8);
            j1(69632, 25);
            j1(73728, 12);
            j1(135168, 12);
            j1(139264, 0);
            k1(0);
            return;
        }
        if (i2 != 4) {
            if (i2 != 5) {
                return;
            }
            this.f15080t.v(AudioDevice.STORE.HPFFA.ordinal());
            this.f15080t.v(AudioDevice.STORE.HPFFB.ordinal());
            this.f15080t.v(AudioDevice.STORE.HPFRA.ordinal());
            this.f15080t.v(AudioDevice.STORE.HPFRB.ordinal());
            g0(65536, C1);
            g0(131072, C1);
            return;
        }
        this.f15080t.v(AudioDevice.STORE.P2BASSON.ordinal());
        this.f15080t.v(AudioDevice.STORE.P2BFFREQ.ordinal());
        this.f15080t.v(AudioDevice.STORE.P2BRFREQ.ordinal());
        this.f15080t.v(AudioDevice.STORE.P2BFGAIN.ordinal());
        this.f15080t.v(AudioDevice.STORE.P2BRGAIN.ordinal());
        U1(true);
        C0(65536, 0);
        C0(131072, 0);
        D0(65536, 0);
        D0(131072, 0);
    }

    public void G1(int i2, int... iArr) {
        if (this.f15072p == iArr.length) {
            I1(i2, iArr[0], N1(iArr[2]), this.R0[Math.max(0, Math.min(iArr[1], this.R0.length - 1))]);
        }
    }

    public void H1(int[] iArr) {
        int length = iArr.length / this.f15072p;
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = this.f15072p;
            G1(i2, iArr[i2 * i3], iArr[(i2 * i3) + 1], iArr[(i3 * i2) + 2]);
        }
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0039  */
    public final void I1(int i2, double d2, double d3, int i3) {
        if (i2 < 0 || i2 > 32) {
            return;
        }
        int i4 = this.Q0[i2];
        int i5 = c.f15290a[this.f15193b1.ordinal()];
        if (i5 != 1) {
            if (i5 == 2) {
                if (i4 >= 0 && i4 < 16) {
                    i4 |= 0;
                } else if (i4 < 16 || i4 >= 32) {
                    i4 = -1;
                } else {
                    i4 |= 16;
                }
            }
        } else if (i4 < 0 || i4 >= 16) {
            i4 = -1;
        } else {
            i4 |= 32;
        }
        int i6 = (!Configure.Property.EQ_CONFIG.b(false) || d2 > 1000.0d) ? i3 : i3 + 1;
        if (i4 < 0) {
            return;
        }
        double dPow = Math.pow(10.0d, ((double) i6) / 40.0d);
        double dPow2 = Math.pow(10.0d, ((double) Math.abs(i6)) / 40.0d);
        double d4 = (6.283185307179586d * d2) / 48000.0d;
        double dCos = Math.cos(d4);
        double dSin = Math.sin(d4) / ((d3 * 2.0d) / dPow2);
        double d5 = dSin / dPow;
        double d6 = d5 + 1.0d;
        int i7 = (int) (((2.0d * dCos) / d6) * 1.34217728E8d);
        int i8 = (int) (((-(1.0d - d5)) / d6) * 1.34217728E8d);
        double d7 = dPow * dSin;
        int i9 = (int) (((d7 + 1.0d) / d6) * 1.34217728E8d);
        int i10 = (int) (((dCos * (-2.0d)) / d6) * 1.34217728E8d);
        int i11 = (int) (((1.0d - d7) / d6) * 1.34217728E8d);
        f2(REG.EQCOEFSELECTOR.f15287a, i4);
        f2(REG.EQCOEF.f15287a, s0.c(i9, 3), s0.c(i9, 2), s0.c(i9, 1), s0.c(i9, 0), s0.c(i10, 3), s0.c(i10, 2), s0.c(i10, 1), s0.c(i10, 0), s0.c(i11, 3), s0.c(i11, 2), s0.c(i11, 1), s0.c(i11, 0), s0.c(i7, 3), s0.c(i7, 2), s0.c(i7, 1), s0.c(i7, 0), s0.c(i8, 3), s0.c(i8, 2), s0.c(i8, 1), s0.c(i8, 0));
    }

    public void J1() {
        if (Configure.Property.EQ_CONFIG.b(false)) {
            return;
        }
        REG reg = REG.SETUP;
        int iW1 = W1(reg.f15287a);
        int i2 = C1;
        boolean z2 = this.f15062k == 1 && !this.M && Arrays.equals(this.f15201j1, new int[]{i2, i2, i2, i2});
        if (!(z2 && (iW1 & 128) == 0) && (z2 || (iW1 & 128) == 0)) {
            return;
        }
        int i3 = reg.f15287a;
        int[] iArr = new int[1];
        iArr[0] = z2 ? iW1 | 128 : iW1 & 127;
        f2(i3, iArr);
    }

    public void K1(EQType eQType) {
        for (int i2 = 0; i2 < 16; i2++) {
            REG reg = REG.EQ_FRONT_GAIN_BASE;
            int iW1 = W1(reg.f15287a + i2);
            int i3 = reg.f15287a + i2;
            int[] iArr = new int[1];
            iArr[0] = eQType == EQType.BIT_16 ? iW1 & 191 : iW1 | 64;
            f2(i3, iArr);
        }
    }

    @Override // module.sound.AudioDevice
    public void L(int i2, int i3) {
        int i4 = this.f15072p * i2;
        int[] iArr = this.f15074q;
        int i5 = i4 + 2;
        if (iArr.length <= i5) {
            return;
        }
        iArr[i4] = i3;
        int i6 = iArr[i4 + 1];
        if (i6 < this.R0.length) {
            I1(i2, iArr[i4], N1(iArr[i5]), this.R0[i6]);
        }
        super.L(i2, i3);
        J1();
    }

    public void L1() {
        if (this.A && this.B) {
            f2(REG.SWL.f15287a, this.O0[M1(this.f15092z)]);
        }
    }

    @Override // module.sound.AudioDevice
    public void M(int i2, int i3) {
        int i4 = this.f15072p * i2;
        int i5 = i4 + 1;
        int[] iArr = this.f15074q;
        if (iArr.length <= i5 + 1) {
            return;
        }
        iArr[i5] = i3;
        I1(i2, iArr[i4], N1(iArr[i4 + 2]), this.R0[this.f15074q[i5]]);
        super.M(i2, i3);
        J1();
    }

    public int M1(int i2) {
        if (this.B) {
            return this.f15054g == 0 ? 0 : 10;
        }
        return i2;
    }

    public double N1(int i2) {
        return (((double) i2) + 6.0d) / 10.0d;
    }

    @Override // module.sound.AudioDevice
    public void O(int i2, int i3) {
        int i4 = this.f15072p * i2;
        int i5 = i4 + 2;
        int[] iArr = this.f15074q;
        if (iArr.length <= i5) {
            return;
        }
        iArr[i5] = i3;
        int i6 = iArr[i4 + 1];
        if (i6 < this.R0.length) {
            I1(i2, iArr[i4], N1(iArr[i5]), this.R0[i6]);
        }
        super.O(i2, i3);
        J1();
    }

    public int[] O1(int i2) {
        int i3 = this.f15193b1 == EQType.BIT_16 ? 16 : 32;
        int[] iArrX = X(i2);
        if (iArrX == null) {
            iArrX = this.T0;
        }
        if (iArrX == null) {
            return null;
        }
        int length = iArrX.length;
        int i4 = this.f15072p;
        if (length == i3 * i4) {
            return Arrays.copyOf(iArrX, iArrX.length);
        }
        if (length >= i3 * i4) {
            return null;
        }
        int[] iArr = new int[i4 * i3];
        System.arraycopy(iArrX, 0, iArr, 0, length);
        System.arraycopy(iArrX, 0, iArr, length, (i3 * this.f15072p) - length);
        return iArr;
    }

    public void P1(int i2, int i3) {
        Q1(i2, i3, 0.5d);
    }

    @Override // module.sound.AudioDevice
    public AudioDevice.STORE Q(int i2) {
        if (this.f15193b1 == EQType.BIT_16) {
            return super.Q(i2);
        }
        AudioDevice.STORE store = AudioDevice.STORE.EQ_CUSTOME_ONE_EX;
        if (i2 == 0) {
            return store;
        }
        switch (i2) {
            case 9:
                return AudioDevice.STORE.EQ_CUSTOME_TWO_EX;
            case 10:
                return AudioDevice.STORE.EQ_CUSTOME_THREE_EX;
            case 11:
                return AudioDevice.STORE.EQ_CUSTOME_FOUR_EX;
            case 12:
                return AudioDevice.STORE.EQ_CUSTOME_FIVE_EX;
            case 13:
                return AudioDevice.STORE.EQ_CUSTOME_SIX_EX;
            case 14:
                return AudioDevice.STORE.EQ_CUSTOME_SEVEN_EX;
            default:
                return store;
        }
    }

    public void Q1(int i2, int i3, double d2) {
        if (i3 < 0 || i3 > 3) {
            return;
        }
        int i4 = i2;
        if (i4 <= 20) {
            i4 = 20;
        }
        double d3 = (((double) i4) * 6.283185307179586d) / 48000.0d;
        double dCos = Math.cos(d3);
        double dSin = Math.sin(d3) / (d2 * 2.0d);
        double d4 = dCos + 1.0d;
        double d5 = dSin + 1.0d;
        int i5 = (int) (((d4 / 2.0d) / d5) * 1.34217728E8d);
        int i6 = (int) (((-d4) / d5) * 1.34217728E8d);
        int i7 = (int) (((dCos * 2.0d) / d5) * 1.34217728E8d);
        int i8 = (int) (((dSin - 1.0d) / d5) * 1.34217728E8d);
        f2(REG.IIRCOEFSELECTOR.f15287a, i3);
        f2(REG.IIRCOEF.f15287a, s0.c(i5, 3), s0.c(i5, 2), s0.c(i5, 1), s0.c(i5, 0), s0.c(i6, 3), s0.c(i6, 2), s0.c(i6, 1), s0.c(i6, 0), s0.c(i5, 3), s0.c(i5, 2), s0.c(i5, 1), s0.c(i5, 0), s0.c(i7, 3), s0.c(i7, 2), s0.c(i7, 1), s0.c(i7, 0), s0.c(i8, 3), s0.c(i8, 2), s0.c(i8, 1), s0.c(i8, 0));
    }

    @Override // module.sound.AudioDevice
    public void R0(boolean z2) {
        super.R0(z2);
        if (z2 || !this.w1) {
            return;
        }
        this.w1 = false;
        j(null);
        o(f.V0);
        this.f15208q1 = 0;
    }

    public void R1(int i2) {
        f2(REG.IIRCOEFSELECTOR.f15287a, i2);
    }

    public void S1(boolean z2) {
        if (this.f15196e1 == z2) {
            return;
        }
        this.f15196e1 = z2;
        REG reg = REG.MIXON;
        int iW1 = W1(reg.f15287a);
        int i2 = reg.f15287a;
        int[] iArr = new int[1];
        iArr[0] = z2 ? iW1 | 112 : iW1 & 143;
        f2(i2, iArr);
        if (g1()) {
            return;
        }
        int i3 = u0.b.D;
        if (z2 && j0(this.f15064l) != 1) {
            a(0);
        } else {
            if (z2 || j0(i3) == 1) {
                return;
            }
            a(i3);
        }
    }

    @Override // module.sound.AudioDevice
    public void T0(int i2) {
        EQType eQType;
        EQType eQType2 = EQType.BIT_16;
        if (i2 == eQType2.f15219a) {
            eQType = eQType2;
        } else {
            eQType = EQType.BIT_32;
            if (i2 != eQType.f15219a) {
                eQType = null;
            }
        }
        if (eQType != null && eQType != this.f15193b1) {
            this.f15193b1 = eQType;
            int i3 = eQType == eQType2 ? 16 : 32;
            this.f15060j = i3;
            this.f15074q = new int[i3 * this.f15072p];
            n0();
            int[] iArrO1 = O1(this.f15062k);
            int[] iArr = this.f15074q;
            System.arraycopy(iArrO1, 0, iArr, 0, iArr.length);
            K1(this.f15193b1);
            H1(iArrO1);
        }
        super.T0(i2);
    }

    public void T1(REG reg, int i2, int i3) {
        if (i2 > 7) {
            i2 = 0;
        }
        if (i3 > 12) {
            i3 = 0;
        }
        f2(reg.f15287a, (i2 << 4) | i3 | 128);
    }

    @Override // module.sound.AudioDevice
    public boolean U(int i2, y.b bVar) {
        boolean z2 = false;
        if (i2 == 9) {
            int[] iArr = this.f15074q;
            for (int i3 = 0; i3 < this.f15060j; i3++) {
                r1(bVar, i2, i3, iArr[(this.f15072p * i3) + 1] + x0(i3));
            }
        } else if (i2 == 10) {
            r1(bVar, i2, this.f15062k);
        } else if (i2 == 18) {
            int[] iArr2 = this.f15074q;
            for (int i4 = 0; i4 < this.f15060j; i4++) {
                r1(bVar, i2, i4, iArr2[this.f15072p * i4]);
            }
        } else if (i2 == 20) {
            int[] iArr3 = this.f15074q;
            for (int i5 = 0; i5 < this.f15060j; i5++) {
                r1(bVar, i2, i5, iArr3[(this.f15072p * i5) + 2] + y0(i5));
            }
        } else if (i2 == 58) {
            r1(bVar, i2, this.B ? 1 : 0);
        } else if (i2 != 59) {
            switch (i2) {
                case 26:
                    r1(bVar, i2, this.f15092z);
                    break;
                case 27:
                    r1(bVar, i2, 0, this.f15205n1);
                    r1(bVar, i2, 256, this.f15206o1);
                    break;
                case 28:
                    r1(bVar, i2, this.f15198g1 ? 1 : 0);
                    break;
                case 29:
                    r1(bVar, i2, 65536, this.f15199h1[1]);
                    r1(bVar, i2, 131072, this.f15200i1[1]);
                    break;
                case 30:
                    r1(bVar, i2, 65536, this.f15199h1[0]);
                    r1(bVar, i2, 131072, this.f15200i1[0]);
                    break;
                case 31:
                    r1(bVar, i2, 65552, this.f15201j1[0]);
                    r1(bVar, i2, 65568, this.f15201j1[1]);
                    r1(bVar, i2, WifiStateMachine.CMD_STATIC_IP_FAILURE, this.f15201j1[2]);
                    r1(bVar, i2, 131104, this.f15201j1[3]);
                    break;
                case 32:
                    r1(bVar, i2, this.f15197f1 ? 1 : 0);
                    break;
                case 33:
                    r1(bVar, i2, this.f15194c1);
                    break;
                case 34:
                    r1(bVar, i2, 69632, this.f15204m1[0]);
                    r1(bVar, i2, 73728, this.f15204m1[1]);
                    r1(bVar, i2, 135168, this.f15204m1[2]);
                    r1(bVar, i2, 139264, this.f15204m1[3]);
                    break;
                case 35:
                    r1(bVar, i2, 16, this.f15202k1);
                    r1(bVar, i2, 32, this.f15203l1);
                    break;
                case 36:
                    int[] iArr4 = this.f15199h1;
                    r1(bVar, i2, 65536, iArr4[0], iArr4[1]);
                    int[] iArr5 = this.f15200i1;
                    r1(bVar, i2, 131072, iArr5[0], iArr5[1]);
                    break;
                case 37:
                    r1(bVar, i2, this.f15193b1.f15219a);
                    break;
                case 38:
                    r1(bVar, i2, this.A ? 1 : 0);
                    break;
            }
        } else {
            r1(bVar, i2, this.r1 ? 1 : 0);
        }
        z2 = true;
        return z2 ? z2 : super.U(i2, bVar);
    }

    public void U1(boolean z2) {
        REG reg = REG.SETUP;
        int iW1 = W1(reg.f15287a);
        int i2 = reg.f15287a;
        int[] iArr = new int[1];
        iArr[0] = z2 ? iW1 & 191 : iW1 | 64;
        f2(i2, iArr);
    }

    public int[] V1(int i2, int i3) {
        return this.f15195d1.e(i3, B1, true, REG.READBACKH.f15287a, REG.READBACKL.f15287a, s0.c(i2, 1), s0.c(i2, 0));
    }

    @Override // module.sound.AudioDevice
    @SuppressLint({"SuspiciousIndentation"})
    public void W0() {
        super.W0();
        int[] iArrA = s0.A(App.c(), g.f.n(11) ? R.raw.s7870_32107_init_data : R.raw.c32107_init_data, 16);
        this.L0 = iArrA;
        iArrA[1] = 28;
        f2(REG.RESET.f15287a, 129);
        int length = this.L0.length / 2;
        int iF2 = 0;
        do {
            if (iF2 < 0) {
                try {
                    Thread.sleep(100L);
                } catch (InterruptedException e2) {
                    e2.printStackTrace();
                }
            }
            for (int i2 = 0; i2 < length; i2++) {
                int[] iArr = this.L0;
                int i3 = i2 * 2;
                int i4 = iArr[i3];
                int i5 = iArr[i3 + 1];
                if (!(i4 == 65535 && i5 == 255) && (iF2 = f2(i4, i5)) < 0) {
                    break;
                }
            }
        } while (iF2 < 0);
        w0(this.f15062k);
        H1(this.f15074q);
        P1(this.f15201j1[0], HPF.FA.f15225a);
        P1(this.f15201j1[1], HPF.FB.f15225a);
        P1(this.f15201j1[2], HPF.RA.f15225a);
        P1(this.f15201j1[3], HPF.RB.f15225a);
        U1(this.f15198g1);
        int[] iArr2 = this.f15199h1;
        B0(65536, iArr2[0], iArr2[1]);
        int[] iArr3 = this.f15200i1;
        B0(131072, iArr3[0], iArr3[1]);
        l1(this.f15197f1);
        d2(IIR.A, this.f15202k1);
        d2(IIR.B, this.f15203l1);
        k1(this.f15194c1);
        D1(this.f15197f1);
        l(this.f15052f ? 1 : 0);
        j(null);
        a(u0.b.D);
        Z1(this.A);
        o(this.f15092z);
        b2(REG.SUBHPF, this.f15206o1);
        b2(REG.SUBLPF, this.f15205n1);
        a2(this.r1);
        J1();
        y1(f.C0);
    }

    public int W1(int i2) {
        return V1(i2, 1)[0];
    }

    @Override // module.sound.AudioDevice
    public void X0(int... iArr) {
        if (iArr == null || iArr.length != 2) {
            return;
        }
        f2(2048, iArr[0]);
        f2(GLES10.GL_EXP2, iArr[1]);
    }

    public void X1(boolean z2) {
        this.v1 = z2;
        if (j0(u0.b.D) == 1) {
            int i2 = REG.IISINPOUT.f15287a;
            int[] iArr = new int[1];
            iArr[0] = z2 ? 136 : 135;
            f2(i2, iArr);
        }
    }

    public void Y1(int i2) {
        f2(REG.SETUP.f15287a, i2);
    }

    public void Z1(boolean z2) {
        REG reg = REG.SETUP;
        int iW1 = W1(reg.f15287a);
        int i2 = reg.f15287a;
        int[] iArr = new int[1];
        iArr[0] = z2 ? iW1 & 223 : iW1 | 32;
        f2(i2, iArr);
    }

    /* JADX WARN: Code duplicated, block: B:37:0x006c  */
    /* JADX WARN: Code duplicated, block: B:38:0x0099  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // y0.e
    @SuppressLint({"SuspiciousIndentation"})
    public void a(int i2) {
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        String name;
        Class cls;
        g gVar;
        if (h0.c.G == 1) {
            i2 = 2;
        }
        int i3 = u0.b.E;
        if (i3 >= 0) {
            i2 = i3;
        }
        this.f15064l = i2;
        int i4 = this.f15048d.get(i2) & 15;
        if (i4 < 0) {
            i4 = CHANNEL.MUSIC.f15215a;
        }
        boolean z6 = i4 == CHANNEL.MUSIC.f15215a;
        c4 c4Var = j4.f16466d;
        if (c4Var == null || !c4Var.l3()) {
            z2 = false;
            z3 = z6;
        } else {
            z2 = true;
            z3 = false;
        }
        if (!z2 && i2 == 1 && (gVar = e.f2254a) != null && ((Chip) gVar).M()) {
            z2 = true;
            z3 = false;
        }
        boolean z7 = z3;
        boolean z8 = z3;
        if (this.f15086w) {
            if (i2 == 2) {
                z7 = false;
            } else {
                if (!z3) {
                    boolean z9 = !z2;
                    z4 = z3 ? 1 : 0;
                    z5 = z9;
                }
                name = AudioManager.class.getName();
                cls = Boolean.TYPE;
                if (d0.c(name, "setVoiceSwitch2iis", cls) != null) {
                    d0.e(AudioManager.class.getName(), this.f15207p1, "setVoiceSwitch2iis", new Class[]{cls}, Boolean.valueOf(z5));
                    d0.e(AudioManager.class.getName(), this.f15207p1, "setAudioSwitch2iis", new Class[]{cls}, Boolean.valueOf(z5));
                } else {
                    String name2 = AudioManager.class.getName();
                    AudioManager audioManager = this.f15207p1;
                    Class cls2 = Integer.TYPE;
                    d0.e(name2, audioManager, "setWiredDeviceConnectionState", new Class[]{cls2, cls2, String.class, String.class}, 8, Integer.valueOf(!z5), ProxyProperties.LOCAL_EXCL_LIST, ProxyProperties.LOCAL_EXCL_LIST);
                }
                z8 = z4;
            }
            z4 = z7 ? 1 : 0;
            z5 = z7;
            name = AudioManager.class.getName();
            cls = Boolean.TYPE;
            if (d0.c(name, "setVoiceSwitch2iis", cls) != null) {
                d0.e(AudioManager.class.getName(), this.f15207p1, "setVoiceSwitch2iis", new Class[]{cls}, Boolean.valueOf(z5));
                d0.e(AudioManager.class.getName(), this.f15207p1, "setAudioSwitch2iis", new Class[]{cls}, Boolean.valueOf(z5));
            } else {
                String name3 = AudioManager.class.getName();
                AudioManager audioManager2 = this.f15207p1;
                Class cls3 = Integer.TYPE;
                d0.e(name3, audioManager2, "setWiredDeviceConnectionState", new Class[]{cls3, cls3, String.class, String.class}, 8, Integer.valueOf(!z5), ProxyProperties.LOCAL_EXCL_LIST, ProxyProperties.LOCAL_EXCL_LIST);
            }
            z8 = z4;
        }
        F1(z8);
        if (this.v1 && z8) {
            int i5 = REG.IISINPOUT.f15287a;
            int[] iArr = new int[1];
            iArr[0] = i2 == 17 ? 136 : 135;
            f2(i5, iArr);
        }
        f2(REG.CHANNEL.f15287a, i4);
        int i6 = f.f18090z0[i2];
        if (i6 < 0 || i6 >= 48) {
            return;
        }
        m(i6, f.f18084w0[i6]);
    }

    public void a2(boolean z2) {
        REG reg = REG.SUBLPF;
        int iW1 = W1(reg.f15287a);
        int i2 = reg.f15287a;
        int[] iArr = new int[1];
        iArr[0] = z2 ? iW1 & 191 : iW1 | 64;
        f2(i2, iArr);
    }

    public void b2(REG reg, int i2) {
        f2(reg.f15287a, i2 | (W1(reg.f15287a) & 240));
    }

    @Override // module.sound.AudioDevice
    public int[] c1() {
        int i2;
        int[] iArr = new int[16];
        int[] iArrV1 = V1(REG.SPECTRUM.f15287a, 32);
        int i3 = 0;
        boolean z2 = false;
        while (true) {
            if (i3 >= 16) {
                break;
            }
            int i4 = i3 * 2;
            iArr[i3] = ((255 & iArrV1[i4]) << 8) | (iArrV1[i4 + 1] & 255);
            z2 = z2 || iArr[i3] >= 5;
            i3++;
        }
        boolean z3 = z2 || e0();
        if ((Configure.Property.BLUETOOTH_TYPE.d(0) == 7 && ((i2 = u0.b.D) == 3 || i2 == 2)) || u0.b.D == 1) {
            z3 = true;
        }
        if (this.J) {
            if (z3) {
                if (this.w1) {
                    this.w1 = false;
                    j(null);
                    o(f.V0);
                }
                this.f15208q1 = 0;
            } else {
                int i5 = this.f15208q1;
                if (i5 < 7) {
                    this.f15208q1 = i5 + 1;
                }
                if (this.f15208q1 == 6) {
                    this.w1 = true;
                    int[] iArr2 = this.P0;
                    int length = iArr2.length - 1;
                    f2(REG.FL.f15287a, iArr2[length]);
                    f2(REG.FR.f15287a, this.P0[length]);
                    f2(REG.RL.f15287a, this.P0[length]);
                    f2(REG.RR.f15287a, this.P0[length]);
                    f2(REG.SWL.f15287a, this.O0[0]);
                }
            }
        }
        int i6 = u0.b.D == 4 ? DhcpPacket.MAX_LENGTH : 255;
        int[] iArr3 = new int[7];
        for (int i7 = 0; i7 < 7; i7++) {
            iArr3[i7] = (int) ((iArr[(i7 * 2) + 2] * i6) / 65535.0f);
        }
        return iArr3;
    }

    public void c2(int i2, int i3) {
        if (this.f15197f1) {
            int i4 = this.f15194c1 == 0 ? (i3 * 384) / 100 : (i3 * 192) / 100;
            int iC = s0.c(i4, 1);
            int iC2 = s0.c(i4, 0);
            switch (i2) {
                case 69632:
                    f2(REG.TIME_ALIGNMENT_FL.f15287a, iC, iC2);
                    break;
                case 73728:
                    f2(REG.TIME_ALIGNMENT_FR.f15287a, iC, iC2);
                    break;
                case 135168:
                    f2(REG.TIME_ALIGNMENT_RL.f15287a, iC, iC2);
                    f2(REG.TIME_ALIGNMENT_RL2.f15287a, iC, iC2);
                    break;
                case 139264:
                    f2(REG.TIME_ALIGNMENT_RR.f15287a, iC, iC2);
                    f2(REG.TIME_ALIGNMENT_RR2.f15287a, iC, iC2);
                    break;
                case 1073741824:
                    f2(REG.TIME_ALIGNMENT_FL.f15287a, iC, iC2);
                    f2(REG.TIME_ALIGNMENT_FR.f15287a, iC, iC2);
                    f2(REG.TIME_ALIGNMENT_RL.f15287a, iC, iC2);
                    f2(REG.TIME_ALIGNMENT_RR.f15287a, iC, iC2);
                    f2(REG.TIME_ALIGNMENT_RL2.f15287a, iC, iC2);
                    f2(REG.TIME_ALIGNMENT_RR2.f15287a, iC, iC2);
                    break;
            }
        }
    }

    public void d2(IIR iir, int i2) {
        if (this.f15197f1) {
            R1(iir.f15229a);
            e2(i2 - 10);
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // module.sound.AudioDevice, y0.e
    public void e() {
        super.e();
        d.f2463b.a(this.x1, this.f15050e ? 1 : 0);
    }

    @Override // module.sound.AudioDevice
    public void e1(int i2, int i3) {
        if (this.A) {
            REG reg = null;
            if (i2 == 0 && this.f15205n1 != i3) {
                reg = REG.SUBLPF;
                this.f15205n1 = i3;
            } else if (i2 == 256 && this.f15206o1 != i3) {
                reg = REG.SUBHPF;
                this.f15206o1 = i3;
            }
            if (reg != null) {
                b2(reg, i3);
                super.e1(i2, i3);
            }
        }
    }

    public void e2(int i2) {
        int iPow = (int) (Math.pow(10.0d, ((double) i2) / 20.0d) * 1.34217728E8d);
        int[] iArrA = s0.a(20);
        iArrA[0] = s0.c(iPow, 3);
        iArrA[1] = s0.c(iPow, 2);
        iArrA[2] = s0.c(iPow, 1);
        iArrA[3] = s0.c(iPow, 0);
        f2(REG.IIRCOEF.f15287a, iArrA);
    }

    @Override // module.sound.AudioDevice, y0.e
    public void f() {
        d.f2463b.d(this.x1);
        super.f();
    }

    @Override // module.sound.AudioDevice
    public void f1(boolean z2) {
        if (this.A == z2) {
            return;
        }
        this.A = z2;
        Z1(z2);
        super.f1(z2);
    }

    public int f2(int i2, int... iArr) {
        return this.f15195d1.d(B1, new int[]{s0.c(i2, 1), s0.c(i2, 0)}, iArr);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:22:0x0051  */
    @Override // module.sound.AudioDevice
    public void g0(int i2, int i3) {
        HPF hpf;
        switch (i2) {
            case 65536:
                g0(65552, i3);
                g0(65568, i3);
                hpf = null;
                break;
            case 65552:
                int[] iArr = this.f15201j1;
                if (iArr[0] != i3) {
                    hpf = HPF.FA;
                    iArr[0] = i3;
                } else {
                    hpf = null;
                }
                break;
            case 65568:
                int[] iArr2 = this.f15201j1;
                if (iArr2[1] != i3) {
                    hpf = HPF.FB;
                    iArr2[1] = i3;
                } else {
                    hpf = null;
                }
                break;
            case 131072:
                g0(WifiStateMachine.CMD_STATIC_IP_FAILURE, i3);
                g0(131104, i3);
                hpf = null;
                break;
            case WifiStateMachine.CMD_STATIC_IP_FAILURE /* 131088 */:
                int[] iArr3 = this.f15201j1;
                if (iArr3[2] != i3) {
                    hpf = HPF.RA;
                    iArr3[2] = i3;
                } else {
                    hpf = null;
                }
                break;
            case 131104:
                int[] iArr4 = this.f15201j1;
                if (iArr4[3] != i3) {
                    hpf = HPF.RB;
                    iArr4[3] = i3;
                } else {
                    hpf = null;
                }
                break;
            default:
                hpf = null;
                break;
        }
        if (hpf != null) {
            P1(i3, hpf.f15225a);
            super.g0(i2, i3);
        }
        J1();
    }

    @Override // module.sound.AudioDevice
    public boolean g1() {
        return this.u1;
    }

    @Override // module.sound.AudioDevice, y0.e
    public void h(int i2) {
        super.h(i2);
        J1();
    }

    @Override // module.sound.AudioDevice
    public void i1(int i2, int i3) {
        if (i3 < 0 || i3 > 20 || !this.f15197f1) {
            return;
        }
        IIR iir = null;
        if (i2 == 16 && this.f15202k1 != i3) {
            iir = IIR.A;
            this.f15202k1 = i3;
        } else if (i2 == 32 && this.f15203l1 != i3) {
            iir = IIR.B;
            this.f15203l1 = i3;
        } else if (i2 == 1073741824) {
            if (this.f15202k1 != i3) {
                this.f15202k1 = i3;
                d2(IIR.A, i3);
            }
            if (this.f15203l1 != i3) {
                d2(IIR.B, i3);
                this.f15203l1 = i3;
            }
            super.i1(i2, i3);
        }
        if (iir != null) {
            d2(iir, i3);
            super.i1(i2, i3);
        }
    }

    @Override // module.sound.AudioDevice, y0.e
    public void j(int[] iArr) {
        if (!this.f15050e || this.w1) {
            return;
        }
        int iA = o0.a(f.L0, 0, 16);
        int iA2 = o0.a(f.M0, 0, 16);
        if (h0.c.G != 0 && u0.b.j2) {
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
        f2(REG.FL.f15287a, this.P0[iMax]);
        f2(REG.FR.f15287a, this.P0[iMax2]);
        f2(REG.RL.f15287a, this.P0[iMax3]);
        f2(REG.RR.f15287a, this.P0[iMax4]);
        super.j(null);
    }

    @Override // module.sound.AudioDevice
    public int j0(int i2) {
        int i3 = this.f15048d.get(i2);
        if (i3 < 0) {
            i3 = CHANNEL.MUSIC.f15215a;
        }
        return i3 == CHANNEL.MUSIC.f15215a ? 1 : 0;
    }

    @Override // module.sound.AudioDevice
    public void j1(int i2, int i3) {
        if (this.f15197f1) {
            boolean z2 = false;
            if (i3 > 100 || i3 < 0) {
                i3 = 0;
            }
            switch (i2) {
                case 69632:
                    int[] iArr = this.f15204m1;
                    boolean z3 = i3 != iArr[0];
                    iArr[0] = i3;
                    z2 = z3;
                    break;
                case 73728:
                    int[] iArr2 = this.f15204m1;
                    z2 = i3 != iArr2[1];
                    iArr2[1] = i3;
                    break;
                case 135168:
                    int[] iArr3 = this.f15204m1;
                    z2 = i3 != iArr3[2];
                    iArr3[2] = i3;
                    break;
                case 139264:
                    int[] iArr4 = this.f15204m1;
                    z2 = i3 != iArr4[3];
                    iArr4[3] = i3;
                    break;
                case 1073741824:
                    int[] iArr5 = this.f15204m1;
                    z2 = (i3 == iArr5[0] && i3 == iArr5[1] && i3 == iArr5[2] && i3 == iArr5[3]) ? false : true;
                    j1(69632, i3);
                    j1(73728, i3);
                    j1(135168, i3);
                    j1(139264, i3);
                    break;
            }
            c2(i2, i3);
            if (z2) {
                Log.e("c32107", "   <<<>>>> flush data start  surroundLevel :  " + Arrays.toString(this.f15204m1));
                H0(AudioDevice.STORE.SURRLEVEL, this.f15204m1);
                super.j1(i2, i3);
            }
        }
    }

    @Override // module.sound.AudioDevice
    public void k1(int i2) {
        if (this.f15197f1) {
            REG reg = REG.DSP1;
            int iW1 = W1(reg.f15287a);
            int i3 = reg.f15287a;
            int[] iArr = new int[1];
            iArr[0] = i2 != 0 ? iW1 | 8 : iW1 & i.a.Theme_preferenceHeaderPanelStyle;
            f2(i3, iArr);
            if (this.f15194c1 == i2) {
                return;
            }
            this.f15194c1 = i2;
            super.k1(i2);
        }
    }

    @Override // module.sound.AudioDevice, y0.e
    public void l(int i2) {
        int iW1 = W1(REG.SETUP.f15287a);
        boolean z2 = i2 == 1;
        boolean z3 = z2 != this.f15052f;
        this.f15052f = z2;
        super.l(i2);
        int i3 = u0.b.D == 17 ? 30 : 0;
        if (!this.f15052f) {
            f2(REG.VOL_FL_BOOST.f15287a, 128 - (A1 + i3));
            f2(REG.VOL_FR_BOOST.f15287a, 128 - (A1 + i3));
            f2(REG.VOL_RL_BOOST.f15287a, 128 - (A1 + i3));
            f2(REG.VOL_RR_BOOST.f15287a, 128 - (A1 + i3));
            f2(REG.VOL_SL_BOOST.f15287a, 128 - (A1 + i3));
            if (z3) {
                s0.C(200L);
            }
            Y1(z2 ? iW1 & i.a.Theme_preferenceHeaderPanelStyle : iW1 | 8);
            return;
        }
        Y1(z2 ? iW1 & i.a.Theme_preferenceHeaderPanelStyle : iW1 | 8);
        int i4 = A1 + (AudioDevice.H0 ? F1[this.f15054g] : 12) + i3;
        int i5 = 128 - i4;
        f2(REG.VOL_FL_BOOST.f15287a, i5);
        f2(REG.VOL_FR_BOOST.f15287a, i5);
        f2(REG.VOL_RL_BOOST.f15287a, i5);
        f2(REG.VOL_RR_BOOST.f15287a, i5);
        f2(REG.VOL_SL_BOOST.f15287a, i5);
        f2(1794, ((i4 - A1) / 2) | 144);
    }

    @Override // module.sound.AudioDevice
    public void l1(boolean z2) {
        REG reg = REG.IIR_DIRCOEF_SET;
        int iW1 = W1(reg.f15287a);
        int i2 = reg.f15287a;
        int[] iArr = new int[1];
        iArr[0] = z2 ? iW1 | 128 : iW1 & 127;
        f2(i2, iArr);
        REG reg2 = REG.DSP3;
        int iW2 = W1(reg2.f15287a);
        int i3 = reg2.f15287a;
        int[] iArr2 = new int[1];
        iArr2[0] = z2 ? iW2 | 32 : iW2 & 207;
        f2(i3, iArr2);
        if (this.f15197f1 == z2) {
            return;
        }
        this.f15197f1 = z2;
        D1(z2);
        super.l1(z2);
    }

    @Override // y0.e
    public void m(int i2, int i3) {
        int i4;
        if (i2 < 0 || i2 >= 48 || (i4 = u0.b.D) < 0 || i4 >= 20 || f.f18090z0[i4] != i2) {
            return;
        }
        int iA = o0.a(i3, 0, 20);
        if (i4 == 1) {
            iA = (int) (((double) iA) * 1.5d);
        } else if ((i4 == 2 || i4 == 3) && s0.o("sys.fyt.bluetooth_type", "0").equals("7")) {
            iA += 8;
        }
        f2(REG.SB.f15287a, iA);
    }

    @Override // module.sound.AudioDevice
    public void m0() {
        super.m0();
        AudioDevice.STORE store = AudioDevice.STORE.TYPE;
        EQType eQType = EQType.BIT_16;
        EQType eQType2 = Y(store, eQType.f15219a) == eQType.f15219a ? eQType : EQType.BIT_32;
        this.f15193b1 = eQType2;
        int i2 = eQType2 == eQType ? 16 : 32;
        this.f15060j = i2;
        this.f15074q = new int[i2 * this.f15072p];
        this.f15199h1[0] = Y(AudioDevice.STORE.P2BFFREQ, 0);
        this.f15199h1[1] = Y(AudioDevice.STORE.P2BFGAIN, 0);
        this.f15200i1[0] = Y(AudioDevice.STORE.P2BRFREQ, 0);
        this.f15200i1[1] = Y(AudioDevice.STORE.P2BRGAIN, 0);
        this.f15197f1 = Y(AudioDevice.STORE.SURRON, 1) == 1;
        this.f15196e1 = Y(AudioDevice.STORE.MIXON, 0) == 1;
        this.f15198g1 = Y(AudioDevice.STORE.P2BASSON, 1) == 1;
        this.f15194c1 = Y(AudioDevice.STORE.SURRMOED, this.f15194c1);
        this.f15204m1 = Z(AudioDevice.STORE.SURRLEVEL, this.f15204m1);
        this.f15201j1[0] = Y(AudioDevice.STORE.HPFFA, C1);
        this.f15201j1[1] = Y(AudioDevice.STORE.HPFFB, C1);
        this.f15201j1[2] = Y(AudioDevice.STORE.HPFRA, C1);
        this.f15201j1[3] = Y(AudioDevice.STORE.HPFRB, C1);
        AudioDevice.STORE store2 = AudioDevice.STORE.IIRA;
        this.f15202k1 = Y(store2, this.f15202k1);
        this.f15203l1 = Y(store2, this.f15203l1);
        this.f15205n1 = Y(AudioDevice.STORE.SBWLFREQ, this.f15205n1);
        this.f15206o1 = Y(AudioDevice.STORE.SBWHFREQ, this.f15206o1);
        this.r1 = Y(AudioDevice.STORE.SUBWOOF_PHASE, this.r1 ? 1 : 0) == 1;
    }

    @Override // module.sound.AudioDevice, y0.e
    public void o(int i2) {
        if (this.A) {
            int iM1 = M1(o0.a(f.V0, 0, 10));
            f2(REG.SWL.f15287a, this.O0[this.D ? 0 : iM1]);
            if (this.B) {
                return;
            }
            super.o(iM1);
        }
    }

    @Override // module.sound.AudioDevice
    public void o0(int i2) {
        int i3 = this.f15193b1 == EQType.BIT_16 ? 16 : 32;
        this.f15060j = i3;
        int i4 = i3 * this.f15072p;
        int[] iArrCopyOf = new int[i4];
        int[] iArrI = this.f15080t.i(Q(i2).ordinal());
        if (iArrI == null || iArrI.length != i4) {
            int[] iArr = this.T0;
            int length = iArr.length;
            Log.e("c32107", "   loadCustomData  size :  " + length + "    band  *  eqParamNum  = " + (this.f15060j * this.f15072p) + " customMode: " + i2);
            int i5 = this.f15060j;
            int i6 = this.f15072p;
            if (length == i5 * i6) {
                System.arraycopy(iArr, 0, iArrCopyOf, 0, length);
            } else if (length < i5 * i6) {
                System.arraycopy(iArr, 0, iArrCopyOf, 0, length);
                System.arraycopy(iArr, 0, iArrCopyOf, length, (this.f15060j * this.f15072p) - length);
            }
        } else {
            iArrCopyOf = Arrays.copyOf(iArrI, iArrI.length);
        }
        Z0(i2, iArrCopyOf);
    }

    @Override // module.sound.AudioDevice
    public int p0() {
        return 64;
    }

    @Override // module.sound.AudioDevice
    public int q0() {
        return 240;
    }

    @Override // module.sound.AudioDevice
    public void r0(int i2) {
        S1(i2 != 0);
        int iMax = Math.max(0, Math.min(i2, this.N0.length - 1));
        this.f15056h = iMax;
        f2(REG.MIXVOL.f15287a, iMax == 0 ? this.N0[iMax] : Math.max(p0(), Math.min(this.N0[iMax] - F0(), q0())));
    }

    @Override // module.sound.AudioDevice
    public int u1() {
        return super.u1();
    }

    @Override // module.sound.AudioDevice
    public void v0(boolean z2) {
        super.v0(z2);
        if (this.f15050e) {
            if (!z2) {
                if (this.w1) {
                    return;
                }
                j(null);
                o(f.V0);
                return;
            }
            int i2 = REG.FL.f15287a;
            int[] iArr = this.P0;
            f2(i2, iArr[iArr.length - 1]);
            int i3 = REG.FR.f15287a;
            int[] iArr2 = this.P0;
            f2(i3, iArr2[iArr2.length - 1]);
            int i4 = REG.RL.f15287a;
            int[] iArr3 = this.P0;
            f2(i4, iArr3[iArr3.length - 1]);
            int i5 = REG.RR.f15287a;
            int[] iArr4 = this.P0;
            f2(i5, iArr4[iArr4.length - 1]);
            f2(REG.SWL.f15287a, this.O0[0]);
        }
    }

    @Override // module.sound.AudioDevice
    public void w0(int i2) {
        int i3;
        int[] iArrO1 = O1(i2);
        if (E1(this.f15074q, i2)) {
            int i4 = 0;
            System.arraycopy(iArrO1, 0, this.f15074q, 0, iArrO1.length);
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
                iArr2[i4] = iArrO1[i4 * i6];
                iArr[i4] = iArrO1[(i4 * i6) + 1];
                iArr3[i4] = iArrO1[(i6 * i4) + 2];
                i4++;
            }
            h.H(iArr, iArr2, iArr3, i3, this);
        }
        H1(iArrO1);
    }

    @Override // module.sound.AudioDevice
    public void y() {
        if (!this.f15196e1) {
            REG reg = REG.MIXON;
            f2(reg.f15287a, W1(reg.f15287a) | 112);
        }
        REG reg2 = REG.BEEP_SETUP;
        f2(reg2.f15287a, 5);
        s0.C(50L);
        f2(reg2.f15287a, 4);
        if (this.f15196e1) {
            return;
        }
        REG reg3 = REG.MIXON;
        f2(reg3.f15287a, W1(reg3.f15287a) & 143);
    }
}
