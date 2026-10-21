package module.sound;

import a.i;
import android.animation.ValueAnimator;
import android.app.FragmentTransaction;
import android.bluetooth.BluetoothClass;
import android.content.Context;
import android.graphics.Paint;
import android.media.AudioManager;
import android.net.ProxyProperties;
import android.net.dhcp.DhcpPacket;
import android.net.wifi.WifiStateMachine;
import android.opengl.GLES10;
import android.os.Process;
import android.text.format.DateUtils;
import android.util.Log;
import android.view.InputDevice;
import android.view.Window;
import app.App;
import base.Configure;
import chip.Chip;
import com.syu.jni.ToolsJni;
import com.syu.ms.R;
import g.e;
import g.g;
import h0.c;
import java.util.Arrays;
import n0.c4;
import n0.j4;
import o1.d0;
import o1.h0;
import o1.n;
import o1.o0;
import o1.s0;
import y0.f;
import y0.h;

/* JADX INFO: loaded from: classes2.dex */
public class C32107S extends AudioDevice {
    public static int k2 = 0;
    public static int l2 = 64;
    public static int m2 = 52;
    public static int n2 = 20;
    public static int o2 = 11;
    public static int p2 = 2;
    public static int[] q2 = {0, 26, 25, 24, 23, 21, 20, 19, 18, 17, 16, 15, 14, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
    public final int[][] A1;
    public final int[][] B1;
    public final int[][] C1;
    public final int[][] D1;
    public final int[][] E1;
    public final int[] F1;
    public final int[] G1;
    public EQType H1;
    public final String I0;
    public int I1;
    public final int J0;
    public n J1;
    public int[] K0;
    public boolean K1;
    public int[] L0;
    public boolean L1;
    public final int[] M0;
    public boolean M1;
    public int[] N0;
    public int[] N1;
    public int[] O0;
    public int[] O1;
    public int[] P0;
    public int[] P1;
    public int[] Q0;
    public int[] Q1;
    public int[] R0;
    public int R1;
    public int[] S0;
    public int S1;
    public final int[] T0;
    public int[] T1;
    public final int[] U0;
    public int[] U1;
    public final int[] V0;
    public int[] V1;
    public final int[] W0;
    public int W1;
    public final int[] X0;
    public int X1;
    public final int[] Y0;
    public AudioManager Y1;
    public final int[] Z0;
    public int Z1;

    /* JADX INFO: renamed from: a1, reason: collision with root package name */
    public final int[] f15291a1;
    public Boolean a2;

    /* JADX INFO: renamed from: b1, reason: collision with root package name */
    public int[] f15292b1;
    public Integer b2;

    /* JADX INFO: renamed from: c1, reason: collision with root package name */
    public int[] f15293c1;
    public boolean c2;

    /* JADX INFO: renamed from: d1, reason: collision with root package name */
    public int[] f15294d1;
    public boolean d2;

    /* JADX INFO: renamed from: e1, reason: collision with root package name */
    public final int[] f15295e1;
    public boolean e2;

    /* JADX INFO: renamed from: f1, reason: collision with root package name */
    public final int[] f15296f1;
    public int f2;

    /* JADX INFO: renamed from: g1, reason: collision with root package name */
    public final int[] f15297g1;
    public int g2;

    /* JADX INFO: renamed from: h1, reason: collision with root package name */
    public final int[][] f15298h1;
    public boolean h2;

    /* JADX INFO: renamed from: i1, reason: collision with root package name */
    public final int[] f15299i1;
    public boolean i2;

    /* JADX INFO: renamed from: j1, reason: collision with root package name */
    public final int[] f15300j1;
    public final Runnable j2;

    /* JADX INFO: renamed from: k1, reason: collision with root package name */
    public final int[] f15301k1;

    /* JADX INFO: renamed from: l1, reason: collision with root package name */
    public final int[] f15302l1;

    /* JADX INFO: renamed from: m1, reason: collision with root package name */
    public final int[] f15303m1;

    /* JADX INFO: renamed from: n1, reason: collision with root package name */
    public final int[] f15304n1;

    /* JADX INFO: renamed from: o1, reason: collision with root package name */
    public final int[][] f15305o1;

    /* JADX INFO: renamed from: p1, reason: collision with root package name */
    public final int[][] f15306p1;

    /* JADX INFO: renamed from: q1, reason: collision with root package name */
    public final int[][] f15307q1;
    public final int[][] r1;
    public final int[] s1;
    public final int[] t1;
    public final int[] u1;
    public final double[] v1;
    public final int[][] w1;
    public final int[][] x1;
    public final int[][] y1;
    public final int[][] z1;

    public enum CHANNEL {
        MUSIC(0),
        TV(1),
        DVD(2),
        RADIO(3),
        AUX(4);


        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f15314a;

        CHANNEL(int i2) {
            this.f15314a = i2;
        }
    }

    public enum EQType {
        BIT_16(0),
        BIT_27(1);


        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f15318a;

        EQType(int i2) {
            this.f15318a = i2;
        }
    }

    public enum HPF {
        FA(0),
        FB(1),
        RA(2),
        RB(3);


        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f15324a;

        HPF(int i2) {
            this.f15324a = i2;
        }
    }

    public enum IIR {
        A(6),
        B(7);


        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f15328a;

        IIR(int i2) {
            this.f15328a = i2;
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
        public int f15338a;

        P2BFreq(int i2) {
            this.f15338a = i2;
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
        public int f15353a;

        P2BGain(int i2) {
            this.f15353a = i2;
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
        DSP1(515),
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
        public int f15384a;

        REG(int i2) {
            this.f15384a = i2;
        }
    }

    public enum REG_ADI {
        EQCOEF(0),
        MUTE_SW_ADDR1(55),
        MUTE_SW_ADDR2(56),
        PHAT_GAIN_ADDR(57),
        PHAT_FREQ_ADDR(58),
        SPHAT_GAIN_ADDR(69),
        SPHAT_GAIN_ADDR2(70),
        SPHAT_GAIN_ADDR3(71),
        SPHAT_FREQ_ADDR(109),
        SPEC_EFFACT_ADDR(111),
        VOL_ADDR1(112),
        VOL_ADDR2(113),
        BASS_ENHANCE_ADDR0(114),
        BASS_ENHANCE_ADDR1(122),
        BASS_ENHANCE_ADDR2(115),
        BASS_ENHANCE_ADDR3(116),
        BASS_ENHANCE_ADDR4(117),
        BASS_ENHANCE_ADDR5(118),
        BASS_ENHANCE_ADDR6(119),
        BASS_ENHANCE_ADDR20(123),
        BASS_ENHANCE_ADDR21(131),
        BASS_ENHANCE_ADDR22(124),
        BASS_ENHANCE_ADDR23(125),
        BASS_ENHANCE_ADDR24(126),
        BASS_ENHANCE_ADDR25(127),
        BASS_ENHANCE_ADDR26(128),
        SWITCH_BASS_ENHANCE_ADDR_F(132),
        SWITCH_BASS_ENHANCE_ADDR_R(133),
        EQ1940Dual10B1(134),
        EQ1940Dual20B1(139),
        EQ1940Dual30B1(144),
        EQ1940Dual40B1(149),
        TIME_ALIGNMENT_FL(155),
        TIME_ALIGNMENT_FR(154),
        TIME_ALIGNMENT_RL(156),
        TIME_ALIGNMENT_RR(157),
        BAL_GAIN_FL_ADDRL(158),
        BAL_GAIN_FL_ADDRH(159),
        BAL_GAIN_FR_ADDRL(164),
        BAL_GAIN_FR_ADDRH(165),
        BAL_GAIN_RL_ADDRL(160),
        BAL_GAIN_RL_ADDRH(161),
        BAL_GAIN_RR_ADDRL(162),
        BAL_GAIN_RR_ADDRH(163),
        MIX_SWITCH_ADDR(170),
        MIX_SWITCH_ADDR2(171),
        MUTE_SWITCH_ADDR1(172),
        MUTE_SWITCH_ADDR2(173),
        REG_COREREGISTER_IC_1_ADDR(2076),
        PROGRAM_ADDR_IC_1(1024),
        PARAM_ADDR_IC_1(0),
        SAFELOAD_DATA_0(BluetoothClass.Device.TOY_CONTROLLER),
        SAFELOAD_ADDRESS_0(2069);


        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f15413a;

        REG_ADI(int i2) {
            this.f15413a = i2;
        }
    }

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C32107S.this.j(null);
            C32107S c32107s = C32107S.this;
            c32107s.A1(c32107s.f15054g, true);
        }
    }

    public static /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f15415a;

        static {
            int[] iArr = new int[EQType.values().length];
            f15415a = iArr;
            try {
                iArr[EQType.BIT_16.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f15415a[EQType.BIT_27.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public C32107S(int i2, int i3, n nVar) {
        super(i2, i3);
        this.I0 = "C32107S";
        this.J0 = 28;
        this.K0 = new int[]{1, 28, 2, 72, 3, 0, 4, 0, 5, 0, 6, 51, 7, 255, 8, i.a.Theme_actionModeWebSearchDrawable, 16, 6, 17, 0, 18, 0, 19, 0, 20, 0, 21, 0, 22, 12, 23, 0, 24, 0, 25, 192, 26, 0, 27, 0, 28, 0, 29, 0, 30, 192, 31, 0, 32, 192, 33, 52, 34, 5, 257, 0, 258, 0, 259, 0, 260, 17, 261, 1, 262, 128, 263, 128, 264, 128, 265, 176, 266, 160, 512, 1, 513, 65, 514, 39, 515, 0, 516, 0, 517, 5, 518, 49, 519, 0, BluetoothClass.Device.PHONE_CORDLESS, 32, 1024, 0, InputDevice.SOURCE_GAMEPAD, 0, 1026, 0, Process.NFC_UID, 0, 1028, 0, 1029, 0, 1030, 0, 1031, 0, 1032, 0, 1033, 0, 1034, 0, 1035, 0, 1036, 0, 1037, 0, 1280, 4, 1281, 0, 1536, 128, 1552, 128, 1553, 128, 1554, 128, 1555, 128, 1556, 128, 1557, 128, 1558, 128, 1559, 128, 1560, 128, 1561, 128, 1562, 128, 1563, 128, 1564, 128, 1565, 128, 1566, 128, 1567, 128, 1568, 0, 1569, 0, 1570, 0, 1571, 0, 1572, 0, 1573, 0, 1574, 0, 1575, 0, 1576, 0, 1577, 0, 1578, 0, 1579, 0, 1580, 0, 1581, 0, 1582, 0, 1583, 0, 1792, 0, 1793, 22, 1794, 150, 1795, 128, BluetoothClass.Device.WEARABLE_WRIST_WATCH, 0, 1797, 128, 1798, 128, 1799, 16, BluetoothClass.Device.WEARABLE_PAGER, 0, 1801, 0, 2048, 128, GLES10.GL_EXP2, 11, 2050, 1, 2051, 4, BluetoothClass.Device.TOY_ROBOT, 0, 2053, 64, 2304, 0, 2305, 0, 2306, 0, 2307, 0, BluetoothClass.Device.HEALTH_BLOOD_PRESSURE, 0, 2309, 0, 2310, 128, 2311, 128, BluetoothClass.Device.HEALTH_THERMOMETER, 128, 2313, 128, 2314, 128, 2315, 122, DateUtils.FORMAT_NO_NOON_MIDNIGHT, 128, 2561, 128, 2562, 128, 2563, 128, 2564, 128, 2565, 128, 65535, 255};
        this.L0 = new int[]{0, 180, 168, 158, 150, 143, 137, 131, 126, 122, 118, 114, 112, 110, 108, 106, 104, 102, 100, 98, 96, 94, 92, 90, 88, 86, 84, 82, 80, 78, 76, 74, 72, 70, 68, 66, 64};
        this.M0 = new int[]{0, 159, 152, 146, 141, 136, 132, 128, 125, 122, 119, 116, 114, 112, 110, 108, 106, 104, 102, 100, 98, 96, 94, 92, 90, 88, 86, 84, 82, 80, 78, 76, 74, 72, 70, 68, 66};
        this.N0 = new int[]{128, 181, 178, 175, 172, 170, 168, 166, 164, 162, 160};
        this.O0 = new int[]{0, 160, 146, 134, 124, 116, 110, 106, 102, 100, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 80, 79, 78, 76, 74, 72, 70, 68, 66};
        this.P0 = new int[]{160, 160, 160, 160, 160, 160, 160, 160, 160, 162, 164, 166, 168, 170, 175, 181, 128};
        this.Q0 = new int[]{13, 14, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 15, 29, 30, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 31};
        this.R0 = new int[]{-10, -9, -8, -7, -6, -5, -4, -3, -2, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
        this.S0 = new int[]{20, 10, 24, 27, 10, 24, 35, 10, 24, 46, 10, 24, 60, 10, 24, 79, 10, 24, 103, 10, 24, 134, 10, 24, 176, 10, 24, 229, 10, 24, 298, 10, 24, 388, 10, 24, 506, 10, 24, 658, 10, 24, 856, 10, 24, 1113, 10, 24, 1448, 10, 24, 1884, 10, 24, 2450, 10, 24, 3186, 10, 24, 4142, 10, 24, GLES10.GL_EQUIV, 10, 24, 7001, 10, 24, 9103, 10, 24, 11834, 10, 24, 15385, 10, 24, Window.PROGRESS_SECONDARY_START, 10, 24};
        int[] iArr = {20, 10, 24, 27, 10, 24, 35, 10, 24, 46, 10, 24, 60, 10, 24, 79, 10, 24, 103, 10, 24, 134, 10, 24, 176, 10, 24, 229, 10, 24, 298, 10, 24, 388, 10, 24, 506, 10, 24, 658, 10, 24, 856, 10, 24, 1113, 10, 24, 1448, 10, 24, 1884, 10, 24, 2450, 10, 24, 3186, 10, 24, 4142, 10, 24, GLES10.GL_EQUIV, 10, 24, 7001, 10, 24, 9103, 10, 24, 11834, 10, 24, 15385, 10, 24, Window.PROGRESS_SECONDARY_START, 10, 24};
        this.T0 = iArr;
        int[] iArr2 = {20, 17, 24, 27, 17, 24, 35, 17, 24, 46, 17, 24, 60, 16, 24, 79, 16, 24, 103, 14, 24, 134, 12, 24, 176, 12, 24, 229, 10, 24, 298, 9, 24, 388, 7, 24, 506, 6, 24, 658, 6, 24, 856, 6, 24, 1113, 6, 24, 1448, 7, 24, 1884, 8, 24, 2450, 9, 24, 3186, 12, 24, 4142, 13, 24, GLES10.GL_EQUIV, 14, 24, 7001, 16, 24, 9103, 17, 24, 11834, 17, 24, 15385, 17, 24, Window.PROGRESS_SECONDARY_START, 17, 24};
        this.U0 = iArr2;
        int[] iArr3 = {20, 4, 24, 27, 4, 24, 35, 4, 24, 46, 4, 24, 60, 4, 24, 79, 4, 24, 103, 5, 24, 134, 7, 24, 176, 9, 24, 229, 10, 24, 298, 12, 24, 388, 13, 24, 506, 14, 24, 658, 13, 24, 856, 12, 24, 1113, 12, 24, 1448, 12, 24, 1884, 12, 24, 2450, 13, 24, 3186, 14, 24, 4142, 12, 24, GLES10.GL_EQUIV, 10, 24, 7001, 10, 24, 9103, 10, 24, 11834, 10, 24, 15385, 10, 24, Window.PROGRESS_SECONDARY_START, 10, 24};
        this.V0 = iArr3;
        int[] iArr4 = {20, 16, 24, 27, 16, 24, 35, 16, 24, 46, 16, 24, 60, 17, 24, 79, 17, 24, 103, 16, 24, 134, 14, 24, 176, 12, 24, 229, 11, 24, 298, 10, 24, 388, 9, 24, 506, 8, 24, 658, 10, 24, 856, 12, 24, 1113, 11, 24, 1448, 10, 24, 1884, 9, 24, 2450, 7, 24, 3186, 6, 24, 4142, 6, 24, GLES10.GL_EQUIV, 5, 24, 7001, 5, 24, 9103, 4, 24, 11834, 3, 24, 15385, 3, 24, Window.PROGRESS_SECONDARY_START, 3, 24};
        this.W0 = iArr4;
        int[] iArr5 = {20, 16, 24, 27, 16, 24, 35, 16, 24, 46, 15, 24, 60, 14, 24, 79, 14, 24, 103, 10, 24, 134, 8, 24, 176, 7, 24, 229, 6, 24, 298, 10, 24, 388, 12, 24, 506, 14, 24, 658, 14, 24, 856, 14, 24, 1113, 14, 24, 1448, 12, 24, 1884, 10, 24, 2450, 8, 24, 3186, 6, 24, 4142, 9, 24, GLES10.GL_EQUIV, 12, 24, 7001, 16, 24, 9103, 15, 24, 11834, 14, 24, 15385, 14, 24, Window.PROGRESS_SECONDARY_START, 14, 24};
        this.X0 = iArr5;
        int[] iArr6 = {20, 16, 24, 27, 16, 24, 35, 16, 24, 46, 16, 24, 60, 16, 24, 79, 16, 24, 103, 16, 24, 134, 16, 24, 176, 15, 24, 229, 14, 24, 298, 14, 24, 388, 14, 24, 506, 16, 24, 658, 16, 24, 856, 15, 24, 1113, 14, 24, 1448, 13, 24, 1884, 12, 24, 2450, 12, 24, 3186, 12, 24, 4142, 11, 24, GLES10.GL_EQUIV, 10, 24, 7001, 10, 24, 9103, 9, 24, 11834, 8, 24, 15385, 8, 24, Window.PROGRESS_SECONDARY_START, 8, 24};
        this.Y0 = iArr6;
        int[] iArr7 = {20, 14, 24, 27, 14, 24, 35, 14, 24, 46, 13, 24, 60, 12, 24, 79, 12, 24, 103, 10, 24, 134, 7, 24, 176, 5, 24, 229, 4, 24, 298, 6, 24, 388, 8, 24, 506, 10, 24, 658, 10, 24, 856, 10, 24, 1113, 10, 24, 1448, 10, 24, 1884, 10, 24, 2450, 11, 24, 3186, 12, 24, 4142, 12, 24, GLES10.GL_EQUIV, 12, 24, 7001, 13, 24, 9103, 15, 24, 11834, 16, 24, 15385, 16, 24, Window.PROGRESS_SECONDARY_START, 16, 24};
        this.Z0 = iArr7;
        int[] iArr8 = {20, 10, 24, 27, 10, 24, 35, 10, 24, 46, 10, 24, 60, 10, 24, 79, 12, 24, 103, 13, 24, 134, 14, 24, 176, 14, 24, 229, 14, 24, 298, 15, 24, 388, 16, 24, 506, 16, 24, 658, 17, 24, 856, 17, 24, 1113, 17, 24, 1448, 17, 24, 1884, 16, 24, 2450, 16, 24, 3186, 16, 24, 4142, 16, 24, GLES10.GL_EQUIV, 16, 24, 7001, 16, 24, 9103, 15, 24, 11834, 14, 24, 15385, 14, 24, Window.PROGRESS_SECONDARY_START, 14, 24};
        this.f15291a1 = iArr8;
        this.f15292b1 = new int[]{1, 1, 1, 1};
        this.f15293c1 = null;
        this.f15294d1 = null;
        this.f15295e1 = new int[]{0, 24};
        this.f15296f1 = new int[]{0, 24, 8, 8, 0, 0, 68, 0, 4, 68, 0, 4, 0, 0, 0, 0, 128, 0, 0, 0, 0, 0, 0, 1};
        this.f15297g1 = new int[]{0, 28};
        this.f15298h1 = new int[][]{new int[]{0, 0, 0, 84}, new int[]{0, 1, 206, 220}, new int[]{0, 4, 12, 55}, new int[]{0, 7, 182, 120}, new int[]{0, 12, 57, 82}, new int[]{0, 17, 171, 62}, new int[]{0, 24, 99, 208}, new int[]{0, 32, 38, i.a.Theme_actionModeWebSearchDrawable}, new int[]{0, 42, 98, 129}, new int[]{0, 53, 91, 250}, new int[]{0, 64, 38, 231}, new int[]{0, 77, 32, 172}, new int[]{0, 84, 145, 154}, new int[]{0, 92, 186, 81}, new int[]{0, 101, 172, 140}, new int[]{0, 111, 123, 188}, new int[]{0, 122, 61, 50}, new int[]{0, 134, 8, 79}, new int[]{0, 146, i.a.Theme_preferencePanelStyle, 179}, new int[]{0, 161, 36, 120}, new int[]{0, 176, 176, 110}, new int[]{0, 193, 188, 96}, new int[]{0, 212, 109, 88}, new int[]{0, 232, 235, i.a.Theme_preferenceFragmentStyle}, new int[]{0, 255, 100, 193}, new int[]{1, 24, 8, 147}, new int[]{1, 51, 12, i.a.Theme_preferenceFragmentStyle}, new int[]{1, 80, 172, 159}, new int[]{1, 113, 39, i.a.Theme_actionModeFindDrawable}, new int[]{1, 148, 197, 132}, new int[]{1, 187, 210, 187}, new int[]{1, 230, 164, 118}, new int[]{2, 21, 151, 194}, new int[]{2, 73, 18, 168}, new int[]{2, 129, 133, 8}, new int[]{2, 191, 105, 142}, new int[]{3, 3, 70, 186}};
        this.f15299i1 = new int[]{0, 0, 0, 0};
        this.f15300j1 = new int[]{0, 0, 0, 1};
        this.f15301k1 = new int[]{0, 0, 0, 2};
        this.f15302l1 = new int[]{0, 0, 0, 3};
        this.f15303m1 = new int[]{0, 0, 0, 4};
        this.f15304n1 = new int[]{0, 0, 0, 5};
        this.f15305o1 = new int[][]{new int[]{0, 0, 3, 71}, new int[]{0, 1, 71, 174}, new int[]{0, 12, 204, 205}, new int[]{0, 40, 122, 39}, new int[]{0, 128, 0, 0}, new int[]{0, 143, 158, 77}, new int[]{0, 161, 36, 120}, new int[]{0, 180, 206, 8}, new int[]{0, 202, 221, 200}, new int[]{0, 227, 158, 169}, new int[]{0, 255, 100, 193}};
        this.f15306p1 = new int[][]{new int[]{0, 8, 13, 106}, new int[]{0, 10, 94, 43}, new int[]{0, 12, 163, 123}, new int[]{0, 14, 221, 146}, new int[]{0, 17, 12, 167}, new int[]{0, 19, 48, i.a.Theme_actionModeFindDrawable}, new int[]{0, 21, 74, 168}, new int[]{0, 23, 89, 252}, new int[]{0, 25, 95, 34}, new int[]{0, 27, 90, 77}, new int[]{0, 29, 75, 173}};
        this.f15307q1 = new int[][]{new int[]{0, 64, 0, 0}, new int[]{0, 44, 78, 197}, new int[]{2, 227, 142, 57}, new int[]{0, 102, 102, 102}, new int[]{0, 70, 228, 110}, new int[]{1, 32, 227, 142}, new int[]{0, 140, 204, 205}, new int[]{0, 97, 122, 24}, new int[]{0, 152, 204, i.a.Theme_dialogTitleDecorLayout}, new int[]{0, 179, 51, 51}, new int[]{0, 124, 15, 193}, new int[]{0, 94, 84, 193}, new int[]{0, 217, 153, 154}, new int[]{0, 150, 165, 106}, new int[]{0, 63, 249, 179}, new int[]{1, 0, 0, 0}, new int[]{0, 177, 59, 20}, new int[]{0, 46, 56, 228}, new int[]{1, 25, 153, 154}, new int[]{0, 194, i.a.Theme_actionModePopupWindowStyle, 47}, new int[]{0, 38, 51, 63}, new int[]{1, 51, 51, 51}, new int[]{0, 212, 173, 75}, new int[]{0, 32, 25, 73}, new int[]{1, 76, 204, 205}, new int[]{0, 230, 102, 102}, new int[]{0, 27, 89, 182}, new int[]{1, 102, 102, 102}, new int[]{0, 248, 31, 130}, new int[]{0, 23, 149, 48}, new int[]{1, 128, 0, 0}, new int[]{1, 9, 216, 158}, new int[]{0, 20, 139, 16}};
        this.r1 = new int[][]{new int[]{0, 4, 23, 115}, new int[]{0, 5, 75, 26}, new int[]{0, 6, 123, 198}, new int[]{0, 7, 169, 126}, new int[]{0, 8, 212, 72}, new int[]{0, 9, 252, 45}, new int[]{0, 11, 33, 51}, new int[]{0, 12, 67, 97}, new int[]{0, 13, 98, 191}, new int[]{0, 14, 127, 83}, new int[]{0, 15, 153, 37}};
        this.s1 = new int[]{500, 650, 800, 950, 1100, 1250, 1400, 1550, 1700, 1850, 2000};
        this.t1 = new int[]{-80, -40, -20, -10, 0, 1, 2, 3, 4, 5, 6};
        this.u1 = new int[]{250, 325, 400, 475, 550, 625, 700, 775, 850, 925, 1000};
        this.v1 = new double[]{0.5d, 0.8d, 1.1d, 1.4d, 1.7d, 2.0d, 2.2d, 2.4d, 2.6d, 2.8d, 3.0d};
        this.w1 = new int[][]{new int[]{0, 0, 85, 201}, new int[]{0, 0, 214, 119}, new int[]{0, 1, 14, 58}, new int[]{0, 1, 87, 37}, new int[]{0, 1, 172, 238}, new int[]{0, 2, 24, 41}, new int[]{0, 2, 174, 71}, new int[]{0, 3, 89, 215}};
        this.x1 = new int[][]{new int[]{0, 0, 0, 57}, new int[]{0, 0, 1, 100}, new int[]{0, 0, 2, 52}, new int[]{0, 0, 3, 138}, new int[]{0, 0, 5, 131}, new int[]{0, 0, 8, 147}, new int[]{0, 0, 13, i.a.Theme_preferenceFragmentStyle}, new int[]{0, 0, 21, 167}};
        this.y1 = new int[][]{new int[]{0, 0, 0, 115}, new int[]{0, 0, 2, 200}, new int[]{0, 0, 4, 104}, new int[]{0, 0, 7, 21}, new int[]{0, 0, 11, 6}, new int[]{0, 0, 17, 38}, new int[]{0, 0, 27, 235}, new int[]{0, 0, 43, 78}};
        this.z1 = new int[][]{new int[]{0, 0, 0, 57}, new int[]{0, 0, 1, 100}, new int[]{0, 0, 2, 52}, new int[]{0, 0, 3, 138}, new int[]{0, 0, 5, 131}, new int[]{0, 0, 8, 147}, new int[]{0, 0, 13, i.a.Theme_preferenceFragmentStyle}, new int[]{0, 0, 21, 167}};
        this.A1 = new int[][]{new int[]{0, 255, 13, 83}, new int[]{0, i.a.Theme_dialogTitleDecorLayout, 161, 83}, new int[]{0, i.a.Theme_dialogTitleDecorLayout, 3, 154}, new int[]{0, 252, 53, 93}, new int[]{0, 251, 66, 193}, new int[]{0, 250, 19, 138}, new int[]{0, 248, 107, 36}, new int[]{0, i.a.Theme_preferencePanelStyle, 134, 77}};
        this.B1 = new int[][]{new int[]{255, 128, i.a.Theme_actionModeShareDrawable, 200}, new int[]{255, 130, 89, 29}, new int[]{255, 130, i.a.Theme_actionModeWebSearchDrawable, 150}, new int[]{255, 131, 188, 121}, new int[]{255, 132, 167, 50}, new int[]{255, 133, 202, 42}, new int[]{255, 135, 93, 7}, new int[]{255, 137, 35, 23}};
        this.C1 = new int[][]{new int[]{0, 128, 0, 0}, new int[]{0, 106, 119, 60}, new int[]{0, 90, 157, 248}, new int[]{0, 75, 95, 59}, new int[]{0, 64, 38, 231}, new int[]{0, 53, 91, 250}, new int[]{0, 45, 106, 134}, new int[]{0, 37, 198, 134}, new int[]{0, 32, 38, i.a.Theme_actionModeWebSearchDrawable}, new int[]{0, 26, 190, 53}, new int[]{0, 22, 195, 17}, new int[]{0, 18, 238, 190}, new int[]{0, 16, 29, 63}};
        this.D1 = new int[][]{new int[]{0, 128, 0, 0}, new int[]{0, 161, 36, 120}, new int[]{0, 227, 158, 169}, new int[]{0, 227, 158, 169}, new int[]{0, 227, 158, 169}, new int[]{0, 114, 155, 80}, new int[]{0, 144, 72, 2}, new int[]{0, 227, 158, 169}, new int[]{0, 227, 158, 169}, new int[]{0, 227, 158, 169}, new int[]{0, 102, 157, 99}, new int[]{0, 129, 47, 51}, new int[]{0, 227, 158, 169}, new int[]{0, 227, 158, 169}, new int[]{0, 227, 158, 169}, new int[]{0, 91, 224, 175}, new int[]{0, 115, 170, 201}, new int[]{0, 227, 158, 169}, new int[]{0, 227, 158, 169}, new int[]{0, 227, 158, 169}, new int[]{0, 80, 195, 54}, new int[]{0, 101, 172, 140}, new int[]{0, 202, 221, 200}, new int[]{0, 227, 158, 169}, new int[]{0, 227, 158, 169}, new int[]{0, 72, 79, 219}, new int[]{0, 91, 9, 11}, new int[]{0, 181, 163, 173}, new int[]{0, 227, 158, 169}, new int[]{0, 227, 158, 169}, new int[]{0, 64, 190, 221}, new int[]{0, 81, 130, 132}, new int[]{0, 162, 162, 44}, new int[]{0, 227, 158, 169}, new int[]{0, 227, 158, 169}, new int[]{0, 57, 248, 140}, new int[]{0, 72, 251, 37}, new int[]{0, 145, 157, 197}, new int[]{0, 227, 158, 169}, new int[]{0, 227, 158, 169}, new int[]{0, 50, i.a.Theme_preferenceFragmentStyle, 45}, new int[]{0, 64, 38, 231}, new int[]{0, 128, 0, 0}, new int[]{0, 227, 158, 169}, new int[]{0, 227, 158, 169}, new int[]{0, 45, 160, 49}, new int[]{0, 57, 112, 125}, new int[]{0, 114, 155, 80}, new int[]{0, 227, 158, 169}, new int[]{0, 227, 158, 169}, new int[]{0, 25, 198, 146}, new int[]{0, 51, 109, 226}, new int[]{0, 102, 157, 99}, new int[]{0, 204, 190, 81}, new int[]{0, 227, 158, 169}};
        this.E1 = new int[][]{new int[]{0, 128, 0, 0}, new int[]{0, 128, 0, 0}, new int[]{0, 128, 0, 0}, new int[]{0, 128, 0, 0}, new int[]{0, 128, 0, 0}, new int[]{0, 128, 0, 0}, new int[]{0, 128, 0, 0}, new int[]{0, 128, 0, 0}, new int[]{0, 128, 0, 0}, new int[]{0, 128, 0, 0}, new int[]{0, 128, 0, 0}, new int[]{0, 128, 0, 0}, new int[]{0, 128, 0, 0}, new int[]{0, 128, 0, 0}, new int[]{0, 128, 0, 0}, new int[]{0, 128, 0, 0}, new int[]{0, 128, 0, 0}, new int[]{0, 128, 0, 0}, new int[]{0, 128, 0, 0}, new int[]{0, 128, 0, 0}, new int[]{0, 128, 0, 0}, new int[]{0, 114, 20, 131}, new int[]{0, 101, 172, 140}, new int[]{0, 90, 157, 248}, new int[]{0, 80, 195, 54}, new int[]{0, 71, 250, 205}, new int[]{0, 64, 38, 231}, new int[]{0, 57, 44, 238}, new int[]{0, 50, i.a.Theme_preferenceFragmentStyle, 45}, new int[]{0, 45, 106, 134}, new int[]{0, 40, 122, 39}, new int[]{0, 36, 19, 71}, new int[]{0, 32, 38, i.a.Theme_actionModeWebSearchDrawable}, new int[]{0, 28, 167, 215}, new int[]{0, 25, 138, 19}, new int[]{0, 22, 195, 17}, new int[]{0, 20, 73, 97}, new int[]{0, 18, 20, 154}, new int[]{0, 16, 29, 63}, new int[]{0, 14, 92, 161}, new int[]{0, 12, 204, 205}};
        this.F1 = new int[]{0, 0, 8, 0};
        this.G1 = new int[]{0, 60};
        this.H1 = EQType.BIT_16;
        this.I1 = 1;
        this.J1 = null;
        this.K1 = false;
        this.L1 = true;
        this.M1 = true;
        this.N1 = new int[]{0, 0};
        this.O1 = new int[]{0, 0};
        this.P1 = new int[4];
        this.Q1 = new int[]{20, 20, 20, 20, 20};
        this.R1 = 8;
        this.S1 = 8;
        this.T1 = new int[]{40, 20, 20, 0, 0};
        this.U1 = new int[]{5, 5};
        this.V1 = new int[]{5, 5};
        this.W1 = o2;
        this.X1 = p2;
        this.Y1 = null;
        this.Z1 = 0;
        this.a2 = null;
        this.b2 = null;
        this.c2 = true;
        this.d2 = false;
        this.e2 = false;
        this.f2 = 0;
        this.g2 = 0;
        this.h2 = false;
        this.j2 = new a();
        this.c2 = true;
        Z0(0, this.S0);
        Z0(1, iArr);
        Z0(2, iArr2);
        Z0(3, iArr3);
        Z0(4, iArr4);
        Z0(5, iArr5);
        Z0(6, iArr6);
        Z0(7, iArr7);
        Z0(8, iArr8);
        this.J = false;
        x(this.L0);
        f.f18047f0 = 20;
        f.f18077t = 1;
        this.Y1 = (AudioManager) App.c().getSystemService(Context.AUDIO_SERVICE);
        this.H1 = EQType.BIT_27;
        if (nVar == null) {
            throw new RuntimeException("C32107S i2c  Device Can't be NULL");
        }
        this.J1 = nVar;
    }

    @Override // module.sound.AudioDevice
    public void A1(int i2, boolean z2) {
        if (i2 < 0 || i2 >= AudioDevice.G0.length) {
            return;
        }
        int iM1 = m1(i2 != 0 ? 25 : 0);
        n2(REG.VOL_FL.f15384a, iM1);
        n2(REG.VOL_FR.f15384a, iM1);
        n2(REG.VOL_RL.f15384a, m1(i2));
        n2(REG.VOL_RR.f15384a, iM1);
        B1(i2, z2);
        if (z2 || i2 != this.f15054g) {
            this.f15054g = i2;
        }
        R1();
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
        return (d2(REG.SETUP1.f15384a) == 28 || d2(REG.BEEP_SETUP.f15384a) == 4) ? false : true;
    }

    @Override // module.sound.AudioDevice
    public void B0(int i2, int i3, int i4) {
        if (this.M1) {
            REG reg = null;
            if (i2 == 65536) {
                reg = REG.P2B_FRONT;
            } else if (i2 == 131072) {
                reg = REG.P2B_REAR;
            }
            if (reg != null) {
                a2(reg, i3, i4);
                super.B0(i2, i3, i4);
            }
        }
    }

    @Override // module.sound.AudioDevice
    public void B1(int i2, boolean z2) {
        ValueAnimator valueAnimator;
        if ((this.f15054g == i2 && this.U == i2) && (valueAnimator = this.S) != null && valueAnimator.isRunning()) {
            return;
        }
        ValueAnimator valueAnimator2 = this.S;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
        }
        this.S = null;
        this.T = -1;
        int i3 = this.Q;
        if (i3 != i2 || this.R || z2) {
            if (i3 == Integer.MIN_VALUE) {
                this.Q = 0;
            }
            if (z2) {
                if (this.Q == i2) {
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
            int iMax = Math.max(P2BFreq.THROUGH.f15338a, Math.min(i3, P2BFreq.HZ214.f15338a));
            boolean z2 = true;
            if (reg == REG.P2B_FRONT) {
                int[] iArr2 = this.N1;
                if (iMax != iArr2[0]) {
                    iArr2[0] = iMax;
                    a2(reg, iArr2[0], iArr2[1]);
                } else if (reg == REG.P2B_REAR) {
                    iArr = this.O1;
                    if (iMax != iArr[0]) {
                        iArr[0] = iMax;
                        a2(reg, iArr[0], iArr[1]);
                    } else {
                        z2 = false;
                    }
                } else {
                    z2 = false;
                }
            } else if (reg == REG.P2B_REAR) {
                iArr = this.O1;
                if (iMax != iArr[0]) {
                    iArr[0] = iMax;
                    a2(reg, iArr[0], iArr[1]);
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
        if (this.Q != i2 || this.R) {
            this.R = false;
            this.Q = i2;
            n2(REG.VOL_SL.f15384a, this.O0[i2]);
            synchronized (this) {
                E1(REG_ADI.VOL_ADDR1.f15413a, this.f15298h1[i2]);
                E1(REG_ADI.VOL_ADDR2.f15413a, this.F1);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v34 */
    /* JADX WARN: Type inference failed for: r10v35, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r10v38 */
    /* JADX WARN: Type inference failed for: r10v41 */
    /* JADX WARN: Type inference failed for: r10v42, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r10v45 */
    @Override // module.sound.AudioDevice
    public void D(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 != 56) {
            if (i2 == 58) {
                if (s0.h(iArr, 0)) {
                    ?? r10 = iArr[0] == 1 ? 1 : 0;
                    if (this.B != r10) {
                        this.B = r10;
                        G0(AudioDevice.STORE.SUBWOOF_SYNC, r10);
                        h.s0(58, this.B ? 1 : 0);
                        o(this.f15092z);
                        return;
                    }
                    return;
                }
                return;
            }
            if (i2 == 59 && s0.h(iArr, 0)) {
                ?? r11 = iArr[0] == 1 ? 1 : 0;
                if (this.C != r11) {
                    this.C = r11;
                    G0(AudioDevice.STORE.SUBWOOF_PHASE, r11);
                    h.s0(59, this.C ? 1 : 0);
                    h2(this.C);
                    return;
                }
                return;
            }
            return;
        }
        if (s0.h(iArr, 1)) {
            if ((iArr[0] & 16) == 0) {
                if (iArr[1] != this.f2) {
                    int i3 = iArr[1];
                    this.f2 = i3;
                    if (i3 != 2) {
                        this.f2 = 0;
                    }
                    g0(65552, this.P1[0]);
                    g0(WifiStateMachine.CMD_STATIC_IP_FAILURE, this.P1[2]);
                    g0(65568, this.P1[1]);
                    g0(131104, this.P1[3]);
                    h.s0(56, 0, this.f2);
                    AudioDevice.STORE store = AudioDevice.STORE.LOW_PASS_FILTERING;
                    G0(store, this.f2);
                    this.f15080t.e(store.ordinal());
                    return;
                }
                return;
            }
            if ((iArr[0] & 16) == 0 || iArr[1] == this.g2) {
                return;
            }
            int i4 = iArr[1];
            this.g2 = i4;
            if (i4 != 2) {
                this.g2 = 0;
            }
            g0(65552, this.P1[0]);
            g0(WifiStateMachine.CMD_STATIC_IP_FAILURE, this.P1[2]);
            g0(65568, this.P1[1]);
            g0(131104, this.P1[3]);
            h.s0(56, 16, this.g2);
            AudioDevice.STORE store2 = AudioDevice.STORE.HIGH_PASS_FILTERING;
            G0(store2, this.g2);
            this.f15080t.e(store2.ordinal());
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
            int iMax = Math.max(P2BGain.DB00.f15353a, Math.min(i3, P2BGain.DB12.f15353a));
            boolean z2 = false;
            if (reg == REG.P2B_FRONT) {
                int[] iArr2 = this.N1;
                if (iMax != iArr2[1]) {
                    iArr2[1] = iMax;
                    a2(reg, iArr2[0], iArr2[1]);
                } else if (reg == REG.P2B_REAR) {
                    iArr = this.O1;
                    if (iMax != iArr[1]) {
                        iArr[1] = iMax;
                        a2(reg, iArr[0], iArr[1]);
                    }
                }
                z2 = true;
            } else if (reg == REG.P2B_REAR) {
                iArr = this.O1;
                if (iMax != iArr[1]) {
                    iArr[1] = iMax;
                    a2(reg, iArr[0], iArr[1]);
                    z2 = true;
                }
            }
            if (z2) {
                super.D0(i2, iMax);
            }
        }
    }

    public synchronized void D1(int i2, int i3, int... iArr) {
        int[] iArr2 = {0, 0, 0, 0, 0};
        iArr2[1] = iArr[0];
        iArr2[2] = iArr[1];
        iArr2[3] = iArr[2];
        iArr2[4] = iArr[3];
        o2(REG_ADI.SAFELOAD_DATA_0.f15413a + i3, iArr2);
        int i4 = i2 + i3;
        o2(REG_ADI.SAFELOAD_ADDRESS_0.f15413a + i3, s0.c(i4, 1), s0.c(i4, 0));
    }

    @Override // module.sound.AudioDevice
    public void E0(boolean z2) {
        if (this.M1 == z2) {
            return;
        }
        this.M1 = z2;
        b2(z2);
        super.E0(z2);
    }

    public synchronized void E1(int i2, int... iArr) {
        int[] iArr2 = {0, 0, 0, 0, 0};
        iArr2[1] = iArr[0];
        iArr2[2] = iArr[1];
        iArr2[3] = iArr[2];
        iArr2[4] = iArr[3];
        o2(REG_ADI.SAFELOAD_DATA_0.f15413a, iArr2);
        o2(REG_ADI.SAFELOAD_ADDRESS_0.f15413a, s0.c(i2, 1), s0.c(i2, 0));
        o2(REG_ADI.REG_COREREGISTER_IC_1_ADDR.f15413a, this.G1);
    }

    @Override // module.sound.AudioDevice
    public void F() {
        CHANNEL channel = CHANNEL.MUSIC;
        L0(0, channel.f15314a);
        L0(1, CHANNEL.RADIO.f15314a);
        L0(2, channel.f15314a);
        L0(3, channel.f15314a);
        L0(4, CHANNEL.DVD.f15314a);
        CHANNEL channel2 = CHANNEL.AUX;
        L0(5, channel2.f15314a);
        L0(6, CHANNEL.TV.f15314a);
        L0(7, channel.f15314a);
        L0(8, channel.f15314a);
        L0(9, channel.f15314a);
        L0(10, channel.f15314a);
        L0(11, channel2.f15314a);
        L0(12, channel2.f15314a);
        L0(13, channel2.f15314a);
        L0(14, channel2.f15314a);
        L0(15, channel.f15314a);
        L0(16, channel.f15314a);
    }

    public final void F1(boolean z2) {
        int[] iArr = {0, 0, 0, 0};
        if (z2) {
            int[] iArr2 = {0, 0, 32, 0};
            iArr[1] = 128;
            synchronized (this) {
                E1(REG_ADI.MUTE_SW_ADDR1.f15413a, iArr);
                E1(REG_ADI.MUTE_SW_ADDR2.f15413a, iArr2);
            }
            return;
        }
        iArr[1] = 128;
        synchronized (this) {
            E1(REG_ADI.MIX_SWITCH_ADDR.f15413a, iArr);
            iArr[1] = 0;
            E1(REG_ADI.MIX_SWITCH_ADDR2.f15413a, iArr);
        }
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
            T0(EQType.BIT_27.f15318a);
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
            this.f15080t.v(AudioDevice.STORE.SPEAKER_GAINS.ordinal());
            l1(true);
            j1(69632, 40);
            j1(73728, 20);
            j1(135168, 20);
            j1(139264, 0);
            j1(65536, 0);
            this.e2 = true;
            j(new int[]{8, 8});
            a1(65536, 20);
            this.e2 = false;
            this.f15092z = 0;
            g2(true);
            h.n0(i.k("ro.fyt.subwoof", f.W0));
            i2(REG.SUBHPF, p2);
            i2(REG.SUBLPF, o2);
            O1();
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
            g0(65552, n2);
            g0(WifiStateMachine.CMD_STATIC_IP_FAILURE, n2);
            g0(65568, 200);
            g0(131104, 200);
            return;
        }
        this.f15080t.v(AudioDevice.STORE.P2BASSON.ordinal());
        this.f15080t.v(AudioDevice.STORE.P2BFFREQ.ordinal());
        this.f15080t.v(AudioDevice.STORE.P2BRFREQ.ordinal());
        this.f15080t.v(AudioDevice.STORE.P2BFGAIN.ordinal());
        this.f15080t.v(AudioDevice.STORE.P2BRGAIN.ordinal());
        b2(true);
        C0(65536, 0);
        C0(131072, 0);
        D0(65536, 0);
        D0(131072, 0);
    }

    public final void G1(boolean z2) {
        int[] iArr = {0, 0, 0, 0};
        int[] iArr2 = {0, 0, 32, 0};
        if (!this.i2) {
            if (z2) {
                iArr[1] = 128;
            } else {
                iArr[1] = 0;
            }
            synchronized (this) {
                E1(REG_ADI.MUTE_SW_ADDR1.f15413a, iArr);
                E1(REG_ADI.MUTE_SW_ADDR2.f15413a, iArr2);
            }
            return;
        }
        if (z2) {
            iArr[1] = 128;
        } else {
            iArr[1] = 0;
        }
        synchronized (this) {
            E1(REG_ADI.MIX_SWITCH_ADDR.f15413a, iArr);
            if (z2) {
                iArr[1] = 0;
            } else {
                iArr[1] = 128;
            }
            E1(REG_ADI.MIX_SWITCH_ADDR2.f15413a, iArr);
        }
    }

    public void H1(boolean z2) {
        int[] iArr = {0, 0, 0, 1};
        if (z2) {
            j2(69632, this.T1[0]);
            j2(73728, this.T1[1]);
            j2(135168, this.T1[2]);
            j2(139264, this.T1[3]);
            j2(65536, this.T1[4]);
            return;
        }
        synchronized (this) {
            REG_ADI reg_adi = REG_ADI.TIME_ALIGNMENT_FR;
            D1(reg_adi.f15413a, 0, iArr);
            D1(reg_adi.f15413a, 1, iArr);
            D1(reg_adi.f15413a, 2, iArr);
            D1(reg_adi.f15413a, 3, iArr);
            o2(REG_ADI.REG_COREREGISTER_IC_1_ADDR.f15413a, this.G1);
        }
    }

    public boolean I1(int[] iArr, int i2) {
        int[] iArrU1;
        return i2 == 0 || (iArrU1 = U1(i2)) == null || !Arrays.equals(iArr, iArrU1);
    }

    public final boolean J1(int i2, int i3) {
        if (i2 < 0) {
            a.f.k().l(1, "Audio Init", "Audio initialization(" + i3 + ") failed! !", Paint.Align.CENTER, 35, -65536, 60, 2147483392);
        }
        return i2 >= 0;
    }

    public void K1(boolean z2) {
        REG reg = REG.DSP1;
        int iD2 = d2(reg.f15384a);
        int i2 = reg.f15384a;
        int[] iArr = new int[1];
        iArr[0] = z2 ? iD2 | 128 : iD2 & 127;
        n2(i2, iArr);
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
            N1(i2, iArr[i4], T1(iArr[i5]), this.R0[i6]);
        }
        super.L(i2, i3);
        O1();
    }

    public void L1(int i2, int... iArr) {
        if (this.f15072p == iArr.length) {
            N1(i2, iArr[0], T1(iArr[2]), this.R0[Math.max(0, Math.min(iArr[1], this.R0.length - 1))]);
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
        N1(i2, iArr[i4], T1(iArr[i4 + 2]), this.R0[this.f15074q[i5]]);
        super.M(i2, i3);
        O1();
    }

    public void M1(int[] iArr) {
        int length = iArr.length / this.f15072p;
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = this.f15072p;
            L1(i2, iArr[i2 * i3], iArr[(i2 * i3) + 1], iArr[(i3 * i2) + 2]);
        }
    }

    /* JADX WARN: Code duplicated, block: B:33:0x0179  */
    public final void N1(int i2, double d2, double d3, int i3) {
        int i4;
        int i5;
        int i6;
        int i7;
        if (i2 < 11) {
            double dPow = Math.pow(10.0d, ((double) i3) / 40.0d);
            double d4 = (6.283185307179586d * d2) / 48000.0d;
            double dCos = Math.cos(d4);
            double dSin = Math.sin(d4) / (d3 * 2.0d);
            double d5 = dSin / dPow;
            double d6 = d5 + 1.0d;
            int i8 = (int) (((2.0d * dCos) / d6) * 8388608.0d);
            int i9 = (int) (((-(1.0d - d5)) / d6) * 8388608.0d);
            double d7 = dPow * dSin;
            int i10 = (int) (((d7 + 1.0d) / d6) * 8388608.0d);
            int i11 = (int) (((dCos * (-2.0d)) / d6) * 8388608.0d);
            int i12 = (int) (((1.0d - d7) / d6) * 8388608.0d);
            if (i3 == 0) {
                i10 = 8388608;
                i12 = 0;
                i6 = 0;
                i7 = 0;
                i9 = 0;
            } else {
                i6 = i8;
                i7 = i11;
            }
            int i13 = REG_ADI.EQCOEF.f15413a + (i2 * 5);
            synchronized (this) {
                D1(i13, 0, s0.c(i10, 3), s0.c(i10, 2), s0.c(i10, 1), s0.c(i10, 0));
                D1(i13, 1, s0.c(i7, 3), s0.c(i7, 2), s0.c(i7, 1), s0.c(i7, 0));
                D1(i13, 2, s0.c(i12, 3), s0.c(i12, 2), s0.c(i12, 1), s0.c(i12, 0));
                D1(i13, 3, s0.c(i6, 3), s0.c(i6, 2), s0.c(i6, 1), s0.c(i6, 0));
                D1(i13, 4, s0.c(i9, 3), s0.c(i9, 2), s0.c(i9, 1), s0.c(i9, 0));
                o2(REG_ADI.REG_COREREGISTER_IC_1_ADDR.f15413a, this.G1);
            }
            Log.e("C32107S", " EQ Coef--> freq : " + d2 + " gain : " + i3 + " index : " + i2);
            return;
        }
        if (i2 >= 27) {
            return;
        }
        int i14 = b.f15415a[this.H1.ordinal()];
        if (i14 != 1) {
            if (i14 != 2) {
                i5 = i2;
            } else if (i2 < 11 || i2 >= 27) {
                i5 = -1;
            } else {
                i4 = (i2 - 11) | 32;
                i5 = i4;
            }
        } else if (i2 < 0 || i2 >= 16) {
            i5 = -1;
        } else {
            i4 = i2 | 32;
            i5 = i4;
        }
        if (i5 < 0) {
            return;
        }
        double dPow2 = Math.pow(10.0d, ((double) i3) / 40.0d);
        double dPow3 = Math.pow(10.0d, ((double) Math.abs(i3)) / 40.0d);
        double d8 = (6.283185307179586d * d2) / 48000.0d;
        double dCos2 = Math.cos(d8);
        double dSin2 = Math.sin(d8) / ((d3 * 2.0d) / dPow3);
        double d9 = dSin2 / dPow2;
        double d10 = d9 + 1.0d;
        int i15 = (int) (((dCos2 * 2.0d) / d10) * 1.34217728E8d);
        int i16 = (int) (((-(1.0d - d9)) / d10) * 1.34217728E8d);
        double d11 = dSin2 * dPow2;
        int i17 = (int) (((d11 + 1.0d) / d10) * 1.34217728E8d);
        int i18 = (int) (((dCos2 * (-2.0d)) / d10) * 1.34217728E8d);
        int i19 = (int) (((1.0d - d11) / d10) * 1.34217728E8d);
        Log.e("C32107S", "11 EQ Coef--> freq : " + d2 + " gain : " + i3 + " index : " + i2);
        n2(REG.EQCOEFSELECTOR.f15384a, i5);
        n2(REG.EQCOEF.f15384a, s0.c(i17, 3), s0.c(i17, 2), s0.c(i17, 1), s0.c(i17, 0), s0.c(i18, 3), s0.c(i18, 2), s0.c(i18, 1), s0.c(i18, 0), s0.c(i19, 3), s0.c(i19, 2), s0.c(i19, 1), s0.c(i19, 0), s0.c(i15, 3), s0.c(i15, 2), s0.c(i15, 1), s0.c(i15, 0), s0.c(i16, 3), s0.c(i16, 2), s0.c(i16, 1), s0.c(i16, 0));
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
            N1(i2, iArr[i4], T1(iArr[i5]), this.R0[i6]);
        }
        super.O(i2, i3);
        O1();
    }

    public void O1() {
        REG reg = REG.SETUP;
        int iD2 = d2(reg.f15384a);
        int i2 = n2;
        boolean z2 = this.f15062k == 1 && Arrays.equals(this.P1, new int[]{i2, i2, i2, i2});
        if (!(z2 && (iD2 & 128) == 0) && (z2 || (iD2 & 128) == 0)) {
            return;
        }
        int i3 = reg.f15384a;
        int[] iArr = new int[1];
        iArr[0] = z2 ? iD2 | 128 : iD2 & 127;
        n2(i3, iArr);
    }

    public void P1(EQType eQType) {
        for (int i2 = 0; i2 < 16; i2++) {
            REG reg = REG.EQ_FRONT_GAIN_BASE;
            n2(reg.f15384a + i2, d2(reg.f15384a + i2) & 191);
        }
    }

    public boolean Q1(int i2, int i3, int i4) {
        boolean z2;
        if (i2 <= 0) {
            return false;
        }
        int[] iArr = this.Q1;
        int i5 = 40 - i4;
        if (iArr[i3] != i5) {
            iArr[i3] = i5;
            h0 h0Var = this.f15080t;
            AudioDevice.STORE store = AudioDevice.STORE.SPEAKER_GAINS;
            h0Var.r(store.ordinal(), this.Q1);
            this.f15080t.e(store.ordinal());
            z2 = true;
        } else {
            z2 = false;
        }
        Log.e("C32107S", "fieldToSpeaker index: " + i3 + " gain: " + i4 + " reg: " + String.format("%04X", Integer.valueOf(i2)));
        synchronized (this) {
            D1(i2, 0, this.E1[i4]);
            D1(i2, 1, this.F1);
            o2(REG_ADI.REG_COREREGISTER_IC_1_ADDR.f15413a, this.G1);
        }
        return z2;
    }

    @Override // module.sound.AudioDevice
    public void R0(boolean z2) {
        super.R0(z2);
        if (z2 || !this.h2) {
            return;
        }
        this.h2 = false;
        j(null);
        this.Z1 = 0;
    }

    public void R1() {
        if (this.A && this.B) {
            n2(REG.SWL.f15384a, this.N0[S1(this.f15092z)]);
        }
    }

    public int S1(int i2) {
        if (this.B) {
            return this.f15054g == 0 ? 0 : 10;
        }
        return i2;
    }

    @Override // module.sound.AudioDevice
    public void T0(int i2) {
        EQType eQType;
        EQType eQType2 = EQType.BIT_16;
        if (i2 == eQType2.f15318a) {
            eQType = eQType2;
        } else {
            eQType = EQType.BIT_27;
            if (i2 != eQType.f15318a) {
                eQType = null;
            }
        }
        if (eQType != null && eQType != this.H1) {
            this.H1 = eQType;
            int i3 = eQType == eQType2 ? 16 : 27;
            this.f15060j = i3;
            this.f15074q = new int[i3 * this.f15072p];
            n0();
            int[] iArrU1 = U1(this.f15062k);
            int[] iArr = this.f15074q;
            System.arraycopy(iArrU1, 0, iArr, 0, iArr.length);
            P1(this.H1);
            M1(iArrU1);
        }
        super.T0(i2);
    }

    public double T1(int i2) {
        return (((double) i2) + 6.0d) / 10.0d;
    }

    /* JADX WARN: Code duplicated, block: B:53:0x028a  */
    /* JADX WARN: Code duplicated, block: B:58:? A[RETURN, SYNTHETIC] */
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
        } else {
            if (i2 != 59) {
                switch (i2) {
                    case 26:
                        r1(bVar, i2, this.f15092z);
                        break;
                    case 27:
                        r1(bVar, i2, 0, this.W1);
                        r1(bVar, i2, 256, this.X1);
                        break;
                    case 28:
                        r1(bVar, i2, this.M1 ? 1 : 0);
                        break;
                    case 29:
                        r1(bVar, i2, 65536, this.N1[1]);
                        r1(bVar, i2, 131072, this.O1[1]);
                        break;
                    case 30:
                        r1(bVar, i2, 65536, this.N1[0]);
                        r1(bVar, i2, 131072, this.O1[0]);
                        break;
                    case 31:
                        r1(bVar, i2, 65552, this.P1[0]);
                        r1(bVar, i2, 65568, this.P1[1]);
                        r1(bVar, i2, WifiStateMachine.CMD_STATIC_IP_FAILURE, this.P1[2]);
                        r1(bVar, i2, 131104, this.P1[3]);
                        break;
                    case 32:
                        r1(bVar, i2, this.L1 ? 1 : 0);
                        break;
                    case 33:
                        r1(bVar, i2, this.I1);
                        break;
                    case 34:
                        r1(bVar, i2, 69632, this.T1[0]);
                        r1(bVar, i2, 73728, this.T1[1]);
                        r1(bVar, i2, 135168, this.T1[2]);
                        r1(bVar, i2, 139264, this.T1[3]);
                        r1(bVar, i2, 65536, this.T1[4]);
                        break;
                    case 35:
                        r1(bVar, i2, 1, this.U1[0]);
                        r1(bVar, i2, 2, this.V1[0]);
                        break;
                    case 36:
                        int[] iArr4 = this.N1;
                        r1(bVar, i2, 65536, iArr4[0], iArr4[1]);
                        int[] iArr5 = this.O1;
                        r1(bVar, i2, 131072, iArr5[0], iArr5[1]);
                        break;
                    case 37:
                        r1(bVar, i2, this.H1.f15318a);
                        break;
                    case 38:
                        r1(bVar, i2, this.A ? 1 : 0);
                        break;
                    default:
                        switch (i2) {
                            case 53:
                                r1(bVar, i2, 69632, this.Q1[0]);
                                r1(bVar, i2, 73728, this.Q1[1]);
                                r1(bVar, i2, 135168, this.Q1[2]);
                                r1(bVar, i2, 139264, this.Q1[3]);
                                r1(bVar, i2, 65536, this.Q1[4]);
                                break;
                            case 54:
                                r1(bVar, i2, 1, this.U1[1]);
                                r1(bVar, i2, 2, this.V1[1]);
                                break;
                            case 55:
                                r1(bVar, i2, this.e2 ? 1 : 0);
                                break;
                            case 56:
                                r1(bVar, i2, 0, this.f2);
                                r1(bVar, i2, 16, this.g2);
                                break;
                        }
                        break;
                }
                if (z2) {
                    return z2;
                }
                return super.U(i2, bVar);
            }
            r1(bVar, i2, this.C ? 1 : 0);
        }
        z2 = true;
        if (z2) {
            return z2;
        }
        return super.U(i2, bVar);
    }

    public int[] U1(int i2) {
        int i3 = this.H1 == EQType.BIT_16 ? 16 : 27;
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

    public void V1(int i2, int i3) {
        int i4;
        Log.e("C32107S", " 32107 HpfCoefSet selector : " + i3 + " set freq : " + i2);
        if (i3 < 0 || i3 > 3) {
            return;
        }
        double d2 = (((double) i2) * 6.283185307179586d) / 48000.0d;
        double dCos = Math.cos(d2);
        double dSin = Math.sin(d2) / (this.g2 == 2 ? 2.0d / Math.sqrt(3.0d) : Math.sqrt(2.0d));
        double d3 = dCos + 1.0d;
        double d4 = dSin + 1.0d;
        int i5 = (int) (((d3 / 2.0d) / d4) * 8388608.0d);
        int i6 = (int) (((-d3) / d4) * 8388608.0d);
        int i7 = (int) (((dCos * 2.0d) / d4) * 8388608.0d);
        int i8 = (int) (((dSin - 1.0d) / d4) * 8388608.0d);
        int i9 = i3 == HPF.FA.f15324a ? REG_ADI.EQ1940Dual30B1.f15413a : REG_ADI.EQ1940Dual40B1.f15413a;
        if (i2 == 20) {
            i5 = 8388608;
            i4 = 0;
            i7 = 0;
            i8 = 0;
            i6 = 0;
        } else {
            i4 = i5;
        }
        synchronized (this) {
            D1(i9, 0, s0.c(i5, 3), s0.c(i5, 2), s0.c(i5, 1), s0.c(i5, 0));
            D1(i9, 1, s0.c(i6, 3), s0.c(i6, 2), s0.c(i6, 1), s0.c(i6, 0));
            D1(i9, 2, s0.c(i4, 3), s0.c(i4, 2), s0.c(i4, 1), s0.c(i4, 0));
            D1(i9, 3, s0.c(i7, 3), s0.c(i7, 2), s0.c(i7, 1), s0.c(i7, 0));
            D1(i9, 4, s0.c(i8, 3), s0.c(i8, 2), s0.c(i8, 1), s0.c(i8, 0));
            o2(REG_ADI.REG_COREREGISTER_IC_1_ADDR.f15413a, this.G1);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v12 */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v19 */
    /* JADX WARN: Type inference failed for: r6v16 */
    /* JADX WARN: Type inference failed for: r6v17 */
    /* JADX WARN: Type inference failed for: r6v18 */
    /* JADX WARN: Type inference failed for: r6v19 */
    /* JADX WARN: Type inference failed for: r6v20 */
    /* JADX WARN: Type inference failed for: r6v21 */
    /* JADX WARN: Type inference failed for: r6v22 */
    /* JADX WARN: Type inference failed for: r6v23 */
    /* JADX WARN: Type inference failed for: r6v30 */
    /* JADX WARN: Type inference failed for: r6v34 */
    /* JADX WARN: Type inference failed for: r6v38 */
    /* JADX WARN: Type inference failed for: r6v39 */
    @Override // module.sound.AudioDevice
    public void W0() {
        super.W0();
        if (this.f15293c1 == null) {
            this.f15293c1 = s0.A(App.c(), R.raw.c32107s_program_data_ic_1, 16);
        }
        if (this.f15294d1 == null) {
            this.f15294d1 = s0.A(App.c(), R.raw.c32107s_param_data_ic_1, 16);
        }
        int i2 = 0;
        int iN2 = 0;
        do {
            i2++;
            this.d2 = false;
            n2(REG.RESET.f15384a, 129);
            int length = this.K0.length / 2;
            for (int i3 = 0; i3 < length; i3++) {
                int[] iArr = this.K0;
                int i4 = i3 * 2;
                int i5 = iArr[i4];
                int i6 = iArr[i4 + 1];
                if (!(i5 == 65535 && i6 == 255) && (iN2 = n2(i5, i6)) < 0) {
                    break;
                }
            }
            if (iN2 >= 0 || i2 >= 50) {
                W1(n2, HPF.FA.f15324a, 0.7d);
                W1(n2, HPF.FB.f15324a, 0.7d);
                W1(n2, HPF.RA.f15324a, 0.7d);
                W1(n2, HPF.RB.f15324a, 0.7d);
                l2(IIR.A, this.R1);
                l2(IIR.B, this.S1);
                l(this.f15052f ? 1 : 0);
                s0.C(100L);
                this.d2 = true;
                REG_ADI reg_adi = REG_ADI.REG_COREREGISTER_IC_1_ADDR;
                iN2 = (((((o2(reg_adi.f15413a, this.f15295e1) == this.f15295e1.length + 2) != false && o2(REG_ADI.PROGRAM_ADDR_IC_1.f15413a, this.f15293c1) == this.f15293c1.length + 2) != false && o2(REG_ADI.PARAM_ADDR_IC_1.f15413a, this.f15294d1) == this.f15294d1.length + 2) != false && o2(reg_adi.f15413a, this.f15296f1) == this.f15296f1.length + 2) != false && o2(reg_adi.f15413a, this.f15297g1) == this.f15297g1.length + 2) != false ? 1 : -1;
                if (iN2 < 0 && i2 < 50) {
                    e2();
                }
            } else {
                e2();
            }
            if (i2 >= 50) {
                break;
            }
        } while (iN2 < 0);
        if (J1(iN2, 1)) {
            w0(this.f15062k);
            V1(this.P1[0], HPF.FA.f15324a);
            Y1(this.P1[1] * 100, HPF.FB.f15324a);
            V1(this.P1[2], HPF.RA.f15324a);
            Y1(this.P1[3] * 100, HPF.RB.f15324a);
            int[] iArr2 = this.N1;
            B0(65536, iArr2[0], iArr2[1]);
            int[] iArr3 = this.O1;
            B0(131072, iArr3[0], iArr3[1]);
            l1(this.L1);
            k1(this.I1);
            H1(this.L1);
            i1(1, this.U1[0]);
            i1(2, this.V1[0]);
            h1(2, this.V1[1]);
            n2(REG.FR.f15384a, this.P0[0]);
            n2(REG.RL.f15384a, this.P0[0]);
            n2(REG.RR.f15384a, this.P0[0]);
            n2(REG.SWR.f15384a, this.P0[0]);
            a1(69632, this.Q1[0]);
            a1(73728, this.Q1[1]);
            a1(135168, this.Q1[2]);
            a1(139264, this.Q1[3]);
            a1(65536, this.Q1[4]);
            a(u0.b.D);
            g2(this.A);
            o(this.f15092z);
            i2(REG.SUBHPF, this.X1);
            i2(REG.SUBLPF, this.W1);
            h2(this.C);
            O1();
            y1(f.C0);
        }
    }

    public void W1(int i2, int i3, double d2) {
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
        n2(REG.IIRCOEFSELECTOR.f15384a, i3);
        n2(REG.IIRCOEF.f15384a, s0.c(i5, 3), s0.c(i5, 2), s0.c(i5, 1), s0.c(i5, 0), s0.c(i6, 3), s0.c(i6, 2), s0.c(i6, 1), s0.c(i6, 0), s0.c(i5, 3), s0.c(i5, 2), s0.c(i5, 1), s0.c(i5, 0), s0.c(i7, 3), s0.c(i7, 2), s0.c(i7, 1), s0.c(i7, 0), s0.c(i8, 3), s0.c(i8, 2), s0.c(i8, 1), s0.c(i8, 0));
    }

    @Override // module.sound.AudioDevice
    public void X0(int... iArr) {
        if (iArr == null || iArr.length != 2) {
            return;
        }
        n2(2048, iArr[0]);
        n2(GLES10.GL_EXP2, iArr[1]);
    }

    public void X1(int i2) {
        n2(REG.IIRCOEFSELECTOR.f15384a, i2);
    }

    public void Y1(int i2, int i3) {
        int i4;
        if (i3 < 0 || i3 > 3) {
            return;
        }
        Log.e("C32107S", " 32107 lpfCoefSet selector : " + i3 + " set freq : " + i2);
        double d2 = (((double) i2) * 6.283185307179586d) / 48000.0d;
        double dCos = Math.cos(d2);
        double dSin = Math.sin(d2) / (this.f2 == 2 ? 2.0d / Math.sqrt(3.0d) : Math.sqrt(2.0d));
        double d3 = 1.0d - dCos;
        double d4 = dSin + 1.0d;
        int i5 = (int) (((d3 / 2.0d) / d4) * 8388608.0d);
        int i6 = (int) ((d3 / d4) * 8388608.0d);
        int i7 = (int) (((dCos * 2.0d) / d4) * 8388608.0d);
        int i8 = (int) (((dSin - 1.0d) / d4) * 8388608.0d);
        int i9 = i3 == HPF.FB.f15324a ? REG_ADI.EQ1940Dual10B1.f15413a : REG_ADI.EQ1940Dual20B1.f15413a;
        if (i2 == 20000) {
            i5 = 8388608;
            i4 = 0;
            i7 = 0;
            i8 = 0;
            i6 = 0;
        } else {
            i4 = i5;
        }
        synchronized (this) {
            D1(i9, 0, s0.c(i5, 3), s0.c(i5, 2), s0.c(i5, 1), s0.c(i5, 0));
            D1(i9, 1, s0.c(i6, 3), s0.c(i6, 2), s0.c(i6, 1), s0.c(i6, 0));
            D1(i9, 2, s0.c(i4, 3), s0.c(i4, 2), s0.c(i4, 1), s0.c(i4, 0));
            D1(i9, 3, s0.c(i7, 3), s0.c(i7, 2), s0.c(i7, 1), s0.c(i7, 0));
            D1(i9, 4, s0.c(i8, 3), s0.c(i8, 2), s0.c(i8, 1), s0.c(i8, 0));
            o2(REG_ADI.REG_COREREGISTER_IC_1_ADDR.f15413a, this.G1);
        }
    }

    public void Z1(boolean z2) {
        if (this.K1 == z2) {
            return;
        }
        this.K1 = z2;
        REG reg = REG.MIXON;
        int iD2 = d2(reg.f15384a);
        int i2 = reg.f15384a;
        int[] iArr = new int[1];
        iArr[0] = z2 ? iD2 | 112 : iD2 & 143;
        n2(i2, iArr);
        G1(z2);
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

    /* JADX WARN: Multi-variable type inference failed */
    @Override // y0.e
    public void a(int i2) {
        char c2;
        boolean z2;
        g gVar;
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
            i4 = CHANNEL.MUSIC.f15314a;
        }
        this.i2 = i4 == CHANNEL.MUSIC.f15314a;
        c4 c4Var = j4.f16466d;
        if (c4Var == null || !c4Var.l3()) {
            c2 = 0;
        } else {
            this.i2 = false;
            c2 = 1;
        }
        if (c2 == 0 && i2 == 1 && (gVar = e.f2254a) != null && ((Chip) gVar).M()) {
            this.i2 = false;
            c2 = 1;
        }
        if (this.f15086w) {
            boolean z3 = this.i2;
            if (i2 == 2) {
                z2 = z3;
                this.i2 = false;
                z2 = 0;
            } else if (!z3) {
                z2 = c2 ^ 1;
            }
            String name = AudioManager.class.getName();
            Class cls = Boolean.TYPE;
            if (d0.c(name, "setVoiceSwitch2iis", cls) != null) {
                d0.e(AudioManager.class.getName(), this.Y1, "setVoiceSwitch2iis", new Class[]{cls}, Boolean.valueOf(z2));
                d0.e(AudioManager.class.getName(), this.Y1, "setAudioSwitch2iis", new Class[]{cls}, Boolean.valueOf(z2));
            } else {
                String name2 = AudioManager.class.getName();
                AudioManager audioManager = this.Y1;
                Class cls2 = Integer.TYPE;
                d0.e(name2, audioManager, "setWiredDeviceConnectionState", new Class[]{cls2, cls2, String.class, String.class}, 8, Integer.valueOf(!z2), ProxyProperties.LOCAL_EXCL_LIST, ProxyProperties.LOCAL_EXCL_LIST);
            }
        }
        K1(this.i2);
        F1(this.i2);
        n2(REG.CHANNEL.f15384a, i4);
        int i5 = f.f18090z0[i2];
        if (i5 < 0 || i5 >= 48) {
            return;
        }
        m(i5, f.f18084w0[i5]);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // module.sound.AudioDevice
    public void a1(int i2, int i3) {
        int i4;
        int i5;
        int i6 = 40 - i3;
        Log.e("C32107S", "speakerGain index: " + i2 + " gain: " + i3 + " value: " + i6);
        int i7 = -1;
        int i8 = 1;
        switch (i2) {
            case 65536:
                int[] iArr = this.Q1;
                if (iArr[4] != i3) {
                    iArr[4] = i3;
                    h0 h0Var = this.f15080t;
                    AudioDevice.STORE store = AudioDevice.STORE.SPEAKER_GAINS;
                    h0Var.r(store.ordinal(), this.Q1);
                    this.f15080t.e(store.ordinal());
                    super.a1(i2, i3);
                }
                int i9 = (20 - i3) + 160;
                n2(REG.FL.f15384a, i9);
                n2(REG.RL.f15384a, i9);
                i8 = -1;
                break;
            case 69632:
                i7 = REG_ADI.BAL_GAIN_FL_ADDRL.f15413a;
                i8 = 0;
                break;
            case 73728:
                i7 = REG_ADI.BAL_GAIN_FR_ADDRL.f15413a;
                break;
            case 135168:
                i4 = 2;
                i5 = REG_ADI.BAL_GAIN_RL_ADDRL.f15413a;
                int i10 = i5;
                i8 = i4;
                i7 = i10;
                break;
            case 139264:
                i4 = 3;
                i5 = REG_ADI.BAL_GAIN_RR_ADDRL.f15413a;
                int i11 = i5;
                i8 = i4;
                i7 = i11;
                break;
            default:
                i8 = -1;
                break;
        }
        if (Q1(i7, i8, i6)) {
            super.a1(i2, i3);
        }
    }

    public void a2(REG reg, int i2, int i3) {
        if (i2 > 7) {
            i2 = 0;
        }
        if (i3 > 12) {
            i3 = 0;
        }
        int[] iArr = {0, 0, 0, 0};
        if (i3 == 0 || i2 == 0) {
            iArr[3] = 1;
        } else {
            iArr[3] = 0;
        }
        synchronized (this) {
            if (reg == REG.P2B_FRONT) {
                if (i3 != 0) {
                    E1(REG_ADI.BASS_ENHANCE_ADDR0.f15413a, this.w1[i2]);
                    E1(REG_ADI.BASS_ENHANCE_ADDR1.f15413a, this.C1[i3]);
                    REG_ADI reg_adi = REG_ADI.BASS_ENHANCE_ADDR2;
                    D1(reg_adi.f15413a, 0, this.x1[i2]);
                    D1(reg_adi.f15413a, 1, this.y1[i2]);
                    D1(reg_adi.f15413a, 2, this.z1[i2]);
                    D1(reg_adi.f15413a, 3, this.A1[i2]);
                    D1(reg_adi.f15413a, 4, this.B1[i2]);
                    o2(REG_ADI.REG_COREREGISTER_IC_1_ADDR.f15413a, this.G1);
                }
                E1(REG_ADI.SWITCH_BASS_ENHANCE_ADDR_F.f15413a, iArr);
            } else {
                if (i3 != 0) {
                    E1(REG_ADI.BASS_ENHANCE_ADDR20.f15413a, this.w1[i2]);
                    E1(REG_ADI.BASS_ENHANCE_ADDR21.f15413a, this.C1[i3]);
                    REG_ADI reg_adi2 = REG_ADI.BASS_ENHANCE_ADDR22;
                    D1(reg_adi2.f15413a, 0, this.x1[i2]);
                    D1(reg_adi2.f15413a, 1, this.y1[i2]);
                    D1(reg_adi2.f15413a, 2, this.z1[i2]);
                    D1(reg_adi2.f15413a, 3, this.A1[i2]);
                    D1(reg_adi2.f15413a, 4, this.B1[i2]);
                    o2(REG_ADI.REG_COREREGISTER_IC_1_ADDR.f15413a, this.G1);
                }
                E1(REG_ADI.SWITCH_BASS_ENHANCE_ADDR_R.f15413a, iArr);
            }
        }
    }

    @Override // module.sound.AudioDevice
    public void b1(boolean z2) {
        if (this.e2 != z2) {
            return;
        }
        boolean z3 = !z2;
        this.e2 = z3;
        if (z3) {
            j(null);
        }
        super.b1(z2);
    }

    public void b2(boolean z2) {
    }

    @Override // module.sound.AudioDevice
    public int[] c1() {
        int i2;
        int[] iArr = new int[16];
        int[] iArrC2 = c2(REG.SPECTRUM.f15384a, 32);
        int i3 = 0;
        boolean z2 = false;
        while (true) {
            if (i3 >= 16) {
                break;
            }
            int i4 = i3 * 2;
            iArr[i3] = ((255 & iArrC2[i4]) << 8) | (iArrC2[i4 + 1] & 255);
            z2 = z2 || iArr[i3] >= 5;
            i3++;
        }
        boolean z3 = z2 || e0();
        if ((Configure.Property.BLUETOOTH_TYPE.d(0) == 7 && ((i2 = u0.b.D) == 3 || i2 == 2)) || u0.b.D == 1) {
            z3 = true;
        }
        if (this.J) {
            if (z3) {
                if (this.h2) {
                    this.h2 = false;
                    j(null);
                    a1(65536, this.Q1[4]);
                }
                this.Z1 = 0;
            } else {
                int i5 = this.Z1;
                if (i5 < 7) {
                    this.Z1 = i5 + 1;
                }
                if (this.Z1 == 6) {
                    this.h2 = true;
                    int[] iArr2 = this.P0;
                    int length = iArr2.length - 1;
                    n2(REG.FL.f15384a, iArr2[length]);
                    n2(REG.FR.f15384a, this.P0[length]);
                    n2(REG.RL.f15384a, this.P0[length]);
                    n2(REG.RR.f15384a, this.P0[length]);
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

    public int[] c2(int i2, int i3) {
        return this.J1.e(i3, l2, true, REG.READBACKH.f15384a, REG.READBACKL.f15384a, s0.c(i2, 1), s0.c(i2, 0));
    }

    public int d2(int i2) {
        return c2(i2, 1)[0];
    }

    @Override // module.sound.AudioDevice, y0.e
    public void e() {
        super.e();
    }

    @Override // module.sound.AudioDevice
    public void e1(int i2, int i3) {
        if (this.A) {
            REG reg = null;
            if (i2 == 0 && this.W1 != i3) {
                reg = REG.SUBLPF;
                this.W1 = i3;
            } else if (i2 == 256 && this.X1 != i3) {
                reg = REG.SUBHPF;
                this.X1 = i3;
            }
            if (reg != null) {
                i2(reg, i3);
                super.e1(i2, i3);
            }
        }
    }

    public final void e2() {
        ToolsJni.cmd_251_Normal_Io_Set(2, 0);
        s0.C(100L);
        ToolsJni.cmd_251_Normal_Io_Set(2, 1);
        s0.C(500L);
    }

    @Override // module.sound.AudioDevice, y0.e
    public void f() {
        super.f();
    }

    @Override // module.sound.AudioDevice
    public void f1(boolean z2) {
        if (this.A == z2) {
            return;
        }
        this.A = z2;
        g2(z2);
        super.f1(z2);
    }

    public void f2(int i2) {
        n2(REG.SETUP.f15384a, i2);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:23:0x0063  */
    @Override // module.sound.AudioDevice
    public void g0(int i2, int i3) {
        HPF hpf;
        Log.e("C32107S", " 32107 set index : " + i2 + " set freq : " + i3);
        switch (i2) {
            case 65536:
                g0(65552, i3);
                hpf = null;
                break;
            case 65552:
                int[] iArr = this.P1;
                if (iArr[0] != i3) {
                    hpf = HPF.FA;
                    iArr[0] = i3;
                } else {
                    hpf = null;
                }
                break;
            case 65568:
                int[] iArr2 = this.P1;
                if (iArr2[1] != i3) {
                    hpf = HPF.FB;
                    iArr2[1] = i3;
                } else {
                    hpf = null;
                }
                break;
            case 131072:
                g0(WifiStateMachine.CMD_STATIC_IP_FAILURE, i3);
                hpf = null;
                break;
            case WifiStateMachine.CMD_STATIC_IP_FAILURE /* 131088 */:
                int[] iArr3 = this.P1;
                if (iArr3[2] != i3) {
                    hpf = HPF.RA;
                    iArr3[2] = i3;
                } else {
                    hpf = null;
                }
                break;
            case 131104:
                int[] iArr4 = this.P1;
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
            if ((i2 & 16) != 0) {
                V1(i3, hpf.f15324a);
            } else if ((i2 & 32) != 0) {
                Y1(i3 * 100, hpf.f15324a);
            }
            super.g0(i2, i3);
        }
        O1();
    }

    @Override // module.sound.AudioDevice
    public boolean g1() {
        return this.c2;
    }

    public void g2(boolean z2) {
        REG reg = REG.SETUP;
        int iD2 = d2(reg.f15384a);
        int i2 = reg.f15384a;
        int[] iArr = new int[1];
        iArr[0] = z2 ? iD2 & 223 : iD2 | 32;
        n2(i2, iArr);
    }

    @Override // module.sound.AudioDevice, y0.e
    public void h(int i2) {
        super.h(i2);
        O1();
    }

    @Override // module.sound.AudioDevice
    public void h1(int i2, int i3) {
        boolean z2;
        if (i3 > 10) {
            i3 = 10;
        }
        boolean z3 = false;
        if (i2 == 1) {
            int[] iArr = this.U1;
            if (iArr[1] != i3) {
                iArr[1] = i3;
                h0 h0Var = this.f15080t;
                AudioDevice.STORE store = AudioDevice.STORE.SURR_MODE1;
                h0Var.r(store.ordinal(), this.U1);
                this.f15080t.e(store.ordinal());
                z2 = true;
            } else {
                z2 = false;
            }
            synchronized (this) {
                REG_ADI reg_adi = REG_ADI.PHAT_GAIN_ADDR;
                D1(reg_adi.f15413a, 0, this.f15305o1[this.U1[0]]);
                D1(reg_adi.f15413a, 1, this.f15306p1[i3]);
                o2(REG_ADI.REG_COREREGISTER_IC_1_ADDR.f15413a, this.G1);
            }
            z3 = z2;
        } else if (i2 == 2) {
            int[] iArr2 = this.V1;
            if (iArr2[1] != i3) {
                iArr2[1] = i3;
                h0 h0Var2 = this.f15080t;
                AudioDevice.STORE store2 = AudioDevice.STORE.SURR_MODE2;
                h0Var2.r(store2.ordinal(), this.V1);
                this.f15080t.e(store2.ordinal());
                z3 = true;
            }
            synchronized (this) {
                E1(REG_ADI.SPHAT_FREQ_ADDR.f15413a, this.r1[i3]);
            }
        }
        if (z3) {
            super.h1(i2, i3);
        }
    }

    public void h2(boolean z2) {
        REG reg = REG.SUBLPF;
        int iD2 = d2(reg.f15384a);
        int i2 = reg.f15384a;
        int[] iArr = new int[1];
        iArr[0] = z2 ? iD2 & 191 : iD2 | 64;
        n2(i2, iArr);
    }

    @Override // module.sound.AudioDevice
    public void i1(int i2, int i3) {
        boolean z2;
        boolean z3;
        if (i3 >= 0) {
            int i4 = 10;
            if (i3 > 10) {
                return;
            }
            if (i2 == 1) {
                int[] iArr = this.U1;
                if (iArr[0] != i3) {
                    iArr[0] = i3;
                    h0 h0Var = this.f15080t;
                    AudioDevice.STORE store = AudioDevice.STORE.SURR_MODE1;
                    h0Var.r(store.ordinal(), this.U1);
                    this.f15080t.e(store.ordinal());
                    z2 = true;
                } else {
                    z2 = false;
                }
                synchronized (this) {
                    E1(REG_ADI.PHAT_GAIN_ADDR.f15413a, this.f15305o1[i3]);
                    int i5 = this.U1[1];
                    if (i5 <= 10) {
                        i4 = i5;
                    }
                    E1(REG_ADI.PHAT_FREQ_ADDR.f15413a, this.f15306p1[i4]);
                }
                z3 = z2;
            } else if (i2 != 2) {
                z3 = false;
            } else {
                int[] iArr2 = this.V1;
                if (iArr2[0] != i3) {
                    iArr2[0] = i3;
                    h0 h0Var2 = this.f15080t;
                    AudioDevice.STORE store2 = AudioDevice.STORE.SURR_MODE2;
                    h0Var2.r(store2.ordinal(), this.V1);
                    this.f15080t.e(store2.ordinal());
                    z3 = true;
                } else {
                    z3 = false;
                }
                synchronized (this) {
                    REG_ADI reg_adi = REG_ADI.SPHAT_GAIN_ADDR;
                    int i6 = i3 * 3;
                    D1(reg_adi.f15413a, 0, this.f15307q1[i6]);
                    D1(reg_adi.f15413a, 1, this.f15307q1[i6 + 1]);
                    D1(reg_adi.f15413a, 2, this.f15307q1[i6 + 2]);
                    o2(REG_ADI.REG_COREREGISTER_IC_1_ADDR.f15413a, this.G1);
                }
            }
            if (z3) {
                h.s0(35, i2, i3);
            }
        }
    }

    public void i2(REG reg, int i2) {
        n2(reg.f15384a, i2 | (d2(reg.f15384a) & 240));
    }

    @Override // module.sound.AudioDevice, y0.e
    public void j(int[] iArr) {
        if (this.f15050e && this.e2 && !this.h2) {
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
            int iMin = 40 - Math.min(40, (int) (((double) (iMax * 2.5f)) + 0.5d));
            int iMin2 = 40 - Math.min(40, (int) (((double) (iMax2 * 2.5f)) + 0.5d));
            int iMin3 = 40 - Math.min(40, (int) (((double) (iMax3 * 2.5f)) + 0.5d));
            int iMin4 = 40 - Math.min(40, (int) (((double) (iMax4 * 2.5f)) + 0.5d));
            a1(69632, iMin);
            a1(73728, iMin2);
            a1(135168, iMin3);
            a1(139264, iMin4);
            super.j(null);
        }
    }

    @Override // module.sound.AudioDevice
    public int j0(int i2) {
        int i3 = this.f15048d.get(i2);
        if (i3 < 0) {
            i3 = CHANNEL.MUSIC.f15314a;
        }
        return i3 == CHANNEL.MUSIC.f15314a ? 1 : 0;
    }

    @Override // module.sound.AudioDevice
    public void j1(int i2, int i3) {
        boolean z2 = false;
        if (i3 > 160 || i3 < 0) {
            i3 = 0;
        }
        switch (i2) {
            case 65536:
                int[] iArr = this.T1;
                z2 = i3 != iArr[4];
                iArr[4] = i3;
                break;
            case 69632:
                int[] iArr2 = this.T1;
                boolean z3 = i3 != iArr2[0];
                iArr2[0] = i3;
                z2 = z3;
                break;
            case 73728:
                int[] iArr3 = this.T1;
                z2 = i3 != iArr3[1];
                iArr3[1] = i3;
                break;
            case 135168:
                int[] iArr4 = this.T1;
                z2 = i3 != iArr4[2];
                iArr4[2] = i3;
                break;
            case 139264:
                int[] iArr5 = this.T1;
                z2 = i3 != iArr5[3];
                iArr5[3] = i3;
                break;
            case 1073741824:
                int[] iArr6 = this.T1;
                z2 = (i3 == iArr6[0] && i3 == iArr6[1] && i3 == iArr6[2] && i3 == iArr6[3] && i3 == iArr6[4]) ? false : true;
                j1(69632, i3);
                j1(73728, i3);
                j1(135168, i3);
                j1(139264, i3);
                j1(65536, i3);
                break;
        }
        j2(i2, i3);
        if (z2) {
            Log.e("C32107S", "   <<<>>>> flush data start  surroundLevel :  " + Arrays.toString(this.T1));
            H0(AudioDevice.STORE.SURRLEVEL, this.T1);
            super.j1(i2, i3);
        }
    }

    public void j2(int i2, int i3) {
        synchronized (this) {
            int[] iArr = {0, 0, 0, 1};
            Log.e("C32107S", "    surrLevel  index :  " + i2 + "   level: " + i3);
            int i4 = (this.I1 == 1 ? (i3 * 384) / 160 : (i3 * 192) / 160) + 1;
            iArr[2] = s0.c(i4, 1);
            iArr[3] = s0.c(i4, 0);
            switch (i2) {
                case 65536:
                    k2(i2, i3);
                    break;
                case 69632:
                    E1(REG_ADI.TIME_ALIGNMENT_FL.f15413a, iArr);
                    break;
                case 73728:
                    E1(REG_ADI.TIME_ALIGNMENT_FR.f15413a, iArr);
                    break;
                case 135168:
                    E1(REG_ADI.TIME_ALIGNMENT_RL.f15413a, iArr);
                    break;
                case 139264:
                    E1(REG_ADI.TIME_ALIGNMENT_RR.f15413a, iArr);
                    break;
                case 1073741824:
                    REG_ADI reg_adi = REG_ADI.TIME_ALIGNMENT_FR;
                    D1(reg_adi.f15413a, 0, iArr);
                    D1(reg_adi.f15413a, 1, iArr);
                    D1(reg_adi.f15413a, 2, iArr);
                    D1(reg_adi.f15413a, 3, iArr);
                    o2(REG_ADI.REG_COREREGISTER_IC_1_ADDR.f15413a, this.G1);
                    break;
            }
        }
    }

    @Override // module.sound.AudioDevice
    public void k1(int i2) {
        synchronized (this) {
            try {
                if (i2 == 0) {
                    E1(REG_ADI.SPEC_EFFACT_ADDR.f15413a, this.f15301k1);
                    a.f.p().s("进入直通模式--- ");
                } else if (i2 == 1) {
                    E1(REG_ADI.SPEC_EFFACT_ADDR.f15413a, this.f15299i1);
                    a.f.p().s("进入phat模式--- ");
                } else if (i2 == 2) {
                    E1(REG_ADI.SPEC_EFFACT_ADDR.f15413a, this.f15300j1);
                    a.f.p().s("进入SPhat----");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (this.I1 == i2) {
            return;
        }
        this.I1 = i2;
        super.k1(i2);
    }

    public void k2(int i2, int i3) {
        int i4 = this.I1 == 1 ? (i3 * 384) / 160 : (i3 * 192) / 160;
        int iC = s0.c(i4, 1);
        int iC2 = s0.c(i4, 0);
        if (i2 == 65536) {
            n2(REG.TIME_ALIGNMENT_FL.f15384a, iC, iC2);
            return;
        }
        if (i2 == 73728) {
            n2(REG.TIME_ALIGNMENT_FR.f15384a, iC, iC2);
            return;
        }
        if (i2 == 135168) {
            n2(REG.TIME_ALIGNMENT_RL.f15384a, iC, iC2);
            n2(REG.TIME_ALIGNMENT_RL2.f15384a, iC, iC2);
            return;
        }
        if (i2 == 139264) {
            n2(REG.TIME_ALIGNMENT_RR.f15384a, iC, iC2);
            n2(REG.TIME_ALIGNMENT_RR2.f15384a, iC, iC2);
        } else {
            if (i2 != 1073741824) {
                return;
            }
            n2(REG.TIME_ALIGNMENT_FL.f15384a, iC, iC2);
            n2(REG.TIME_ALIGNMENT_FR.f15384a, iC, iC2);
            n2(REG.TIME_ALIGNMENT_RL.f15384a, iC, iC2);
            n2(REG.TIME_ALIGNMENT_RR.f15384a, iC, iC2);
            n2(REG.TIME_ALIGNMENT_RL2.f15384a, iC, iC2);
            n2(REG.TIME_ALIGNMENT_RR2.f15384a, iC, iC2);
        }
    }

    @Override // module.sound.AudioDevice, y0.e
    public void l(int i2) {
        int iD2 = d2(REG.SETUP.f15384a);
        boolean z2 = i2 == 1;
        boolean z3 = z2 != this.f15052f;
        this.f15052f = z2;
        super.l(i2);
        if (!this.f15052f) {
            n2(REG.VOL_FL_BOOST.f15384a, 128 - k2);
            n2(REG.VOL_FR_BOOST.f15384a, 128 - k2);
            n2(REG.VOL_RL_BOOST.f15384a, (128 - k2) - 6);
            n2(REG.VOL_RR_BOOST.f15384a, 128 - k2);
            n2(REG.VOL_SL_BOOST.f15384a, (128 - k2) - 11);
            if (z3) {
                s0.C(200L);
            }
            f2(z2 ? iD2 & i.a.Theme_preferenceHeaderPanelStyle : iD2 | 8);
            return;
        }
        f2(z2 ? iD2 & i.a.Theme_preferenceHeaderPanelStyle : iD2 | 8);
        int i3 = k2 + (AudioDevice.H0 ? q2[this.f15054g] : 12);
        int i4 = 128 - i3;
        n2(REG.VOL_FL_BOOST.f15384a, i4);
        n2(REG.VOL_FR_BOOST.f15384a, i4);
        n2(REG.VOL_RL_BOOST.f15384a, i4 - 6);
        n2(REG.VOL_RR_BOOST.f15384a, i4);
        n2(REG.VOL_SL_BOOST.f15384a, i4 - 11);
        n2(1794, ((i3 - k2) / 2) | 144);
    }

    @Override // module.sound.AudioDevice
    public void l1(boolean z2) {
        if (this.L1 == z2) {
            return;
        }
        this.L1 = true;
        H1(z2);
        super.l1(z2);
    }

    public void l2(IIR iir, int i2) {
        X1(iir.f15328a);
        m2(i2 - 10);
    }

    @Override // y0.e
    public void m(int i2, int i3) {
        int i4;
        if (i2 < 0 || i2 >= 48 || (i4 = u0.b.D) < 0 || i4 >= 20 || f.f18090z0[i4] != i2) {
            return;
        }
        n2(REG.SB.f15384a, o0.a(i3, 0, 20) + (V(i4) == CHANNEL.DVD.f15314a ? 2 : 0));
    }

    @Override // module.sound.AudioDevice
    public void m0() {
        super.m0();
        EQType eQType = EQType.BIT_27;
        this.H1 = eQType;
        int i2 = eQType == EQType.BIT_16 ? 16 : 27;
        this.f15060j = i2;
        this.f15074q = new int[i2 * this.f15072p];
        this.N1[0] = Y(AudioDevice.STORE.P2BFFREQ, 0);
        this.N1[1] = Y(AudioDevice.STORE.P2BFGAIN, 0);
        this.O1[0] = Y(AudioDevice.STORE.P2BRFREQ, 0);
        this.O1[1] = Y(AudioDevice.STORE.P2BRGAIN, 0);
        this.L1 = true;
        this.K1 = Y(AudioDevice.STORE.MIXON, 0) == 1;
        this.M1 = Y(AudioDevice.STORE.P2BASSON, 1) == 1;
        this.I1 = Y(AudioDevice.STORE.SURRMOED, this.I1);
        this.T1 = Z(AudioDevice.STORE.SURRLEVEL, this.T1);
        this.P1[0] = Y(AudioDevice.STORE.HPFFA, n2);
        this.P1[1] = Y(AudioDevice.STORE.HPFFB, 200);
        this.P1[2] = Y(AudioDevice.STORE.HPFRA, n2);
        this.P1[3] = Y(AudioDevice.STORE.HPFRB, 200);
        AudioDevice.STORE store = AudioDevice.STORE.IIRA;
        this.R1 = Y(store, this.R1);
        this.S1 = Y(store, this.S1);
        this.W1 = Y(AudioDevice.STORE.SBWLFREQ, this.W1);
        this.X1 = Y(AudioDevice.STORE.SBWHFREQ, this.X1);
        this.Q1 = Z(AudioDevice.STORE.SPEAKER_GAINS, this.Q1);
        this.U1 = Z(AudioDevice.STORE.SURR_MODE1, this.U1);
        this.V1 = Z(AudioDevice.STORE.SURR_MODE2, this.V1);
        this.f2 = Y(AudioDevice.STORE.LOW_PASS_FILTERING, this.f2);
        this.g2 = Y(AudioDevice.STORE.HIGH_PASS_FILTERING, this.g2);
        this.C = Y(AudioDevice.STORE.SUBWOOF_PHASE, this.C ? 1 : 0) == 1;
    }

    public void m2(int i2) {
        int iPow = (int) (Math.pow(10.0d, ((double) i2) / 20.0d) * 1.34217728E8d);
        int[] iArrA = s0.a(20);
        iArrA[0] = s0.c(iPow, 3);
        iArrA[1] = s0.c(iPow, 2);
        iArrA[2] = s0.c(iPow, 1);
        iArrA[3] = s0.c(iPow, 0);
        n2(REG.IIRCOEF.f15384a, iArrA);
    }

    public int n2(int i2, int... iArr) {
        return this.J1.d(l2, new int[]{s0.c(i2, 1), s0.c(i2, 0)}, iArr);
    }

    @Override // module.sound.AudioDevice, y0.e
    public void o(int i2) {
        if (this.A) {
            int iS1 = S1(o0.a(f.V0, 0, 10));
            n2(REG.SWL.f15384a, this.N0[this.D ? 0 : iS1]);
            if (this.B) {
                return;
            }
            super.o(iS1);
        }
    }

    @Override // module.sound.AudioDevice
    public void o0(int i2) {
        this.f15060j = 27;
        int i3 = 27 * this.f15072p;
        int[] iArrCopyOf = new int[i3];
        int[] iArrI = this.f15080t.i(Q(i2).ordinal());
        if (iArrI == null || iArrI.length != i3) {
            int[] iArr = this.T0;
            int length = iArr.length;
            Log.e("c32107", "   loadCustomData  size :  " + length + "    band  *  eqParamNum  = " + (this.f15060j * this.f15072p) + " customMode: " + i2);
            int i4 = this.f15060j;
            int i5 = this.f15072p;
            if (length == i4 * i5) {
                System.arraycopy(iArr, 0, iArrCopyOf, 0, length);
            } else if (length < i4 * i5) {
                System.arraycopy(iArr, 0, iArrCopyOf, 0, length);
                System.arraycopy(iArr, 0, iArrCopyOf, length, (this.f15060j * this.f15072p) - length);
            }
        } else {
            iArrCopyOf = Arrays.copyOf(iArrI, iArrI.length);
        }
        Z0(i2, iArrCopyOf);
    }

    public int o2(int i2, int... iArr) {
        if (this.d2) {
            return this.J1.d(m2, new int[]{s0.c(i2, 1), s0.c(i2, 0)}, iArr);
        }
        return 0;
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
        Z1(i2 != 0);
        int iMax = Math.max(0, Math.min(i2, this.M0.length - 1));
        this.f15056h = iMax;
        n2(REG.MIXVOL.f15384a, iMax == 0 ? this.M0[iMax] : Math.max(p0(), Math.min(this.M0[iMax] - F0(), q0())));
    }

    @Override // module.sound.AudioDevice, java.lang.Runnable
    public void run() {
        if (this.d2) {
            super.run();
        }
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
                if (this.h2) {
                    return;
                }
                j(null);
                o(f.V0);
                a1(65536, this.Q1[4]);
                return;
            }
            int i2 = REG.FL.f15384a;
            int[] iArr = this.P0;
            n2(i2, iArr[iArr.length - 1]);
            int i3 = REG.FR.f15384a;
            int[] iArr2 = this.P0;
            n2(i3, iArr2[iArr2.length - 1]);
            int i4 = REG.RL.f15384a;
            int[] iArr3 = this.P0;
            n2(i4, iArr3[iArr3.length - 1]);
            int i5 = REG.RR.f15384a;
            int[] iArr4 = this.P0;
            n2(i5, iArr4[iArr4.length - 1]);
            n2(REG.SWL.f15384a, this.N0[0]);
        }
    }

    @Override // module.sound.AudioDevice
    public void w0(int i2) {
        int i3;
        int[] iArrU1 = U1(i2);
        if (I1(this.f15074q, i2)) {
            int i4 = 0;
            System.arraycopy(iArrU1, 0, this.f15074q, 0, iArrU1.length);
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
                iArr2[i4] = iArrU1[i4 * i6];
                iArr[i4] = iArrU1[(i4 * i6) + 1];
                iArr3[i4] = iArrU1[(i6 * i4) + 2];
                i4++;
            }
            h.H(iArr, iArr2, iArr3, i3, this);
        }
        M1(iArrU1);
    }

    @Override // module.sound.AudioDevice
    public void y() {
        if (!this.K1) {
            if (!this.i2) {
                G1(true);
                s0.C(20L);
            }
            REG reg = REG.MIXON;
            n2(reg.f15384a, d2(reg.f15384a) | 112);
            if (this.i2) {
                G1(true);
            }
        }
        REG reg2 = REG.BEEP_SETUP;
        n2(reg2.f15384a, 5);
        s0.C(50L);
        n2(reg2.f15384a, 4);
        if (this.K1) {
            return;
        }
        REG reg3 = REG.MIXON;
        n2(reg3.f15384a, d2(reg3.f15384a) & 143);
        G1(false);
    }
}
