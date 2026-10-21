package module.sound;

import android.bluetooth.BluetoothClass;
import android.content.Context;
import android.media.AudioManager;
import android.media.AudioService;
import android.media.TextTrackRegion;
import android.media.videoeditor.MediaProperties;
import android.net.ConnectivityManager;
import android.net.ProxyProperties;
import android.net.UrlQuerySanitizer;
import android.net.dhcp.DhcpPacket;
import android.net.wifi.WifiStateMachine;
import android.os.Handler;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.provider.Downloads;
import android.text.Spanned;
import android.util.Log;
import android.util.TimedRemoteCaller;
import android.view.Window;
import android.widget.SpellChecker;
import app.App;
import base.Configure;
import chip.Chip;
import com.syu.jni.ToolsJni;
import com.syu.ms.R;
import java.util.Arrays;
import k0.nt;
import n0.c4;
import n0.j4;
import o1.b0;
import o1.d0;
import o1.h0;
import o1.n;
import o1.o0;
import o1.s0;
import plugins.BusKtv;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class C7739 extends AudioDevice {
    public static double[] D9 = {0.0d, 10.0d, 10.0d, 10.0d, 10.0d, 10.0d, 10.0d, 9.5d, 9.0d, 8.5d, 8.0d, 7.5d, 7.0d, 6.5d, 6.0d, 5.5d, 5.0d, 4.5d, 4.0d, 3.5d, 3.0d, 2.5d, 2.0d, 1.5d, 1.0d, 0.5d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d};
    public static double[] E9 = {0.0d, 7.0d, 7.0d, 7.0d, 7.0d, 7.0d, 7.0d, 6.8d, 6.5d, 6.2d, 5.9d, 5.6d, 5.2d, 4.8d, 4.4d, 4.0d, 3.6d, 3.2d, 2.8d, 2.4d, 2.0d, 1.6d, 1.2d, 0.8d, 0.5d, 0.3d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d};
    public static int F9 = 28;
    public static double[] G9 = null;
    public final int A1;
    public final int A2;
    public final int A3;
    public final int A4;
    public final int A5;
    public final int A6;
    public int A7;
    public int A8;
    public final int A9;
    public final int B1;
    public final int B2;
    public final int B3;
    public final int B4;
    public final int B5;
    public final int B6;
    public int B7;
    public boolean B8;
    public final int B9;
    public final int C1;
    public final int C2;
    public final int C3;
    public final int C4;
    public final int C5;
    public final int C6;
    public int C7;
    public boolean C8;
    public final int C9;
    public final int D1;
    public final int D2;
    public final int D3;
    public final int D4;
    public final int D5;
    public final int D6;
    public int D7;
    public boolean D8;
    public final int E1;
    public final int E2;
    public final int E3;
    public final int E4;
    public final int E5;
    public final int E6;
    public AudioManager E7;
    public Runnable E8;
    public final int F1;
    public final int F2;
    public final int F3;
    public final int F4;
    public final int F5;
    public final int F6;
    public boolean F7;
    public Handler F8;
    public final int G1;
    public final int G2;
    public final int G3;
    public final int G4;
    public final int G5;
    public final int G6;
    public boolean G7;
    public Runnable G8;
    public final int H1;
    public final int H2;
    public final int H3;
    public final int H4;
    public final int H5;
    public final int H6;
    public int[] H7;
    public int H8;
    public final boolean I0;
    public final int I1;
    public final int I2;
    public final int I3;
    public final int I4;
    public final int I5;
    public final double I6;
    public int[] I7;
    public int I8;
    public final String J0;
    public final int J1;
    public final int J2;
    public final int J3;
    public final int J4;
    public final int J5;
    public final double J6;
    public int[] J7;
    public boolean J8;
    public final int K0;
    public final int K1;
    public final int K2;
    public final int K3;
    public final int K4;
    public final int K5;
    public final double K6;
    public int[] K7;
    public int K8;
    public final int L0;
    public final int L1;
    public final int L2;
    public final int L3;
    public final int L4;
    public final int L5;
    public final int L6;
    public int[] L7;
    public double[] L8;
    public final int M0;
    public final int M1;
    public final int M2;
    public final int M3;
    public final int M4;
    public final int M5;
    public final int M6;
    public int[] M7;
    public final int M8;
    public final int N0;
    public final int N1;
    public final int N2;
    public final int N3;
    public final int N4;
    public final int N5;
    public final double N6;
    public int[] N7;
    public final int N8;
    public final int O0;
    public final int O1;
    public final int O2;
    public final int O3;
    public final int O4;
    public final int O5;
    public final double O6;
    public int[] O7;
    public boolean O8;
    public final int P0;
    public final int P1;
    public final int P2;
    public final int P3;
    public final int P4;
    public final int P5;
    public final int[] P6;
    public final int P7;
    public int[] P8;
    public final int Q0;
    public final int Q1;
    public final int Q2;
    public final int Q3;
    public final int Q4;
    public final int Q5;
    public final int[] Q6;
    public final int Q7;
    public int Q8;
    public final int R0;
    public final int R1;
    public final int R2;
    public final int R3;
    public final int R4;
    public final int R5;
    public final int[] R6;
    public int R7;
    public final int R8;
    public final int S0;
    public final int S1;
    public final int S2;
    public final int S3;
    public final int S4;
    public final int S5;
    public final int[] S6;
    public final int S7;
    public final int S8;
    public final int T0;
    public final int T1;
    public final int T2;
    public final int T3;
    public final int T4;
    public final int T5;
    public int[] T6;
    public final int T7;
    public final int T8;
    public final int U0;
    public final int U1;
    public final int U2;
    public final int U3;
    public final int U4;
    public final int U5;
    public int[] U6;
    public int[] U7;
    public final int U8;
    public final int V0;
    public final int V1;
    public final int V2;
    public final int V3;
    public final int V4;
    public final int V5;
    public final int[] V6;
    public int[] V7;
    public final int V8;
    public final int W0;
    public final int W1;
    public final int W2;
    public final int W3;
    public final int W4;
    public final int W5;
    public final int[] W6;
    public int[] W7;
    public final int W8;
    public final int X0;
    public final int X1;
    public final int X2;
    public final int X3;
    public final int X4;
    public final int X5;
    public int[] X6;
    public int[] X7;
    public final int X8;
    public final int Y0;
    public final int Y1;
    public final int Y2;
    public final int Y3;
    public final int Y4;
    public final int Y5;
    public final int Y6;
    public int[] Y7;
    public final int Y8;
    public final int Z0;
    public final int Z1;
    public final int Z2;
    public final int Z3;
    public final int Z4;
    public final int Z5;
    public final int Z6;
    public int[] Z7;
    public final int Z8;

    /* JADX INFO: renamed from: a1, reason: collision with root package name */
    public final int f15882a1;
    public final int a2;
    public final int a3;
    public final int a4;
    public final int a5;
    public final int a6;
    public int[] a7;
    public int[] a8;
    public final int a9;

    /* JADX INFO: renamed from: b1, reason: collision with root package name */
    public final int f15883b1;
    public final int b2;
    public final int b3;
    public final int b4;
    public final int b5;
    public final int b6;
    public final int b7;
    public int[] b8;
    public final int b9;

    /* JADX INFO: renamed from: c1, reason: collision with root package name */
    public final int f15884c1;
    public final int c2;
    public final int c3;
    public final int c4;
    public final int c5;
    public final int c6;
    public int[] c7;
    public final int c8;
    public final int c9;

    /* JADX INFO: renamed from: d1, reason: collision with root package name */
    public final int f15885d1;
    public final int d2;
    public final int d3;
    public final int d4;
    public final int d5;
    public final int d6;
    public int[] d7;
    public final int d8;
    public final int d9;

    /* JADX INFO: renamed from: e1, reason: collision with root package name */
    public final int f15886e1;
    public final int e2;
    public final int e3;
    public final int e4;
    public final int e5;
    public final int e6;
    public final int e7;
    public final int e8;
    public final int e9;

    /* JADX INFO: renamed from: f1, reason: collision with root package name */
    public final int f15887f1;
    public final int f2;
    public final int f3;
    public final int f4;
    public final int f5;
    public final int f6;
    public int[] f7;
    public final int f8;
    public final int f9;

    /* JADX INFO: renamed from: g1, reason: collision with root package name */
    public final int f15888g1;
    public final int g2;
    public final int g3;
    public final int g4;
    public final int g5;
    public final int g6;
    public int[] g7;
    public int g8;
    public final int g9;

    /* JADX INFO: renamed from: h1, reason: collision with root package name */
    public final int f15889h1;
    public final int h2;
    public final int h3;
    public final int h4;
    public final int h5;
    public final int h6;
    public final int h7;
    public int[] h8;
    public final int h9;

    /* JADX INFO: renamed from: i1, reason: collision with root package name */
    public final int f15890i1;
    public final int i2;
    public final int i3;
    public final int i4;
    public final int i5;
    public final int i6;
    public int[] i7;
    public int[] i8;
    public final int i9;

    /* JADX INFO: renamed from: j1, reason: collision with root package name */
    public final int f15891j1;
    public final int j2;
    public final int j3;
    public final int j4;
    public final int j5;
    public final int j6;
    public int[] j7;
    public int[] j8;
    public final int j9;

    /* JADX INFO: renamed from: k1, reason: collision with root package name */
    public final int f15892k1;
    public final int k2;
    public final int k3;
    public final int k4;
    public final int k5;
    public final int k6;
    public int[] k7;
    public int[] k8;
    public final int k9;

    /* JADX INFO: renamed from: l1, reason: collision with root package name */
    public final int f15893l1;
    public final int l2;
    public final int l3;
    public final int l4;
    public final int l5;
    public final int l6;
    public final int[] l7;
    public int[] l8;
    public final int l9;

    /* JADX INFO: renamed from: m1, reason: collision with root package name */
    public final int f15894m1;
    public final int m2;
    public final int m3;
    public final int m4;
    public final int m5;
    public final int m6;
    public double[] m7;
    public int[] m8;
    public final int m9;

    /* JADX INFO: renamed from: n1, reason: collision with root package name */
    public final int f15895n1;
    public final int n2;
    public final int n3;
    public final int n4;
    public final int n5;
    public final int n6;
    public int[] n7;
    public final int[] n8;
    public final int n9;

    /* JADX INFO: renamed from: o1, reason: collision with root package name */
    public final int f15896o1;
    public final int o2;
    public final int o3;
    public final int o4;
    public final int o5;
    public final int o6;
    public int[] o7;
    public boolean o8;
    public int[] o9;

    /* JADX INFO: renamed from: p1, reason: collision with root package name */
    public final int f15897p1;
    public final int p2;
    public final int p3;
    public final int p4;
    public final int p5;
    public final int p6;
    public double p7;
    public final int p8;
    public l p9;

    /* JADX INFO: renamed from: q1, reason: collision with root package name */
    public final int f15898q1;
    public final int q2;
    public final int q3;
    public final int q4;
    public final int q5;
    public final int q6;
    public int[] q7;
    public final int q8;
    public final int q9;
    public final int r1;
    public final int r2;
    public final int r3;
    public final int r4;
    public final int r5;
    public final int r6;
    public final int[] r7;
    public final int r8;
    public final int r9;
    public final int s1;
    public final int s2;
    public final int s3;
    public final int s4;
    public final int s5;
    public final int s6;
    public final int[] s7;
    public final int s8;
    public final int s9;
    public final int t1;
    public final int t2;
    public final int t3;
    public final int t4;
    public final int t5;
    public final int t6;
    public final int[] t7;
    public final int t8;
    public final int t9;
    public final int u1;
    public final int u2;
    public final int u3;
    public final int u4;
    public final int u5;
    public final int u6;
    public final int[] u7;
    public final int[] u8;
    public final int u9;
    public final int v1;
    public final int v2;
    public final int v3;
    public final int v4;
    public final int v5;
    public final int v6;
    public final int[] v7;
    public int[] v8;
    public final int v9;
    public final int w1;
    public final int w2;
    public final int w3;
    public final int w4;
    public final int w5;
    public final int w6;
    public final int[] w7;
    public int[] w8;
    public final int w9;
    public final int x1;
    public final int x2;
    public final int x3;
    public final int x4;
    public final int x5;
    public final int x6;
    public final int[] x7;
    public int[] x8;
    public final int x9;
    public final int y1;
    public final int y2;
    public final int y3;
    public final int y4;
    public final int y5;
    public final int y6;
    public final int[] y7;
    public int[] y8;
    public final int y9;
    public final int z1;
    public final int z2;
    public final int z3;
    public final int z4;
    public final int z5;
    public final int z6;
    public n z7;
    public int z8;
    public final int z9;

    public enum CHANNEL {
        IN1(0),
        IN2(1),
        IN3(2),
        IN4(3),
        IN5(4);


        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f15905a;

        CHANNEL(int i2) {
            this.f15905a = i2;
        }
    }

    public class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int[] f15906a = new int[9];

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f15907b;

        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = 0;
            while (true) {
                this.f15907b = i2;
                int i3 = this.f15907b;
                if (i3 >= 9) {
                    return;
                } else {
                    i2 = i3 + 1;
                }
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C7739.this.F8.postDelayed(this, TimedRemoteCaller.DEFAULT_CALL_TIMEOUT_MILLIS);
        }
    }

    public class c {
        public c() {
        }

        public int a(double d2) {
            return (int) C7739.this.p9.a(d2, 0);
        }

        public int b(int i2) {
            int i3 = 1;
            if (i2 != 0) {
                i3 = i2 == 1 ? 2 : 4;
            }
            return i3 << 28;
        }

        public int c(int i2) {
            return (i2 == 0 ? 0 : 1) << 28;
        }

        public int[] d(int i2) {
            switch (i2) {
                case 0:
                    return new int[]{2095603200, 51880192, 2095603200, 51880192, -2141913088, 1447891712, 2144600064, 1533943552, 3932160, 1093136128, -2139095040, 917627392, 2143158272, 1670071552, 4980736, 683046144, -2136276992, 267260672, 2141716480, 1386799104, 5570560, 1207372032, -2143009792, 2147036160};
                case 1:
                    return new int[]{2070138112, 77345280, 2070138112, 77345280, -2139095040, 917627392, 2143158272, 1670071552, 5898240, 1512244992, -2134900736, 970830080, 2140995584, 1088161280, 7471104, 783534336, -2130706432, 754332160, 2138767360, 1713036544, 8388608, 377166080, -2143009792, 2147036160};
                case 2:
                    return new int[]{2020145920, 127337472, 2020145920, 127337472, -2133524480, 1644432640, 2140274688, 685000960, 9830400, 2096100352, -2126512128, 268663040, 2136539136, 1400174592, 12451840, 504016128, -2119565312, 294145536, 2132738048, 1666256640, 13959168, 147072768, -2143009792, 2147036160};
                case 3:
                    return new int[]{1959386624, 188096768, 1959386624, 188096768, -2126512128, 268663040, 2136539136, 1400174592, 14811136, 202648576, -2116091904, 27811840, R.drawable.ic_launcher, 829891328, 18612224, 1404410880, -2105737216, 263642624, 2124939264, 906406400, 20840448, 1205564416, -2143009792, 2147036160};
                case 4:
                    return new int[]{1900512000, 246971392, 1900512000, 246971392, -2119565312, 294145536, 2132738048, 1666256640, 19660800, 2077124096, -2105737216, 263642624, 2124939264, 906406400, 24772608, 1311930624, -2092040192, 1572332544, 2116812800, 664103936, 27721728, 786172160, -2143009792, 2147036160};
                case 5:
                    return new int[]{1843480576, 304002816, 1843480576, 304002816, -2112684032, 1723317760, 2128871424, 1497045760, 24576000, 1278797824, -2095448064, 984336384, 2118844416, 1676674304, 30932992, 231438592, -2078408704, 2092014336, 2108358656, 1051539456, 34537472, 1046025216, -2143009792, 2147036160};
                case 6:
                    return new int[]{1788249600, 359233792, 1788249600, 359233792, -2105737216, 263642624, 2124939264, 906406400, 29425664, 2104354048, -2085158912, 50551040, 2112618496, 1040488960, 37027840, 315258112, -2064842752, 1841844224, 2099642368, 34413312, 41287680, 1994708736, -2143009792, 2147036160};
                case 7:
                    return new int[]{1683020544, 464462848, 1683020544, 464462848, -2092040192, 1572332544, 2116812800, 664103936, 39190528, 44017408, -2064842752, 1841844224, 2099642368, 34413312, 49086464, 1847595776, -2037972992, 1255434496, 2081226752, 686481152, 54722560, 1701646592, -2143009792, 2147036160};
                default:
                    return null;
            }
        }
    }

    public class d {
        public d() {
        }
    }

    public class e {
        public e() {
        }

        public int a(double d2) {
            double dPow;
            if (d2 <= -145.0d) {
                dPow = 0.0d;
            } else {
                if (d2 > 12.0d) {
                    d2 = 12.0d;
                }
                dPow = Math.pow(10.0d, d2 / 20.0d);
            }
            return (int) C7739.this.p9.a(dPow, 2);
        }
    }

    public class f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public double f15913a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public double f15914b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public double f15915c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public double f15916d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public double f15917e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public double f15918f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public double f15919g;

        public f() {
        }

        /* JADX WARN: Code duplicated, block: B:17:0x0184  */
        /* JADX WARN: Code duplicated, block: B:19:0x01c2  */
        public int[] a(int i2, int i3, int i4, double d2, double d3, int i5) {
            f fVar;
            double d4;
            double d5;
            double d6;
            double d7;
            double d8;
            double d9;
            double d10;
            b(i3, i4, d2, d3);
            double d11 = 0.0d;
            double d12 = 1.0d;
            if (i3 != 0) {
                if (i3 == 1) {
                    fVar = this;
                    d4 = 2.0d;
                    double d13 = fVar.f15917e;
                    d5 = d13 + 1.0d;
                    double d14 = fVar.f15915c;
                    d6 = ((1.0d - d14) / 2.0d) / d5;
                    d7 = (1.0d - d14) / d5;
                    d8 = (-(1.0d - d13)) / d5;
                    d9 = (d14 * 2.0d) / d5;
                    d10 = 1.0d - d14;
                } else if (i3 == 2) {
                    fVar = this;
                    double d15 = fVar.f15917e;
                    double d16 = fVar.f15918f;
                    double d17 = (d15 / d16) + 1.0d;
                    double d18 = fVar.f15915c;
                    double d19 = (d18 * (-2.0d)) / d17;
                    d9 = (d18 * 2.0d) / d17;
                    d11 = (1.0d - (d15 * d16)) / d17;
                    d7 = d19;
                    d12 = ((d15 * d16) + 1.0d) / d17;
                    d8 = (-(1.0d - (d15 / d16))) / d17;
                } else if (i3 == 3) {
                    fVar = this;
                    double dSqrt = Math.sqrt(fVar.f15918f / d2);
                    fVar.f15919g = dSqrt;
                    double d20 = fVar.f15918f;
                    double d21 = fVar.f15915c;
                    double d22 = fVar.f15914b;
                    double d23 = ((d20 + 1.0d) - ((d20 - 1.0d) * d21)) + (dSqrt * d22);
                    double d24 = ((((d20 + 1.0d) + ((d20 - 1.0d) * d21)) - (dSqrt * d22)) * d20) / d23;
                    double d25 = (((-2.0d) * d20) * ((d20 - 1.0d) + ((d20 + 1.0d) * d21))) / d23;
                    double d26 = (-(((d20 + 1.0d) - ((d20 - 1.0d) * d21)) - (dSqrt * d22))) / d23;
                    double d27 = (-(((d20 - 1.0d) - ((d20 + 1.0d) * d21)) * 2.0d)) / d23;
                    d12 = (d20 * (((d20 + 1.0d) + ((d20 - 1.0d) * d21)) + (dSqrt * d22))) / d23;
                    d8 = d26;
                    d7 = d25;
                    d9 = d27;
                    d11 = d24;
                } else if (i3 != 4) {
                    d8 = 0.0d;
                    d9 = 0.0d;
                    fVar = this;
                    d7 = 0.0d;
                } else {
                    double dSqrt2 = Math.sqrt(this.f15918f / d2);
                    this.f15919g = dSqrt2;
                    double d28 = this.f15918f;
                    double d29 = this.f15915c;
                    double d30 = this.f15914b;
                    double d31 = d28 + 1.0d + ((d28 - 1.0d) * d29) + (dSqrt2 * d30);
                    double d32 = ((((d28 + 1.0d) - ((d28 - 1.0d) * d29)) - (dSqrt2 * d30)) * d28) / d31;
                    double d33 = ((2.0d * d28) * ((d28 - 1.0d) - ((d28 + 1.0d) * d29))) / d31;
                    double d34 = (-(((d28 + 1.0d) + ((d28 - 1.0d) * d29)) - (dSqrt2 * d30))) / d31;
                    double d35 = (-(((d28 - 1.0d) + ((d28 + 1.0d) * d29)) * (-2.0d))) / d31;
                    double d36 = (d28 * (((d28 + 1.0d) - ((d28 - 1.0d) * d29)) + (dSqrt2 * d30))) / d31;
                    d11 = d32;
                    fVar = this;
                    d8 = d34;
                    d7 = d33;
                    d9 = d35;
                    d12 = d36;
                }
                if (i2 == 0) {
                    return new int[]{(int) C7739.this.p9.a(d11, i5), (int) C7739.this.p9.a(d7, i5), (int) C7739.this.p9.a(d8, i5), (int) C7739.this.p9.a(d9, i5), (int) C7739.this.p9.a(d12, i5)};
                }
                double d37 = d12;
                return new int[]{(int) C7739.this.p9.b(d11, i5), (int) C7739.this.p9.c(d11, i5), (int) C7739.this.p9.b(d7, i5), (int) C7739.this.p9.c(d7, i5), (int) C7739.this.p9.b(d8, i5), (int) C7739.this.p9.c(d8, i5), (int) C7739.this.p9.b(d9, i5), (int) C7739.this.p9.c(d9, i5), (int) C7739.this.p9.b(d37, i5), (int) C7739.this.p9.c(d37, i5)};
            }
            fVar = this;
            d4 = 2.0d;
            double d38 = fVar.f15917e;
            d5 = d38 + 1.0d;
            double d39 = fVar.f15915c;
            d6 = ((d39 + 1.0d) / 2.0d) / d5;
            d7 = (-(d39 + 1.0d)) / d5;
            d8 = (-(1.0d - d38)) / d5;
            d9 = (d39 * 2.0d) / d5;
            d10 = d39 + 1.0d;
            d12 = (d10 / d4) / d5;
            d11 = d6;
            if (i2 == 0) {
                return new int[]{(int) C7739.this.p9.a(d11, i5), (int) C7739.this.p9.a(d7, i5), (int) C7739.this.p9.a(d8, i5), (int) C7739.this.p9.a(d9, i5), (int) C7739.this.p9.a(d12, i5)};
            }
            double d310 = d12;
            return new int[]{(int) C7739.this.p9.b(d11, i5), (int) C7739.this.p9.c(d11, i5), (int) C7739.this.p9.b(d7, i5), (int) C7739.this.p9.c(d7, i5), (int) C7739.this.p9.b(d8, i5), (int) C7739.this.p9.c(d8, i5), (int) C7739.this.p9.b(d9, i5), (int) C7739.this.p9.c(d9, i5), (int) C7739.this.p9.b(d310, i5), (int) C7739.this.p9.c(d310, i5)};
        }

        public void b(int i2, int i3, double d2, double d3) {
            double d4 = (((double) i3) * 6.283185307179586d) / 96000.0d;
            this.f15913a = d4;
            this.f15914b = Math.sin(d4);
            this.f15915c = Math.cos(this.f15913a);
            this.f15917e = this.f15914b / (d2 * 2.0d);
            if (i2 == 2 || i2 == 3 || i2 == 4) {
                this.f15918f = Math.pow(10.0d, d3 / 40.0d);
            } else {
                this.f15918f = Math.sqrt(Math.pow(10.0d, d3 / 20.0d));
            }
        }

        public void c(int i2, int i3, double d2, double d3) {
            double d4 = (((double) i3) * 6.283185307179586d) / 96000.0d;
            this.f15913a = d4;
            this.f15914b = Math.sin(d4);
            this.f15915c = Math.cos(this.f15913a);
            this.f15916d = Math.tan(this.f15913a / 2.0d);
            this.f15917e = this.f15914b / (d2 * 2.0d);
            if (i2 == 2 || i2 == 3 || i2 == 4 || (i2 >= 5 && i2 <= 20)) {
                this.f15918f = Math.pow(10.0d, d3 / 40.0d);
            } else {
                this.f15918f = Math.sqrt(Math.pow(10.0d, d3 / 20.0d));
            }
        }

        /* JADX WARN: Code duplicated, block: B:56:0x0242 A[PHI: r15
  0x0242: PHI (r15v1 double) = (r15v0 double), (r15v3 double), (r15v4 double), (r15v5 double) binds: [B:55:0x0240, B:51:0x022a, B:46:0x0207, B:42:0x01eb] A[DONT_GENERATE, DONT_INLINE]] */
        public int[] d(int i2, int i3, int i4, int i5, double d2, double d3, int i6) {
            double d4;
            double dPow;
            double d5;
            double d6;
            double dPow2;
            double dPow3;
            double d7;
            double d8;
            double d9;
            double d10;
            double dPow4;
            c(i3, i5, 0.70711d, 10.0d);
            if (i3 == 5) {
                d4 = 1.0d;
                if (i4 != 0) {
                    dPow = d4;
                    dPow3 = 0.0d;
                    d5 = 0.0d;
                    d6 = 0.0d;
                    dPow2 = 0.0d;
                } else {
                    double d11 = this.f15915c / (this.f15914b + 1.0d);
                    dPow = (1.0d - d11) / 2.0d;
                    d5 = dPow;
                    d6 = 0.0d;
                    dPow2 = d11;
                    dPow3 = 0.0d;
                }
            } else if (i3 == 6) {
                d4 = 1.0d;
                if (i4 != 0) {
                    dPow = d4;
                    dPow3 = 0.0d;
                    d5 = 0.0d;
                    d6 = 0.0d;
                    dPow2 = 0.0d;
                } else {
                    dPow2 = (1.0d - this.f15914b) / this.f15915c;
                    double d12 = (dPow2 + 1.0d) / 2.0d;
                    dPow = d12;
                    d5 = -d12;
                    dPow3 = 0.0d;
                    d6 = 0.0d;
                }
            } else if (i3 == 7) {
                d4 = 1.0d;
                if (i4 == 0) {
                    double d13 = this.f15917e;
                    d7 = d13 + 1.0d;
                    double d14 = this.f15915c;
                    d8 = ((1.0d - d14) / 2.0d) / d7;
                    d5 = (1.0d - d14) / d7;
                    dPow3 = (-(1.0d - d13)) / d7;
                    d9 = (d14 * 2.0d) / d7;
                    d10 = 1.0d - d14;
                    d6 = d8;
                    dPow = (d10 / 2.0d) / d7;
                    dPow2 = d9;
                }
                dPow = d4;
                dPow3 = 0.0d;
                d5 = 0.0d;
                d6 = 0.0d;
                dPow2 = 0.0d;
            } else if (i3 == 8) {
                d4 = 1.0d;
                if (i4 == 0) {
                    double d15 = this.f15917e;
                    d7 = d15 + 1.0d;
                    double d16 = this.f15915c;
                    d8 = ((d16 + 1.0d) / 2.0d) / d7;
                    d5 = (-(d16 + 1.0d)) / d7;
                    dPow3 = (-(1.0d - d15)) / d7;
                    d9 = (d16 * 2.0d) / d7;
                    d10 = d16 + 1.0d;
                    d6 = d8;
                    dPow = (d10 / 2.0d) / d7;
                    dPow2 = d9;
                }
                dPow = d4;
                dPow3 = 0.0d;
                d5 = 0.0d;
                d6 = 0.0d;
                dPow2 = 0.0d;
            } else if (i3 == 11) {
                if (i4 <= 1) {
                    double d17 = (((double) ((i4 * 2) + 1)) * 3.141592653589793d) / 8.0d;
                    double dCos = Math.cos(d17) * 2.0d;
                    double d18 = this.f15916d;
                    double dPow5 = (dCos * d18) + 1.0d + Math.pow(d18, 2.0d);
                    double dPow6 = Math.pow(this.f15916d, 2.0d) / dPow5;
                    double dCos2 = Math.cos(d17) * 2.0d;
                    double d19 = this.f15916d;
                    dPow3 = (((dCos2 * d19) - 1.0d) - Math.pow(d19, 2.0d)) / dPow5;
                    dPow4 = ((1.0d - Math.pow(this.f15916d, 2.0d)) * 2.0d) / dPow5;
                    dPow = dPow6;
                    d5 = dPow6 * 2.0d;
                    dPow2 = dPow4;
                    d6 = dPow;
                }
                dPow3 = 0.0d;
                dPow = 1.0d;
                d5 = 0.0d;
                d6 = 0.0d;
                dPow2 = 0.0d;
            } else if (i3 != 12) {
                if (i3 != 15) {
                    if (i3 != 16) {
                        if (i3 == 19) {
                            double d20 = (((double) ((i4 * 2) + 1)) * 3.141592653589793d) / 16.0d;
                            double dCos3 = Math.cos(d20) * 2.0d;
                            double d21 = this.f15916d;
                            double dPow7 = (dCos3 * d21) + 1.0d + Math.pow(d21, 2.0d);
                            double dPow8 = Math.pow(this.f15916d, 2.0d) / dPow7;
                            double dCos4 = Math.cos(d20) * 2.0d;
                            double d22 = this.f15916d;
                            dPow3 = (((dCos4 * d22) - 1.0d) - Math.pow(d22, 2.0d)) / dPow7;
                            dPow = dPow8;
                            dPow2 = ((1.0d - Math.pow(this.f15916d, 2.0d)) * 2.0d) / dPow7;
                            d6 = dPow;
                            d5 = dPow8 * 2.0d;
                        } else if (i3 == 20) {
                            double d23 = (((double) ((i4 * 2) + 1)) * 3.141592653589793d) / 16.0d;
                            double dCos5 = Math.cos(d23) * 2.0d;
                            double d24 = this.f15916d;
                            double dPow9 = (dCos5 * d24) + 1.0d + Math.pow(d24, 2.0d);
                            double d25 = 1.0d / dPow9;
                            double dCos6 = Math.cos(d23) * 2.0d;
                            double d26 = this.f15916d;
                            double dPow10 = (((dCos6 * d26) - 1.0d) - Math.pow(d26, 2.0d)) / dPow9;
                            dPow = d25;
                            dPow2 = ((1.0d - Math.pow(this.f15916d, 2.0d)) * 2.0d) / dPow9;
                            d5 = d25 * (-2.0d);
                            d6 = dPow;
                            dPow3 = dPow10;
                        }
                    } else if (i4 <= 2) {
                        double d27 = (((double) ((i4 * 2) + 1)) * 3.141592653589793d) / 12.0d;
                        double dCos7 = Math.cos(d27) * 2.0d;
                        double d28 = this.f15916d;
                        double dPow11 = (dCos7 * d28) + 1.0d + Math.pow(d28, 2.0d);
                        double d29 = 1.0d / dPow11;
                        d5 = d29 * (-2.0d);
                        double dCos8 = Math.cos(d27) * 2.0d;
                        double d30 = this.f15916d;
                        dPow3 = (((dCos8 * d30) - 1.0d) - Math.pow(d30, 2.0d)) / dPow11;
                        dPow4 = ((1.0d - Math.pow(this.f15916d, 2.0d)) * 2.0d) / dPow11;
                        dPow = d29;
                        dPow2 = dPow4;
                        d6 = dPow;
                    }
                } else if (i4 <= 2) {
                    double d31 = (((double) ((i4 * 2) + 1)) * 3.141592653589793d) / 12.0d;
                    double dCos9 = Math.cos(d31) * 2.0d;
                    double d32 = this.f15916d;
                    double dPow12 = (dCos9 * d32) + 1.0d + Math.pow(d32, 2.0d);
                    dPow = Math.pow(this.f15916d, 2.0d) / dPow12;
                    d5 = dPow * 2.0d;
                    double dCos10 = Math.cos(d31) * 2.0d;
                    double d33 = this.f15916d;
                    double dPow13 = (((dCos10 * d33) - 1.0d) - Math.pow(d33, 2.0d)) / dPow12;
                    dPow2 = ((1.0d - Math.pow(this.f15916d, 2.0d)) * 2.0d) / dPow12;
                    dPow3 = dPow13;
                    d6 = dPow;
                }
                dPow = 1.0d;
                dPow3 = 0.0d;
                d5 = 0.0d;
                d6 = 0.0d;
                dPow2 = 0.0d;
            } else if (i4 > 1) {
                dPow3 = 0.0d;
                dPow = 1.0d;
                d5 = 0.0d;
                d6 = 0.0d;
                dPow2 = 0.0d;
            } else {
                double d34 = (((double) ((i4 * 2) + 1)) * 3.141592653589793d) / 8.0d;
                double dCos11 = Math.cos(d34) * 2.0d;
                double d35 = this.f15916d;
                double dPow14 = (dCos11 * d35) + 1.0d + Math.pow(d35, 2.0d);
                d6 = 1.0d / dPow14;
                double dCos12 = Math.cos(d34) * 2.0d;
                double d36 = this.f15916d;
                dPow3 = (((dCos12 * d36) - 1.0d) - Math.pow(d36, 2.0d)) / dPow14;
                dPow2 = ((1.0d - Math.pow(this.f15916d, 2.0d)) * 2.0d) / dPow14;
                d5 = d6 * (-2.0d);
                dPow = d6;
            }
            if (i2 == 0) {
                return new int[]{(int) C7739.this.p9.a(d6, i6), (int) C7739.this.p9.a(d5, i6), (int) C7739.this.p9.a(dPow3, i6), (int) C7739.this.p9.a(dPow2, i6), (int) C7739.this.p9.a(dPow, i6)};
            }
            double d37 = dPow;
            return new int[]{(int) C7739.this.p9.b(d6, i6), (int) C7739.this.p9.c(d6, i6), (int) C7739.this.p9.b(d5, i6), (int) C7739.this.p9.c(d5, i6), (int) C7739.this.p9.b(dPow3, i6), (int) C7739.this.p9.c(dPow3, i6), (int) C7739.this.p9.b(dPow2, i6), (int) C7739.this.p9.c(dPow2, i6), (int) C7739.this.p9.b(d37, i6), (int) C7739.this.p9.c(d37, i6)};
        }
    }

    public class g {
        public g() {
        }

        public int a(double d2, int i2) {
            double dPow;
            if (d2 <= -145.0d) {
                dPow = 0.0d;
            } else {
                if (d2 > 12.0d) {
                    d2 = 12.0d;
                }
                dPow = Math.pow(10.0d, d2 / 20.0d);
            }
            if (i2 != 0) {
                dPow = -dPow;
            }
            return (int) C7739.this.p9.a(dPow, 2);
        }
    }

    public class h {
        public h() {
        }

        public int a(int i2) {
            if (i2 == 0) {
                return -145;
            }
            return (int) (Math.log10(((double) i2) / Math.pow(2.0d, 23.0d)) * 20.0d);
        }
    }

    public class i {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final double f15923a = 0.0d;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final double f15924b = -145.0d;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public double f15925c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public double f15926d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public double f15927e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public double f15928f;

        public i() {
        }

        public int[] a(int i2, int i3, double d2, int i4) {
            double d3;
            double d4;
            double d5;
            double d6;
            double d7;
            double d8;
            double d9;
            h(i2, i3, d2);
            double d10 = 0.0d;
            if (i2 != 0) {
                if (i2 != 1) {
                    d4 = 0.0d;
                    d8 = 0.0d;
                    d7 = 1.0d;
                    d9 = 0.0d;
                } else {
                    double d11 = this.f15928f;
                    double d12 = d11 + 1.0d;
                    double d13 = this.f15927e;
                    d3 = ((1.0d - d13) / 2.0d) / d12;
                    double d14 = (1.0d - d13) / d12;
                    d5 = (-(1.0d - d11)) / d12;
                    d6 = (d13 * 2.0d) / d12;
                    d7 = ((1.0d - d13) / 2.0d) / d12;
                    d4 = d14;
                }
                return new int[]{(int) C7739.this.p9.a(d10, i4), (int) C7739.this.p9.a(d4, i4), (int) C7739.this.p9.a(d9, i4), (int) C7739.this.p9.a(d8, i4), (int) C7739.this.p9.a(d7, i4)};
            }
            double d15 = this.f15928f;
            double d16 = d15 + 1.0d;
            double d17 = this.f15927e;
            d3 = ((d17 + 1.0d) / 2.0d) / d16;
            d4 = (-(d17 + 1.0d)) / d16;
            d5 = (-(1.0d - d15)) / d16;
            d6 = (d17 * 2.0d) / d16;
            d7 = ((d17 + 1.0d) / 2.0d) / d16;
            d8 = d6;
            d9 = d5;
            d10 = d3;
            return new int[]{(int) C7739.this.p9.a(d10, i4), (int) C7739.this.p9.a(d4, i4), (int) C7739.this.p9.a(d9, i4), (int) C7739.this.p9.a(d8, i4), (int) C7739.this.p9.a(d7, i4)};
        }

        public int b(double d2) {
            return (int) C7739.this.p9.a(d2 <= -145.0d ? 0.0d : Math.pow(10.0d, d2 / 20.0d), 2);
        }

        public int c(double d2) {
            return (int) C7739.this.p9.a(d2 <= -145.0d ? 0.0d : Math.pow(10.0d, d2 / 20.0d), 2);
        }

        public int d(double d2) {
            return (int) C7739.this.p9.a(d2 <= -145.0d ? 0.0d : Math.pow(10.0d, d2 / 20.0d), 2);
        }

        public int e(double d2) {
            return (int) C7739.this.p9.a(d2, 1);
        }

        public int f(double d2) {
            return (int) C7739.this.p9.a(1.0d - d2, 1);
        }

        public int g(double d2) {
            return (int) C7739.this.p9.a(d2 <= -145.0d ? 0.0d : Math.pow(10.0d, d2 / 20.0d), 2);
        }

        public void h(int i2, int i3, double d2) {
            double d3 = (((double) i3) * 6.283185307179586d) / 96000.0d;
            this.f15925c = d3;
            this.f15926d = Math.sin(d3);
            this.f15927e = Math.cos(this.f15925c);
            this.f15928f = this.f15926d / (d2 * 2.0d);
        }
    }

    public class j {
        public j() {
        }

        public int[] a(int i2) {
            int i3;
            int i4;
            int[] iArr = new int[2];
            if (i2 == 0) {
                i4 = 1;
                i3 = 0;
            } else {
                i3 = 1;
                i4 = 0;
            }
            iArr[0] = (int) C7739.this.p9.a(i4, 2);
            iArr[1] = (int) C7739.this.p9.a(i3, 2);
            return iArr;
        }

        public int[] b(int i2) {
            int i3;
            int i4;
            int i5;
            int[] iArr = new int[3];
            if (i2 == 0) {
                i4 = 1;
                i5 = 0;
                i3 = 0;
            } else if (i2 == 1) {
                i5 = 1;
                i4 = 0;
                i3 = 0;
            } else {
                i3 = 1;
                i4 = 0;
                i5 = 0;
            }
            iArr[0] = (int) C7739.this.p9.a(i4, 2);
            iArr[1] = (int) C7739.this.p9.a(i5, 2);
            iArr[2] = (int) C7739.this.p9.a(i3, 2);
            return iArr;
        }
    }

    public class k {
        public k() {
        }

        public int a(double d2, int i2) {
            double dPow;
            if (d2 <= -145.0d) {
                dPow = 0.0d;
            } else {
                if (d2 > 12.0d) {
                    d2 = 12.0d;
                }
                dPow = Math.pow(10.0d, d2 / 20.0d);
            }
            if (i2 != 0) {
                dPow = -dPow;
            }
            return (int) C7739.this.p9.a(dPow, 2);
        }
    }

    public class l {
        public l() {
        }

        public long a(double d2, int i2) {
            return (long) d(e((Math.pow(2.0d, 31 - i2) * d2) + (d2 < 0.0d ? -0.5d : 0.5d), Math.pow(2.0d, 31.0d) - 1.0d), -Math.pow(2.0d, 31.0d));
        }

        public long b(double d2, int i2) {
            return (long) d(e(Math.floor(d2 * Math.pow(2.0d, 31 - i2)), Math.pow(2.0d, 31.0d) - 1.0d), -Math.pow(2.0d, 31.0d));
        }

        public long c(double d2, int i2) {
            return a((Math.pow(2.0d, 31 - i2) * d2) - b(d2, i2), 0);
        }

        public double d(double d2, double d3) {
            return Math.max(d2, d3);
        }

        public double e(double d2, double d3) {
            return Math.min(d2, d3);
        }
    }

    public C7739(n nVar) {
        super(36, 3);
        this.I0 = false;
        this.J0 = "C7739";
        this.K0 = 0;
        this.L0 = 0;
        this.M0 = 0;
        this.N0 = 0;
        this.O0 = 101;
        this.P0 = 102;
        this.Q0 = 103;
        this.R0 = 0;
        this.S0 = 56;
        this.T0 = 0;
        this.U0 = 204;
        this.V0 = 205;
        this.W0 = 206;
        this.X0 = 207;
        this.Y0 = 208;
        this.Z0 = 209;
        this.f15882a1 = 210;
        this.f15883b1 = 211;
        this.f15884c1 = 212;
        this.f15885d1 = 213;
        this.f15886e1 = 214;
        this.f15887f1 = 215;
        this.f15888g1 = 216;
        this.f15889h1 = 217;
        this.f15890i1 = 218;
        this.f15891j1 = 219;
        this.f15892k1 = 220;
        this.f15893l1 = 221;
        this.f15894m1 = 222;
        this.f15895n1 = 223;
        this.f15896o1 = 224;
        this.f15897p1 = 225;
        this.f15898q1 = 226;
        this.r1 = 227;
        this.s1 = 228;
        this.t1 = 229;
        this.u1 = 230;
        this.v1 = 231;
        this.w1 = 236;
        this.x1 = i.a.Theme_actionModeShareDrawable;
        this.y1 = i.a.Theme_preferencePanelStyle;
        this.z1 = 251;
        this.A1 = 256;
        this.B1 = 261;
        this.C1 = 266;
        this.D1 = 271;
        this.E1 = BluetoothClass.Device.COMPUTER_HANDHELD_PC_PDA;
        this.F1 = 273;
        this.G1 = 274;
        this.H1 = 275;
        this.I1 = BluetoothClass.Device.COMPUTER_PALM_SIZE_PC_PDA;
        this.J1 = 277;
        this.K1 = 282;
        this.L1 = 287;
        this.M1 = MediaProperties.HEIGHT_288;
        this.N1 = 289;
        this.O1 = 0;
        this.P1 = 197;
        this.Q1 = 0;
        this.R1 = 289;
        this.S1 = 290;
        this.T1 = 291;
        this.U1 = TextTrackRegion.SCROLL_VALUE_SCROLL_UP;
        this.V1 = 302;
        this.W1 = 312;
        this.X1 = 313;
        this.Y1 = 314;
        this.Z1 = 315;
        this.a2 = 316;
        this.b2 = 317;
        this.c2 = 318;
        this.d2 = 319;
        this.e2 = 320;
        this.f2 = 321;
        this.g2 = 322;
        this.h2 = 0;
        this.i2 = 1;
        this.j2 = 2;
        this.k2 = 3;
        this.l2 = 4;
        this.m2 = 5;
        this.n2 = 6;
        this.o2 = 323;
        this.p2 = 324;
        this.q2 = 325;
        this.r2 = 326;
        this.s2 = 327;
        this.t2 = 328;
        this.u2 = 7;
        this.v2 = 8;
        this.w2 = 9;
        this.x2 = 10;
        this.y2 = 11;
        this.z2 = 12;
        this.A2 = 13;
        this.B2 = 329;
        this.C2 = 330;
        this.D2 = 331;
        this.E2 = 332;
        this.F2 = 333;
        this.G2 = 334;
        this.H2 = 344;
        this.I2 = 354;
        this.J2 = 364;
        this.K2 = 374;
        this.L2 = 384;
        this.M2 = 394;
        this.N2 = UrlQuerySanitizer.IllegalCharacterValueSanitizer.URL_LEGAL;
        this.O2 = 414;
        this.P2 = 424;
        this.Q2 = 434;
        this.R2 = 444;
        this.S2 = 454;
        this.T2 = 464;
        this.U2 = 474;
        this.V2 = 484;
        this.W2 = Downloads.Impl.STATUS_UNHANDLED_HTTP_CODE;
        this.X2 = 504;
        this.Y2 = 509;
        this.Z2 = 514;
        this.a3 = 519;
        this.b3 = BluetoothClass.Device.PHONE_SMART;
        this.c3 = 529;
        this.d3 = 534;
        this.e3 = 539;
        this.f3 = 544;
        this.g3 = 549;
        this.h3 = 554;
        this.i3 = 559;
        this.j3 = 564;
        this.k3 = 569;
        this.l3 = 574;
        this.m3 = 579;
        this.n3 = 584;
        this.o3 = 589;
        this.p3 = 594;
        this.q3 = 599;
        this.r3 = CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR;
        this.s3 = 601;
        this.t3 = 602;
        this.u3 = 603;
        this.v3 = 604;
        this.w3 = 14;
        this.x3 = 515;
        this.y3 = 162;
        this.z3 = 604;
        this.A3 = 606;
        this.B3 = 607;
        this.C3 = 704;
        this.D3 = 724;
        this.E3 = 306;
        this.F3 = 0;
        this.G3 = 26;
        this.H3 = 53;
        this.I3 = 54;
        this.J3 = 68;
        this.K3 = 69;
        this.L3 = 70;
        this.M3 = 72;
        this.N3 = 86;
        this.O3 = 87;
        this.P3 = 88;
        this.Q3 = 102;
        this.R3 = 103;
        this.S3 = 104;
        this.T3 = 106;
        this.U3 = 130;
        this.V3 = 154;
        this.W3 = 180;
        this.X3 = 181;
        this.Y3 = 182;
        this.Z3 = 203;
        this.a4 = 204;
        this.b4 = 205;
        this.c4 = 206;
        this.d4 = 305;
        this.e4 = 306;
        this.f4 = 0;
        this.g4 = 176;
        this.h4 = 16;
        this.i4 = 0;
        this.j4 = 1;
        this.k4 = 2;
        this.l4 = 3;
        this.m4 = 4;
        this.n4 = 5;
        this.o4 = 6;
        this.p4 = 7;
        this.q4 = 306;
        this.r4 = 307;
        this.s4 = 308;
        this.t4 = 309;
        this.u4 = 8;
        this.v4 = 9;
        this.w4 = 310;
        this.x4 = 315;
        this.y4 = 320;
        this.z4 = 325;
        this.A4 = 330;
        this.B4 = 335;
        this.C4 = 340;
        this.D4 = 345;
        this.E4 = SpellChecker.WORD_ITERATOR_INTERVAL;
        this.F4 = 351;
        this.G4 = 352;
        this.H4 = 353;
        this.I4 = 10;
        this.J4 = 11;
        this.K4 = 354;
        this.L4 = 359;
        this.M4 = 364;
        this.N4 = 369;
        this.O4 = 374;
        this.P4 = 379;
        this.Q4 = 384;
        this.R4 = 389;
        this.S4 = 394;
        this.T4 = 395;
        this.U4 = 396;
        this.V4 = 397;
        this.W4 = 398;
        this.X4 = 403;
        this.Y4 = UrlQuerySanitizer.IllegalCharacterValueSanitizer.URL_LEGAL;
        this.Z4 = UrlQuerySanitizer.IllegalCharacterValueSanitizer.URL_AND_SPACE_LEGAL;
        this.a5 = 410;
        this.b5 = 415;
        this.c5 = 420;
        this.d5 = 425;
        this.e5 = 430;
        this.f5 = 435;
        this.g5 = 440;
        this.h5 = 445;
        this.i5 = 446;
        this.j5 = 447;
        this.k5 = 448;
        this.l5 = 449;
        this.m5 = 450;
        this.n5 = 451;
        this.o5 = 452;
        this.p5 = 453;
        this.q5 = 454;
        this.r5 = 455;
        this.s5 = 12;
        this.t5 = 292;
        this.u5 = 16;
        this.v5 = 456;
        this.w5 = 458;
        this.x5 = 460;
        this.y5 = 461;
        this.z5 = 462;
        this.A5 = 463;
        this.B5 = 464;
        this.C5 = 465;
        this.D5 = 475;
        this.E5 = 476;
        this.F5 = 477;
        this.G5 = 478;
        this.H5 = 479;
        this.I5 = 480;
        this.J5 = 485;
        this.K5 = 486;
        this.L5 = 487;
        this.M5 = Downloads.Impl.STATUS_FILE_ERROR;
        this.N5 = Downloads.Impl.STATUS_TOO_MANY_REDIRECTS;
        this.O5 = 502;
        this.P5 = 507;
        this.Q5 = 512;
        this.R5 = 517;
        this.S5 = 522;
        this.T5 = 527;
        this.U5 = BluetoothClass.Device.PHONE_MODEM_OR_GATEWAY;
        this.V5 = 529;
        this.W5 = 530;
        this.X5 = 531;
        this.Y5 = BluetoothClass.Device.PHONE_ISDN;
        this.Z5 = 533;
        this.a6 = 534;
        this.b6 = 535;
        this.c6 = 536;
        this.d6 = 537;
        this.e6 = 538;
        this.f6 = 539;
        this.g6 = 540;
        this.h6 = 541;
        this.i6 = 542;
        this.j6 = 96000;
        this.k6 = 0;
        this.l6 = 1;
        this.m6 = 0;
        this.n6 = 1;
        this.o6 = 2;
        this.p6 = 3;
        this.q6 = 4;
        this.r6 = 5;
        this.s6 = 6;
        this.t6 = 7;
        this.u6 = 8;
        this.v6 = 9;
        this.w6 = 10;
        this.x6 = 11;
        this.y6 = 12;
        this.z6 = 13;
        this.A6 = 14;
        this.B6 = 15;
        this.C6 = 16;
        this.D6 = 17;
        this.E6 = 18;
        this.F6 = 19;
        this.G6 = 20;
        this.H6 = 21;
        this.I6 = -144.0d;
        this.J6 = 12.0d;
        this.K6 = -145.0d;
        this.L6 = 0;
        this.M6 = 1;
        this.N6 = -40.0d;
        this.O6 = 0.0d;
        this.P6 = new int[]{0, 3, 1, 1, 2, 3, 3, 92, 4, 0, 5, 0, 8, 0, 9, 1, 10, 5, 11, 1, 12, 139, 13, 2, 14, 1, 16, 128, 17, 1, 18, 47, 19, 0, 20, 128, 21, 1, 22, 5, 23, 3, 24, 0, 25, 1, 26, 47, 27, 0, 28, 128, 29, 1, 30, 47, 31, 0, 32, 128, 33, 1, 34, 23, 35, 0, 37, 1, 38, 23, 39, 0, 41, 1, 42, 11, 43, 0, 45, 0, 49, 0, 64, 0, 65, 4, 66, 6, 67, 2, 68, 0, 69, 0, 70, 0, 71, 4, 72, 0, 73, 6, 80, 0, 81, 1, 82, 0, 83, 0, 84, 3, 85, 3, 86, 0, 87, 4, 88, 0, 89, 0, 90, 0, 91, 0, 96, 0, 97, 4, 98, 176, 99, 2, 100, 0, 101, 0, 102, 0, 103, 4, 104, 0, 105, 6, 106, 0, 107, 0, 135, 0, 136, 4, 137, 6, 152, 6, 153, 6, 160, 2, 161, 2, 162, 6, 163, 7, 164, 6, 165, 6, 166, 6, 167, 6, 176, 6, 177, 6, 192, 6, 193, 6, 194, 6, 195, 6, 196, 6, 197, 6, 198, 6, 199, 6, 200, 6, 201, 6, 202, 6, 203, 6, 262, 35, 264, 134, 265, 135, BluetoothClass.Device.COMPUTER_WEARABLE, 36, 281, 37, 282, 38, 283, 39, MediaProperties.HEIGHT_288, 137, 289, 138, 290, 80, 291, 135, 292, 64, 293, 64, 294, 8, 295, 8, 320, 8, 321, 0, 322, 0, 323, 0, 324, 0, 325, 0, 326, 0, 327, 0, 328, 32, 329, 33, 330, 0, 331, 0, 332, 0, 333, 0, 334, 0, 335, 0, 336, 0, 337, 0, 338, 0, 339, 0, 340, 0, 341, 0, 342, 0, 343, 0, 344, 8, 345, 0, 346, 0, 347, 0, 348, 0, 349, 0, SpellChecker.WORD_ITERATOR_INTERVAL, 0, 351, 0, 352, 136, 353, 0, 354, 0, 355, 0, 356, 0, 357, 0, 358, 0, 359, 0, MediaProperties.HEIGHT_360, 0, 361, 0, 362, 0, 363, 0, 364, 0, 365, 0, 366, 0, 367, 0, 384, 24, 385, 9, 386, 34, 387, 88, 388, 0, 389, 25, 390, 132, 391, 133, 392, 0, 393, 0, 394, 0, 395, 0, 512, 17, 513, 252, 514, 0, 515, 0, 516, 14, 517, 0, 518, 0, BluetoothClass.Device.PHONE_MODEM_OR_GATEWAY, 0, 529, 0, 530, 0, 531, 0, BluetoothClass.Device.PHONE_ISDN, 0, 533, 0, 534, 0, 535, 0, 536, 0, 537, 0, 538, 0, 539, 0, 540, 0, 541, 0, 542, 0, 543, 0, 544, 0, 545, 0, 546, 0, 547, 0, 548, 0, 549, 0, 550, 0, 551, 0, 552, 0, 553, 0, 554, 0, 555, 0, 556, 0, 557, 0, 558, 0, 559, 0};
        this.Q6 = new int[]{0, 7, 1, 0, 2, 0, 3, 0, 4, 0, 17, 0, 18, 0, 19, 0, 32, 4, 33, 0, 34, 0, 49, 0, 50, 0, 51, 0, 64, 0, 65, 0, 66, 0};
        this.R6 = new int[]{0, 240, 1, 85, 3, 0, 4, 0, 5, 0, 6, 0, 7, 0, 257, 15, 258, 85, 259, 0, 260, 0, 261, 0, 262, 90, 512, 1, 513, 0, 514, 4, 515, 14, 516, 1, BluetoothClass.Device.PHONE_MODEM_OR_GATEWAY, 128, 529, 128};
        this.S6 = new int[]{0, 54, 1, 35, 2, 1, 3, 10, 4, 129, 5, 48, 6, 48, 7, 48, 8, 48, 9, 4, 10, 2, 11, 0, 12, 24, 13, 24, 14, 24, 15, 24, 16, 24, 17, 24, 19, 21, 20, 2, 21, 0};
        this.T6 = null;
        this.U6 = null;
        this.V6 = new int[]{0, 0, 4, 127, 0, 0, 4, 127, 0, 0, 8, 255, 0, 0, 8, 255, 0, 0, 13, 127, 0, 0, 13, 127, 0, 0, 17, 255, 0, 0, 17, 255, 0, 0, 22, 127, 0, 0, 22, 127, 0, 0, 26, 255, 0, 0, 26, 255};
        this.W6 = new int[]{0, 0, 1, i.a.Theme_actionModeWebSearchDrawable, 0, 0, 1, i.a.Theme_actionModeWebSearchDrawable, 0, 0, 1, i.a.Theme_actionModeWebSearchDrawable, 0, 0, 1, i.a.Theme_actionModeWebSearchDrawable, 0, 0, 1, i.a.Theme_actionModeWebSearchDrawable, 0, 0, 1, i.a.Theme_actionModeWebSearchDrawable, 0, 0, 1, i.a.Theme_actionModeWebSearchDrawable, 0, 0, 3, 231, 0, 0, 3, 231, 0, 0, 3, 231, 0, 0, 3, 231, 0, 0, 3, 231, 0, 0, 3, 231, 0, 0, 3, 231};
        this.X6 = new int[]{20, 24, 29, 36, 45, 53, 65, 80, 100, 120, 140, 170, 210, 260, 320, 390, 470, 570, 700, 850, 1000, 1300, 1600, 1900, 2300, 2800, 3400, 4100, 5000, 6100, 7500, 9000, 11000, 14000, 17000, Window.PROGRESS_SECONDARY_START};
        this.Y6 = 120;
        this.Z6 = 70;
        this.a7 = new int[]{-1450, -600, -520, -460, -410, -370, -330, -300, -280, -270, -260, -250, -240, -230, -220, -210, AudioService.STREAM_REMOTE_MUSIC, -190, -180, -170, -160, -150, -140, -130, -120, -110, -100, -90, -80, -70, -60, -50, -40, -30, -20, -10, 0};
        this.b7 = 40;
        this.c7 = new int[]{-1450, -520, -440, -380, -330, -290, -250, -220, AudioService.STREAM_REMOTE_MUSIC, -190, -180, -170, -160, -150, -140, -130, -120, -110, -100, -90, -80, -70, -60, -50, -40, -30, -20, -10, 0, 10, 20, 30, 40, 50, 60, 70, 80};
        this.d7 = new int[]{-1450, -480, -420, -370, -330, -300, -270, -250, -230, -220, -210, AudioService.STREAM_REMOTE_MUSIC, -190, -180, -170, -160, -150, -140, -130, -120, -110, -100, -90, -80, -70, -60, -50, -40, -30, -20, -10, 0, 10, 20, 30, 40, 50};
        this.e7 = 20;
        this.f7 = new int[]{-1450, -430, -370, -320, -280, -250, -220, AudioService.STREAM_REMOTE_MUSIC, -180, -170, -160, -150, -140, -130, -120, -110, -100, -90, -80, -70, -60, -50, -40, -30, -20, -10, 0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100};
        this.g7 = new int[]{334, 344, 354, 364, 374, 384, 394, UrlQuerySanitizer.IllegalCharacterValueSanitizer.URL_LEGAL, 414, 424, 434, 444, 454, 464, 474, 484, Downloads.Impl.STATUS_UNHANDLED_HTTP_CODE, 504, 509, 514, 519, BluetoothClass.Device.PHONE_SMART, 529, 534, 539, 544, 549, 554, 559, 564, 569, 574, 579, 584, 589, 594};
        this.h7 = 0;
        this.i7 = new int[]{0, 0, 0, 0, 0, 0, 0, 0, 0, -3, -6, -9, -12, -15, -18, -21, -145};
        this.j7 = new int[]{-145, -21, -18, -15, -12, -10, -8, -6, -4, -2, 0};
        this.k7 = new int[]{-10, -9, -8, -7, -6, -5, -4, -3, -2, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
        this.l7 = new int[]{20, 68, 86, 108, 134, 172, 214, 260};
        this.m7 = new double[]{0.0d, 2.0d, 4.0d, 5.5d, 6.5d, 7.5d, 8.0d, 8.5d, 9.0d, 9.5d, 10.0d};
        this.n7 = new int[]{100, 150, 200, 250, 300, MediaProperties.HEIGHT_360, 420, 500, CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR, MediaProperties.HEIGHT_720, 850, 1000, 1200, 1400, 1600, BluetoothClass.Device.WEARABLE_PAGER, 2100, 2500, ConnectivityManager.CONNECTIVITY_CHANGE_DELAY_DEFAULT, 3500, 4000};
        this.o7 = new int[]{-145, -80, -48, -32, -25, -21, -18, -16, -14, -12, -10, -9, -8, -7, -6, -5, -4, -3, -2, -1, 0};
        this.p7 = 1.0d;
        this.q7 = new int[]{20, 10, 47, 24, 10, 47, 29, 10, 47, 36, 10, 47, 44, 10, 47, 54, 10, 47, 66, 10, 47, 81, 10, 47, 100, 10, 47, 125, 10, 47, 152, 10, 47, 183, 10, 47, 220, 10, 47, i.a.Theme_findOnPagePreviousDrawable, 10, 47, SpellChecker.WORD_ITERATOR_INTERVAL, 10, 47, 440, 10, 47, 545, 10, 47, 680, 10, 47, 850, 10, 47, 1050, 10, 47, 1360, 10, 47, 1770, 10, 47, 2200, 10, 47, 2750, 10, 47, 3420, 10, 47, 4270, 10, 47, 5370, 10, 47, 6550, 10, 47, 8130, 10, 47, 9750, 10, 47, 11350, 10, 47, 13000, 10, 47, 14630, 10, 47, 16290, 10, 47, 18100, 10, 47, Window.PROGRESS_SECONDARY_START, 10, 47};
        int[] iArr = {20, 10, 47, 24, 10, 47, 29, 10, 47, 36, 10, 47, 44, 10, 47, 54, 10, 47, 66, 10, 47, 81, 10, 47, 100, 10, 47, 125, 10, 47, 152, 10, 47, 183, 10, 47, 220, 10, 47, i.a.Theme_findOnPagePreviousDrawable, 10, 47, SpellChecker.WORD_ITERATOR_INTERVAL, 10, 47, 440, 10, 47, 545, 10, 47, 680, 10, 47, 850, 10, 47, 1050, 10, 47, 1360, 10, 47, 1770, 10, 47, 2200, 10, 47, 2750, 10, 47, 3420, 10, 47, 4270, 10, 47, 5370, 10, 47, 6550, 10, 47, 8130, 10, 47, 9750, 10, 47, 11350, 10, 47, 13000, 10, 47, 14630, 10, 47, 16290, 10, 47, 18100, 10, 47, Window.PROGRESS_SECONDARY_START, 10, 47};
        this.r7 = iArr;
        int[] iArr2 = {20, 16, 47, 24, 16, 47, 29, 16, 47, 36, 16, 47, 44, 16, 47, 54, 16, 47, 66, 15, 47, 81, 15, 47, 100, 14, 47, 125, 13, 47, 152, 12, 47, 183, 12, 47, 220, 11, 47, i.a.Theme_findOnPagePreviousDrawable, 9, 47, SpellChecker.WORD_ITERATOR_INTERVAL, 8, 47, 440, 6, 47, 545, 6, 47, 680, 6, 47, 850, 6, 47, 1050, 6, 47, 1360, 7, 47, 1770, 8, 47, 2200, 9, 47, 2750, 11, 47, 3420, 12, 47, 4270, 13, 47, 5370, 14, 47, 6550, 15, 47, 8130, 15, 47, 9750, 16, 47, 11350, 16, 47, 13000, 16, 47, 14630, 16, 47, 16290, 16, 47, 18100, 16, 47, Window.PROGRESS_SECONDARY_START, 16, 47};
        this.s7 = iArr2;
        int[] iArr3 = {20, 5, 47, 24, 5, 47, 29, 5, 47, 36, 5, 47, 44, 5, 47, 54, 5, 47, 66, 5, 47, 81, 5, 47, 100, 6, 47, 125, 7, 47, 152, 8, 47, 183, 9, 47, 220, 10, 47, i.a.Theme_findOnPagePreviousDrawable, 11, 47, SpellChecker.WORD_ITERATOR_INTERVAL, 12, 47, 440, 14, 47, 545, 13, 47, 680, 13, 47, 850, 12, 47, 1050, 12, 47, 1360, 12, 47, 1770, 12, 47, 2200, 13, 47, 2750, 13, 47, 3420, 14, 47, 4270, 12, 47, 5370, 10, 47, 6550, 10, 47, 8130, 10, 47, 9750, 10, 47, 11350, 10, 47, 13000, 10, 47, 14630, 10, 47, 16290, 10, 47, 18100, 10, 47, Window.PROGRESS_SECONDARY_START, 10, 47};
        this.t7 = iArr3;
        int[] iArr4 = {20, 15, 47, 24, 15, 47, 29, 15, 47, 36, 15, 47, 44, 15, 47, 54, 15, 47, 66, 16, 47, 81, 16, 47, 100, 15, 47, 125, 14, 47, 152, 14, 47, 183, 13, 47, 220, 12, 47, i.a.Theme_findOnPagePreviousDrawable, 11, 47, SpellChecker.WORD_ITERATOR_INTERVAL, 10, 47, 440, 8, 47, 545, 9, 47, 680, 11, 47, 850, 12, 47, 1050, 11, 47, 1360, 10, 47, 1770, 9, 47, 2200, 8, 47, 2750, 7, 47, 3420, 6, 47, 4270, 6, 47, 5370, 6, 47, 6550, 6, 47, 8130, 6, 47, 9750, 5, 47, 11350, 4, 47, 13000, 4, 47, 14630, 4, 47, 16290, 4, 47, 18100, 4, 47, Window.PROGRESS_SECONDARY_START, 4, 47};
        this.u7 = iArr4;
        int[] iArr5 = {20, 11, 47, 24, 11, 47, 29, 11, 47, 36, 12, 47, 44, 12, 47, 54, 12, 47, 66, 13, 47, 81, 13, 47, 100, 14, 47, 125, 15, 47, 152, 15, 47, 183, 15, 47, 220, 15, 47, i.a.Theme_findOnPagePreviousDrawable, 16, 47, SpellChecker.WORD_ITERATOR_INTERVAL, 16, 47, 440, 16, 47, 545, 16, 47, 680, 15, 47, 850, 15, 47, 1050, 15, 47, 1360, 15, 47, 1770, 14, 47, 2200, 13, 47, 2750, 13, 47, 3420, 13, 47, 4270, 12, 47, 5370, 12, 47, 6550, 13, 47, 8130, 12, 47, 9750, 11, 47, 11350, 10, 47, 13000, 10, 47, 14630, 10, 47, 16290, 10, 47, 18100, 11, 47, Window.PROGRESS_SECONDARY_START, 11, 47};
        this.v7 = iArr5;
        int[] iArr6 = {20, 15, 47, 24, 15, 47, 29, 15, 47, 36, 15, 47, 44, 15, 47, 54, 15, 47, 66, 15, 47, 81, 15, 47, 100, 15, 47, 125, 15, 47, 152, 14, 47, 183, 14, 47, 220, 14, 47, i.a.Theme_findOnPagePreviousDrawable, 14, 47, SpellChecker.WORD_ITERATOR_INTERVAL, 14, 47, 440, 14, 47, 545, 15, 47, 680, 15, 47, 850, 14, 47, 1050, 14, 47, 1360, 13, 47, 1770, 12, 47, 2200, 12, 47, 2750, 12, 47, 3420, 11, 47, 4270, 11, 47, 5370, 10, 47, 6550, 10, 47, 8130, 10, 47, 9750, 9, 47, 11350, 8, 47, 13000, 8, 47, 14630, 8, 47, 16290, 8, 47, 18100, 8, 47, Window.PROGRESS_SECONDARY_START, 8, 47};
        this.w7 = iArr6;
        int[] iArr7 = {20, 14, 47, 24, 14, 47, 29, 14, 47, 36, 14, 47, 44, 13, 47, 54, 12, 47, 66, 12, 47, 81, 12, 47, 100, 10, 47, 125, 8, 47, 152, 6, 47, 183, 6, 47, 220, 5, 47, i.a.Theme_findOnPagePreviousDrawable, 6, 47, SpellChecker.WORD_ITERATOR_INTERVAL, 7, 47, 440, 9, 47, 545, 10, 47, 680, 10, 47, 850, 10, 47, 1050, 10, 47, 1360, 10, 47, 1770, 10, 47, 2200, 11, 47, 2750, 12, 47, 3420, 12, 47, 4270, 12, 47, 5370, 12, 47, 6550, 13, 47, 8130, 14, 47, 9750, 14, 47, 11350, 15, 47, 13000, 15, 47, 14630, 15, 47, 16290, 15, 47, 18100, 15, 47, Window.PROGRESS_SECONDARY_START, 15, 47};
        this.x7 = iArr7;
        int[] iArr8 = {20, 10, 47, 24, 10, 47, 29, 10, 47, 36, 10, 47, 44, 10, 47, 54, 10, 47, 66, 11, 47, 81, 12, 47, 100, 13, 47, 125, 14, 47, 152, 14, 47, 183, 14, 47, 220, 14, 47, i.a.Theme_findOnPagePreviousDrawable, 14, 47, SpellChecker.WORD_ITERATOR_INTERVAL, 15, 47, 440, 15, 47, 545, 15, 47, 680, 16, 47, 850, 16, 47, 1050, 16, 47, 1360, 16, 47, 1770, 15, 47, 2200, 15, 47, 2750, 15, 47, 3420, 15, 47, 4270, 15, 47, 5370, 15, 47, 6550, 15, 47, 8130, 14, 47, 9750, 14, 47, 11350, 14, 47, 13000, 14, 47, 14630, 14, 47, 16290, 14, 47, 18100, 14, 47, Window.PROGRESS_SECONDARY_START, 14, 47};
        this.y7 = iArr8;
        this.z7 = null;
        this.A7 = 47;
        this.B7 = 200;
        this.C7 = 250;
        this.D7 = 20;
        this.E7 = null;
        this.F7 = true;
        this.G7 = false;
        this.H7 = new int[]{8, 8, 8, 8, 8, 8};
        this.I7 = new int[]{-30, 2, 9};
        this.J7 = new int[4];
        this.K7 = new int[]{25, 12, 12, 0, 0, 0};
        this.L7 = new int[]{0, 0};
        this.M7 = new int[]{0, 0};
        this.N7 = new int[]{20, 20, 20, 10, 12};
        this.O7 = new int[]{50, 50};
        this.P7 = 0;
        this.Q7 = 1;
        this.R7 = 0;
        this.S7 = 9;
        this.T7 = 9;
        this.U7 = new int[]{-145, -49, -24, -14, -9, -8, -7, -6, -5, -4, -3};
        this.V7 = new int[]{-145, -61, -36, -26, -21, -20, -19, -18, -17, -16, -15};
        this.W7 = new int[]{5, 8, 11, 15, 20, 25, 30, 35, 40, 45, 50};
        this.X7 = new int[]{0, 0, 5, 10, 15, 25, 35};
        this.Y7 = new int[]{10, 10, 10, 10, 10, 10, 10};
        this.Z7 = new int[]{0, 0, 0, 0, 0, 0, 0};
        this.a8 = new int[]{0, 0, 0, 0, 0, 0, 0};
        this.b8 = new int[]{310, 330, 487, 507, UrlQuerySanitizer.IllegalCharacterValueSanitizer.URL_AND_SPACE_LEGAL, 425, 354, 374};
        this.c8 = 0;
        this.d8 = 1;
        this.e8 = 2;
        this.f8 = 3;
        this.g8 = 1;
        this.h8 = new int[]{21, 6, 8, 12, 16, 20};
        this.i8 = new int[]{21, 5, 7, 11, 15, 19};
        this.j8 = new int[]{150, 0, 5000, 0};
        this.k8 = new int[]{20, 0, Window.PROGRESS_SECONDARY_START, 0};
        this.l8 = new int[]{20, 0, Window.PROGRESS_SECONDARY_START, 0};
        this.m8 = new int[]{20, 0, 250, 0};
        this.n8 = new int[]{150, 0, 5000, 0, 20, 0, Window.PROGRESS_SECONDARY_START, 0, 20, 0, Window.PROGRESS_SECONDARY_START, 0, 20, 0, 250, 0};
        this.o8 = true;
        this.p8 = 0;
        this.q8 = 1;
        this.r8 = 0;
        this.s8 = 1;
        this.t8 = 2;
        this.u8 = new int[]{32, 32, 32, 32, 32, 1, 1, 1, 31, 31, 31, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0};
        this.v8 = new int[]{32, 32};
        this.w8 = new int[]{32, 32, 32, 1, 1, 1};
        this.x8 = new int[]{31, 31, 31, 1, 1, 1};
        this.y8 = new int[]{1, 1, 1, 1, 0, 0, 0};
        this.z8 = 0;
        this.A8 = 0;
        this.B8 = false;
        this.C8 = false;
        this.D8 = false;
        this.E8 = new a();
        this.F8 = new Handler();
        this.G8 = new b();
        this.H8 = 0;
        this.I8 = 21;
        this.J8 = true;
        this.K8 = 1;
        this.L8 = new double[]{-145.0d, -60.0d, -50.0d, -46.0d, -43.0d, -40.0d, -37.0d, -34.0d, -31.0d, -28.0d, -25.0d};
        this.M8 = 6;
        this.N8 = 4129;
        this.O8 = true;
        this.P8 = new int[]{538, 530, 445, 450, SpellChecker.WORD_ITERATOR_INTERVAL, 394};
        this.Q8 = 0;
        this.R8 = 100;
        this.S8 = 50;
        this.T8 = 0;
        this.U8 = 1;
        this.V8 = 2;
        this.W8 = 3;
        this.X8 = 4;
        this.Y8 = 5;
        this.Z8 = 6;
        this.a9 = 7;
        this.b9 = 8;
        this.c9 = 9;
        this.d9 = 10;
        this.e9 = 11;
        this.f9 = 12;
        this.g9 = 13;
        this.h9 = 14;
        this.i9 = 15;
        this.j9 = 16;
        this.k9 = 17;
        this.l9 = 18;
        this.m9 = 19;
        this.n9 = 20;
        this.o9 = new int[]{20, 24, 29, 36, 45, 53, 65, 80, 100, 120, 140, 170, 210, 260, 320, 390, 470, 570, 700, 850, 1000, 1300, 1600, 1900, 2300, 2800, 3400, 4100, 5000, 6100, 7500, 9000, 11000, 14000, 17000, Window.PROGRESS_SECONDARY_START};
        this.p9 = new l();
        this.q9 = 0;
        this.r9 = 1;
        this.s9 = 2;
        this.t9 = 0;
        this.u9 = 1;
        this.v9 = 2;
        this.w9 = 3;
        this.x9 = 4;
        this.y9 = 5;
        this.z9 = 6;
        this.A9 = 7;
        this.B9 = 0;
        this.C9 = 1;
        synchronized (this.f15047c0) {
            Z0(0, this.q7);
            Z0(1, iArr);
            Z0(2, iArr2);
            Z0(3, iArr3);
            Z0(4, iArr4);
            Z0(5, iArr5);
            Z0(6, iArr6);
            Z0(7, iArr7);
            Z0(8, iArr8);
            x(this.a7);
            this.E7 = (AudioManager) App.c().getSystemService(Context.AUDIO_SERVICE);
            this.z7 = nVar;
        }
    }

    @Override // module.sound.AudioDevice
    public void A1(int i2, boolean z2) {
        if (i2 < 0 || i2 >= AudioDevice.G0.length) {
            return;
        }
        c2(m1(i2) / 10.0f);
        d2(I2(i2) / 10.0f);
        super.A1(i2, z2);
        if (z2 || i2 != this.f15054g) {
            if (i2 != this.f15054g) {
                this.f15054g = i2;
            }
            if (this.f15052f) {
                v2();
            }
        }
    }

    public final void A2(int i2) {
        this.J8 = i2 == 1;
        z2();
        G0(AudioDevice.STORE.OPTICAL_DIRECT, i2);
        y0.h.s0(85, i2);
    }

    @Override // module.sound.AudioDevice
    public boolean B() {
        if (u0.b.n4 == 0 || u0.b.f17320f == 0 || u0.b.f17306a0 == 0 || !this.C8) {
            return false;
        }
        if (!this.O8) {
            Log.e("alex", "dsp crc error! initOk:" + this.O8);
        }
        return !this.O8;
    }

    @Override // module.sound.AudioDevice
    public void B0(int i2, int i3, int i4) {
        int i5;
        if (i2 == 65536) {
            i5 = 480;
        } else {
            i5 = i2 == 131072 ? 398 : -1;
        }
        D1(i5, this.l7[i3], i4);
        if (i3 == 0 || i4 == 0) {
            b2(1, i5 != 398 ? 485 : 403, 0);
        } else {
            if (i3 <= 0 || i4 <= 0) {
                return;
            }
            b2(1, i5 != 398 ? 485 : 403, 1);
        }
    }

    public final void B2(int i2) {
        int iMax = Math.max(0, Math.min(i2, 2));
        this.K8 = iMax;
        AudioDevice.STORE store = AudioDevice.STORE.OPTICAL_TYPE;
        G0(store, iMax);
        this.f15080t.e(store.ordinal());
        y0.h.s0(90, iMax);
    }

    @Override // module.sound.AudioDevice
    public void C0(int i2, int i3) {
        boolean z2;
        int i4;
        int i5;
        int iMax = Math.max(0, Math.min(i3, this.l7.length));
        int i6 = -1;
        if (i2 == 65536) {
            i6 = 480;
            int[] iArr = this.L7;
            z2 = iArr[0] != iMax;
            i5 = iArr[0];
            iArr[0] = iMax;
            i4 = iArr[1];
        } else if (i2 == 131072) {
            int[] iArr2 = this.M7;
            z2 = iArr2[0] != iMax;
            int i7 = iArr2[0];
            iArr2[0] = iMax;
            i5 = i7;
            i4 = iArr2[1];
            i6 = 398;
        } else {
            z2 = false;
            iMax = -1;
            i4 = -1;
            i5 = -1;
        }
        if (i6 >= 0) {
            D1(i6, this.l7[iMax], i4);
            if ((i5 > 0 && iMax == 0) || i4 == 0) {
                b2(1, i6 != 398 ? 485 : 403, 0);
            } else if (i5 == 0 && iMax > 0) {
                b2(1, i6 != 398 ? 485 : 403, 1);
            }
            if (z2) {
                super.C0(i2, iMax);
                if (this.Q8 != 0) {
                    if ((i2 != 65536 || this.L7[0] == 0) && (i2 != 131072 || this.M7[0] == 0)) {
                        return;
                    }
                    k1(0);
                }
            }
        }
    }

    public void C2() {
        if (this.L7[0] != 0) {
            C0(65536, 0);
        }
        if (this.M7[0] != 0) {
            C0(131072, 0);
        }
        if (this.L7[1] != 0) {
            D0(65536, 0);
        }
        if (this.M7[1] != 0) {
            D0(131072, 0);
        }
    }

    @Override // module.sound.AudioDevice
    public void D(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 83) {
            if (s0.h(iArr, 0)) {
                p2(iArr[0]);
            }
            return;
        }
        if (i2 == 85) {
            if (s0.h(iArr, 0)) {
                A2(iArr[0]);
                return;
            }
            return;
        }
        if (i2 == 90) {
            if (s0.h(iArr, 0)) {
                B2(iArr[0]);
                return;
            }
            return;
        }
        if (i2 == 93) {
            if (s0.h(iArr, 0)) {
                l2(iArr[0]);
                return;
            }
            return;
        }
        if (i2 == 94) {
            if (s0.h(iArr, 1)) {
                q2(iArr[0], iArr[1]);
                return;
            }
            return;
        }
        switch (i2) {
            case 61:
                s0.h(iArr, 0);
                break;
            case 62:
                s0.h(iArr, 2);
                break;
            case 63:
                if (s0.h(iArr, 1)) {
                    E2(iArr[0], iArr[1]);
                }
                break;
            default:
                switch (i2) {
                    case 68:
                        if (s0.h(iArr, 1)) {
                            E1(iArr[0], iArr[1]);
                        }
                        break;
                    case 69:
                        if (s0.h(iArr, 1)) {
                            V1(iArr[0], iArr[1]);
                        }
                        break;
                    case 70:
                        if (s0.h(iArr, 1)) {
                            G2(iArr[0], iArr[1]);
                        }
                        break;
                    case 71:
                        if (s0.h(iArr, 0)) {
                            H2(iArr[0]);
                        }
                        break;
                }
                break;
        }
    }

    @Override // module.sound.AudioDevice
    public void D0(int i2, int i3) {
        boolean z2;
        int i4;
        int i5;
        int iMax = Math.max(0, Math.min(i3, 12));
        int i6 = -1;
        if (i2 == 65536) {
            i6 = 480;
            int[] iArr = this.L7;
            z2 = iArr[1] != iMax;
            i5 = iArr[0];
            int i7 = iArr[1];
            iArr[1] = iMax;
            i4 = i7;
        } else if (i2 == 131072) {
            int[] iArr2 = this.M7;
            z2 = iArr2[1] != iMax;
            i4 = iArr2[1];
            iArr2[1] = iMax;
            i5 = iArr2[0];
            i6 = 398;
        } else {
            z2 = false;
            iMax = -1;
            i4 = -1;
            i5 = -1;
        }
        if (i6 >= 0) {
            D1(i6, this.l7[i5], iMax);
            if (z2) {
                if ((i4 > 0 && iMax == 0) || i5 == 0) {
                    b2(1, i6 != 398 ? 485 : 403, 0);
                } else if (i4 == 0 && iMax > 0) {
                    b2(1, i6 != 398 ? 485 : 403, 1);
                }
                super.D0(i2, iMax);
                if (this.Q8 != 0) {
                    if ((i2 != 65536 || this.L7[1] == 0) && (i2 != 131072 || this.M7[1] == 0)) {
                        return;
                    }
                    k1(0);
                }
            }
        }
    }

    public void D1(int i2, int i3, double d2) {
        f fVar = new f();
        synchronized (this) {
            f2(1, 132, i2, fVar.a(0, 4, i3, 1.0d, d2, 1));
        }
    }

    public final void D2() {
        int i2 = this.I8;
        Log.e("dspmic", "micGain: " + i2);
        byte bA = (byte) (((byte) (((o0.a(i2, -3, 30) / 3) + 1) << 4)) | ((byte) (((byte) S1(3, 4)) & DhcpPacket.DHCP_DOMAIN_NAME)));
        h2(3, 4, bA);
        Log.e("dspmic", String.format("micGain:0x%02X - Reg0004:0x%02X", Integer.valueOf(this.I8), Byte.valueOf(bA)));
    }

    @Override // module.sound.AudioDevice
    public int E(int i2) {
        int iJ = J(i2);
        int i3 = this.f15051e0.get();
        if (i3 <= 60 || iJ <= i2) {
            return 0;
        }
        if (i3 >= 120) {
            int[] iArr = AudioDevice.G0;
            return iArr[iJ] - iArr[i2];
        }
        int[] iArr2 = AudioDevice.G0;
        return (int) ((((double) (iArr2[iJ] - iArr2[i2])) * s0.w(((((double) (i3 - 60)) * 14.0d) / 60.0d) + 1.0d, 15.0d)) + 0.5d);
    }

    public void E1(int i2, int i3) {
        int i4 = i3;
        if (i2 >= 0 || i2 < this.N7.length) {
            j jVar = new j();
            int[] iArr = new int[16];
            int[] iArr2 = new int[8];
            c cVar = new c();
            synchronized (this) {
                try {
                    switch (i2) {
                        case 0:
                            if (i4 > 100) {
                                i4 = 50;
                            }
                            int[] iArr3 = this.v8;
                            if (iArr3[0] != i4) {
                                iArr3[0] = i4;
                                y0.h.s0(68, i2, i4);
                                H0(AudioDevice.STORE.CSAUTO_SRS, this.v8);
                            }
                            double dS2 = s2(i4);
                            f2(1, 128, 53, new int[]{cVar.a(dS2)});
                            a.f.p().t(LogType.AUDIO, String.format(" MixCenter2Rear-> index: %4d， value: %4d，gain: %2.3f", Integer.valueOf(i2), Integer.valueOf(i4), Double.valueOf(dS2)));
                            break;
                        case 1:
                            if (i4 > 100) {
                                i4 = 50;
                            }
                            int[] iArr4 = this.v8;
                            if (iArr4[1] != i4) {
                                iArr4[1] = i4;
                                y0.h.s0(68, i2, i4);
                                H0(AudioDevice.STORE.CSAUTO_SRS, this.v8);
                            }
                            double dS3 = s2(i4);
                            f2(1, 128, 54, new int[]{cVar.a(dS3)});
                            a.f.p().t(LogType.AUDIO, String.format(" MixFront2Rear-> index: %4d， value: %4d，gain: %2.3f", Integer.valueOf(i2), Integer.valueOf(i4), Double.valueOf(dS3)));
                            break;
                        case 2:
                            if (i4 > 100) {
                                i4 = 50;
                            }
                            int[] iArr5 = this.w8;
                            if (iArr5[0] != i4) {
                                iArr5[0] = i4;
                                y0.h.s0(68, i2, i4);
                                H0(AudioDevice.STORE.CSAUTO_FOC, this.w8);
                            }
                            double dS4 = s2(i4);
                            f2(1, 128, 69, new int[]{cVar.a(dS4)});
                            a.f.p().t(LogType.AUDIO, String.format(" FocusCenterLevel-> index: %4d， value: %4d，gain: %2.3f", Integer.valueOf(i2), Integer.valueOf(i4), Double.valueOf(dS4)));
                            break;
                        case 3:
                            if (i4 > 100) {
                                i4 = 50;
                            }
                            int[] iArr6 = this.w8;
                            if (iArr6[1] != i4) {
                                iArr6[1] = i4;
                                y0.h.s0(68, i2, i4);
                                H0(AudioDevice.STORE.CSAUTO_FOC, this.w8);
                            }
                            double dS5 = s2(i4);
                            f2(1, 128, 87, new int[]{cVar.a(dS5)});
                            a.f.p().t(LogType.AUDIO, String.format(" FocusFrontlevel-> index: %4d， value: %4d，gain: %2.3f", Integer.valueOf(i2), Integer.valueOf(i4), Double.valueOf(dS5)));
                            break;
                        case 4:
                            if (i4 > 100) {
                                i4 = 50;
                            }
                            int[] iArr7 = this.w8;
                            if (iArr7[2] != i4) {
                                iArr7[2] = i4;
                                y0.h.s0(68, i2, i4);
                                H0(AudioDevice.STORE.CSAUTO_FOC, this.w8);
                            }
                            double dS6 = s2(i4);
                            f2(1, 128, 103, new int[]{cVar.a(dS6)});
                            a.f.p().t(LogType.AUDIO, String.format(" FocusRearlevel-> index: %4d， value: %4d，gain: %2.3f", Integer.valueOf(i2), Integer.valueOf(i4), Double.valueOf(dS6)));
                            break;
                        case 8:
                            if (i4 > 100) {
                                i4 = 50;
                            }
                            int[] iArr8 = this.x8;
                            if (iArr8[0] != i4) {
                                iArr8[0] = i4;
                                y0.h.s0(68, i2, i4);
                                H0(AudioDevice.STORE.CSAUTO_TRUBASS, this.x8);
                            }
                            double dS7 = s2(i4);
                            f2(1, 128, 180, new int[]{cVar.a(dS7)});
                            a.f.p().t(LogType.AUDIO, String.format(" TruBassRearControl-> index: %4d， value: %4d，gain: %2.3f", Integer.valueOf(i2), Integer.valueOf(i4), Double.valueOf(dS7)));
                            break;
                        case 9:
                            if (i4 > 100) {
                                i4 = 50;
                            }
                            int[] iArr9 = this.x8;
                            if (iArr9[1] != i4) {
                                iArr9[1] = i4;
                                y0.h.s0(68, i2, i4);
                                H0(AudioDevice.STORE.CSAUTO_TRUBASS, this.x8);
                            }
                            double dS8 = s2(i4);
                            f2(1, 128, 181, new int[]{cVar.a(dS8)});
                            a.f.p().t(LogType.AUDIO, String.format(" TruBassFrontControl-> index: %4d， value: %4d，gain: %2.3f", Integer.valueOf(i2), Integer.valueOf(i4), Double.valueOf(dS8)));
                            break;
                        case 10:
                            if (i4 > 100) {
                                i4 = 50;
                            }
                            int[] iArr10 = this.x8;
                            if (iArr10[2] != i4) {
                                iArr10[2] = i4;
                                y0.h.s0(68, i2, i4);
                                H0(AudioDevice.STORE.CSAUTO_TRUBASS, this.x8);
                            }
                            double dS9 = s2(i4);
                            f2(1, 128, 182, new int[]{cVar.a(dS9)});
                            a.f.p().t(LogType.AUDIO, String.format(" TruBassSubwooferControl-> index: %4d， value: %4d，gain: %2.3f", Integer.valueOf(i2), Integer.valueOf(i4), Double.valueOf(dS9)));
                            break;
                        case 14:
                            int[] iArr11 = this.y8;
                            if (iArr11[0] != i4) {
                                iArr11[0] = i4;
                                y0.h.s0(68, i2, i4);
                                AudioDevice.STORE store = AudioDevice.STORE.CSAUTO_OTHERS;
                                H0(store, this.y8);
                                this.f15080t.e(store.ordinal());
                            }
                            n2(this.f15074q);
                            x2(true);
                            if (i4 == 0) {
                                f2(1, 128, 206, new int[]{cVar.c(1)});
                                a.f.p().t(LogType.AUDIO, String.format(" CSAuto ON  模式---", new Object[0]));
                            } else {
                                f2(1, 128, 206, new int[]{cVar.c(0)});
                                a.f.p().t(LogType.AUDIO, String.format(" CSAuto OFF  模式---", new Object[0]));
                            }
                            if (i4 == 1) {
                                f2(1, 129, 308, jVar.a(0));
                            } else {
                                f2(1, 129, 308, jVar.a(1));
                            }
                            x2(false);
                            break;
                        case 15:
                            int[] iArr12 = this.y8;
                            if (iArr12[1] != i4) {
                                iArr12[1] = i4;
                                y0.h.s0(68, i2, i4);
                                AudioDevice.STORE store2 = AudioDevice.STORE.CSAUTO_OTHERS;
                                H0(store2, this.y8);
                                this.f15080t.e(store2.ordinal());
                            }
                            x2(true);
                            if (i4 == 2) {
                                f2(1, 128, 305, new int[]{cVar.b(2)});
                                a.f.p().t(LogType.AUDIO, String.format("CSAuto ModeSelCinema 模式--- ", new Object[0]));
                            } else if (i4 == 1) {
                                f2(1, 128, 305, new int[]{cVar.b(1)});
                                a.f.p().t(LogType.AUDIO, String.format("CSAuto ModeSelMusic 模式--- ", new Object[0]));
                            } else {
                                f2(1, 128, 305, new int[]{cVar.b(0)});
                                a.f.p().t(LogType.AUDIO, String.format("CSAuto ModeSelMono 模式--- ", new Object[0]));
                            }
                            x2(false);
                            break;
                        case 17:
                            int[] iArr13 = this.y8;
                            if (iArr13[3] != i4) {
                                iArr13[3] = i4;
                                y0.h.s0(68, i2, i4);
                                H0(AudioDevice.STORE.CSAUTO_OTHERS, this.y8);
                            }
                            x2(true);
                            if (i4 == 0) {
                                f2(1, 128, 72, new int[]{cVar.c(0)});
                                a.f.p().t(LogType.AUDIO, String.format(" Phantom OFF  模式---", new Object[0]));
                            } else {
                                f2(1, 128, 72, new int[]{cVar.c(1)});
                                a.f.p().t(LogType.AUDIO, String.format(" Phantom ON  模式---", new Object[0]));
                            }
                            x2(false);
                            break;
                        case 18:
                            if (i4 >= 0 && i4 <= 7) {
                                int[] iArr14 = this.y8;
                                if (iArr14[4] != i4) {
                                    iArr14[4] = i4;
                                    y0.h.s0(68, i2, i4);
                                    H0(AudioDevice.STORE.CSAUTO_OTHERS, this.y8);
                                }
                                int[] iArrD = cVar.d(i4);
                                if (iArrD != null) {
                                    System.arraycopy(iArrD, 0, iArr, 0, 16);
                                    System.arraycopy(iArrD, 16, iArr2, 0, 8);
                                    f2(1, 143, 106, iArr);
                                    f2(1, 135, 122, iArr2);
                                    a.f.p().t(LogType.AUDIO, String.format(" TruBassSubwooferSpeakSize-> index: %4d， value: %4d", Integer.valueOf(i2), Integer.valueOf(i3)));
                                }
                            }
                            break;
                        case 19:
                            if (i4 >= 0 && i4 <= 7) {
                                int[] iArr15 = this.y8;
                                if (iArr15[5] != i4) {
                                    iArr15[5] = i4;
                                    y0.h.s0(68, i2, i4);
                                    H0(AudioDevice.STORE.CSAUTO_OTHERS, this.y8);
                                }
                                int[] iArrD2 = cVar.d(i4);
                                if (iArrD2 != null) {
                                    System.arraycopy(iArrD2, 0, iArr, 0, 16);
                                    System.arraycopy(iArrD2, 16, iArr2, 0, 8);
                                    f2(1, 143, 130, iArr);
                                    f2(1, 135, 146, iArr2);
                                    a.f.p().t(LogType.AUDIO, String.format(" TruBassFrontSpeakSize-> index: %4d， value: %4d", Integer.valueOf(i2), Integer.valueOf(i3)));
                                }
                            }
                            break;
                        case 20:
                            if (i4 >= 0 && i4 <= 7) {
                                int[] iArr16 = this.y8;
                                if (iArr16[6] != i4) {
                                    iArr16[6] = i4;
                                    y0.h.s0(68, i2, i4);
                                    H0(AudioDevice.STORE.CSAUTO_OTHERS, this.y8);
                                }
                                int[] iArrD3 = cVar.d(i4);
                                if (iArrD3 != null) {
                                    System.arraycopy(iArrD3, 0, iArr, 0, 16);
                                    System.arraycopy(iArrD3, 16, iArr2, 0, 8);
                                    f2(1, 143, 154, iArr);
                                    f2(1, 135, 170, iArr2);
                                    a.f.p().t(LogType.AUDIO, String.format(" TruBassRearSpeakSize-> index: %4d， value: %4d", Integer.valueOf(i2), Integer.valueOf(i3)));
                                }
                            }
                            break;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public void E2(int i2, int i3) {
        if (i2 >= 0 || i2 < this.N7.length) {
            int iMax = Math.max(0, Math.min(i3, this.o7.length));
            if (i2 == 0 || i2 == 1 || i2 == 2 || i2 == 3 || i2 == 4) {
                int[] iArr = this.N7;
                if (iArr[i2] != iMax) {
                    iArr[i2] = iMax;
                    y0.h.s0(63, i2, iMax);
                    H0(AudioDevice.STORE.STEREO_PAEAM, this.N7);
                }
                int i4 = !this.G7 ? 1 : 0;
                int[] iArr2 = this.o7;
                int[] iArr3 = this.N7;
                Y1(i4, 0.0d, iArr2[iArr3[0]], iArr2[iArr3[1]], iArr2[iArr3[2]], iArr3[3] / 10.0f, this.n7[iArr3[4]]);
            }
        }
    }

    @Override // module.sound.AudioDevice
    public void F() {
        CHANNEL channel = CHANNEL.IN1;
        L0(0, channel.f15905a);
        L0(1, CHANNEL.IN2.f15905a);
        CHANNEL channel2 = CHANNEL.IN4;
        L0(2, channel2.f15905a);
        L0(3, channel2.f15905a);
        CHANNEL channel3 = CHANNEL.IN3;
        L0(4, channel3.f15905a);
        L0(5, CHANNEL.IN5.f15905a);
        L0(6, channel3.f15905a);
        L0(7, channel.f15905a);
        L0(8, channel.f15905a);
        L0(9, channel.f15905a);
        L0(10, channel.f15905a);
        L0(11, channel3.f15905a);
        L0(12, channel3.f15905a);
        L0(13, channel3.f15905a);
        L0(14, channel.f15905a);
        L0(15, channel.f15905a);
        L0(16, channel.f15905a);
    }

    public void F1(int i2) {
        int i3;
        byte bS1 = (byte) (((byte) S1(3, 10)) & 252);
        if (i2 == CHANNEL.IN1.f15905a || i2 == CHANNEL.IN2.f15905a) {
            i3 = bS1 | 1;
        } else {
            if (i2 != CHANNEL.IN3.f15905a) {
                int i4 = CHANNEL.IN5.f15905a;
            }
            i3 = bS1 | 2;
        }
        h2(3, 10, (byte) i3);
    }

    public void F2(int i2, int i3) {
        int i4;
        switch (i2) {
            case 65536:
                i4 = 4;
                break;
            case 69632:
                i4 = 0;
                break;
            case 73728:
                i4 = 1;
                break;
            case 131072:
                i4 = 5;
                break;
            case 135168:
                i4 = 2;
                break;
            case 139264:
                i4 = 3;
                break;
            default:
                i4 = -1;
                break;
        }
        if (i4 >= 0) {
            a2(i4, i3);
        }
    }

    /* JADX WARN: Failed to calculate best type for var: r21v0 'this'  ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r21v0 'this'  ??, new type: module.sound.C7739
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryToFixIncompatiblePrimitives(FixTypesVisitor.java:820)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Failed to calculate best type for var: r21v0 'this'  ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r21v0 'this'  ??, new type: module.sound.C7739
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Failed to set immutable type for var: r21v0 'this'  ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r21v0 'this'  ??, new type: module.sound.C7739
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.applyWithWiderIgnSame(TypeUpdate.java:73)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setImmutableType(TypeInferenceVisitor.java:111)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$1(TypeInferenceVisitor.java:102)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:102)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryToFixIncompatiblePrimitives(FixTypesVisitor.java:820)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Failed to set immutable type for var: r21v0 'this'  ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r21v0 'this'  ??, new type: module.sound.C7739
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.applyWithWiderIgnSame(TypeUpdate.java:73)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setImmutableType(TypeInferenceVisitor.java:111)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$1(TypeInferenceVisitor.java:102)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:102)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Multi-variable type inference failed. Error: jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r21v0 'this'  module.sound.C7739, new type: module.sound.C7739
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.applyWithWiderIgnSame(TypeUpdate.java:73)
    	at jadx.core.dex.visitors.typeinference.TypeSearch.applyResolvedVars(TypeSearch.java:100)
    	at jadx.core.dex.visitors.typeinference.TypeSearch.run(TypeSearch.java:76)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.runMultiVariableSearch(FixTypesVisitor.java:119)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
    Caused by: java.lang.NullPointerException
     */
    @Override // module.sound.AudioDevice
    public void G(int i2) {
        super.G(i2);
        if (i2 == 1) {
            this.f15080t.v(AudioDevice.STORE.CUSTOMS_EQ_MODE1.ordinal());
            this.f15080t.v(AudioDevice.STORE.CUSTOMS_EQ_MODE2.ordinal());
            this.f15080t.v(AudioDevice.STORE.MODE.ordinal());
            this.f15080t.v(AudioDevice.STORE.TYPE.ordinal());
            this.f15062k = -1;
            C();
            n0();
            h(1);
            return;
        }
        if (i2 == 2) {
            y0.h.p(8, 8);
            a1(65536, 16);
            return;
        }
        if (i2 == 3) {
            this.f15080t.v(AudioDevice.STORE.SURRLEVEL.ordinal());
            this.f15080t.v(AudioDevice.STORE.SURR_FIELD.ordinal());
            H2(0);
            j1(65536, 0);
            j1(131072, 0);
            return;
        }
        if (i2 == 4) {
            this.f15080t.v(AudioDevice.STORE.P2BASSON.ordinal());
            this.f15080t.v(AudioDevice.STORE.P2BFFREQ.ordinal());
            this.f15080t.v(AudioDevice.STORE.P2BRFREQ.ordinal());
            this.f15080t.v(AudioDevice.STORE.P2BFGAIN.ordinal());
            this.f15080t.v(AudioDevice.STORE.P2BRGAIN.ordinal());
            C0(65536, 0);
            C0(131072, 0);
            D0(65536, 0);
            D0(131072, 0);
            y0.h.n0(a.i.k("ro.fyt.subwoof", y0.f.W0));
            return;
        }
        if (i2 == 6) {
            h0 h0Var = this.f15080t;
            AudioDevice.STORE store = AudioDevice.STORE.STEREO_PAEAM;
            h0Var.v(store.ordinal());
            int[] iArr = this.N7;
            iArr[0] = 20;
            iArr[1] = 20;
            iArr[2] = 20;
            iArr[3] = 10;
            iArr[4] = 12;
            y0.h.s0(63, 0, 20);
            y0.h.s0(63, 1, 20);
            y0.h.s0(63, 2, 20);
            y0.h.s0(63, 3, 10);
            y0.h.s0(63, 4, 12);
            H0(store, this.N7);
            this.G7 = false;
            x2(true);
            if (!this.G7) {
                int[] iArr2 = this.o7;
                int[] iArr3 = this.N7;
                Y1(0, 0.0d, iArr2[iArr3[0]], iArr2[iArr3[1]], iArr2[iArr3[2]], iArr3[3] / 10.0f, this.n7[iArr3[4]]);
            }
            int i3 = !this.G7 ? 1 : 0;
            int[] iArr4 = this.o7;
            int[] iArr5 = this.N7;
            Y1(i3, 0.0d, iArr4[iArr5[r10]], iArr4[iArr5[1]], iArr4[iArr5[2]], iArr5[3] / 10.0f, this.n7[iArr5[4]]);
            x2(r10);
            boolean z2 = this.G7;
            G0(AudioDevice.STORE.SURRON, z2 ? 1 : 0);
            y0.h.s0(32, z2 ? 1 : 0);
            return;
        }
        if (i2 == 11) {
            p2(1);
            w2(true);
            int i4 = 0;
            while (true) {
                int[] iArr6 = this.n8;
                if (i4 >= iArr6.length) {
                    a.i.a0(50L);
                    w2(false);
                    return;
                } else {
                    q2(i4, iArr6[i4]);
                    i4++;
                }
            }
        } else if (i2 == 8) {
            this.f15080t.v(AudioDevice.STORE.CSAUTO_SRS.ordinal());
            this.f15080t.v(AudioDevice.STORE.CSAUTO_FOC.ordinal());
            this.f15080t.v(AudioDevice.STORE.CSAUTO_TRUBASS.ordinal());
            this.f15080t.v(AudioDevice.STORE.CSAUTO_OTHERS.ordinal());
            w2(true);
            int i5 = 0;
            while (true) {
                int[] iArr7 = this.u8;
                if (i5 >= iArr7.length) {
                    w2(false);
                    return;
                } else {
                    E1(i5, iArr7[i5]);
                    i5++;
                }
            }
        } else {
            if (i2 != 9) {
                return;
            }
            this.f15080t.v(AudioDevice.STORE.DLY_MIXER_LVL.ordinal());
            this.f15080t.v(AudioDevice.STORE.DLY_MIXER_PHASE.ordinal());
            this.f15080t.v(AudioDevice.STORE.DLY_MIXER_TAP.ordinal());
            k1(0);
            int i6 = 0;
            int i7 = 0;
            while (true) {
                int[] iArr8 = this.Y7;
                if (i6 >= iArr8.length) {
                    break;
                }
                iArr8[i6] = 10;
                y0.h.s0(69, i7, iArr8[i6]);
                i7++;
                i6++;
            }
            int i8 = 0;
            while (true) {
                int[] iArr9 = this.Z7;
                if (i8 >= iArr9.length) {
                    break;
                }
                if (i8 == 0) {
                    iArr9[i8] = 1;
                } else {
                    iArr9[i8] = 0;
                }
                y0.h.s0(69, i7, iArr9[i8]);
                i7++;
                i8++;
            }
            int i9 = 0;
            while (true) {
                int[] iArr10 = this.a8;
                if (i9 >= iArr10.length) {
                    return;
                }
                iArr10[i9] = 0;
                y0.h.s0(69, i7, iArr10[i9]);
                i7++;
                i9++;
            }
        }
    }

    public void G1(int i2) {
        if (i2 != 0) {
            N1(1);
        } else {
            N1(0);
        }
    }

    public void G2(int i2, int i3) {
        int i4 = i2;
        if (i4 > 100) {
            i4 = 50;
        }
        int i5 = i3 <= 100 ? i3 : 50;
        int[] iArr = this.O7;
        iArr[0] = i4;
        iArr[1] = i5;
        double d2 = i4;
        double d3 = i5;
        int iSqrt = (int) Math.sqrt(Math.pow(d2, 2.0d) + Math.pow(d3, 2.0d));
        double d4 = 100 - i4;
        int iSqrt2 = (int) Math.sqrt(Math.pow(d4, 2.0d) + Math.pow(d3, 2.0d));
        double d5 = 100 - i5;
        int iSqrt3 = (int) Math.sqrt(Math.pow(d2, 2.0d) + Math.pow(d5, 2.0d));
        int iSqrt4 = (int) Math.sqrt(Math.pow(d4, 2.0d) + Math.pow(d5, 2.0d));
        int i6 = iSqrt < iSqrt2 ? iSqrt : iSqrt2;
        int i7 = iSqrt3 < iSqrt4 ? iSqrt3 : iSqrt4;
        if (i6 >= i7) {
            i6 = i7;
        }
        int i8 = iSqrt - i6;
        int i9 = iSqrt2 - i6;
        int i10 = iSqrt3 - i6;
        int i11 = iSqrt4 - i6;
        int i12 = i8 > i9 ? i8 : i9;
        int i13 = i10 > i11 ? i10 : i11;
        if (i12 <= i13) {
            i12 = i13;
        }
        int i14 = ((i12 - i8) * 100) / BluetoothClass.Device.COMPUTER_HANDHELD_PC_PDA;
        int i15 = ((i12 - i9) * 100) / BluetoothClass.Device.COMPUTER_HANDHELD_PC_PDA;
        int i16 = ((i12 - i10) * 100) / BluetoothClass.Device.COMPUTER_HANDHELD_PC_PDA;
        int i17 = ((i12 - i11) * 100) / BluetoothClass.Device.COMPUTER_HANDHELD_PC_PDA;
        x2(true);
        j1(69632, i14);
        j1(73728, i15);
        j1(135168, i16);
        j1(139264, i17);
        x2(false);
        H0(AudioDevice.STORE.SURR_FIELD, this.O7);
        y0.h.s0(70, i4, i5);
    }

    public void H1(int i2, int i3, int i4, double d2, double d3) {
        f fVar = new f();
        synchronized (this) {
            double dR2 = this.y8[0] == 1 ? r2(d3) : d3;
            int i5 = dR2 == 0.0d ? 21 : 2;
            if (i3 == 1) {
                f2(0, 137, this.g7[i2], fVar.a(1, i5, i4, d2, dR2, 1));
            } else {
                f2(0, 132, this.g7[i2], fVar.a(0, i5, i4, d2, dR2, 1));
            }
        }
    }

    public void H2(int i2) {
        boolean z2 = nt.W != 0;
        if (i2 == 0) {
            if (z2) {
                G2(75, 25);
                return;
            } else {
                G2(25, 25);
                return;
            }
        }
        if (i2 == 1) {
            if (z2) {
                G2(25, 25);
                return;
            } else {
                G2(75, 25);
                return;
            }
        }
        if (i2 == 2) {
            G2(50, 75);
        } else if (i2 != 3) {
            G2(50, 50);
        } else {
            G2(50, 50);
        }
    }

    public void I1(boolean z2, int i2) {
        j jVar = new j();
        synchronized (this) {
            try {
                if (!z2) {
                    f2(0, 130, 215, jVar.b(0));
                } else if (i2 == CHANNEL.IN4.f15905a) {
                    f2(0, 130, 215, jVar.b(2));
                } else {
                    f2(0, 130, 215, jVar.b(1));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public int I2(int i2) {
        int iMax = Math.max(0, Math.min(i2, AudioDevice.G0.length - 1));
        return iMax == 0 ? this.c7[iMax] : this.c7[iMax] + k2(iMax);
    }

    public void J1() {
        U1(0, 0);
        T1(0, 0);
        a.i.a0(10L);
        M1();
        a.i.a0(10L);
        U1(1, 0);
        a.i.a0(10L);
        this.O8 = true;
        synchronized (this) {
            int iL1 = 0;
            for (int i2 = 0; i2 < 6; i2++) {
                try {
                    iL1 = K1();
                    if (iL1 == 1) {
                        break;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (iL1 != 1) {
                this.O8 = false;
            }
            for (int i3 = 0; this.O8 && i3 < 6 && (iL1 = L1()) != 1; i3++) {
            }
            if (iL1 != 1) {
                this.O8 = false;
            }
        }
        a.i.a0(10L);
        U1(1, 1);
        T1(1, 1);
        a.i.a0(100L);
    }

    public int J2(int i2, int[] iArr) {
        int iMax = Math.max(0, Math.min(i2, iArr.length - 1));
        return iMax == 0 ? iArr[iMax] : iArr[iMax] + k2(iMax);
    }

    public synchronized int K1() {
        int iD;
        iD = -1;
        this.T6 = s0.A(App.c(), R.raw.akm7739_pram_table1, 16);
        this.U6 = s0.A(App.c(), R.raw.akm7739_cram_table1, 16);
        synchronized (this) {
            for (int i2 = 0; i2 < 6; i2++) {
                iD = this.z7.d(F9, new int[]{184, 0, 0}, this.T6);
                if (iD > 0) {
                    break;
                }
            }
        }
        int[] iArrQ1 = Q1(114, 0, 2);
        int iI2 = i2(new int[]{184, 0, 0}, this.T6);
        if (((iI2 >> 8) & 255) == (iArrQ1[0] & 255) && (iI2 & 255) == (iArrQ1[1] & 255)) {
            Log.e("alex", "Write AkmPramTable1 Crc pass.ret:" + iD);
            synchronized (this) {
                for (int i3 = 0; i3 < 6; i3++) {
                    iD = this.z7.d(F9, new int[]{180, 0, 0}, this.U6);
                    if (iD > 0) {
                        break;
                    }
                }
                int[] iArrQ2 = Q1(114, 0, 2);
                int iI3 = i2(new int[]{180, 0, 0}, this.U6);
                if (((iI3 >> 8) & 255) == (iArrQ2[0] & 255) && (iI3 & 255) == (iArrQ2[1] & 255)) {
                    Log.e("alex", "Write AkmCramTable1 Crc pass.ret:" + iD);
                    synchronized (this) {
                        for (int i4 = 0; i4 < 6; i4++) {
                            iD = this.z7.d(F9, new int[]{178, 0, 0}, this.W6);
                            if (iD > 0) {
                                break;
                            }
                        }
                        int[] iArrQ3 = Q1(114, 0, 2);
                        int iI4 = i2(new int[]{178, 0, 0}, this.W6);
                        if (((iI4 >> 8) & 255) == (iArrQ3[0] & 255) && (iI4 & 255) == (iArrQ3[1] & 255)) {
                            Log.e("alex", "Write AkmOfregTable1 Crc pass.ret:" + iD);
                            return 1;
                        }
                        Log.e("alex", "Write AkmOfregTable1 error--------!!!-----------ret:" + iD);
                        return 0;
                    }
                }
                Log.e("alex", "Write AkmCramTable1 error--------!!!-----------ret:" + iD);
                return 0;
            }
        }
        Log.e("alex", "Write AkmPramTable1 error--------!!!-----------ret:" + iD);
        return 0;
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
        if (i6 < this.k7.length) {
            m2(i2, iArr[i4], iArr[i5], i6);
        }
        super.L(i2, i3);
    }

    public synchronized int L1() {
        int iD;
        iD = -1;
        this.T6 = s0.A(App.c(), R.raw.akm7739_pram_table2, 16);
        this.U6 = s0.A(App.c(), R.raw.akm7739_cram_table2, 16);
        synchronized (this) {
            for (int i2 = 0; i2 < 6; i2++) {
                iD = this.z7.d(F9, new int[]{185, 0, 0}, this.T6);
                if (iD > 0) {
                    break;
                }
            }
        }
        int[] iArrQ1 = Q1(114, 0, 2);
        int iI2 = i2(new int[]{185, 0, 0}, this.T6);
        if (((iI2 >> 8) & 255) == (iArrQ1[0] & 255) && (iI2 & 255) == (iArrQ1[1] & 255)) {
            Log.e("alex", "Write AkmPramTable2 Crc pass.ret:" + iD);
            synchronized (this) {
                for (int i3 = 0; i3 < 6; i3++) {
                    iD = this.z7.d(F9, new int[]{181, 0, 0}, this.U6);
                    if (iD > 0) {
                        break;
                    }
                }
                int[] iArrQ2 = Q1(114, 0, 2);
                int iI3 = i2(new int[]{181, 0, 0}, this.U6);
                if (((iI3 >> 8) & 255) == (iArrQ2[0] & 255) && (iI3 & 255) == (iArrQ2[1] & 255)) {
                    Log.e("alex", "Write AkmCramTable2 Crc pass.ret:" + iD);
                    synchronized (this) {
                        for (int i4 = 0; i4 < 6; i4++) {
                            iD = this.z7.d(F9, new int[]{179, 0, 0}, this.V6);
                            if (iD > 0) {
                                break;
                            }
                        }
                        int[] iArrQ3 = Q1(114, 0, 2);
                        int iI4 = i2(new int[]{179, 0, 0}, this.V6);
                        if (((iI4 >> 8) & 255) == (iArrQ3[0] & 255) && (iI4 & 255) == (iArrQ3[1] & 255)) {
                            Log.e("alex", "Write AkmOfregTable2 Crc pass.ret:" + iD);
                            return 1;
                        }
                        Log.e("alex", "Write AkmOfregTable2 Crc error--------!!!-----------ret:" + iD);
                        return 0;
                    }
                }
                Log.e("alex", "Write AkmCramTable2 Crc error--------!!!-----------ret:" + iD);
                return 0;
            }
        }
        Log.e("alex", "Write AkmPramTable2 Crc error--------!!!-----------ret:" + iD);
        return 0;
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
        m2(i2, iArr[i4], iArr[i4 + 2], iArr[i5]);
        super.M(i2, i3);
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0066  */
    public void M1() {
        int i2;
        int i3;
        int i4 = 0;
        int i5 = 0;
        while (true) {
            int[] iArr = this.P6;
            int i6 = 1;
            if (i5 >= iArr.length) {
                break;
            }
            int i7 = iArr[i5];
            if (i7 == 0) {
                i6 = iArr[i5 + 1] & (-4);
            } else if (i7 == 71 || i7 == 103) {
                if (g.f.n(11)) {
                    i3 = this.P6[i5 + 1];
                    i6 = i3;
                } else {
                    i6 = 6;
                }
            } else if (i7 != 163) {
                if (i7 == 320) {
                    int i8 = SystemProperties.getInt("persist.blinkbt.qcc3031.ecnr.disable", 0);
                    Log.e("alex", "------btEcnrConfig:" + i8);
                    i3 = i8 == 1 ? 34 : this.P6[i5 + 1];
                } else if (i7 != 344) {
                    i6 = iArr[i5 + 1];
                } else {
                    i3 = g.f.n(11) ? this.P6[i5 + 1] : 9;
                }
                i6 = i3;
            } else {
                int i9 = this.K8;
                if (i9 == 1) {
                    i6 = 6;
                } else if (i9 == 2) {
                    i6 = 7;
                }
            }
            h2(0, this.P6[i5], i6);
            i5 += 2;
        }
        int i10 = 0;
        while (true) {
            int[] iArr2 = this.Q6;
            if (i10 >= iArr2.length) {
                break;
            }
            h2(1, iArr2[i10], iArr2[i10] != 0 ? iArr2[i10 + 1] : iArr2[i10 + 1] & (-8));
            i10 += 2;
        }
        int i11 = 0;
        while (true) {
            int[] iArr3 = this.R6;
            if (i11 >= iArr3.length) {
                break;
            }
            if (iArr3[i11] == 515) {
                int i12 = this.K8;
                if (i12 == 1) {
                    i2 = 10;
                } else {
                    i2 = i12 == 2 ? 14 : 2;
                }
            } else {
                i2 = iArr3[i11 + 1];
            }
            h2(2, iArr3[i11], i2);
            i11 += 2;
        }
        while (true) {
            int[] iArr4 = this.S6;
            if (i4 >= iArr4.length) {
                return;
            }
            h2(3, iArr4[i4], iArr4[i4] != 2 ? iArr4[i4 + 1] : iArr4[i4 + 1] & (-2));
            i4 += 2;
        }
    }

    @Override // module.sound.AudioDevice
    public void N0() {
        e eVar = new e();
        this.f15045b0 = Math.max(0, Math.min(this.f15045b0, 10));
        Log.e("alex", "beepVolume: " + this.f15045b0);
        synchronized (this) {
            f2(1, 128, 477, new int[]{eVar.a(this.L8[this.f15045b0])});
        }
    }

    public void N1(int i2) {
        synchronized (this) {
            try {
                if (i2 != 0) {
                    v2();
                    b2(0, 287, 1);
                } else {
                    b2(0, 287, 0);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
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
        if (i6 < this.k7.length) {
            m2(i2, iArr[i4], iArr[i5], i6);
        }
        super.O(i2, i3);
    }

    public void O1(int i2, double d2, double d3) {
        new j();
        e eVar = new e();
        g gVar = new g();
        synchronized (this) {
            f2(0, 128, 209, new int[]{eVar.a(d2)});
            f2(0, 128, 212, new int[]{eVar.a(d3)});
            if (d2 > -145.0d) {
                int i3 = this.H8;
                if (i3 > 0) {
                    if (y0.f.Q0 == 0 || y0.f.T0 != 0) {
                        if (i3 == 1) {
                            if (nt.W != 0) {
                                f2(0, 128, 205, new int[]{gVar.a(0.0d, 0)});
                            } else {
                                f2(0, 128, 102, new int[]{gVar.a(0.0d, 0)});
                            }
                        }
                    } else if (nt.W != 0) {
                        f2(0, 128, 205, new int[]{gVar.a(-145.0d, 0)});
                    } else {
                        f2(0, 128, 102, new int[]{gVar.a(-145.0d, 0)});
                    }
                }
            } else if (this.H8 > 0) {
                f2(0, 128, 102, new int[]{gVar.a(0.0d, 0)});
                f2(0, 128, 205, new int[]{gVar.a(0.0d, 0)});
            }
        }
    }

    public void P1(int i2, int i3) {
        e eVar = new e();
        if (i2 >= 0 && i2 <= 3) {
            synchronized (this) {
                f2(1, 128, this.P8[i2], new int[]{eVar.a(i3)});
            }
        } else if (i2 == 5) {
            synchronized (this) {
                f2(1, 128, 394, new int[]{eVar.a(this.j7[i3])});
            }
        }
    }

    public int[] Q1(int i2, int i3, int i4) {
        int[] iArr = new int[i4];
        return this.z7.e(i4, F9, false, i2, s0.c(i3, 1), s0.c(i3, 0));
    }

    @Override // module.sound.AudioDevice
    public void R0(boolean z2) {
        super.R0(z2);
        if (z2) {
            u0.b.V3 = z2;
        }
        if (z2 || !this.B8) {
            return;
        }
        this.B8 = false;
        synchronized (this) {
            h2(3, 20, 2);
            P1(0, this.i7[this.H7[0]]);
            P1(1, this.i7[this.H7[1]]);
            P1(2, this.i7[this.H7[2]]);
            P1(3, this.i7[this.H7[3]]);
            o(y0.f.V0);
        }
        y0.h.X(16, false);
        this.R7 = 0;
    }

    public int[] R1(int i2, int i3, int i4, int i5) {
        int i6 = i5 * 4;
        int[] iArrE = new int[i6];
        int[] iArr = new int[i5];
        if (i2 != 0) {
            iArrE = this.z7.e(i6, F9, false, i3, s0.c(i4, 1), s0.c(i4, 0));
        }
        for (int i7 = 0; i7 < i5; i7++) {
            int i8 = i7 * 4;
            iArr[i7] = ((iArrE[i8 + 0] << 24) & (-16777216)) + ((iArrE[i8 + 1] << 16) & Spanned.SPAN_PRIORITY) + ((iArrE[i8 + 2] << 8) & 65280) + (iArrE[i8 + 3] & 255);
        }
        return iArr;
    }

    public int S1(int i2, int i3) {
        return Q1(i2 + 64, i3, 1)[0] & 255;
    }

    public void T1(int i2, int i3) {
        byte bS1 = (byte) S1(1, 0);
        h2(1, 0, (byte) (i3 != 0 ? bS1 | 7 : bS1 & (-8)));
        byte bS2 = (byte) S1(3, 2);
        h2(3, 2, (byte) (i2 != 0 ? bS2 | 1 : bS2 & (-2)));
    }

    @Override // module.sound.AudioDevice
    public boolean U(int i2, y.b bVar) {
        boolean z2 = true;
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
        } else if (i2 == 53) {
            r1(bVar, i2, 69632, this.H7[0]);
            r1(bVar, i2, 73728, this.H7[1]);
            r1(bVar, i2, 135168, this.H7[2]);
            r1(bVar, i2, 139264, this.H7[3]);
            r1(bVar, i2, 65536, this.H7[4]);
        } else if (i2 == 83) {
            r1(bVar, i2, this.g8);
        } else if (i2 == 85) {
            r1(bVar, i2, this.J8 ? 1 : 0);
        } else if (i2 == 90) {
            r1(bVar, i2, this.K8);
        } else if (i2 == 94) {
            int i6 = 0;
            while (true) {
                int[] iArr4 = this.j8;
                if (i6 >= iArr4.length) {
                    break;
                }
                r1(bVar, i2, i6, iArr4[i6]);
                i6++;
            }
            int i7 = 0;
            while (true) {
                int[] iArr5 = this.j8;
                if (i7 >= iArr5.length) {
                    break;
                }
                r1(bVar, i2, iArr5.length + i7, this.k8[i7]);
                i7++;
            }
            int i8 = 0;
            while (true) {
                int[] iArr6 = this.j8;
                if (i8 >= iArr6.length) {
                    break;
                }
                r1(bVar, i2, (iArr6.length * 2) + i8, this.l8[i8]);
                i8++;
            }
            int i9 = 0;
            while (true) {
                int[] iArr7 = this.j8;
                if (i9 >= iArr7.length) {
                    break;
                }
                r1(bVar, i2, (iArr7.length * 3) + i9, this.m8[i9]);
                i9++;
            }
        } else if (i2 == 26) {
            r1(bVar, i2, this.f15092z);
        } else if (i2 == 27) {
            r1(bVar, i2, 0, this.C7);
            r1(bVar, i2, 256, this.D7);
        } else if (i2 == 55) {
            r1(bVar, i2, this.F7 ? 1 : 0);
        } else if (i2 != 56) {
            switch (i2) {
                case 29:
                    r1(bVar, i2, 65536, this.L7[1]);
                    r1(bVar, i2, 131072, this.M7[1]);
                    break;
                case 30:
                    r1(bVar, i2, 65536, this.L7[0]);
                    r1(bVar, i2, 131072, this.M7[0]);
                    break;
                case 31:
                    r1(bVar, i2, 65552, this.J7[0]);
                    r1(bVar, i2, 65568, this.J7[1]);
                    r1(bVar, i2, WifiStateMachine.CMD_STATIC_IP_FAILURE, this.J7[2]);
                    r1(bVar, i2, 131104, this.J7[3]);
                    break;
                case 32:
                    r1(bVar, i2, this.G7 ? 1 : 0);
                    break;
                case 33:
                    r1(bVar, i2, this.Q8);
                    break;
                case 34:
                    r1(bVar, i2, 69632, this.K7[0]);
                    r1(bVar, i2, 73728, this.K7[1]);
                    r1(bVar, i2, 135168, this.K7[2]);
                    r1(bVar, i2, 139264, this.K7[3]);
                    r1(bVar, i2, 65536, this.K7[4]);
                    r1(bVar, i2, 131072, this.K7[5]);
                    break;
                default:
                    switch (i2) {
                        case 61:
                            r1(bVar, i2, this.A7);
                            break;
                        case 62:
                            r1(bVar, i2, this.I7);
                            break;
                        case 63:
                            int[] iArr8 = this.N7;
                            if (iArr8 != null && iArr8.length > 0) {
                                int i10 = 0;
                                while (true) {
                                    int[] iArr9 = this.N7;
                                    if (i10 < iArr9.length) {
                                        r1(bVar, i2, i10, iArr9[i10]);
                                        i10++;
                                    }
                                }
                            }
                            break;
                        default:
                            switch (i2) {
                                case 68:
                                    int[] iArr10 = new int[21];
                                    int[] iArr11 = this.v8;
                                    System.arraycopy(iArr11, 0, iArr10, 0, iArr11.length);
                                    int[] iArr12 = this.w8;
                                    System.arraycopy(iArr12, 0, iArr10, 2, iArr12.length);
                                    int[] iArr13 = this.x8;
                                    System.arraycopy(iArr13, 0, iArr10, 8, iArr13.length);
                                    int[] iArr14 = this.y8;
                                    System.arraycopy(iArr14, 0, iArr10, 14, iArr14.length);
                                    for (int i11 = 0; i11 < 21; i11++) {
                                        r1(bVar, i2, i11, iArr10[i11]);
                                    }
                                    break;
                                case 69:
                                    int i12 = 0;
                                    int i13 = 0;
                                    while (true) {
                                        int[] iArr15 = this.Y7;
                                        if (i12 >= iArr15.length) {
                                            int i14 = 0;
                                            while (true) {
                                                int[] iArr16 = this.Z7;
                                                if (i14 >= iArr16.length) {
                                                    int i15 = 0;
                                                    while (true) {
                                                        int[] iArr17 = this.a8;
                                                        if (i15 < iArr17.length) {
                                                            r1(bVar, i2, i13, iArr17[i15]);
                                                            i13++;
                                                            i15++;
                                                        }
                                                    }
                                                } else {
                                                    r1(bVar, i2, i13, iArr16[i14]);
                                                    i13++;
                                                    i14++;
                                                }
                                            }
                                        } else {
                                            r1(bVar, i2, i13, iArr15[i12]);
                                            i13++;
                                            i12++;
                                        }
                                        break;
                                    }
                                    break;
                                case 70:
                                    int[] iArr18 = this.O7;
                                    r1(bVar, i2, iArr18[0], iArr18[1]);
                                    break;
                                default:
                                    z2 = false;
                                    break;
                            }
                            break;
                    }
                    break;
            }
        } else {
            r1(bVar, i2, 0, this.z8);
            r1(bVar, i2, 16, this.A8);
        }
        return z2 ? z2 : super.U(i2, bVar);
    }

    public void U1(int i2, int i3) {
        byte bS1 = (byte) S1(0, 0);
        byte b2 = (byte) (i2 != 0 ? bS1 | 2 : bS1 & (-3));
        h2(0, 0, (byte) (i3 != 0 ? b2 | 1 : b2 & (-2)));
    }

    public void V1(int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        new j();
        k kVar = new k();
        int[] iArr = this.Y7;
        int length = i2 % iArr.length;
        if (i2 < iArr.length) {
            if (iArr[length] != i3) {
                int iMax = Math.max(0, Math.min(i3, 10));
                this.Y7[length] = iMax;
                y0.h.s0(69, i2, iMax);
                H0(AudioDevice.STORE.DLY_MIXER_LVL, this.Y7);
            }
        } else if (i2 < iArr.length * 2) {
            int[] iArr2 = this.Z7;
            if (iArr2[length] != i3) {
                iArr2[length] = i3;
                y0.h.s0(69, i2, i3);
                H0(AudioDevice.STORE.DLY_MIXER_PHASE, this.Z7);
            }
        } else if (i2 < iArr.length * 3) {
            int[] iArr3 = this.a8;
            if (iArr3[length] != i3) {
                iArr3[length] = i3;
                y0.h.s0(69, i2, i3);
                H0(AudioDevice.STORE.DLY_MIXER_TAP, this.a8);
            }
        }
        synchronized (this) {
            int[] iArr4 = this.Y7;
            if (i2 < iArr4.length * 2) {
                if (length == 0) {
                    i9 = this.U7[iArr4[length]];
                    i8 = 323;
                    i7 = 317;
                } else {
                    i7 = (length + 317) - 1;
                    i8 = (length + 323) - 1;
                    i9 = this.V7[iArr4[length]];
                }
                if (i2 == iArr4.length) {
                    x2(true);
                }
                double d2 = i9;
                f2(0, 128, i7, new int[]{kVar.a(d2, this.Z7[length])});
                f2(0, 128, i8, new int[]{kVar.a(d2, this.Z7[length])});
                if (i2 == this.Y7.length) {
                    x2(false);
                }
            } else if (i2 < iArr4.length * 3) {
                if (length == 0) {
                    i5 = 8;
                    i6 = this.W7[this.a8[0]];
                    i4 = 1;
                } else {
                    i4 = (length + 1) - 1;
                    i5 = (length + 8) - 1;
                    i6 = this.a8[length] + this.X7[length];
                }
                g2(0, 144, i4, new int[]{499 - i6});
                g2(0, 144, i5, new int[]{999 - i6});
            }
        }
    }

    @Override // module.sound.AudioDevice
    public void W0() {
        byte b2;
        super.W0();
        this.C8 = false;
        this.D8 = true;
        ToolsJni.cmd_251_Normal_Io_Set(0, 0);
        a.i.a0(140L);
        ToolsJni.cmd_251_Normal_Io_Set(0, 1);
        a.i.a0(20L);
        byte b3 = 0;
        int i2 = 0;
        while (true) {
            if (b3 < 0) {
                i2++;
                try {
                    Thread.sleep(520L);
                } catch (InterruptedException e2) {
                    e2.printStackTrace();
                }
            }
            byte bS1 = (byte) S1(0, 768);
            if (bS1 == 57) {
                this.O8 = true;
                b2 = 1;
            } else {
                b2 = -1;
                this.O8 = false;
            }
            Log.e("alex", " Device ID :  " + ((int) bS1));
            if (b2 >= 0 || i2 >= 4) {
                break;
            } else {
                b3 = b2;
            }
        }
        if (!this.O8) {
            return;
        }
        J1();
        this.C8 = true;
        w0(this.f15062k);
        n2(this.f15074q);
        l(this.f15052f ? 1 : 0);
        j(null);
        a(u0.b.D);
        A1(y0.f.C0, true);
        a1(65536, this.H7[4]);
        o(this.f15092z);
        e1(256, this.D7);
        e1(0, this.C7);
        F2(69632, this.K7[0]);
        F2(73728, this.K7[1]);
        F2(135168, this.K7[2]);
        F2(139264, this.K7[3]);
        int[] iArr = this.L7;
        B0(65536, iArr[0], iArr[1]);
        int[] iArr2 = this.M7;
        B0(131072, iArr2[0], iArr2[1]);
        int i3 = !this.G7 ? 1 : 0;
        int[] iArr3 = this.o7;
        int[] iArr4 = this.N7;
        Y1(i3, 0.0d, iArr3[iArr4[0]], iArr3[iArr4[1]], iArr3[iArr4[2]], iArr4[3] / 10.0f, this.n7[iArr4[4]]);
        p2(1);
        int i4 = 0;
        while (true) {
            int[] iArr5 = this.j8;
            if (i4 >= iArr5.length) {
                break;
            }
            q2(i4, iArr5[i4]);
            i4++;
        }
        int i5 = 0;
        while (true) {
            int[] iArr6 = this.j8;
            if (i5 >= iArr6.length) {
                break;
            }
            q2(iArr6.length + i5, this.k8[i5]);
            i5++;
        }
        int i6 = 0;
        while (true) {
            int[] iArr7 = this.j8;
            if (i6 >= iArr7.length) {
                break;
            }
            q2((iArr7.length * 2) + i6, this.l8[i6]);
            i6++;
        }
        int i7 = 0;
        while (true) {
            int[] iArr8 = this.j8;
            if (i7 >= iArr8.length) {
                k1(this.Q8);
                E1(0, this.v8[0]);
                E1(1, this.v8[1]);
                E1(2, this.w8[0]);
                E1(5, 1);
                E1(3, this.w8[1]);
                E1(6, 1);
                E1(4, this.w8[2]);
                E1(7, 1);
                E1(18, this.y8[4]);
                E1(19, this.y8[5]);
                E1(20, this.y8[6]);
                E1(8, this.x8[0]);
                E1(9, this.x8[1]);
                E1(10, this.x8[2]);
                E1(11, 1);
                E1(12, 1);
                E1(13, 1);
                E1(17, this.y8[3]);
                E1(16, this.y8[2]);
                E1(14, this.y8[0]);
                E1(15, this.y8[1]);
                z2();
                y2(0);
                e eVar = new e();
                synchronized (this) {
                    f2(1, 128, SpellChecker.WORD_ITERATOR_INTERVAL, new int[]{eVar.a(0.0d)});
                }
                t2();
                N0();
                this.D8 = false;
                m(7, y0.f.f18084w0[7]);
                g gVar = new g();
                synchronized (this) {
                    f2(0, 128, 222, new int[]{gVar.a(0.0d, 0)});
                    f2(0, 128, 224, new int[]{gVar.a(0.0d, 0)});
                    f2(0, 128, 599, new int[]{eVar.a(0.0d)});
                    f2(0, 128, 331, new int[]{eVar.a(0.0d)});
                    f2(1, 128, 537, new int[]{gVar.a(0.0d, 0)});
                    f2(1, 128, 529, new int[]{gVar.a(0.0d, 0)});
                    f2(0, 128, 221, new int[]{gVar.a(0.0d, 0)});
                    f2(0, 128, 223, new int[]{gVar.a(0.0d, 0)});
                }
                return;
            }
            q2((iArr8.length * 3) + i7, this.m8[i7]);
            i7++;
        }
    }

    public void W1(int i2, int i3, int i4, int i5, int i6) {
        new j();
        k kVar = new k();
        if (i2 >= this.Y7.length) {
            return;
        }
        synchronized (this) {
            int i7 = i2 + 317;
            int i8 = i2 + 323;
            if (i2 != 0) {
                i7--;
                i8--;
            }
            double d2 = i4;
            f2(0, 128, i7, new int[]{kVar.a(d2, i3)});
            f2(0, 128, i8, new int[]{kVar.a(d2, i3)});
            int i9 = i2 + 1;
            int i10 = i2 + 8;
            if (i2 != 0) {
                i9--;
                i10--;
            }
            g2(0, 144, i9, new int[]{499 - i5});
            g2(0, 144, i10, new int[]{999 - i5});
        }
    }

    public int X1(int i2) {
        h hVar = new h();
        synchronized (this) {
            f2(0, 128, 724, new int[]{((i2 + 704) << 16) & (-65536)});
        }
        a.i.a0(1L);
        return hVar.a((R1(1, 118, 0, 1)[0] >> 8) & (-1));
    }

    public void Y1(int i2, double d2, double d3, double d4, double d5, double d6, int i3) {
        j jVar = new j();
        i iVar = new i();
        synchronized (this) {
            try {
                if (i2 != 0) {
                    f2(0, 129, 315, jVar.a(1));
                } else {
                    f2(0, 129, 315, jVar.a(0));
                    f2(0, 128, 289, new int[]{iVar.c(-6.0d)});
                    f2(0, 128, 290, new int[]{iVar.g(d3)});
                    f2(0, 128, TextTrackRegion.SCROLL_VALUE_SCROLL_UP, new int[]{iVar.d(d4)});
                    f2(0, 128, 314, new int[]{iVar.b(d5)});
                    f2(0, 128, 313, new int[]{iVar.e(d6)});
                    f2(0, 128, 312, new int[]{iVar.f(d6)});
                    int[] iArrA = iVar.a(1, i3, 0.70711d, 1);
                    f2(0, 132, 291, iArrA);
                    f2(0, 132, 296, iArrA);
                    int[] iArrA2 = iVar.a(0, i3, 0.70711d, 1);
                    f2(0, 132, 302, iArrA2);
                    f2(0, 132, 307, iArrA2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void Z1(int i2) {
        synchronized (this) {
            try {
                if (i2 != 0) {
                    b2(0, 315, 1);
                } else {
                    b2(0, 315, 0);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:40:0x0073  */
    /* JADX WARN: Code duplicated, block: B:41:0x00a0  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // y0.e
    public void a(int i2) {
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        String name;
        Class cls;
        g.g gVar;
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
            i4 = CHANNEL.IN1.f15905a;
        }
        boolean z6 = i4 == CHANNEL.IN1.f15905a || i4 == CHANNEL.IN4.f15905a;
        c4 c4Var = j4.f16466d;
        if (c4Var == null || !c4Var.l3()) {
            z2 = false;
            z3 = z6;
        } else {
            z2 = true;
            z3 = false;
        }
        if (!z2 && i2 == 1 && (gVar = g.e.f2254a) != null && ((Chip) gVar).M()) {
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
                    d0.e(AudioManager.class.getName(), this.E7, "setVoiceSwitch2iis", new Class[]{cls}, Boolean.valueOf(z5));
                    d0.e(AudioManager.class.getName(), this.E7, "setAudioSwitch2iis", new Class[]{cls}, Boolean.valueOf(z5));
                } else {
                    String name2 = AudioManager.class.getName();
                    AudioManager audioManager = this.E7;
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
                d0.e(AudioManager.class.getName(), this.E7, "setVoiceSwitch2iis", new Class[]{cls}, Boolean.valueOf(z5));
                d0.e(AudioManager.class.getName(), this.E7, "setAudioSwitch2iis", new Class[]{cls}, Boolean.valueOf(z5));
            } else {
                String name3 = AudioManager.class.getName();
                AudioManager audioManager2 = this.E7;
                Class cls3 = Integer.TYPE;
                d0.e(name3, audioManager2, "setWiredDeviceConnectionState", new Class[]{cls3, cls3, String.class, String.class}, 8, Integer.valueOf(!z5), ProxyProperties.LOCAL_EXCL_LIST, ProxyProperties.LOCAL_EXCL_LIST);
            }
            z8 = z4;
        }
        I1(z8, i4);
        F1(i4);
        int i5 = y0.f.f18090z0[i2];
        if (i5 < 0 || i5 >= 48) {
            return;
        }
        m(i5, y0.f.f18084w0[i5]);
    }

    @Override // module.sound.AudioDevice
    public void a1(int i2, int i3) {
        int i4;
        int i5 = 16 - i3;
        switch (i2) {
            case 65536:
                i4 = 4;
                break;
            case 69632:
                i4 = 0;
                break;
            case 73728:
                i4 = 1;
                break;
            case 131072:
                i4 = 5;
                break;
            case 135168:
                i4 = 2;
                break;
            case 139264:
                i4 = 3;
                break;
            default:
                i4 = -1;
                break;
        }
        if (o2(i4, i5)) {
            super.a1(i2, i3);
        }
    }

    public void a2(int i2, int i3) {
        int i4 = (i3 * 768) / 100;
        new d();
        synchronized (this) {
            try {
                if (i2 == 0) {
                    g2(1, 144, 1, new int[]{1151 - i4});
                } else if (i2 == 1) {
                    g2(1, 144, 3, new int[]{2303 - i4});
                } else if (i2 == 2) {
                    g2(1, 144, 5, new int[]{3455 - i4});
                } else if (i2 == 3) {
                    g2(1, 144, 7, new int[]{4607 - i4});
                } else if (i2 == 4) {
                    g2(1, 144, 9, new int[]{5759 - i4});
                } else if (i2 == 5) {
                    g2(1, 144, 11, new int[]{6911 - i4});
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // module.sound.AudioDevice
    public void b1(boolean z2) {
        if (this.F7 != z2) {
            return;
        }
        boolean z3 = !z2;
        this.F7 = z3;
        if (z3) {
            j(null);
        }
        super.b1(z2);
    }

    public void b2(int i2, int i3, int i4) {
        j jVar = new j();
        x2(true);
        synchronized (this) {
            try {
                if (i4 != 0) {
                    f2(i2, 129, i3, jVar.a(0));
                } else {
                    f2(i2, 129, i3, jVar.a(1));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        x2(false);
    }

    @Override // module.sound.AudioDevice
    public int[] c1() {
        int i2;
        if (!this.f15050e) {
            return null;
        }
        int[] iArr = new int[9];
        boolean z2 = false;
        for (int i3 = 0; i3 < 9; i3++) {
            iArr[i3] = X1(i3);
            z2 = z2 || iArr[i3] > -140;
        }
        boolean z3 = z2 || e0();
        if ((Configure.Property.BLUETOOTH_TYPE.d(0) == 7 && ((i2 = u0.b.D) == 3 || i2 == 2)) || u0.b.D == 1) {
            z3 = true;
        }
        if (this.J) {
            if (z3) {
                if (this.B8) {
                    this.B8 = false;
                    synchronized (this) {
                        h2(3, 20, 2);
                        P1(0, this.i7[this.H7[0]]);
                        P1(1, this.i7[this.H7[1]]);
                        P1(2, this.i7[this.H7[2]]);
                        P1(3, this.i7[this.H7[3]]);
                        o(y0.f.V0);
                    }
                    y0.h.X(16, false);
                }
                this.R7 = 0;
            } else {
                int i4 = this.R7;
                if (i4 < 7) {
                    this.R7 = i4 + 1;
                }
                if (this.R7 == 6) {
                    this.B8 = true;
                    synchronized (this) {
                        int[] iArr2 = this.i7;
                        P1(0, iArr2[iArr2.length - 1]);
                        int[] iArr3 = this.i7;
                        P1(1, iArr3[iArr3.length - 1]);
                        int[] iArr4 = this.i7;
                        P1(2, iArr4[iArr4.length - 1]);
                        int[] iArr5 = this.i7;
                        P1(3, iArr5[iArr5.length - 1]);
                        P1(5, 0);
                        h2(3, 20, 50);
                    }
                    y0.h.X(16, true);
                }
            }
        }
        int[] iArr6 = new int[9];
        for (int i5 = 0; i5 < 9; i5++) {
            iArr6[i5] = iArr[i5] + 145;
            iArr6[i5] = (iArr6[i5] * 255) / 145;
            iArr6[i5] = o0.a(iArr6[i5], 0, 255);
        }
        return iArr6;
    }

    public void c2(double d2) {
        e eVar = new e();
        synchronized (this) {
            f2(0, 128, 274, new int[]{eVar.a(d2)});
        }
    }

    public void d2(double d2) {
        e eVar = new e();
        synchronized (this) {
            f2(0, 128, 218, new int[]{eVar.a(d2)});
        }
    }

    public synchronized int e2(int i2, int i3, int[] iArr) {
        int iD;
        iD = -1;
        for (int i4 = 0; i4 < 6; i4++) {
            iD = this.z7.d(F9, new int[]{i2, s0.c(i3, 1), s0.c(i3, 0)}, iArr);
            if (iD > 0) {
                break;
            }
        }
        return iD;
    }

    @Override // module.sound.AudioDevice
    public void f1(boolean z2) {
        super.f1(z2);
    }

    public synchronized int f2(int i2, int i3, int i4, int[] iArr) {
        int iD = -1;
        if (!this.C8) {
            return 0;
        }
        int[] iArr2 = new int[iArr.length * 4];
        for (int i5 = 0; i5 < iArr.length; i5++) {
            int i6 = i5 * 4;
            iArr2[i6 + 0] = (iArr[i5] >> 24) & 255;
            iArr2[i6 + 1] = (iArr[i5] >> 16) & 255;
            iArr2[i6 + 2] = (iArr[i5] >> 8) & 255;
            iArr2[i6 + 3] = iArr[i5] & 255;
        }
        for (int i7 = 0; i7 < 6 && (iD = this.z7.d(F9, new int[]{i3, (i4 >> 8) & 255, i4 & 255}, iArr2)) <= 0; i7++) {
        }
        if (i2 == 0) {
            for (int i8 = 0; i8 < 6; i8++) {
                iD = this.z7.d(F9, new int[]{164}, 0, 0);
                if (iD > 0) {
                    break;
                }
            }
        } else {
            for (int i9 = 0; i9 < 6; i9++) {
                iD = this.z7.d(F9, new int[]{165}, 0, 0);
                if (iD > 0) {
                    break;
                }
            }
        }
        return iD;
    }

    public synchronized int g2(int i2, int i3, int i4, int[] iArr) {
        if (!this.C8) {
            return 0;
        }
        int[] iArr2 = new int[iArr.length * 4];
        for (int i5 = 0; i5 < iArr.length; i5++) {
            int i6 = i5 * 4;
            iArr2[i6 + 0] = (iArr[i5] >> 24) & 255;
            iArr2[i6 + 1] = (iArr[i5] >> 16) & 255;
            iArr2[i6 + 2] = (iArr[i5] >> 8) & 255;
            iArr2[i6 + 3] = iArr[i5] & 255;
        }
        int iD = 0;
        for (int i7 = 0; i7 < 6 && (iD = this.z7.d(F9, new int[]{i3, (i4 >> 8) & 255, i4 & 255}, iArr2)) <= 0; i7++) {
        }
        if (i2 == 0) {
            for (int i8 = 0; i8 < 6; i8++) {
                iD = this.z7.d(F9, new int[]{162}, 0, 0);
                if (iD > 0) {
                    break;
                }
            }
        } else {
            for (int i9 = 0; i9 < 6; i9++) {
                iD = this.z7.d(F9, new int[]{163}, 0, 0);
                if (iD > 0) {
                    break;
                }
            }
        }
        return iD;
    }

    public int h2(int i2, int i3, int i4) {
        return e2(i2 + 192, i3, new int[]{i4});
    }

    @Override // module.sound.AudioDevice
    public void i1(int i2, int i3) {
    }

    public int i2(int[] iArr, int... iArr2) {
        int i2 = 0;
        for (int i3 : iArr) {
            i2 ^= ((byte) (i3 & 255)) << 8;
            for (int i4 = 0; i4 < 8; i4++) {
                i2 = ((i2 & 32768) != 0 ? (i2 << 1) ^ 4129 : i2 << 1) & 65535;
            }
        }
        for (int i5 : iArr2) {
            i2 = (((byte) (i5 & 255)) << 8) ^ i2;
            for (int i6 = 0; i6 < 8; i6++) {
                i2 = ((i2 & 32768) != 0 ? (i2 << 1) ^ 4129 : i2 << 1) & 65535;
            }
        }
        return i2;
    }

    @Override // module.sound.AudioDevice, y0.e
    public void j(int[] iArr) {
        if (iArr != null) {
            Log.e("ak7738", "  field2Ic: " + b0.e(iArr, 0, iArr.length));
        }
        if (iArr != null) {
            Log.e("ak7738", " field2Ic1------ loaded: " + this.f15050e + "  speakerLinkage: " + this.F7);
        }
        if (!this.f15050e || this.B8) {
            return;
        }
        int iA = o0.a(y0.f.L0, 0, 16);
        int iA2 = o0.a(y0.f.M0, 0, 16);
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
        a1(69632, iMax);
        a1(73728, iMax2);
        a1(135168, iMax3);
        a1(139264, iMax4);
        super.j(null);
    }

    @Override // module.sound.AudioDevice
    public int j0(int i2) {
        int i3 = this.f15048d.get(i2);
        if (i3 < 0) {
            i3 = CHANNEL.IN1.f15905a;
        }
        return i3 == CHANNEL.IN1.f15905a ? 1 : 0;
    }

    @Override // module.sound.AudioDevice
    public void j1(int i2, int i3) {
        boolean z2 = false;
        if (i3 > 100 || i3 < 0) {
            i3 = 0;
        }
        switch (i2) {
            case 65536:
                int[] iArr = this.K7;
                z2 = i3 != iArr[4];
                iArr[4] = i3;
                break;
            case 69632:
                int[] iArr2 = this.K7;
                boolean z3 = i3 != iArr2[0];
                iArr2[0] = i3;
                z2 = z3;
                break;
            case 73728:
                int[] iArr3 = this.K7;
                z2 = i3 != iArr3[1];
                iArr3[1] = i3;
                break;
            case 131072:
                int[] iArr4 = this.K7;
                z2 = i3 != iArr4[5];
                iArr4[5] = i3;
                break;
            case 135168:
                int[] iArr5 = this.K7;
                z2 = i3 != iArr5[2];
                iArr5[2] = i3;
                break;
            case 139264:
                int[] iArr6 = this.K7;
                z2 = i3 != iArr6[3];
                iArr6[3] = i3;
                break;
            case 1073741824:
                int[] iArr7 = this.K7;
                z2 = (i3 == iArr7[0] && i3 == iArr7[1] && i3 == iArr7[2] && i3 == iArr7[3] && i3 == iArr7[4] && i3 == iArr7[5]) ? false : true;
                j1(69632, i3);
                j1(73728, i3);
                j1(135168, i3);
                j1(139264, i3);
                j1(65536, i3);
                j1(131072, i3);
                break;
        }
        F2(i2, i3);
        if (z2) {
            H0(AudioDevice.STORE.SURRLEVEL, this.K7);
            super.j1(i2, i3);
        }
    }

    public boolean j2(int[] iArr, int i2) {
        int[] iArrU2;
        return i2 == 0 || (iArrU2 = u2(i2)) == null || !Arrays.equals(iArr, iArrU2);
    }

    @Override // module.sound.AudioDevice
    public void k1(int i2) {
        new j();
        int i3 = i2 > 2 ? 0 : i2;
        if (i3 == 0) {
            b2(0, 329, 0);
            a.f.p().t(LogType.AUDIO, String.format(" 关闭混响------", new Object[0]));
        } else if (i3 == 1) {
            b2(0, 329, 1);
            a.f.p().t(LogType.AUDIO, String.format("进入混响  1--- ", new Object[0]));
            W1(0, this.Z7[0], this.U7[this.Y7[0]], this.W7[this.a8[0]], 0);
            W1(2, 0, this.U7[4], 0, 0);
            W1(3, 0, this.U7[0], 0, 0);
            W1(4, 0, this.U7[0], 0, 0);
            W1(5, 0, this.U7[0], 0, 0);
            W1(6, 0, this.U7[0], 0, 0);
        } else if (i3 == 2) {
            b2(0, 329, 1);
            a.f.p().t(LogType.AUDIO, String.format("进入混响  2--- ", new Object[0]));
            W1(1, this.Z7[1], this.V7[this.Y7[1]], this.X7[1] + this.a8[1], 0);
            W1(2, this.Z7[2], this.V7[this.Y7[2]], this.X7[2] + this.a8[2], 0);
            W1(3, this.Z7[3], this.V7[this.Y7[3]], this.a8[3] + this.X7[3], 0);
            W1(4, this.Z7[4], this.V7[this.Y7[4]], this.X7[4] + this.a8[4], 0);
            W1(5, this.Z7[5], this.V7[this.Y7[5]], this.a8[5] + this.X7[5], 0);
            W1(6, this.Z7[6], this.V7[this.Y7[6]], this.a8[6] + this.X7[6], 0);
        }
        if (this.Q8 == i3) {
            return;
        }
        this.Q8 = i3;
        super.k1(i3);
        int i4 = this.Q8;
        if (i4 == 1 || i4 == 2) {
            C2();
        }
    }

    public int k2(int i2) {
        int iJ = J(i2);
        int i3 = this.f15051e0.get();
        if (i3 <= 60 || iJ <= i2) {
            return 0;
        }
        if (i3 >= 120) {
            int[] iArr = this.c7;
            return iArr[iJ] - iArr[i2];
        }
        int[] iArr2 = this.c7;
        return (int) ((((double) (iArr2[iJ] - iArr2[i2])) * s0.w(((((double) (i3 - 60)) * 14.0d) / 60.0d) + 1.0d, 15.0d)) + 0.5d);
    }

    @Override // module.sound.AudioDevice, y0.e
    public void l(int i2) {
        this.f15052f = i2 == 1;
        super.l(i2);
        G1(this.f15052f ? 1 : 0);
    }

    @Override // module.sound.AudioDevice
    public void l1(boolean z2) {
        if (this.G7 == z2) {
            return;
        }
        this.G7 = z2;
        Z1(z2 ? 1 : 0);
        super.l1(z2);
    }

    public final void l2(int i2) {
        if (i2 != this.I8) {
            i2 = o0.a(i2, -10, 30);
            this.I8 = i2;
            D2();
            SystemProperties.set("persist.dspmic.gain", String.valueOf(i2));
        }
        y0.h.s0(93, i2);
    }

    @Override // y0.e
    public void m(int i2, int i3) {
        double d2;
        double d3;
        double d4;
        if (i2 < 0 || i2 >= 48) {
            return;
        }
        int i4 = u0.b.D;
        e eVar = new e();
        synchronized (this) {
            if (i4 >= 0 && i4 < 20) {
                int iA = o0.a(i3, 0, 10);
                if (i2 == 7) {
                    f2(0, 128, 206, new int[]{eVar.a(this.m7[iA] - 10.0d)});
                } else if (y0.f.f18090z0[i4] == i2) {
                    if (j0(u0.b.D) != 1) {
                        if (i4 == 1) {
                            d3 = this.m7[iA];
                            d4 = 4.0d;
                        } else if (i4 == 2 || i4 == 3) {
                            d3 = this.m7[iA];
                            d4 = 6.0d;
                        } else {
                            d3 = this.m7[iA];
                            d4 = 9.0d;
                        }
                        d2 = d3 - d4;
                    } else {
                        d2 = this.m7[iA] - 10.0d;
                    }
                    f2(0, 128, 271, new int[]{eVar.a(d2)});
                }
            }
        }
    }

    @Override // module.sound.AudioDevice
    public void m0() {
        super.m0();
        this.G7 = Y(AudioDevice.STORE.SURRON, 0) == 1;
        this.K7 = Z(AudioDevice.STORE.SURRLEVEL, this.K7);
        this.Q8 = Y(AudioDevice.STORE.SURRMOED, this.Q8);
        this.C7 = Y(AudioDevice.STORE.SBWLFREQ, this.C7);
        this.D7 = Y(AudioDevice.STORE.SBWHFREQ, this.D7);
        this.A7 = Y(AudioDevice.STORE.SUBWOOF_QVAL, 47);
        this.N7 = Z(AudioDevice.STORE.STEREO_PAEAM, this.N7);
        this.H7 = Z(AudioDevice.STORE.SPEAKER_GAINS, this.H7);
        this.I7 = Z(AudioDevice.STORE.NOISE_GATE, this.I7);
        this.L7[0] = Y(AudioDevice.STORE.P2BFFREQ, 0);
        this.L7[1] = Y(AudioDevice.STORE.P2BFGAIN, 0);
        this.M7[0] = Y(AudioDevice.STORE.P2BRFREQ, 0);
        this.M7[1] = Y(AudioDevice.STORE.P2BRGAIN, 0);
        this.J7[0] = Y(AudioDevice.STORE.HPFFA, 20);
        this.J7[1] = Y(AudioDevice.STORE.HPFFB, 200);
        this.J7[2] = Y(AudioDevice.STORE.HPFRA, 20);
        this.J7[3] = Y(AudioDevice.STORE.HPFRB, 200);
        this.O7 = Z(AudioDevice.STORE.SURR_FIELD, this.O7);
        this.v8 = Z(AudioDevice.STORE.CSAUTO_SRS, this.v8);
        this.w8 = Z(AudioDevice.STORE.CSAUTO_FOC, this.w8);
        this.x8 = Z(AudioDevice.STORE.CSAUTO_TRUBASS, this.x8);
        this.y8 = Z(AudioDevice.STORE.CSAUTO_OTHERS, this.y8);
        this.Y7 = Z(AudioDevice.STORE.DLY_MIXER_LVL, this.Y7);
        this.Z7 = Z(AudioDevice.STORE.DLY_MIXER_PHASE, this.Z7);
        this.a8 = Z(AudioDevice.STORE.DLY_MIXER_TAP, this.a8);
        this.j8 = Z(AudioDevice.STORE.FILTER_CEN, this.j8);
        this.k8 = Z(AudioDevice.STORE.FILTER_FRT, this.k8);
        this.l8 = Z(AudioDevice.STORE.FILTER_REAR, this.l8);
        this.m8 = Z(AudioDevice.STORE.FILTER_SUB, this.m8);
        this.J8 = Y(AudioDevice.STORE.OPTICAL_DIRECT, s0.m("sys.lsec.opticalDirectDef", 1)) == 1;
        this.K8 = Y(AudioDevice.STORE.OPTICAL_TYPE, 1);
        this.H8 = g.f.n(11) ? SystemProperties.getInt("persist.lsec.navi_direct", 0) : 0;
        int i2 = SystemProperties.getInt("persist.dspmic.gain", 21);
        this.I8 = i2;
        this.I8 = o0.a(i2, -10, 30);
    }

    public void m2(int i2, int... iArr) {
        if (i2 < 0 || i2 >= this.f15060j || iArr.length != this.f15072p) {
            return;
        }
        int iMin = Math.min(this.k7.length - 1, iArr[2]);
        if (i2 < 17) {
            H1(i2, 1, iArr[0], iArr[1] / 10.0f, this.k7[iMin]);
        } else {
            H1(i2, 0, iArr[0], iArr[1] / 10.0f, this.k7[iMin]);
        }
    }

    public void n2(int[] iArr) {
        int length = iArr.length / this.f15072p;
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = this.f15072p;
            m2(i2, iArr[i2 * i3], iArr[(i2 * i3) + 2], iArr[(i3 * i2) + 1]);
        }
    }

    @Override // module.sound.AudioDevice, y0.e
    public void o(int i2) {
        P1(5, i2);
        super.o(i2);
    }

    public boolean o2(int i2, int i3) {
        boolean z2 = false;
        if (i2 >= 0) {
            int[] iArr = this.H7;
            if (i2 < iArr.length) {
                int i4 = 16 - i3;
                if (iArr[i2] != i4) {
                    iArr[i2] = i4;
                    h0 h0Var = this.f15080t;
                    AudioDevice.STORE store = AudioDevice.STORE.SPEAKER_GAINS;
                    h0Var.r(store.ordinal(), this.H7);
                    this.f15080t.e(store.ordinal());
                    z2 = true;
                }
                P1(i2, this.i7[this.H7[i2]]);
            }
        }
        return z2;
    }

    @Override // module.sound.AudioDevice
    public int p0() {
        int[] iArr = this.a7;
        return iArr[iArr.length - 1];
    }

    public void p2(int i2) {
        int iA = o0.a(i2, 0, 3);
        if (this.g8 != iA) {
            this.g8 = iA;
        }
        y0.h.s0(83, this.g8);
    }

    @Override // module.sound.AudioDevice
    public int q0() {
        return -1090;
    }

    /* JADX WARN: Code duplicated, block: B:132:0x0208 A[Catch: all -> 0x0286, LOOP:1: B:130:0x0205->B:132:0x0208, LOOP_END, TryCatch #0 {, blocks: (B:125:0x01dc, B:132:0x0208, B:135:0x022e, B:136:0x024d), top: B:153:0x01dc }] */
    /* JADX WARN: Code duplicated, block: B:135:0x022e A[Catch: all -> 0x0286, LOOP:2: B:134:0x022c->B:135:0x022e, LOOP_END, TryCatch #0 {, blocks: (B:125:0x01dc, B:132:0x0208, B:135:0x022e, B:136:0x024d), top: B:153:0x01dc }] */
    /* JADX WARN: Code duplicated, block: B:36:0x0082  */
    /* JADX WARN: Code duplicated, block: B:61:0x00cb  */
    public void q2(int i2, int i3) {
        int i4;
        byte b2;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        byte b3;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int iA;
        byte b4;
        int i16;
        int iA2;
        int i17;
        byte b5;
        int i18;
        f fVar = new f();
        if (i2 < 0 || i2 >= 16) {
            return;
        }
        int i19 = i2 % 4;
        int i20 = i2 / 2;
        int i21 = i20 % 2;
        int i22 = 140;
        if (i2 % 2 == 0) {
            int i23 = i19 + 1;
            if (i2 < 4) {
                iA = o0.a(i3, 20, Window.PROGRESS_SECONDARY_START);
                int[] iArr = this.j8;
                if (iArr[i19] != iA) {
                    iArr[i19] = iA;
                    b4 = 1;
                } else {
                    b4 = -1;
                }
                i16 = i21 == 0 ? this.h8[iArr[i23]] : this.i8[iArr[i23]];
            } else {
                if (i2 < 8) {
                    iA2 = o0.a(i3, 20, Window.PROGRESS_SECONDARY_START);
                    if (i21 == 0) {
                        int[] iArr2 = this.k8;
                        if (iArr2[i19] <= iA2) {
                            i17 = 0;
                        } else {
                            int i24 = iArr2[i19] - iA2;
                            if (i24 > 260) {
                                i17 = iA2 < 280 ? 280 : 0;
                                i9 = iA2 < 140 ? 140 : 0;
                            } else if (i24 <= 120 || iA2 >= 140) {
                                i17 = 0;
                            } else {
                                i9 = 140;
                                i17 = 0;
                            }
                        }
                    } else {
                        i17 = 0;
                    }
                    int[] iArr3 = this.k8;
                    if (iArr3[i19] != iA2) {
                        iArr3[i19] = iA2;
                        b5 = 1;
                    } else {
                        b5 = -1;
                    }
                    i18 = i21 == 0 ? this.h8[iArr3[i23]] : this.i8[iArr3[i23]];
                } else if (i2 < 12) {
                    iA2 = o0.a(i3, 20, Window.PROGRESS_SECONDARY_START);
                    if (i21 == 0) {
                        int[] iArr4 = this.l8;
                        if (iArr4[i19] <= iA2) {
                            i17 = 0;
                        } else {
                            int i25 = iArr4[i19] - iA2;
                            if (i25 > 260) {
                                i17 = iA2 < 280 ? 280 : 0;
                                i9 = iA2 < 140 ? 140 : 0;
                            } else if (i25 <= 120 || iA2 >= 140) {
                                i17 = 0;
                            } else {
                                i9 = 140;
                                i17 = 0;
                            }
                        }
                    } else {
                        i17 = 0;
                    }
                    int[] iArr5 = this.l8;
                    if (iArr5[i19] != iA2) {
                        iArr5[i19] = iA2;
                        b5 = 1;
                    } else {
                        b5 = -1;
                    }
                    i18 = i21 == 0 ? this.h8[iArr5[i23]] : this.i8[iArr5[i23]];
                } else {
                    iA = i21 == 0 ? o0.a(i3, 20, 200) : o0.a(i3, 20, 250);
                    int[] iArr6 = this.m8;
                    if (iArr6[i19] != iA) {
                        iArr6[i19] = iA;
                        b4 = 1;
                    } else {
                        b4 = -1;
                    }
                    i16 = i21 == 0 ? this.h8[iArr6[i23]] : this.i8[iArr6[i23]];
                }
                i7 = iA2;
                i8 = i18;
                i10 = i17;
                b3 = b5;
                i4 = 0;
                i11 = i7;
            }
            i7 = iA;
            i8 = i16;
            b3 = b4;
            i9 = 0;
            i10 = 0;
            i4 = 0;
            i11 = i7;
        } else {
            i4 = 0;
            int iA3 = o0.a(i3, 0, 5);
            int i26 = i19 - 1;
            if (i2 < 4) {
                int[] iArr7 = this.j8;
                if (iArr7[i19] != iA3) {
                    iArr7[i19] = iA3;
                    b2 = 1;
                } else {
                    b2 = -1;
                }
                i5 = iArr7[i26];
                i6 = i21 == 0 ? this.h8[iArr7[i19]] : this.i8[iArr7[i19]];
            } else if (i2 < 8) {
                int[] iArr8 = this.k8;
                if (iArr8[i19] != iA3) {
                    iArr8[i19] = iA3;
                    b2 = 1;
                } else {
                    b2 = -1;
                }
                i5 = iArr8[i26];
                i6 = i21 == 0 ? this.h8[iArr8[i19]] : this.i8[iArr8[i19]];
            } else if (i2 < 12) {
                int[] iArr9 = this.l8;
                if (iArr9[i19] != iA3) {
                    iArr9[i19] = iA3;
                    b2 = 1;
                } else {
                    b2 = -1;
                }
                i5 = iArr9[i26];
                i6 = i21 == 0 ? this.h8[iArr9[i19]] : this.i8[iArr9[i19]];
            } else {
                int[] iArr10 = this.m8;
                if (iArr10[i19] != iA3) {
                    iArr10[i19] = iA3;
                    b2 = 1;
                } else {
                    b2 = -1;
                }
                i5 = iArr10[i26];
                i6 = i21 == 0 ? this.h8[iArr10[i19]] : this.i8[iArr10[i19]];
            }
            i7 = i5;
            i8 = i6;
            i9 = 0;
            i10 = 0;
            b3 = b2;
            i11 = iA3;
        }
        int i27 = this.b8[i20];
        synchronized (this) {
            char c2 = 132;
            if (i10 == 280 && i21 == 0) {
                int i28 = i4;
                int i29 = 4;
                while (i28 < i29) {
                    int i30 = i28;
                    int i31 = i9;
                    int i32 = i10;
                    int i33 = i4;
                    f2(1, 132, i27 + (i30 * 5), fVar.d(0, i8, i28, i10, 0.70711d, 10.0d, 1));
                    i28 = i30 + 1;
                    i9 = i31;
                    i10 = i32;
                    i4 = i33;
                    i29 = 4;
                    c2 = 132;
                    i22 = 140;
                }
                i12 = i9;
                i13 = i4;
                if (i12 == i22) {
                    for (i15 = i13; i15 < 4; i15++) {
                        f2(1, 132, i27 + (i15 * 5), fVar.d(0, i8, i15, i12, 0.70711d, 10.0d, 1));
                    }
                }
                for (i14 = i13; i14 < 4; i14++) {
                    f2(1, 132, i27 + (i14 * 5), fVar.d(0, i8, i14, i7, 0.70711d, 10.0d, 1));
                }
            } else {
                i12 = i9;
                i13 = i4;
                if (i12 == i22 && i21 == 0) {
                    while (i15 < 4) {
                        f2(1, 132, i27 + (i15 * 5), fVar.d(0, i8, i15, i12, 0.70711d, 10.0d, 1));
                    }
                }
                while (i14 < 4) {
                    f2(1, 132, i27 + (i14 * 5), fVar.d(0, i8, i14, i7, 0.70711d, 10.0d, 1));
                }
            }
            throw th;
        }
        int[] iArr11 = new int[2];
        iArr11[i13] = i2;
        iArr11[1] = i11;
        y0.h.s0(94, iArr11);
        if (b3 > 0) {
            if (i2 < 4) {
                H0(AudioDevice.STORE.FILTER_CEN, this.j8);
                return;
            }
            if (i2 < 8) {
                H0(AudioDevice.STORE.FILTER_FRT, this.k8);
            } else if (i2 < 12) {
                H0(AudioDevice.STORE.FILTER_REAR, this.l8);
            } else {
                H0(AudioDevice.STORE.FILTER_SUB, this.m8);
            }
        }
    }

    @Override // module.sound.AudioDevice
    public void r0(int i2) {
        int iMax = Math.max(0, Math.min(i2, this.d7.length - 1));
        this.f15056h = iMax;
        super.r0(iMax);
        O1(1, x1(iMax, this.d7) / 10.0f, J2(iMax, this.f7) / 10.0f);
    }

    public final double r2(double d2) {
        return Math.max(-10.0d, Math.min(d2 >= 0.0d ? (0.8d - (0.02d * d2)) * d2 : d2 * ((0.02d * d2) + 0.8d), Math.min(10.0d, d2)));
    }

    @Override // module.sound.AudioDevice
    public boolean s0() {
        int i2 = this.H8;
        if (i2 == 2) {
            return (y0.f.R0 == 0 && y0.f.Q0 == 0 && y0.f.T0 == 0 && !BusKtv.f17034g) ? false : true;
        }
        if (i2 == 1) {
            return super.s0() || (y0.f.Q0 != 0 && y0.f.T0 == 0);
        }
        return super.s0();
    }

    public double s2(int i2) {
        return ((double) i2) / 100.0d;
    }

    public final void t2() {
        D2();
        int i2 = SystemProperties.getInt("persist.dspref.gain", 0);
        Log.e("dspmic", "refGain : " + i2);
        int iA = (o0.a(i2, -3, 30) / 3) + 1;
        byte bS1 = (byte) (((byte) (((byte) S1(3, 4)) & (-16))) | ((byte) iA));
        h2(3, 4, bS1);
        Log.e("dspmic", String.format("refGain:0x%02X -micGain:0x%02X- Reg0004:0x%02X", Integer.valueOf(iA), Integer.valueOf(this.I8), Byte.valueOf(bS1)));
    }

    @Override // module.sound.AudioDevice
    public int u1() {
        return super.u1();
    }

    public int[] u2(int i2) {
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

    @Override // module.sound.AudioDevice
    public void v0(boolean z2) {
        super.v0(z2);
        if (this.f15050e) {
            if (z2) {
                int[] iArr = this.i7;
                P1(0, iArr[iArr.length - 1]);
                int[] iArr2 = this.i7;
                P1(1, iArr2[iArr2.length - 1]);
                int[] iArr3 = this.i7;
                P1(2, iArr3[iArr3.length - 1]);
                int[] iArr4 = this.i7;
                P1(3, iArr4[iArr4.length - 1]);
                P1(5, 0);
            } else if (!this.B8) {
                j(null);
                o(y0.f.V0);
            }
            h2(2, 5, z2 ? 16 : 0);
        }
    }

    public final void v2() {
        synchronized (this) {
            f fVar = new f();
            f2(0, 132, 277, fVar.a(0, 4, 320, 0.70711d, D9[this.f15054g], 1));
            f2(0, 132, 282, fVar.a(0, 3, 2000, 0.70711d, E9[this.f15054g], 3));
        }
    }

    @Override // module.sound.AudioDevice
    public void w0(int i2) {
        int[] iArrU2 = u2(i2);
        if (j2(this.f15074q, i2)) {
            System.arraycopy(iArrU2, 0, this.f15074q, 0, iArrU2.length);
            int i3 = this.f15060j;
            int[] iArr = new int[i3];
            int[] iArr2 = new int[i3];
            int[] iArr3 = new int[i3];
            for (int i4 = 0; i4 < this.f15060j; i4++) {
                int i5 = this.f15072p;
                iArr2[i4] = iArrU2[i4 * i5];
                iArr[i4] = iArrU2[(i4 * i5) + 1];
                iArr3[i4] = iArrU2[(i5 * i4) + 2];
            }
            n2(iArrU2);
            y0.h.H(iArr, iArr2, iArr3, this.f15060j, this);
        }
    }

    public void w2(boolean z2) {
        if (this.f15050e) {
            if (z2) {
                x2(true);
                this.D8 = true;
            } else {
                this.D8 = false;
                x2(false);
            }
        }
    }

    @Override // module.sound.AudioDevice
    public int x0(int i2) {
        int[] iArr = this.f15068n;
        if (iArr != null) {
            int i3 = i2 + 1;
            int i4 = this.f15072p;
            if (i3 * i4 <= iArr.length) {
                return iArr[(i3 * i4) - 1];
            }
        }
        return 0;
    }

    public void x2(boolean z2) {
        if (this.f15050e && !this.D8) {
            synchronized (this) {
                e eVar = new e();
                if (z2) {
                    f2(0, 128, 599, new int[]{eVar.a(-145.0d)});
                    a.i.a0(45L);
                } else {
                    a.i.a0(3L);
                    f2(0, 128, 599, new int[]{eVar.a(0.0d)});
                }
            }
        }
    }

    @Override // module.sound.AudioDevice
    public void y() {
        if (this.f15054g == 0 || y0.f.f18055i == 1) {
            return;
        }
        synchronized (this) {
            f2(1, 128, 456, new int[]{65536});
        }
    }

    public final void y2(int i2) {
        g gVar = new g();
        synchronized (this) {
            try {
                if (i2 == 0) {
                    if (this.H8 <= 0) {
                        f2(0, 128, 101, new int[]{gVar.a(-145.0d, 0)});
                        f2(0, 128, 204, new int[]{gVar.a(-145.0d, 0)});
                    } else if (nt.W != 0) {
                        f2(0, 128, 101, new int[]{gVar.a(-145.0d, 0)});
                        f2(0, 128, 204, new int[]{gVar.a(0.0d, 0)});
                    } else {
                        f2(0, 128, 101, new int[]{gVar.a(0.0d, 0)});
                        f2(0, 128, 204, new int[]{gVar.a(-145.0d, 0)});
                    }
                } else if (i2 == 1) {
                    f2(0, 128, 101, new int[]{gVar.a(0.0d, 0)});
                    f2(0, 128, 204, new int[]{gVar.a(0.0d, 0)});
                } else {
                    f2(0, 128, 101, new int[]{gVar.a(-145.0d, 0)});
                    f2(0, 128, 204, new int[]{gVar.a(-145.0d, 0)});
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // module.sound.AudioDevice
    public void z0() {
        y2(0);
    }

    public final void z2() {
        synchronized (this) {
            if (this.J8) {
                h2(0, 291, 130);
            } else {
                h2(0, 291, 135);
            }
        }
    }
}
