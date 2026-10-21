package module.sound;

import android.bluetooth.BluetoothClass;
import android.content.Context;
import android.media.AudioManager;
import android.media.AudioService;
import android.media.videoeditor.MediaProperties;
import android.net.ConnectivityManager;
import android.net.wifi.WifiStateMachine;
import android.os.Handler;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.Spanned;
import android.util.Log;
import android.util.TimedRemoteCaller;
import android.view.Window;
import android.widget.SpellChecker;
import app.App;
import com.syu.jni.ToolsJni;
import com.syu.ms.R;
import java.util.Arrays;
import k0.nt;
import n0.j4;
import o1.b0;
import o1.h0;
import o1.n;
import o1.o0;
import o1.s0;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class C7738NOR_QUALCOMM extends AudioDevice {
    public static double[] D7 = {0.0d, 10.0d, 10.0d, 10.0d, 10.0d, 10.0d, 10.0d, 9.5d, 9.0d, 8.5d, 8.0d, 7.5d, 7.0d, 6.5d, 6.0d, 5.5d, 5.0d, 4.5d, 4.0d, 3.5d, 3.0d, 2.5d, 2.0d, 1.5d, 1.0d, 0.5d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d};
    public static double[] E7 = {0.0d, 7.0d, 7.0d, 7.0d, 7.0d, 7.0d, 7.0d, 6.8d, 6.5d, 6.2d, 5.9d, 5.6d, 5.2d, 4.8d, 4.4d, 4.0d, 3.6d, 3.2d, 2.8d, 2.4d, 2.0d, 1.6d, 1.2d, 0.8d, 0.5d, 0.3d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d};
    public static int F7 = 28;
    public static double[] G7 = null;
    public final int A1;
    public final int A2;
    public final int A3;
    public final int A4;
    public final int[] A5;
    public int[] A6;
    public final int A7;
    public final int B1;
    public final int B2;
    public final int B3;
    public final int B4;
    public final int[] B5;
    public int[] B6;
    public final int B7;
    public final int C1;
    public final int C2;
    public final int C3;
    public final int C4;
    public final int[] C5;
    public int[] C6;
    public final int C7;
    public final int D1;
    public final int D2;
    public final int D3;
    public final int D4;
    public final int[] D5;
    public int[] D6;
    public final int E1;
    public final int E2;
    public final int E3;
    public final int E4;
    public n E5;
    public int E6;
    public final int F1;
    public final int F2;
    public final int F3;
    public final int F4;
    public int F5;
    public int F6;
    public final int G1;
    public final int G2;
    public final int G3;
    public final int G4;
    public int G5;
    public boolean G6;
    public final int H1;
    public final int H2;
    public final int H3;
    public final int H4;
    public int H5;
    public boolean H6;
    public final boolean I0;
    public final int I1;
    public final int I2;
    public final int I3;
    public final int I4;
    public int I5;
    public boolean I6;
    public final String J0;
    public final int J1;
    public final int J2;
    public final int J3;
    public final int J4;
    public AudioManager J5;
    public boolean J6;
    public final int K0;
    public final int K1;
    public final int K2;
    public final int K3;
    public final int K4;
    public boolean K5;
    public Runnable K6;
    public final int L0;
    public final int L1;
    public final int L2;
    public final int L3;
    public final int L4;
    public boolean L5;
    public Handler L6;
    public final int M0;
    public final int M1;
    public final int M2;
    public final int M3;
    public final int M4;
    public int[] M5;
    public Runnable M6;
    public final int N0;
    public final int N1;
    public final int N2;
    public final int N3;
    public final int N4;
    public int[] N5;
    public boolean N6;
    public final int O0;
    public final int O1;
    public final int O2;
    public final int O3;
    public final int O4;
    public int[] O5;
    public int O6;
    public final int P0;
    public final int P1;
    public final int P2;
    public final int P3;
    public final int P4;
    public int[] P5;
    public double[] P6;
    public final int Q0;
    public final int Q1;
    public final int Q2;
    public final int Q3;
    public final int Q4;
    public int[] Q5;
    public int Q6;
    public final int R0;
    public final int R1;
    public final int R2;
    public final int R3;
    public final int R4;
    public int[] R5;
    public final int R6;
    public final int S0;
    public final int S1;
    public final int S2;
    public final int S3;
    public final int S4;
    public int[] S5;
    public final int S6;
    public final int T0;
    public final int T1;
    public final int T2;
    public final int T3;
    public final double T4;
    public int[] T5;
    public final int T6;
    public final int U0;
    public final int U1;
    public final int U2;
    public final int U3;
    public final double U4;
    public final int U5;
    public final int U6;
    public final int V0;
    public final int V1;
    public final int V2;
    public final int V3;
    public final double V4;
    public final int V5;
    public final int V6;
    public final int W0;
    public final int W1;
    public final int W2;
    public final int W3;
    public final int W4;
    public int W5;
    public final int W6;
    public final int X0;
    public final int X1;
    public final int X2;
    public final int X3;
    public final int X4;
    public final int X5;
    public final int X6;
    public final int Y0;
    public final int Y1;
    public final int Y2;
    public final int Y3;
    public final double Y4;
    public final int Y5;
    public final int Y6;
    public final int Z0;
    public final int Z1;
    public final int Z2;
    public final int Z3;
    public final double Z4;
    public int[] Z5;
    public final int Z6;

    /* JADX INFO: renamed from: a1, reason: collision with root package name */
    public final int f15838a1;
    public final int a2;
    public final int a3;
    public final int a4;
    public final int[] a5;
    public int[] a6;
    public final int a7;

    /* JADX INFO: renamed from: b1, reason: collision with root package name */
    public final int f15839b1;
    public final int b2;
    public final int b3;
    public final int b4;
    public int[] b5;
    public int[] b6;
    public final int b7;

    /* JADX INFO: renamed from: c1, reason: collision with root package name */
    public final int f15840c1;
    public final int c2;
    public final int c3;
    public final int c4;
    public int[] c5;
    public int[] c6;
    public final int c7;

    /* JADX INFO: renamed from: d1, reason: collision with root package name */
    public final int f15841d1;
    public final int d2;
    public final int d3;
    public final int d4;
    public final int[] d5;
    public int[] d6;
    public final int d7;

    /* JADX INFO: renamed from: e1, reason: collision with root package name */
    public final int f15842e1;
    public final int e2;
    public final int e3;
    public final int e4;
    public final int[] e5;
    public int[] e6;
    public final int e7;

    /* JADX INFO: renamed from: f1, reason: collision with root package name */
    public final int f15843f1;
    public final int f2;
    public final int f3;
    public final int f4;
    public int[] f5;
    public int[] f6;
    public final int f7;

    /* JADX INFO: renamed from: g1, reason: collision with root package name */
    public final int f15844g1;
    public final int g2;
    public final int g3;
    public final int g4;
    public final int g5;
    public int[] g6;
    public final int g7;

    /* JADX INFO: renamed from: h1, reason: collision with root package name */
    public final int f15845h1;
    public final int h2;
    public final int h3;
    public final int h4;
    public final int h5;
    public final int h6;
    public final int h7;

    /* JADX INFO: renamed from: i1, reason: collision with root package name */
    public final int f15846i1;
    public final int i2;
    public final int i3;
    public final int i4;
    public int[] i5;
    public final int i6;
    public final int i7;

    /* JADX INFO: renamed from: j1, reason: collision with root package name */
    public final int f15847j1;
    public final int j2;
    public final int j3;
    public final int j4;
    public int[] j5;
    public final int j6;
    public final int j7;

    /* JADX INFO: renamed from: k1, reason: collision with root package name */
    public final int f15848k1;
    public final int k2;
    public final int k3;
    public final int k4;
    public double[] k5;
    public final int k6;
    public final int k7;

    /* JADX INFO: renamed from: l1, reason: collision with root package name */
    public final int f15849l1;
    public final int l2;
    public final int l3;
    public final int l4;
    public int[] l5;
    public int l6;
    public final int l7;

    /* JADX INFO: renamed from: m1, reason: collision with root package name */
    public final int f15850m1;
    public final int m2;
    public final int m3;
    public final int m4;
    public final int m5;
    public int[] m6;
    public final int m7;

    /* JADX INFO: renamed from: n1, reason: collision with root package name */
    public final int f15851n1;
    public final int n2;
    public final int n3;
    public final int n4;
    public int[] n5;
    public int[] n6;
    public final int n7;

    /* JADX INFO: renamed from: o1, reason: collision with root package name */
    public final int f15852o1;
    public final int o2;
    public final int o3;
    public final int o4;
    public int[] o5;
    public int[] o6;
    public int[] o7;

    /* JADX INFO: renamed from: p1, reason: collision with root package name */
    public final int f15853p1;
    public final int p2;
    public final int p3;
    public final int p4;
    public int[] p5;
    public int[] p6;
    public k p7;

    /* JADX INFO: renamed from: q1, reason: collision with root package name */
    public final int f15854q1;
    public final int q2;
    public final int q3;
    public final int q4;
    public final int[] q5;
    public int[] q6;
    public final int q7;
    public final int r1;
    public final int r2;
    public final int r3;
    public final int r4;
    public double[] r5;
    public int[] r6;
    public final int r7;
    public final int s1;
    public final int s2;
    public final int s3;
    public final int s4;
    public int[] s5;
    public final int[] s6;
    public final int s7;
    public final int t1;
    public final int t2;
    public final int t3;
    public final int t4;
    public int[] t5;
    public boolean t6;
    public final int t7;
    public final int u1;
    public final int u2;
    public final int u3;
    public final int u4;
    public double u5;
    public final int u6;
    public final int u7;
    public final int v1;
    public final int v2;
    public final int v3;
    public final int v4;
    public int[] v5;
    public final int v6;
    public final int v7;
    public final int w1;
    public final int w2;
    public final int w3;
    public final int w4;
    public final int[] w5;
    public final int w6;
    public final int w7;
    public final int x1;
    public final int x2;
    public final int x3;
    public final int x4;
    public final int[] x5;
    public final int x6;
    public final int x7;
    public final int y1;
    public final int y2;
    public final int y3;
    public final int y4;
    public final int[] y5;
    public final int y6;
    public final int y7;
    public final int z1;
    public final int z2;
    public final int z3;
    public final int z4;
    public final int[] z5;
    public final int[] z6;
    public final int z7;

    public enum CHANNEL {
        IN1(0),
        IN2(1),
        IN3(2),
        IN4(3),
        IN5(4);


        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f15861a;

        CHANNEL(int i2) {
            this.f15861a = i2;
        }
    }

    public class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int[] f15862a = new int[9];

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f15863b;

        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = 0;
            while (true) {
                this.f15863b = i2;
                int i3 = this.f15863b;
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
            C7738NOR_QUALCOMM.this.L6.postDelayed(this, TimedRemoteCaller.DEFAULT_CALL_TIMEOUT_MILLIS);
        }
    }

    public class c {
        public c() {
        }

        public int a(double d2) {
            return C7738NOR_QUALCOMM.this.p7.a(d2, 0);
        }

        public int b(int i2) {
            int i3 = 1;
            if (i2 != 0) {
                i3 = i2 == 1 ? 2 : 4;
            }
            return i3 << 20;
        }

        public int c(int i2) {
            return (i2 == 0 ? 0 : 1) << 20;
        }

        public int[] d(int i2) {
            switch (i2) {
                case 0:
                    return new int[]{8185950, 202657, 8185950, 202657, 8410368, 5655827, 8377344, 5991967, 15360, 4270063, 8421376, 3584482, 8371712, 6523717, 19456, 2668149, 8432384, 1043987, 8366080, 5417184, 21760, 4716297, 8406084, 8386860};
                case 1:
                    return new int[]{8086477, 302130, 8086477, 302130, 8421376, 3584482, 8371712, 6523717, 23040, 5907207, 8437760, 3792305, 8363264, 4250630, 29184, 3060681, 8454144, 2946610, 8354560, 6691549, 32768, 1473305, 8406084, 8386860};
                case 2:
                    return new int[]{7891195, 497412, 7891195, 497412, 8443136, 6423565, 8360448, 2675785, 38400, 8187892, 8470528, 1049465, 8345856, 5469432, 48640, 1968813, 8497664, 1149006, 8331008, 6508815, 54528, 574503, 8406084, 8386860};
                case 3:
                    return new int[]{7653854, 734753, 7653854, 734753, 8470528, 1049465, 8345856, 5469432, 57856, 791596, 8511232, 108640, 8323584, 3241763, 72704, 5485980, 8551680, 1029854, 8300544, 3540650, 81408, 4709236, 8406084, 8386860};
                case 4:
                    return new int[]{7423875, 964732, 7423875, 964732, 8497664, 1149006, 8331008, 6508815, 76800, 8113766, 8551680, 1029854, 8300544, 3540650, 96768, 5124729, 8605184, 6141924, 8268800, 2594156, 108288, 3070985, 8406084, 8386860};
                case 5:
                    return new int[]{7201096, 1187511, 7201096, 1187511, 8524544, 6731710, 8315904, 5847835, 96000, 4995304, 8591872, 3845064, 8276736, 6549509, 120832, 904057, 8658432, 8171931, 8235776, 4107576, 134912, 4086036, 8406084, 8386860};
                case 6:
                    return new int[]{6985350, 1403257, 6985350, 1403257, 8551680, 1029854, 8300544, 3540650, 114944, 8220133, 8632064, 197465, 8252416, 4064410, 144640, 1231477, 8711424, 7194704, 8201728, 134427, 161280, 7791831, 8406084, 8386860};
                case 7:
                    return new int[]{6574299, 1814308, 6574299, 1814308, 8605184, 6141924, 8268800, 2594156, 153088, 171943, 8711424, 7194704, 8201728, 134427, 191744, 7217171, 8816384, 4904041, 8129792, 2681567, 213760, 6647057, 8406084, 8386860};
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
            return C7738NOR_QUALCOMM.this.p7.a(dPow, 2);
        }
    }

    public class f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public double f15869a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public double f15870b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public double f15871c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public double f15872d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public double f15873e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public double f15874f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public double f15875g;

        public f() {
        }

        /* JADX WARN: Code duplicated, block: B:17:0x0184  */
        /* JADX WARN: Code duplicated, block: B:19:0x01bd  */
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
                    double d13 = fVar.f15873e;
                    d5 = d13 + 1.0d;
                    double d14 = fVar.f15871c;
                    d6 = ((1.0d - d14) / 2.0d) / d5;
                    d7 = (1.0d - d14) / d5;
                    d8 = (-(1.0d - d13)) / d5;
                    d9 = (d14 * 2.0d) / d5;
                    d10 = 1.0d - d14;
                } else if (i3 == 2) {
                    fVar = this;
                    double d15 = fVar.f15873e;
                    double d16 = fVar.f15874f;
                    double d17 = (d15 / d16) + 1.0d;
                    double d18 = fVar.f15871c;
                    double d19 = (d18 * (-2.0d)) / d17;
                    d9 = (d18 * 2.0d) / d17;
                    d11 = (1.0d - (d15 * d16)) / d17;
                    d7 = d19;
                    d12 = ((d15 * d16) + 1.0d) / d17;
                    d8 = (-(1.0d - (d15 / d16))) / d17;
                } else if (i3 == 3) {
                    fVar = this;
                    double dSqrt = Math.sqrt(fVar.f15874f / d2);
                    fVar.f15875g = dSqrt;
                    double d20 = fVar.f15874f;
                    double d21 = fVar.f15871c;
                    double d22 = fVar.f15870b;
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
                    double dSqrt2 = Math.sqrt(this.f15874f / d2);
                    this.f15875g = dSqrt2;
                    double d28 = this.f15874f;
                    double d29 = this.f15871c;
                    double d30 = this.f15870b;
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
                return i2 == 0 ? new int[]{C7738NOR_QUALCOMM.this.p7.a(d11, i5), C7738NOR_QUALCOMM.this.p7.a(d7, i5), C7738NOR_QUALCOMM.this.p7.a(d8, i5), C7738NOR_QUALCOMM.this.p7.a(d9, i5), C7738NOR_QUALCOMM.this.p7.a(d12, i5)} : new int[]{C7738NOR_QUALCOMM.this.p7.b(d11, i5), C7738NOR_QUALCOMM.this.p7.c(d11, i5), C7738NOR_QUALCOMM.this.p7.b(d7, i5), C7738NOR_QUALCOMM.this.p7.c(d7, i5), C7738NOR_QUALCOMM.this.p7.b(d8, i5), C7738NOR_QUALCOMM.this.p7.c(d8, i5), C7738NOR_QUALCOMM.this.p7.b(d9, i5), C7738NOR_QUALCOMM.this.p7.c(d9, i5), C7738NOR_QUALCOMM.this.p7.b(d12, i5), C7738NOR_QUALCOMM.this.p7.c(d12, i5)};
            }
            fVar = this;
            d4 = 2.0d;
            double d37 = fVar.f15873e;
            d5 = d37 + 1.0d;
            double d38 = fVar.f15871c;
            d6 = ((d38 + 1.0d) / 2.0d) / d5;
            d7 = (-(d38 + 1.0d)) / d5;
            d8 = (-(1.0d - d37)) / d5;
            d9 = (d38 * 2.0d) / d5;
            d10 = d38 + 1.0d;
            d12 = (d10 / d4) / d5;
            d11 = d6;
            if (i2 == 0) {
            }
        }

        public void b(int i2, int i3, double d2, double d3) {
            double d4 = (((double) i3) * 6.283185307179586d) / 96000.0d;
            this.f15869a = d4;
            this.f15870b = Math.sin(d4);
            this.f15871c = Math.cos(this.f15869a);
            this.f15873e = this.f15870b / (d2 * 2.0d);
            if (i2 == 2 || i2 == 3 || i2 == 4) {
                this.f15874f = Math.pow(10.0d, d3 / 40.0d);
            } else {
                this.f15874f = Math.sqrt(Math.pow(10.0d, d3 / 20.0d));
            }
        }

        public void c(int i2, int i3, double d2, double d3) {
            double d4 = (((double) i3) * 6.283185307179586d) / 96000.0d;
            this.f15869a = d4;
            this.f15870b = Math.sin(d4);
            this.f15871c = Math.cos(this.f15869a);
            this.f15872d = Math.tan(this.f15869a / 2.0d);
            this.f15873e = this.f15870b / (d2 * 2.0d);
            if (i2 == 2 || i2 == 3 || i2 == 4 || (i2 >= 5 && i2 <= 20)) {
                this.f15874f = Math.pow(10.0d, d3 / 40.0d);
            } else {
                this.f15874f = Math.sqrt(Math.pow(10.0d, d3 / 20.0d));
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
                    double d11 = this.f15871c / (this.f15870b + 1.0d);
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
                    dPow2 = (1.0d - this.f15870b) / this.f15871c;
                    double d12 = (dPow2 + 1.0d) / 2.0d;
                    dPow = d12;
                    d5 = -d12;
                    dPow3 = 0.0d;
                    d6 = 0.0d;
                }
            } else if (i3 == 7) {
                d4 = 1.0d;
                if (i4 == 0) {
                    double d13 = this.f15873e;
                    d7 = d13 + 1.0d;
                    double d14 = this.f15871c;
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
                    double d15 = this.f15873e;
                    d7 = d15 + 1.0d;
                    double d16 = this.f15871c;
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
                    double d18 = this.f15872d;
                    double dPow5 = (dCos * d18) + 1.0d + Math.pow(d18, 2.0d);
                    double dPow6 = Math.pow(this.f15872d, 2.0d) / dPow5;
                    double dCos2 = Math.cos(d17) * 2.0d;
                    double d19 = this.f15872d;
                    dPow3 = (((dCos2 * d19) - 1.0d) - Math.pow(d19, 2.0d)) / dPow5;
                    dPow4 = ((1.0d - Math.pow(this.f15872d, 2.0d)) * 2.0d) / dPow5;
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
                            double d21 = this.f15872d;
                            double dPow7 = (dCos3 * d21) + 1.0d + Math.pow(d21, 2.0d);
                            double dPow8 = Math.pow(this.f15872d, 2.0d) / dPow7;
                            double dCos4 = Math.cos(d20) * 2.0d;
                            double d22 = this.f15872d;
                            dPow3 = (((dCos4 * d22) - 1.0d) - Math.pow(d22, 2.0d)) / dPow7;
                            dPow = dPow8;
                            dPow2 = ((1.0d - Math.pow(this.f15872d, 2.0d)) * 2.0d) / dPow7;
                            d6 = dPow;
                            d5 = dPow8 * 2.0d;
                        } else if (i3 == 20) {
                            double d23 = (((double) ((i4 * 2) + 1)) * 3.141592653589793d) / 16.0d;
                            double dCos5 = Math.cos(d23) * 2.0d;
                            double d24 = this.f15872d;
                            double dPow9 = (dCos5 * d24) + 1.0d + Math.pow(d24, 2.0d);
                            double d25 = 1.0d / dPow9;
                            double dCos6 = Math.cos(d23) * 2.0d;
                            double d26 = this.f15872d;
                            double dPow10 = (((dCos6 * d26) - 1.0d) - Math.pow(d26, 2.0d)) / dPow9;
                            dPow = d25;
                            dPow2 = ((1.0d - Math.pow(this.f15872d, 2.0d)) * 2.0d) / dPow9;
                            d5 = d25 * (-2.0d);
                            d6 = dPow;
                            dPow3 = dPow10;
                        }
                    } else if (i4 <= 2) {
                        double d27 = (((double) ((i4 * 2) + 1)) * 3.141592653589793d) / 12.0d;
                        double dCos7 = Math.cos(d27) * 2.0d;
                        double d28 = this.f15872d;
                        double dPow11 = (dCos7 * d28) + 1.0d + Math.pow(d28, 2.0d);
                        double d29 = 1.0d / dPow11;
                        d5 = d29 * (-2.0d);
                        double dCos8 = Math.cos(d27) * 2.0d;
                        double d30 = this.f15872d;
                        dPow3 = (((dCos8 * d30) - 1.0d) - Math.pow(d30, 2.0d)) / dPow11;
                        dPow4 = ((1.0d - Math.pow(this.f15872d, 2.0d)) * 2.0d) / dPow11;
                        dPow = d29;
                        dPow2 = dPow4;
                        d6 = dPow;
                    }
                } else if (i4 <= 2) {
                    double d31 = (((double) ((i4 * 2) + 1)) * 3.141592653589793d) / 12.0d;
                    double dCos9 = Math.cos(d31) * 2.0d;
                    double d32 = this.f15872d;
                    double dPow12 = (dCos9 * d32) + 1.0d + Math.pow(d32, 2.0d);
                    dPow = Math.pow(this.f15872d, 2.0d) / dPow12;
                    d5 = dPow * 2.0d;
                    double dCos10 = Math.cos(d31) * 2.0d;
                    double d33 = this.f15872d;
                    double dPow13 = (((dCos10 * d33) - 1.0d) - Math.pow(d33, 2.0d)) / dPow12;
                    dPow2 = ((1.0d - Math.pow(this.f15872d, 2.0d)) * 2.0d) / dPow12;
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
                double d35 = this.f15872d;
                double dPow14 = (dCos11 * d35) + 1.0d + Math.pow(d35, 2.0d);
                d6 = 1.0d / dPow14;
                double dCos12 = Math.cos(d34) * 2.0d;
                double d36 = this.f15872d;
                dPow3 = (((dCos12 * d36) - 1.0d) - Math.pow(d36, 2.0d)) / dPow14;
                dPow2 = ((1.0d - Math.pow(this.f15872d, 2.0d)) * 2.0d) / dPow14;
                d5 = d6 * (-2.0d);
                dPow = d6;
            }
            return i2 == 0 ? new int[]{C7738NOR_QUALCOMM.this.p7.a(d6, i6), C7738NOR_QUALCOMM.this.p7.a(d5, i6), C7738NOR_QUALCOMM.this.p7.a(dPow3, i6), C7738NOR_QUALCOMM.this.p7.a(dPow2, i6), C7738NOR_QUALCOMM.this.p7.a(dPow, i6)} : new int[]{C7738NOR_QUALCOMM.this.p7.b(d6, i6), C7738NOR_QUALCOMM.this.p7.c(d6, i6), C7738NOR_QUALCOMM.this.p7.b(d5, i6), C7738NOR_QUALCOMM.this.p7.c(d5, i6), C7738NOR_QUALCOMM.this.p7.b(dPow3, i6), C7738NOR_QUALCOMM.this.p7.c(dPow3, i6), C7738NOR_QUALCOMM.this.p7.b(dPow2, i6), C7738NOR_QUALCOMM.this.p7.c(dPow2, i6), C7738NOR_QUALCOMM.this.p7.b(dPow, i6), C7738NOR_QUALCOMM.this.p7.c(dPow, i6)};
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
            return C7738NOR_QUALCOMM.this.p7.a(dPow, 2);
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
        public i() {
        }

        public int a(int i2) {
            return (i2 == 0 ? 1 : 2) * 16;
        }
    }

    public class j {
        public j() {
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
            return C7738NOR_QUALCOMM.this.p7.a(dPow, 2);
        }
    }

    public class k {
        public k() {
        }

        public int a(double d2, int i2) {
            double d3 = d(-8388608.0d, e(8388607.0d, d2 * ((double) ((float) Math.pow(2.0d, 23 - i2)))));
            if (d3 < 0.0d) {
                d3 += 1.6777216E7d;
            }
            return (int) f(d3 + 0.5d, 0.0d, 1.6777215E7d);
        }

        public int b(double d2, int i2) {
            double d3 = d(-32768.0d, e(32767.99998474d, d2 * Math.pow(2.0d, 15 - i2)));
            if (d3 < 0.0d) {
                d3 += 65536.0d;
            }
            return ((int) f(d3, 0.0d, 65535.0d)) * 256;
        }

        public int c(double d2, int i2) {
            double d3 = d(-32768.0d, e(32767.99998474d, d2 * Math.pow(2.0d, 15 - i2)));
            if (d3 < 0.0d) {
                d3 += 65536.0d;
            }
            return (int) f(((d3 - ((double) ((int) d3))) * 8388608.0d) + 0.5d, 0.0d, 8388607.0d);
        }

        public double d(double d2, double d3) {
            return Math.max(d2, d3);
        }

        public double e(double d2, double d3) {
            return Math.min(d2, d3);
        }

        public double f(double d2, double d3, double d4) {
            return Math.max(Math.min(d2, d4), d3);
        }
    }

    public C7738NOR_QUALCOMM(n nVar) {
        super(36, 3);
        this.I0 = false;
        this.J0 = "C7738QC";
        this.K0 = 0;
        this.L0 = 1;
        this.M0 = 3;
        this.N0 = 6;
        this.O0 = 7;
        this.P0 = 8;
        this.Q0 = 10;
        this.R0 = 13;
        this.S0 = 14;
        this.T0 = 15;
        this.U0 = 16;
        this.V0 = 17;
        this.W0 = 18;
        this.X0 = 0;
        this.Y0 = 1;
        this.Z0 = 2;
        this.f15838a1 = 3;
        this.f15839b1 = 4;
        this.f15840c1 = 5;
        this.f15841d1 = 6;
        this.f15842e1 = 19;
        this.f15843f1 = 20;
        this.f15844g1 = 21;
        this.f15845h1 = 22;
        this.f15846i1 = 23;
        this.f15847j1 = 24;
        this.f15848k1 = 7;
        this.f15849l1 = 8;
        this.f15850m1 = 9;
        this.f15851n1 = 10;
        this.f15852o1 = 11;
        this.f15853p1 = 12;
        this.f15854q1 = 13;
        this.r1 = 25;
        this.s1 = 26;
        this.t1 = 31;
        this.u1 = 36;
        this.v1 = 41;
        this.w1 = 46;
        this.x1 = 51;
        this.y1 = 56;
        this.z1 = 61;
        this.A1 = 66;
        this.B1 = 71;
        this.C1 = 76;
        this.D1 = 81;
        this.E1 = 86;
        this.F1 = 91;
        this.G1 = 96;
        this.H1 = 101;
        this.I1 = 106;
        this.J1 = 111;
        this.K1 = 116;
        this.L1 = 121;
        this.M1 = 126;
        this.N1 = 131;
        this.O1 = 136;
        this.P1 = 141;
        this.Q1 = 146;
        this.R1 = 151;
        this.S1 = 156;
        this.T1 = 161;
        this.U1 = 166;
        this.V1 = 171;
        this.W1 = 176;
        this.X1 = 181;
        this.Y1 = 186;
        this.Z1 = 191;
        this.a2 = 196;
        this.b2 = 201;
        this.c2 = 206;
        this.d2 = 211;
        this.e2 = 216;
        this.f2 = 217;
        this.g2 = 219;
        this.h2 = 222;
        this.i2 = 223;
        this.j2 = 225;
        this.k2 = 228;
        this.l2 = 229;
        this.m2 = 230;
        this.n2 = 231;
        this.o2 = 232;
        this.p2 = 233;
        this.q2 = 235;
        this.r2 = 237;
        this.s2 = 238;
        this.t2 = 239;
        this.u2 = 240;
        this.v2 = i.a.Theme_actionModeShareDrawable;
        this.w2 = i.a.Theme_actionModeFindDrawable;
        this.x2 = i.a.Theme_actionModeWebSearchDrawable;
        this.y2 = 248;
        this.z2 = i.a.Theme_dialogTitleDecorLayout;
        this.A2 = 258;
        this.B2 = 263;
        this.C2 = 268;
        this.D2 = 273;
        this.E2 = 278;
        this.F2 = 283;
        this.G2 = MediaProperties.HEIGHT_288;
        this.H2 = 289;
        this.I2 = 290;
        this.J2 = 291;
        this.K2 = 292;
        this.L2 = 293;
        this.M2 = 294;
        this.N2 = 299;
        this.O2 = 304;
        this.P2 = 309;
        this.Q2 = 314;
        this.R2 = 319;
        this.S2 = 324;
        this.T2 = 329;
        this.U2 = 334;
        this.V2 = 339;
        this.W2 = 340;
        this.X2 = 341;
        this.Y2 = 346;
        this.Z2 = 351;
        this.a3 = 356;
        this.b3 = 357;
        this.c3 = 358;
        this.d3 = 359;
        this.e3 = 306;
        this.f3 = 0;
        this.g3 = 26;
        this.h3 = 53;
        this.i3 = 54;
        this.j3 = 68;
        this.k3 = 69;
        this.l3 = 70;
        this.m3 = 72;
        this.n3 = 86;
        this.o3 = 87;
        this.p3 = 88;
        this.q3 = 102;
        this.r3 = 103;
        this.s3 = 104;
        this.t3 = 106;
        this.u3 = 130;
        this.v3 = 154;
        this.w3 = 180;
        this.x3 = 181;
        this.y3 = 182;
        this.z3 = 203;
        this.A3 = 204;
        this.B3 = 205;
        this.C3 = 206;
        this.D3 = 305;
        this.E3 = 0;
        this.F3 = 1;
        this.G3 = 2;
        this.H3 = 3;
        this.I3 = 4;
        this.J3 = 5;
        this.K3 = 6;
        this.L3 = 7;
        this.M3 = 307;
        this.N3 = 308;
        this.O3 = 309;
        this.P3 = 8;
        this.Q3 = 9;
        this.R3 = 310;
        this.S3 = 315;
        this.T3 = 320;
        this.U3 = 325;
        this.V3 = 330;
        this.W3 = 335;
        this.X3 = 340;
        this.Y3 = 345;
        this.Z3 = SpellChecker.WORD_ITERATOR_INTERVAL;
        this.a4 = 351;
        this.b4 = 353;
        this.c4 = 10;
        this.d4 = 11;
        this.e4 = 356;
        this.f4 = 361;
        this.g4 = 366;
        this.h4 = 371;
        this.i4 = 376;
        this.j4 = 381;
        this.k4 = 386;
        this.l4 = 391;
        this.m4 = 396;
        this.n4 = 397;
        this.o4 = 399;
        this.p4 = 402;
        this.q4 = 283;
        this.r4 = 334;
        this.s4 = 206;
        this.t4 = 211;
        this.u4 = 96000;
        this.v4 = 0;
        this.w4 = 1;
        this.x4 = 0;
        this.y4 = 1;
        this.z4 = 2;
        this.A4 = 3;
        this.B4 = 4;
        this.C4 = 5;
        this.D4 = 6;
        this.E4 = 7;
        this.F4 = 8;
        this.G4 = 9;
        this.H4 = 10;
        this.I4 = 11;
        this.J4 = 12;
        this.K4 = 13;
        this.L4 = 14;
        this.M4 = 15;
        this.N4 = 16;
        this.O4 = 17;
        this.P4 = 18;
        this.Q4 = 19;
        this.R4 = 20;
        this.S4 = 21;
        this.T4 = -144.0d;
        this.U4 = 12.0d;
        this.V4 = -145.0d;
        this.W4 = 0;
        this.X4 = 1;
        this.Y4 = -40.0d;
        this.Z4 = 0.0d;
        this.a5 = new int[]{0, 15, 1, 140, 2, 3, 3, 144, 4, 39, 5, 144, 6, 39, 7, 144, 8, 39, 9, 16, 10, 39, 11, 144, 12, 19, 13, 16, 14, 19, 15, 16, 16, 19, 17, 16, 18, 4, 19, 8, 20, 0, 21, 7, 22, 0, 23, 119, 24, 119, 25, 119, 26, 0, 27, 4, 28, 0, 29, 0, 30, 112, 31, 0, 32, 0, 33, 23, 34, 0, 35, 0, 36, 26, 37, 0, 38, 0, 39, 21, 40, 0, 41, 16, 42, 17, 43, 32, 44, 26, 45, 0, 46, 19, 47, 20, 48, 0, 49, 15, 50, 0, 51, 0, 52, 0, 53, 0, 54, 0, 55, 0, 56, 0, 57, 7, 58, 0, 59, 0, 60, 0, 61, 0, 62, 0, 63, 0, 64, 0, 65, 14, 66, 0, 67, 0, 68, 0, 69, 0, 70, 0, 71, 0, 72, 0, 73, 32, 74, 0, 75, 3, 76, 0, 77, 0, 78, 0, 79, 48, 80, 0, 81, 48, 82, 0, 83, 0, 84, 0, 85, 0, 86, 0, 87, 34, 88, 59, 89, 0, 90, 0, 91, 0, 92, 0, 93, 8, 94, 0, 95, 48, 96, 48, 97, 48, 98, 48, 99, 48, 100, 0, 101, 0, 102, 1, 103, 0, 104, 24, 105, 24, 106, 24, 107, 24, 108, 0, 109, 0, 110, 0, 111, 0, 112, 0, 113, 0, 114, 0, 115, 0, 116, 0, 117, 0, 118, 0, 119, 0, 120, 0, 121, 0, 122, 0, 123, 0, 124, 0, 125, 0, 126, 0, 127, 4, 128, 10, 129, 1, 130, 0, 131, 62, 132, 34, 133, 31, 134, 0, 135, 0, 144, 0, 145, 0, 146, 0, 147, 0, 148, 0, 149, 0};
        this.b5 = null;
        this.c5 = null;
        this.d5 = new int[]{0, 4, 127, 0, 4, 127, 0, 8, 255, 0, 8, 255, 0, 13, 127, 0, 13, 127, 0, 17, 255, 0, 17, 255, 0, 22, 127, 0, 22, 127, 0, 26, 255, 0, 26, 255};
        this.e5 = new int[]{0, 1, i.a.Theme_actionModeWebSearchDrawable, 0, 1, i.a.Theme_actionModeWebSearchDrawable, 0, 1, i.a.Theme_actionModeWebSearchDrawable, 0, 1, i.a.Theme_actionModeWebSearchDrawable, 0, 1, i.a.Theme_actionModeWebSearchDrawable, 0, 1, i.a.Theme_actionModeWebSearchDrawable, 0, 1, i.a.Theme_actionModeWebSearchDrawable, 0, 3, 231, 0, 3, 231, 0, 3, 231, 0, 3, 231, 0, 3, 231, 0, 3, 231, 0, 3, 231};
        this.f5 = new int[]{20, 24, 29, 36, 45, 53, 65, 80, 100, 120, 140, 170, 210, 260, 320, 390, 470, 570, 700, 850, 1000, 1300, 1600, 1900, 2300, 2800, 3400, 4100, 5000, 6100, 7500, 9000, 11000, 14000, 17000, Window.PROGRESS_SECONDARY_START};
        this.g5 = 120;
        this.h5 = 70;
        this.i5 = new int[]{-1450, -600, -520, -460, -410, -370, -330, -300, -280, -270, -260, -250, -240, -230, -220, -210, AudioService.STREAM_REMOTE_MUSIC, -190, -180, -170, -160, -150, -140, -130, -120, -110, -100, -90, -80, -70, -60, -50, -40, -30, -20, -10, 0};
        this.j5 = new int[]{-1450, -480, -420, -370, -330, -300, -270, -250, -230, -220, -210, AudioService.STREAM_REMOTE_MUSIC, -190, -180, -170, -160, -150, -140, -130, -120, -110, -100, -90, -80, -70, -60, -50, -40, -30, -20, -10, 0, 10, 20, 30, 40, 50};
        this.k5 = new double[]{1.6d, 1.4d, 1.35d, 1.32d, 1.3d, 1.25d, 1.1d, 0.9d, 0.7d, 0.5d, 0.4d, 0.2d, 0.1d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.36d, 0.36d, 0.32d, 0.32d, 0.3d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d};
        this.l5 = new int[]{26, 31, 36, 41, 46, 51, 56, 61, 66, 71, 76, 81, 86, 91, 96, 101, 106, 111, 116, 121, 126, 131, 136, 141, 146, 151, 156, 161, 166, 171, 176, 181, 186, 191, 196, 201};
        this.m5 = 0;
        this.n5 = new int[]{24, 24, 24, 24, 24, 24, 24, 24, 24, 30, 36, 42, 48, 54, 60, 66, 255};
        this.o5 = new int[]{-145, -21, -18, -15, -12, -10, -8, -6, -4, -2, 0};
        this.p5 = new int[]{-10, -9, -8, -7, -6, -5, -4, -3, -2, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
        this.q5 = new int[]{20, 68, 86, 108, 134, 172, 214, 260};
        this.r5 = new double[]{0.0d, 2.0d, 4.0d, 5.5d, 6.5d, 7.5d, 8.0d, 8.5d, 9.0d, 9.5d, 10.0d};
        this.s5 = new int[]{100, 150, 200, 250, 300, MediaProperties.HEIGHT_360, 420, 500, CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR, MediaProperties.HEIGHT_720, 850, 1000, 1200, 1400, 1600, BluetoothClass.Device.WEARABLE_PAGER, 2100, 2500, ConnectivityManager.CONNECTIVITY_CHANGE_DELAY_DEFAULT, 3500, 4000};
        this.t5 = new int[]{-145, -80, -48, -32, -25, -21, -18, -16, -14, -12, -10, -9, -8, -7, -6, -5, -4, -3, -2, -1, 0};
        this.u5 = 1.0d;
        this.v5 = new int[]{20, 10, 32, 24, 10, 32, 29, 10, 32, 36, 10, 32, 44, 10, 32, 54, 10, 32, 66, 10, 32, 81, 10, 32, 100, 10, 32, 120, 10, 32, 140, 10, 32, 170, 10, 32, 210, 10, 32, 260, 10, 32, 320, 10, 32, 390, 10, 32, 470, 10, 32, 570, 10, 32, 700, 10, 32, 850, 10, 32, 1000, 10, 32, 1260, 10, 32, 1540, 10, 32, 1900, 10, 32, 2300, 10, 32, 2800, 10, 32, 3400, 10, 32, 4100, 10, 32, 5000, 10, 32, 6100, 10, 32, 7500, 10, 32, 9000, 10, 32, 11000, 10, 32, 14000, 10, 32, 17000, 10, 32, Window.PROGRESS_SECONDARY_START, 10, 32};
        int[] iArr = {20, 10, 32, 24, 10, 32, 29, 10, 32, 36, 10, 32, 44, 10, 32, 54, 10, 32, 66, 10, 32, 81, 10, 32, 100, 10, 32, 120, 10, 32, 140, 10, 32, 170, 10, 32, 210, 10, 32, 260, 10, 32, 320, 10, 32, 390, 10, 32, 470, 10, 32, 570, 10, 32, 700, 10, 32, 850, 10, 32, 1000, 10, 32, 1260, 10, 32, 1540, 10, 32, 1900, 10, 32, 2300, 10, 32, 2800, 10, 32, 3400, 10, 32, 4100, 10, 32, 5000, 10, 32, 6100, 10, 32, 7500, 10, 32, 9000, 10, 32, 11000, 10, 32, 14000, 10, 32, 17000, 10, 32, Window.PROGRESS_SECONDARY_START, 10, 32};
        this.w5 = iArr;
        int[] iArr2 = {20, 14, 32, 24, 14, 32, 29, 14, 32, 36, 14, 32, 44, 14, 32, 54, 14, 32, 66, 14, 32, 81, 13, 32, 100, 13, 32, 120, 12, 32, 140, 11, 32, 170, 11, 32, 210, 10, 32, 260, 9, 32, 320, 9, 32, 390, 8, 32, 470, 7, 32, 570, 7, 32, 700, 7, 32, 850, 7, 32, 1000, 7, 32, 1260, 8, 32, 1540, 9, 32, 1900, 11, 32, 2300, 9, 32, 2800, 11, 32, 3400, 12, 32, 4100, 12, 32, 5000, 13, 32, 6100, 13, 32, 7500, 14, 32, 9000, 14, 32, 11000, 14, 32, 14000, 14, 32, 17000, 14, 32, Window.PROGRESS_SECONDARY_START, 14, 32};
        this.x5 = iArr2;
        int[] iArr3 = {20, 6, 32, 24, 6, 32, 29, 6, 32, 36, 6, 32, 44, 6, 32, 54, 6, 32, 66, 6, 32, 81, 6, 32, 100, 7, 32, 120, 8, 32, 140, 9, 32, 170, 9, 32, 210, 10, 32, 260, 11, 32, 320, 11, 32, 390, 12, 32, 470, 12, 32, 570, 12, 32, 700, 12, 32, 850, 12, 32, 1000, 11, 32, 1260, 11, 32, 1540, 11, 32, 1900, 12, 32, 2300, 12, 32, 2800, 12, 32, 3400, 13, 32, 4100, 11, 32, 5000, 10, 32, 6100, 10, 32, 7500, 10, 32, 9000, 10, 32, 11000, 10, 32, 14000, 10, 32, 17000, 10, 32, Window.PROGRESS_SECONDARY_START, 10, 32};
        this.y5 = iArr3;
        int[] iArr4 = {20, 14, 32, 24, 14, 32, 29, 14, 32, 36, 14, 32, 44, 14, 32, 54, 14, 32, 66, 14, 32, 81, 14, 32, 100, 14, 32, 120, 13, 32, 140, 13, 32, 170, 12, 32, 210, 11, 32, 260, 11, 32, 320, 10, 32, 390, 9, 32, 470, 9, 32, 570, 11, 32, 700, 11, 32, 850, 11, 32, 1000, 11, 32, 1260, 10, 32, 1540, 9, 32, 1900, 9, 32, 2300, 9, 32, 2800, 8, 32, 3400, 7, 32, 4100, 7, 32, 5000, 7, 32, 6100, 7, 32, 7500, 7, 32, 9000, 6, 32, 11000, 6, 32, 14000, 6, 32, 17000, 6, 32, Window.PROGRESS_SECONDARY_START, 6, 32};
        this.z5 = iArr4;
        int[] iArr5 = {20, 11, 32, 24, 11, 32, 29, 11, 32, 36, 11, 32, 44, 12, 32, 54, 12, 32, 66, 12, 32, 81, 12, 32, 100, 13, 32, 120, 14, 32, 140, 14, 32, 170, 14, 32, 210, 14, 32, 260, 14, 32, 320, 14, 32, 390, 14, 32, 470, 14, 32, 570, 14, 32, 700, 14, 32, 850, 14, 32, 1000, 14, 32, 1260, 14, 32, 1540, 13, 32, 1900, 13, 32, 2300, 12, 32, 2800, 12, 32, 3400, 12, 32, 4100, 11, 32, 5000, 11, 32, 6100, 12, 32, 7500, 11, 32, 9000, 11, 32, 11000, 10, 32, 14000, 10, 32, 17000, 11, 32, Window.PROGRESS_SECONDARY_START, 11, 32};
        this.A5 = iArr5;
        int[] iArr6 = {20, 14, 32, 24, 14, 32, 29, 14, 32, 36, 14, 32, 44, 14, 32, 54, 14, 32, 66, 14, 32, 81, 14, 32, 100, 14, 32, 120, 14, 32, 140, 13, 32, 170, 13, 32, 210, 13, 32, 260, 13, 32, 320, 13, 32, 390, 13, 32, 470, 14, 32, 570, 14, 32, 700, 13, 32, 850, 13, 32, 1000, 13, 32, 1260, 12, 32, 1540, 11, 32, 1900, 11, 32, 2300, 11, 32, 2800, 11, 32, 3400, 11, 32, 4100, 11, 32, 5000, 10, 32, 6100, 10, 32, 7500, 10, 32, 9000, 9, 32, 11000, 9, 32, 14000, 9, 32, 17000, 9, 32, Window.PROGRESS_SECONDARY_START, 9, 32};
        this.B5 = iArr6;
        int[] iArr7 = {20, 13, 32, 24, 13, 32, 29, 13, 32, 36, 13, 32, 44, 12, 32, 54, 12, 32, 66, 11, 32, 81, 11, 32, 100, 10, 32, 120, 8, 32, 140, 7, 32, 170, 7, 32, 210, 6, 32, 260, 7, 32, 320, 8, 32, 390, 9, 32, 470, 10, 32, 570, 10, 32, 700, 10, 32, 850, 10, 32, 1000, 10, 32, 1260, 10, 32, 1540, 10, 32, 1900, 11, 32, 2300, 11, 32, 2800, 11, 32, 3400, 11, 32, 4100, 11, 32, 5000, 11, 32, 6100, 12, 32, 7500, 13, 32, 9000, 13, 32, 11000, 14, 32, 14000, 14, 32, 17000, 14, 32, Window.PROGRESS_SECONDARY_START, 14, 32};
        this.C5 = iArr7;
        int[] iArr8 = {20, 10, 32, 24, 10, 32, 29, 10, 32, 36, 10, 32, 44, 10, 32, 54, 10, 32, 66, 11, 32, 81, 12, 32, 100, 12, 32, 120, 12, 32, 140, 13, 32, 170, 13, 32, 210, 13, 32, 260, 13, 32, 320, 14, 32, 390, 14, 32, 470, 14, 32, 570, 14, 32, 700, 14, 32, 850, 14, 32, 1000, 14, 32, 1260, 14, 32, 1540, 14, 32, 1900, 14, 32, 2300, 14, 32, 2800, 14, 32, 3400, 14, 32, 4100, 14, 32, 5000, 14, 32, 6100, 14, 32, 7500, 13, 32, 9000, 13, 32, 11000, 13, 32, 14000, 13, 32, 17000, 13, 32, Window.PROGRESS_SECONDARY_START, 13, 32};
        this.D5 = iArr8;
        this.E5 = null;
        this.F5 = 32;
        this.G5 = 200;
        this.H5 = 250;
        this.I5 = 20;
        this.J5 = null;
        this.K5 = true;
        this.L5 = false;
        this.M5 = new int[]{8, 8, 8, 8, 8, 8};
        this.N5 = new int[]{-30, 2, 9};
        this.O5 = new int[4];
        this.P5 = new int[]{25, 12, 12, 0, 0, 0};
        this.Q5 = new int[]{0, 0};
        this.R5 = new int[]{0, 0};
        this.S5 = new int[]{20, 20, 20, 10, 12};
        this.T5 = new int[]{50, 50};
        this.U5 = 0;
        this.V5 = 1;
        this.W5 = 0;
        this.X5 = 9;
        this.Y5 = 9;
        this.Z5 = new int[]{-145, -49, -24, -14, -9, -8, -7, -6, -5, -4, -3};
        this.a6 = new int[]{-145, -61, -36, -26, -21, -20, -19, -18, -17, -16, -15};
        this.b6 = new int[]{5, 8, 11, 15, 20, 25, 30, 35, 40, 45, 50};
        this.c6 = new int[]{0, 0, 5, 10, 15, 25, 35};
        this.d6 = new int[]{10, 10, 10, 10, 10, 10, 10};
        this.e6 = new int[]{0, 0, 0, 0, 0, 0, 0};
        this.f6 = new int[]{0, 0, 0, 0, 0, 0, 0};
        this.g6 = new int[]{356, 376, i.a.Theme_actionModeWebSearchDrawable, 263, 294, 314, 310, 330};
        this.h6 = 0;
        this.i6 = 1;
        this.j6 = 2;
        this.k6 = 3;
        this.l6 = 1;
        this.m6 = new int[]{21, 6, 8, 12, 16, 20};
        this.n6 = new int[]{21, 5, 7, 11, 15, 19};
        this.o6 = new int[]{150, 0, 50, 0};
        this.p6 = new int[]{20, 0, 200, 0};
        this.q6 = new int[]{20, 0, 200, 0};
        this.r6 = new int[]{20, 0, 250, 0};
        this.s6 = new int[]{150, 0, 50, 0, 20, 0, 200, 0, 20, 0, 200, 0, 20, 0, 250, 0};
        this.t6 = true;
        this.u6 = 0;
        this.v6 = 1;
        this.w6 = 0;
        this.x6 = 1;
        this.y6 = 2;
        this.z6 = new int[]{32, 32, 32, 32, 32, 1, 1, 1, 31, 31, 31, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0};
        this.A6 = new int[]{32, 32};
        this.B6 = new int[]{32, 32, 32, 1, 1, 1};
        this.C6 = new int[]{31, 31, 31, 1, 1, 1};
        this.D6 = new int[]{1, 1, 1, 1, 0, 0, 0};
        this.E6 = 0;
        this.F6 = 0;
        this.G6 = false;
        this.H6 = false;
        this.I6 = false;
        this.J6 = false;
        this.K6 = new a();
        this.L6 = new Handler();
        this.M6 = new b();
        this.N6 = true;
        this.O6 = 1;
        this.P6 = new double[]{-145.0d, -60.0d, -50.0d, -46.0d, -43.0d, -40.0d, -37.0d, -34.0d, -31.0d, -28.0d, -25.0d};
        this.Q6 = 0;
        this.R6 = 100;
        this.S6 = 50;
        this.T6 = 0;
        this.U6 = 1;
        this.V6 = 2;
        this.W6 = 3;
        this.X6 = 4;
        this.Y6 = 5;
        this.Z6 = 6;
        this.a7 = 7;
        this.b7 = 8;
        this.c7 = 9;
        this.d7 = 10;
        this.e7 = 11;
        this.f7 = 12;
        this.g7 = 13;
        this.h7 = 14;
        this.i7 = 15;
        this.j7 = 16;
        this.k7 = 17;
        this.l7 = 18;
        this.m7 = 19;
        this.n7 = 20;
        this.o7 = new int[]{20, 24, 29, 36, 45, 53, 65, 80, 100, 120, 140, 170, 210, 260, 320, 390, 470, 570, 700, 850, 1000, 1300, 1600, 1900, 2300, 2800, 3400, 4100, 5000, 6100, 7500, 9000, 11000, 14000, 17000, Window.PROGRESS_SECONDARY_START};
        this.p7 = new k();
        this.q7 = 0;
        this.r7 = 1;
        this.s7 = 2;
        this.t7 = 0;
        this.u7 = 1;
        this.v7 = 2;
        this.w7 = 3;
        this.x7 = 4;
        this.y7 = 5;
        this.z7 = 6;
        this.A7 = 7;
        this.B7 = 0;
        this.C7 = 1;
        Z0(0, this.v5);
        Z0(1, iArr);
        Z0(2, iArr2);
        Z0(3, iArr3);
        Z0(4, iArr4);
        Z0(5, iArr5);
        Z0(6, iArr6);
        Z0(7, iArr7);
        Z0(8, iArr8);
        x(this.i5);
        this.J5 = (AudioManager) App.c().getSystemService(Context.AUDIO_SERVICE);
        this.E5 = nVar;
    }

    @Override // module.sound.AudioDevice
    public void A1(int i2, boolean z2) {
        if (i2 < 0 || i2 >= AudioDevice.G0.length) {
            return;
        }
        B1(i2, z2);
        super.A1(i2, z2);
        if (z2 || i2 != this.f15054g) {
            if (i2 != this.f15054g) {
                this.f15054g = i2;
            }
            if (this.f15052f) {
                q2();
            }
        }
    }

    public void A2(int i2) {
        boolean z2 = nt.W != 0;
        if (i2 == 0) {
            if (z2) {
                z2(75, 25);
                return;
            } else {
                z2(25, 25);
                return;
            }
        }
        if (i2 == 1) {
            if (z2) {
                z2(25, 25);
                return;
            } else {
                z2(75, 25);
                return;
            }
        }
        if (i2 == 2) {
            z2(50, 75);
        } else if (i2 != 3) {
            z2(50, 50);
        } else {
            z2(50, 50);
        }
    }

    @Override // module.sound.AudioDevice
    public void B0(int i2, int i3, int i4) {
        int i5;
        if (i2 == 65536) {
            i5 = 283;
        } else {
            i5 = i2 == 131072 ? 334 : -1;
        }
        D1(i5, this.q5[i3], i4);
    }

    @Override // module.sound.AudioDevice
    public void C0(int i2, int i3) {
        boolean z2;
        int i4;
        int iMax = Math.max(0, Math.min(i3, this.q5.length));
        int i5 = -1;
        if (i2 == 65536) {
            i5 = 283;
            int[] iArr = this.Q5;
            z2 = iArr[0] != iMax;
            int i6 = iArr[0];
            iArr[0] = iMax;
            i4 = iArr[1];
        } else if (i2 == 131072) {
            i5 = 334;
            int[] iArr2 = this.R5;
            z2 = iArr2[0] != iMax;
            int i7 = iArr2[0];
            iArr2[0] = iMax;
            i4 = iArr2[1];
        } else {
            z2 = false;
            iMax = -1;
            i4 = -1;
        }
        if (i5 >= 0) {
            D1(i5, this.q5[iMax], i4);
            if (z2) {
                super.C0(i2, iMax);
                if (this.Q6 != 0) {
                    if ((i2 != 65536 || this.Q5[0] == 0) && (i2 != 131072 || this.R5[0] == 0)) {
                        return;
                    }
                    k1(0);
                }
            }
        }
    }

    @Override // module.sound.AudioDevice
    public void C1(int i2) {
        if (this.Q != i2 || this.R) {
            this.R = false;
            this.Q = i2;
            Log.e("C7738QC", "=========================writeVolume : " + i2);
            b2((double) (((float) i2) / 10.0f));
        }
    }

    @Override // module.sound.AudioDevice
    public void D(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 90) {
            if (s0.h(iArr, 0)) {
                v2(iArr[0]);
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
                    x2(iArr[0], iArr[1]);
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
                            U1(iArr[0], iArr[1]);
                        }
                        break;
                    case 70:
                        if (s0.h(iArr, 1)) {
                            z2(iArr[0], iArr[1]);
                        }
                        break;
                    case 71:
                        if (s0.h(iArr, 0)) {
                            A2(iArr[0]);
                        }
                        break;
                    default:
                        switch (i2) {
                            case 83:
                                if (s0.h(iArr, 0)) {
                                    l2(iArr[0]);
                                }
                                break;
                            case 84:
                                if (s0.h(iArr, 1)) {
                                    m2(iArr[0], iArr[1]);
                                }
                                break;
                            case 85:
                                if (s0.h(iArr, 0)) {
                                    u2(iArr[0]);
                                }
                                break;
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
        int iMax = Math.max(0, Math.min(i3, 12));
        int i5 = -1;
        if (i2 == 65536) {
            i5 = 283;
            int[] iArr = this.Q5;
            z2 = iArr[1] != iMax;
            int i6 = iArr[0];
            int i7 = iArr[1];
            iArr[1] = iMax;
            i4 = i6;
        } else if (i2 == 131072) {
            i5 = 334;
            int[] iArr2 = this.R5;
            z2 = iArr2[1] != iMax;
            int i8 = iArr2[1];
            iArr2[1] = iMax;
            i4 = iArr2[0];
        } else {
            z2 = false;
            iMax = -1;
            i4 = -1;
        }
        if (i5 >= 0) {
            D1(i5, this.q5[i4], iMax);
            if (z2) {
                super.D0(i2, iMax);
                if (this.Q6 != 0) {
                    if ((i2 != 65536 || this.Q5[1] == 0) && (i2 != 131072 || this.R5[1] == 0)) {
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
            d2(0, 132, i2, fVar.a(0, 4, i3, 0.70711d, d2, 1));
        }
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
        if (i2 >= 0 || i2 < this.S5.length) {
            new i();
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
                            int[] iArr3 = this.A6;
                            if (iArr3[0] != i4) {
                                iArr3[0] = i4;
                                y0.h.s0(68, i2, i4);
                                H0(AudioDevice.STORE.CSAUTO_SRS, this.A6);
                            }
                            double dO2 = o2(i4);
                            d2(1, 128, 53, new int[]{cVar.a(dO2)});
                            a.f.p().t(LogType.AUDIO, String.format(" MixCenter2Rear-> index: %4d， value: %4d，gain: %2.3f", Integer.valueOf(i2), Integer.valueOf(i4), Double.valueOf(dO2)));
                            break;
                        case 1:
                            if (i4 > 100) {
                                i4 = 50;
                            }
                            int[] iArr4 = this.A6;
                            if (iArr4[1] != i4) {
                                iArr4[1] = i4;
                                y0.h.s0(68, i2, i4);
                                H0(AudioDevice.STORE.CSAUTO_SRS, this.A6);
                            }
                            double dO3 = o2(i4);
                            d2(1, 128, 54, new int[]{cVar.a(dO3)});
                            a.f.p().t(LogType.AUDIO, String.format(" MixFront2Rear-> index: %4d， value: %4d，gain: %2.3f", Integer.valueOf(i2), Integer.valueOf(i4), Double.valueOf(dO3)));
                            break;
                        case 2:
                            if (i4 > 100) {
                                i4 = 50;
                            }
                            int[] iArr5 = this.B6;
                            if (iArr5[0] != i4) {
                                iArr5[0] = i4;
                                y0.h.s0(68, i2, i4);
                                H0(AudioDevice.STORE.CSAUTO_FOC, this.B6);
                            }
                            double dO4 = o2(i4);
                            d2(1, 128, 69, new int[]{cVar.a(dO4)});
                            a.f.p().t(LogType.AUDIO, String.format(" FocusCenterLevel-> index: %4d， value: %4d，gain: %2.3f", Integer.valueOf(i2), Integer.valueOf(i4), Double.valueOf(dO4)));
                            break;
                        case 3:
                            if (i4 > 100) {
                                i4 = 50;
                            }
                            int[] iArr6 = this.B6;
                            if (iArr6[1] != i4) {
                                iArr6[1] = i4;
                                y0.h.s0(68, i2, i4);
                                H0(AudioDevice.STORE.CSAUTO_FOC, this.B6);
                            }
                            double dO5 = o2(i4);
                            d2(1, 128, 87, new int[]{cVar.a(dO5)});
                            a.f.p().t(LogType.AUDIO, String.format(" FocusFrontlevel-> index: %4d， value: %4d，gain: %2.3f", Integer.valueOf(i2), Integer.valueOf(i4), Double.valueOf(dO5)));
                            break;
                        case 4:
                            if (i4 > 100) {
                                i4 = 50;
                            }
                            int[] iArr7 = this.B6;
                            if (iArr7[2] != i4) {
                                iArr7[2] = i4;
                                y0.h.s0(68, i2, i4);
                                H0(AudioDevice.STORE.CSAUTO_FOC, this.B6);
                            }
                            double dO6 = o2(i4);
                            d2(1, 128, 103, new int[]{cVar.a(dO6)});
                            a.f.p().t(LogType.AUDIO, String.format(" FocusRearlevel-> index: %4d， value: %4d，gain: %2.3f", Integer.valueOf(i2), Integer.valueOf(i4), Double.valueOf(dO6)));
                            break;
                        case 8:
                            if (i4 > 100) {
                                i4 = 50;
                            }
                            int[] iArr8 = this.C6;
                            if (iArr8[0] != i4) {
                                iArr8[0] = i4;
                                y0.h.s0(68, i2, i4);
                                H0(AudioDevice.STORE.CSAUTO_TRUBASS, this.C6);
                            }
                            double dO7 = o2(i4);
                            d2(1, 128, 180, new int[]{cVar.a(dO7)});
                            a.f.p().t(LogType.AUDIO, String.format(" TruBassRearControl-> index: %4d， value: %4d，gain: %2.3f", Integer.valueOf(i2), Integer.valueOf(i4), Double.valueOf(dO7)));
                            break;
                        case 9:
                            if (i4 > 100) {
                                i4 = 50;
                            }
                            int[] iArr9 = this.C6;
                            if (iArr9[1] != i4) {
                                iArr9[1] = i4;
                                y0.h.s0(68, i2, i4);
                                H0(AudioDevice.STORE.CSAUTO_TRUBASS, this.C6);
                            }
                            double dO8 = o2(i4);
                            d2(1, 128, 181, new int[]{cVar.a(dO8)});
                            a.f.p().t(LogType.AUDIO, String.format(" TruBassFrontControl-> index: %4d， value: %4d，gain: %2.3f", Integer.valueOf(i2), Integer.valueOf(i4), Double.valueOf(dO8)));
                            break;
                        case 10:
                            if (i4 > 100) {
                                i4 = 50;
                            }
                            int[] iArr10 = this.C6;
                            if (iArr10[2] != i4) {
                                iArr10[2] = i4;
                                y0.h.s0(68, i2, i4);
                                H0(AudioDevice.STORE.CSAUTO_TRUBASS, this.C6);
                            }
                            double dO9 = o2(i4);
                            d2(1, 128, 182, new int[]{cVar.a(dO9)});
                            a.f.p().t(LogType.AUDIO, String.format(" TruBassSubwooferControl-> index: %4d， value: %4d，gain: %2.3f", Integer.valueOf(i2), Integer.valueOf(i4), Double.valueOf(dO9)));
                            break;
                        case 14:
                            int[] iArr11 = this.D6;
                            if (iArr11[0] != i4) {
                                iArr11[0] = i4;
                                y0.h.s0(68, i2, i4);
                                AudioDevice.STORE store = AudioDevice.STORE.CSAUTO_OTHERS;
                                H0(store, this.D6);
                                this.f15080t.e(store.ordinal());
                            }
                            j2(this.f15074q);
                            h2(i4);
                            break;
                        case 15:
                            int[] iArr12 = this.D6;
                            if (iArr12[1] != i4) {
                                iArr12[1] = i4;
                                y0.h.s0(68, i2, i4);
                                AudioDevice.STORE store2 = AudioDevice.STORE.CSAUTO_OTHERS;
                                H0(store2, this.D6);
                                this.f15080t.e(store2.ordinal());
                            }
                            s2(true);
                            if (i4 == 2) {
                                d2(1, 128, 305, new int[]{cVar.b(2)});
                                a.f.p().t(LogType.AUDIO, String.format("CSAuto ModeSelCinema 模式--- ", new Object[0]));
                            } else if (i4 == 1) {
                                d2(1, 128, 305, new int[]{cVar.b(1)});
                                a.f.p().t(LogType.AUDIO, String.format("CSAuto ModeSelMusic 模式--- ", new Object[0]));
                            } else {
                                d2(1, 128, 305, new int[]{cVar.b(0)});
                                a.f.p().t(LogType.AUDIO, String.format("CSAuto ModeSelMono 模式--- ", new Object[0]));
                            }
                            s2(false);
                            break;
                        case 17:
                            int[] iArr13 = this.D6;
                            if (iArr13[3] != i4) {
                                iArr13[3] = i4;
                                y0.h.s0(68, i2, i4);
                                H0(AudioDevice.STORE.CSAUTO_OTHERS, this.D6);
                            }
                            s2(true);
                            if (i4 == 0) {
                                d2(1, 128, 72, new int[]{cVar.c(0)});
                                a.f.p().t(LogType.AUDIO, String.format(" Phantom OFF  模式---", new Object[0]));
                            } else {
                                d2(1, 128, 72, new int[]{cVar.c(1)});
                                a.f.p().t(LogType.AUDIO, String.format(" Phantom ON  模式---", new Object[0]));
                            }
                            s2(false);
                            break;
                        case 18:
                            if (i4 >= 0 && i4 <= 7) {
                                int[] iArr14 = this.D6;
                                if (iArr14[4] != i4) {
                                    iArr14[4] = i4;
                                    y0.h.s0(68, i2, i4);
                                    H0(AudioDevice.STORE.CSAUTO_OTHERS, this.D6);
                                }
                                int[] iArrD = cVar.d(i4);
                                if (iArrD != null) {
                                    System.arraycopy(iArrD, 0, iArr, 0, 16);
                                    System.arraycopy(iArrD, 16, iArr2, 0, 8);
                                    d2(1, 143, 106, iArr);
                                    d2(1, 135, 122, iArr2);
                                    a.f.p().t(LogType.AUDIO, String.format(" TruBassSubwooferSpeakSize-> index: %4d， value: %4d", Integer.valueOf(i2), Integer.valueOf(i3)));
                                }
                            }
                            break;
                        case 19:
                            if (i4 >= 0 && i4 <= 7) {
                                int[] iArr15 = this.D6;
                                if (iArr15[5] != i4) {
                                    iArr15[5] = i4;
                                    y0.h.s0(68, i2, i4);
                                    H0(AudioDevice.STORE.CSAUTO_OTHERS, this.D6);
                                }
                                int[] iArrD2 = cVar.d(i4);
                                if (iArrD2 != null) {
                                    System.arraycopy(iArrD2, 0, iArr, 0, 16);
                                    System.arraycopy(iArrD2, 16, iArr2, 0, 8);
                                    d2(1, 143, 130, iArr);
                                    d2(1, 135, 146, iArr2);
                                    a.f.p().t(LogType.AUDIO, String.format(" TruBassFrontSpeakSize-> index: %4d， value: %4d", Integer.valueOf(i2), Integer.valueOf(i3)));
                                }
                            }
                            break;
                        case 20:
                            if (i4 >= 0 && i4 <= 7) {
                                int[] iArr16 = this.D6;
                                if (iArr16[6] != i4) {
                                    iArr16[6] = i4;
                                    y0.h.s0(68, i2, i4);
                                    H0(AudioDevice.STORE.CSAUTO_OTHERS, this.D6);
                                }
                                int[] iArrD3 = cVar.d(i4);
                                if (iArrD3 != null) {
                                    System.arraycopy(iArrD3, 0, iArr, 0, 16);
                                    System.arraycopy(iArrD3, 16, iArr2, 0, 8);
                                    d2(1, 143, 154, iArr);
                                    d2(1, 135, 170, iArr2);
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

    @Override // module.sound.AudioDevice
    public void F() {
        CHANNEL channel = CHANNEL.IN1;
        L0(0, channel.f15861a);
        L0(1, CHANNEL.IN2.f15861a);
        L0(2, channel.f15861a);
        L0(3, channel.f15861a);
        CHANNEL channel2 = CHANNEL.IN3;
        L0(4, channel2.f15861a);
        CHANNEL channel3 = CHANNEL.IN5;
        L0(5, channel3.f15861a);
        L0(6, channel3.f15861a);
        L0(7, channel.f15861a);
        L0(8, channel.f15861a);
        L0(9, channel.f15861a);
        L0(10, channel.f15861a);
        L0(11, channel2.f15861a);
        L0(12, channel2.f15861a);
        L0(13, channel2.f15861a);
        L0(14, channel.f15861a);
        L0(15, channel.f15861a);
        L0(16, channel.f15861a);
    }

    public void F1(int i2) {
        int i3;
        byte bS1 = (byte) (((byte) S1(102)) & 252);
        if (i2 == CHANNEL.IN1.f15861a) {
            i3 = bS1 | 3;
        } else if (i2 == CHANNEL.IN2.f15861a) {
            i3 = bS1 | 1;
        } else if (i2 == CHANNEL.IN3.f15861a) {
            i3 = bS1 | 2;
        } else {
            int i4 = CHANNEL.IN5.f15861a;
            i3 = bS1 | 3;
        }
        f2(102, (byte) i3);
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
        int i3 = 0;
        if (i2 == 3) {
            this.f15080t.v(AudioDevice.STORE.SURRLEVEL.ordinal());
            this.f15080t.v(AudioDevice.STORE.SURR_FIELD.ordinal());
            A2(0);
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
            int[] iArr = this.S5;
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
            H0(store, this.S5);
            this.L5 = false;
            s2(true);
            if (!this.L5) {
                int[] iArr2 = this.t5;
                int[] iArr3 = this.S5;
                X1(0, 0.0d, iArr2[iArr3[0]], iArr2[iArr3[1]], iArr2[iArr3[2]], iArr3[3] / 10.0f, this.s5[iArr3[4]]);
            }
            int i4 = !this.L5 ? 1 : 0;
            int[] iArr4 = this.t5;
            int[] iArr5 = this.S5;
            X1(i4, 0.0d, iArr4[iArr5[i3]], iArr4[iArr5[1]], iArr4[iArr5[2]], iArr5[3] / 10.0f, this.s5[iArr5[4]]);
            s2(i3);
            boolean z2 = this.L5;
            G0(AudioDevice.STORE.SURRON, z2 ? 1 : 0);
            y0.h.s0(32, z2 ? 1 : 0);
            return;
        }
        if (i2 == 11) {
            l2(1);
            int[] iArr6 = this.s6;
            int[] iArr7 = this.o6;
            System.arraycopy(iArr6, 0, iArr7, 0, iArr7.length);
            int[] iArr8 = this.s6;
            int[] iArr9 = this.p6;
            System.arraycopy(iArr8, 4, iArr9, 0, iArr9.length);
            int[] iArr10 = this.s6;
            int[] iArr11 = this.q6;
            System.arraycopy(iArr10, 8, iArr11, 0, iArr11.length);
            int[] iArr12 = this.s6;
            int[] iArr13 = this.r6;
            System.arraycopy(iArr12, 12, iArr13, 0, iArr13.length);
            while (true) {
                int[] iArr14 = this.s6;
                if (i3 >= iArr14.length) {
                    H0(AudioDevice.STORE.FILTER_CEN, this.o6);
                    H0(AudioDevice.STORE.FILTER_FRT, this.p6);
                    H0(AudioDevice.STORE.FILTER_REAR, this.q6);
                    H0(AudioDevice.STORE.FILTER_SUB, this.r6);
                    return;
                }
                m2(i3, iArr14[i3]);
                i3++;
            }
        } else if (i2 == 8) {
            this.f15080t.v(AudioDevice.STORE.CSAUTO_SRS.ordinal());
            this.f15080t.v(AudioDevice.STORE.CSAUTO_FOC.ordinal());
            this.f15080t.v(AudioDevice.STORE.CSAUTO_TRUBASS.ordinal());
            this.f15080t.v(AudioDevice.STORE.CSAUTO_OTHERS.ordinal());
            r2(true);
            int i5 = SystemProperties.getBoolean("sys.lsec.dts_default_close", false) ? 0 : this.z6[14];
            int i6 = SystemProperties.getBoolean("sys.lsec.phantom_default_close", false) ? 0 : this.z6[17];
            int i7 = 0;
            while (true) {
                int[] iArr15 = this.z6;
                if (i7 >= iArr15.length) {
                    r2(false);
                    return;
                }
                if (i7 == 14) {
                    E1(i7, i5);
                } else if (i7 == 17) {
                    E1(i7, i6);
                } else {
                    E1(i7, iArr15[i7]);
                }
                i7++;
            }
        } else {
            if (i2 != 9) {
                return;
            }
            this.f15080t.v(AudioDevice.STORE.DLY_MIXER_LVL.ordinal());
            this.f15080t.v(AudioDevice.STORE.DLY_MIXER_PHASE.ordinal());
            this.f15080t.v(AudioDevice.STORE.DLY_MIXER_TAP.ordinal());
            k1(0);
            int i8 = 0;
            int i9 = 0;
            while (true) {
                int[] iArr16 = this.d6;
                if (i8 >= iArr16.length) {
                    break;
                }
                iArr16[i8] = 10;
                y0.h.s0(69, i9, iArr16[i8]);
                i9++;
                i8++;
            }
            int i10 = 0;
            while (true) {
                int[] iArr17 = this.e6;
                if (i10 >= iArr17.length) {
                    break;
                }
                if (i10 == 0) {
                    iArr17[i10] = 1;
                } else {
                    iArr17[i10] = 0;
                }
                y0.h.s0(69, i9, iArr17[i10]);
                i9++;
                i10++;
            }
            int i11 = 0;
            while (true) {
                int[] iArr18 = this.f6;
                if (i11 >= iArr18.length) {
                    return;
                }
                iArr18[i11] = 0;
                y0.h.s0(69, i9, iArr18[i11]);
                i9++;
                i11++;
            }
        }
    }

    public void G1(int i2) {
        int i3 = u0.b.D;
        if (j0(i3) == 1) {
            N1(1, this.r5[i2] - 10.0d);
            return;
        }
        if (i3 == 1) {
            N1(0, this.r5[i2] - 4.5d);
        } else if (i3 == 2 || i3 == 3) {
            N1(1, this.r5[i2] - 6.0d);
        } else {
            N1(0, this.r5[i2] - 7.5d);
        }
    }

    public void H1(int i2, int i3, int i4, double d2, double d3) {
        double d4;
        f fVar = new f();
        synchronized (this) {
            double dN2 = (this.D6[0] == 1 ? n2(d3) : d3) * 1.5d;
            if (this.H6 && this.D6[0] == 0) {
                if (dN2 <= 0.0d) {
                    d4 = this.k5[i2];
                } else if (dN2 <= 1.5d) {
                    d4 = this.k5[i2] / 2.0d;
                }
                dN2 += d4;
            }
            double dMax = Math.max(-15.0d, Math.min(dN2, 15.0d));
            int i5 = dMax == 0.0d ? 21 : 2;
            if (i3 == 1) {
                d2(0, 137, this.l5[i2], fVar.a(1, i5, i4, d2, dMax, 1));
            } else {
                d2(0, 132, this.l5[i2], fVar.a(0, i5, i4, d2, dMax, 1));
            }
        }
    }

    public void I1(boolean z2) {
        i iVar = new i();
        synchronized (this) {
            try {
                if (z2) {
                    d2(0, 128, 6, new int[]{iVar.a(1)});
                } else {
                    d2(0, 128, 6, new int[]{iVar.a(0)});
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void J1() {
        T1(0, 0, 0, 0);
        a.i.a0(10L);
        M1();
        a.i.a0(10L);
        T1(1, 0, 0, 0);
        a.i.a0(10L);
        synchronized (this) {
            K1();
            L1();
        }
        a.i.a0(10L);
        T1(1, 1, 1, 1);
        a.i.a0(100L);
    }

    public void K1() {
        this.b5 = s0.A(App.c(), R.raw.akm7738_pram_table1_qualcomm, 16);
        this.c5 = s0.A(App.c(), R.raw.akm7738_cram_table1_qualcomm, 16);
        this.E5.d(F7, new int[]{184, 0, 0}, this.b5);
        this.E5.d(F7, new int[]{180, 0, 0}, this.c5);
        this.E5.d(F7, new int[]{178, 0, 0}, this.e5);
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
        if (i6 < this.p5.length) {
            i2(i2, iArr[i4], iArr[i5], i6);
        }
        super.L(i2, i3);
    }

    public void L1() {
        this.b5 = s0.A(App.c(), R.raw.akm7738_pram_table2_qualcomm, 16);
        this.c5 = s0.A(App.c(), R.raw.akm7738_cram_table2_qualcomm, 16);
        this.E5.d(F7, new int[]{185, 0, 0}, this.b5);
        this.E5.d(F7, new int[]{181, 0, 0}, this.c5);
        this.E5.d(F7, new int[]{179, 0, 0}, this.d5);
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
        i2(i2, iArr[i4], iArr[i4 + 2], iArr[i5]);
        super.M(i2, i3);
    }

    public void M1() {
        int i2;
        int i3 = 0;
        while (true) {
            int[] iArr = this.a5;
            if (i3 >= iArr.length) {
                return;
            }
            int i4 = iArr[i3];
            if (i4 != 1) {
                i2 = i4 != 133 ? iArr[i3 + 1] : iArr[i3 + 1] & (-32);
            } else {
                i2 = iArr[i3 + 1] & (-129);
            }
            f2(iArr[i3], i2);
            i3 += 2;
        }
    }

    @Override // module.sound.AudioDevice
    public void N0() {
        g gVar = new g();
        this.f15045b0 = Math.max(0, Math.min(this.f15045b0, 10));
        Log.e("alex", "beepVolume: " + this.f15045b0);
        synchronized (this) {
            d2(0, 128, MediaProperties.HEIGHT_288, new int[]{gVar.a(this.P6[this.f15045b0], 0)});
            d2(0, 128, 291, new int[]{gVar.a(this.P6[this.f15045b0], 0)});
        }
    }

    public void N1(int i2, double d2) {
        e eVar = new e();
        synchronized (this) {
            try {
                if (i2 == 0) {
                    int i3 = (int) (48.0d - (d2 * 2.0d));
                    f2(97, i3);
                    f2(98, i3);
                } else {
                    d2(0, 128, 0, new int[]{eVar.a(d2)});
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
        if (i6 < this.p5.length) {
            i2(i2, iArr[i4], iArr[i5], i6);
        }
        super.O(i2, i3);
    }

    public void O1(int i2, double d2, int i3) {
        new i();
        e eVar = new e();
        g gVar = new g();
        synchronized (this) {
            d2(0, 128, 222, new int[]{eVar.a(d2)});
            if (d2 <= -145.0d) {
                d2(0, 128, 290, new int[]{gVar.a(-145.0d, 0)});
                d2(0, 128, 293, new int[]{gVar.a(-145.0d, 0)});
                d2(0, 128, 228, new int[]{gVar.a(-145.0d, 0)});
                d2(0, 128, 230, new int[]{gVar.a(-145.0d, 0)});
            } else {
                d2(0, 128, 290, new int[]{gVar.a(0.0d, 0)});
                d2(0, 128, 293, new int[]{gVar.a(0.0d, 0)});
                d2(0, 128, 228, new int[]{gVar.a(0.0d, 0)});
                d2(0, 128, 230, new int[]{gVar.a(0.0d, 0)});
            }
        }
    }

    public void P1(int i2, int i3) {
        e eVar = new e();
        if (i2 <= 1) {
            f2(i2 + 106, i3);
            return;
        }
        if (i2 <= 3) {
            f2((i2 + 104) - 2, i3);
        } else if (i2 != 4 && i2 == 5) {
            synchronized (this) {
                d2(1, 128, SpellChecker.WORD_ITERATOR_INTERVAL, new int[]{eVar.a(this.o5[i3])});
            }
        }
    }

    public int[] Q1(int i2, int i3, int i4) {
        int[] iArr = new int[i4];
        return this.E5.e(i4, F7, false, i2, s0.c(i3, 1), s0.c(i3, 0));
    }

    @Override // module.sound.AudioDevice
    public void R0(boolean z2) {
        super.R0(z2);
        if (z2) {
            u0.b.V3 = z2;
        }
        if (z2 || !this.G6) {
            return;
        }
        this.G6 = false;
        synchronized (this) {
            f2(110, 0);
            P1(0, this.n5[this.M5[0]]);
            P1(1, this.n5[this.M5[1]]);
            P1(2, this.n5[this.M5[2]]);
            P1(3, this.n5[this.M5[3]]);
            o(y0.f.V0);
        }
        y0.h.X(16, false);
        this.W5 = 0;
    }

    public synchronized int[] R1(int i2, int i3, int i4, int i5) {
        int[] iArr;
        int i6 = i5 * 3;
        int[] iArrE = new int[i6];
        iArr = new int[i5];
        if (i2 != 0) {
            iArrE = this.E5.e(i6, F7, false, i3, s0.c(i4, 1), s0.c(i4, 0));
        }
        for (int i7 = 0; i7 < i5; i7++) {
            int i8 = i7 * 3;
            iArr[i7] = ((iArrE[i8 + 0] << 16) & Spanned.SPAN_PRIORITY) + ((iArrE[i8 + 1] << 8) & 65280) + (iArrE[i8 + 2] & 255);
        }
        return iArr;
    }

    public int S1(int i2) {
        return Q1(64, i2, 1)[0] & 255;
    }

    public void T1(int i2, int i3, int i4, int i5) {
        byte bS1 = (byte) S1(1);
        byte bS2 = (byte) S1(133);
        f2(1, (byte) (i2 != 0 ? bS1 | (-128) : bS1 & 127));
        byte b2 = (byte) (i3 != 0 ? bS2 | 16 : bS2 & (-17));
        byte b3 = (byte) (i4 != 0 ? b2 | 14 : b2 & (-15));
        f2(133, (byte) (i5 != 0 ? b3 | 1 : b3 & (-2)));
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
            r1(bVar, i2, 69632, this.M5[0]);
            r1(bVar, i2, 73728, this.M5[1]);
            r1(bVar, i2, 135168, this.M5[2]);
            r1(bVar, i2, 139264, this.M5[3]);
            r1(bVar, i2, 65536, this.M5[4]);
        } else if (i2 == 90) {
            r1(bVar, i2, this.O6);
        } else if (i2 == 26) {
            r1(bVar, i2, this.f15092z);
        } else if (i2 == 27) {
            r1(bVar, i2, 0, this.H5);
            r1(bVar, i2, 256, this.I5);
        } else if (i2 == 55) {
            r1(bVar, i2, this.K5 ? 1 : 0);
        } else if (i2 != 56) {
            switch (i2) {
                case 29:
                    r1(bVar, i2, 65536, this.Q5[1]);
                    r1(bVar, i2, 131072, this.R5[1]);
                    break;
                case 30:
                    r1(bVar, i2, 65536, this.Q5[0]);
                    r1(bVar, i2, 131072, this.R5[0]);
                    break;
                case 31:
                    r1(bVar, i2, 65552, this.O5[0]);
                    r1(bVar, i2, 65568, this.O5[1]);
                    r1(bVar, i2, WifiStateMachine.CMD_STATIC_IP_FAILURE, this.O5[2]);
                    r1(bVar, i2, 131104, this.O5[3]);
                    break;
                case 32:
                    r1(bVar, i2, this.L5 ? 1 : 0);
                    break;
                case 33:
                    r1(bVar, i2, this.Q6);
                    break;
                case 34:
                    r1(bVar, i2, 69632, this.P5[0]);
                    r1(bVar, i2, 73728, this.P5[1]);
                    r1(bVar, i2, 135168, this.P5[2]);
                    r1(bVar, i2, 139264, this.P5[3]);
                    r1(bVar, i2, 65536, this.P5[4]);
                    r1(bVar, i2, 131072, this.P5[5]);
                    break;
                default:
                    switch (i2) {
                        case 61:
                            r1(bVar, i2, this.F5);
                            break;
                        case 62:
                            r1(bVar, i2, this.N5);
                            break;
                        case 63:
                            int[] iArr4 = this.S5;
                            if (iArr4 != null && iArr4.length > 0) {
                                int i6 = 0;
                                while (true) {
                                    int[] iArr5 = this.S5;
                                    if (i6 < iArr5.length) {
                                        r1(bVar, i2, i6, iArr5[i6]);
                                        i6++;
                                    }
                                }
                            }
                            break;
                        default:
                            switch (i2) {
                                case 68:
                                    int[] iArr6 = new int[21];
                                    int[] iArr7 = this.A6;
                                    System.arraycopy(iArr7, 0, iArr6, 0, iArr7.length);
                                    int[] iArr8 = this.B6;
                                    System.arraycopy(iArr8, 0, iArr6, 2, iArr8.length);
                                    int[] iArr9 = this.C6;
                                    System.arraycopy(iArr9, 0, iArr6, 8, iArr9.length);
                                    int[] iArr10 = this.D6;
                                    System.arraycopy(iArr10, 0, iArr6, 14, iArr10.length);
                                    for (int i7 = 0; i7 < 21; i7++) {
                                        r1(bVar, i2, i7, iArr6[i7]);
                                    }
                                    break;
                                case 69:
                                    int i8 = 0;
                                    int i9 = 0;
                                    while (true) {
                                        int[] iArr11 = this.d6;
                                        if (i8 >= iArr11.length) {
                                            int i10 = 0;
                                            while (true) {
                                                int[] iArr12 = this.e6;
                                                if (i10 >= iArr12.length) {
                                                    int i11 = 0;
                                                    while (true) {
                                                        int[] iArr13 = this.f6;
                                                        if (i11 < iArr13.length) {
                                                            r1(bVar, i2, i9, iArr13[i11]);
                                                            i9++;
                                                            i11++;
                                                        }
                                                    }
                                                } else {
                                                    r1(bVar, i2, i9, iArr12[i10]);
                                                    i9++;
                                                    i10++;
                                                }
                                            }
                                        } else {
                                            r1(bVar, i2, i9, iArr11[i8]);
                                            i9++;
                                            i8++;
                                        }
                                        break;
                                    }
                                    break;
                                case 70:
                                    int[] iArr14 = this.T5;
                                    r1(bVar, i2, iArr14[0], iArr14[1]);
                                    break;
                                default:
                                    switch (i2) {
                                        case 83:
                                            r1(bVar, i2, this.l6);
                                            break;
                                        case 84:
                                            int i12 = 0;
                                            while (true) {
                                                int[] iArr15 = this.o6;
                                                if (i12 >= iArr15.length) {
                                                    int i13 = 0;
                                                    while (true) {
                                                        int[] iArr16 = this.o6;
                                                        if (i13 >= iArr16.length) {
                                                            int i14 = 0;
                                                            while (true) {
                                                                int[] iArr17 = this.o6;
                                                                if (i14 >= iArr17.length) {
                                                                    int i15 = 0;
                                                                    while (true) {
                                                                        int[] iArr18 = this.o6;
                                                                        if (i15 < iArr18.length) {
                                                                            r1(bVar, i2, (iArr18.length * 3) + i15, this.r6[i15]);
                                                                            i15++;
                                                                        }
                                                                    }
                                                                } else {
                                                                    r1(bVar, i2, (iArr17.length * 2) + i14, this.q6[i14]);
                                                                    i14++;
                                                                }
                                                            }
                                                        } else {
                                                            r1(bVar, i2, iArr16.length + i13, this.p6[i13]);
                                                            i13++;
                                                        }
                                                    }
                                                } else {
                                                    r1(bVar, i2, i12, iArr15[i12]);
                                                    i12++;
                                                }
                                                break;
                                            }
                                            break;
                                        case 85:
                                            r1(bVar, i2, this.N6 ? 1 : 0);
                                            break;
                                        default:
                                            z2 = false;
                                            break;
                                    }
                                    break;
                            }
                            break;
                    }
                    break;
            }
        } else {
            r1(bVar, i2, 0, this.E6);
            r1(bVar, i2, 16, this.F6);
        }
        return z2 ? z2 : super.U(i2, bVar);
    }

    public void U1(int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        new i();
        j jVar = new j();
        int[] iArr = this.d6;
        int length = i2 % iArr.length;
        if (i2 < iArr.length) {
            if (iArr[length] != i3) {
                int iMax = Math.max(0, Math.min(i3, 10));
                this.d6[length] = iMax;
                y0.h.s0(69, i2, iMax);
                H0(AudioDevice.STORE.DLY_MIXER_LVL, this.d6);
            }
        } else if (i2 < iArr.length * 2) {
            int[] iArr2 = this.e6;
            if (iArr2[length] != i3) {
                iArr2[length] = i3;
                y0.h.s0(69, i2, i3);
                H0(AudioDevice.STORE.DLY_MIXER_PHASE, this.e6);
            }
        } else if (i2 < iArr.length * 3) {
            int[] iArr3 = this.f6;
            if (iArr3[length] != i3) {
                iArr3[length] = i3;
                y0.h.s0(69, i2, i3);
                H0(AudioDevice.STORE.DLY_MIXER_TAP, this.f6);
            }
        }
        synchronized (this) {
            int[] iArr4 = this.d6;
            if (i2 < iArr4.length * 2) {
                if (length == 0) {
                    i9 = this.Z5[iArr4[length]];
                    i8 = 19;
                    i7 = 13;
                } else {
                    i7 = (length + 13) - 1;
                    i8 = (length + 19) - 1;
                    i9 = this.a6[iArr4[length]];
                }
                if (i2 == iArr4.length) {
                    s2(true);
                }
                double d2 = i9;
                d2(0, 128, i7, new int[]{jVar.a(d2, this.e6[length])});
                d2(0, 128, i8, new int[]{jVar.a(d2, this.e6[length])});
                if (i2 == this.d6.length) {
                    s2(false);
                }
            } else if (i2 < iArr4.length * 3) {
                if (length == 0) {
                    i5 = 8;
                    i6 = this.b6[this.f6[0]];
                    i4 = 1;
                } else {
                    i4 = (length + 1) - 1;
                    i5 = (length + 8) - 1;
                    i6 = this.f6[length] + this.c6[length];
                }
                e2(0, 144, i4, new int[]{499 - i6});
                e2(0, 144, i5, new int[]{999 - i6});
            }
        }
    }

    public void V1(int i2, int i3, int i4, int i5, int i6) {
        new i();
        j jVar = new j();
        if (i2 >= this.d6.length) {
            return;
        }
        synchronized (this) {
            int i7 = i2 + 13;
            int i8 = i2 + 19;
            if (i2 != 0) {
                i7--;
                i8--;
            }
            double d2 = i4;
            d2(0, 128, i7, new int[]{jVar.a(d2, i3)});
            d2(0, 128, i8, new int[]{jVar.a(d2, i3)});
            int i9 = i2 + 1;
            int i10 = i2 + 8;
            if (i2 != 0) {
                i9--;
                i10--;
            }
            e2(0, 144, i9, new int[]{499 - i5});
            e2(0, 144, i10, new int[]{999 - i5});
        }
    }

    @Override // module.sound.AudioDevice
    public void W0() {
        super.W0();
        this.I6 = false;
        this.J6 = true;
        ToolsJni.cmd_251_Normal_Io_Set(0, 0);
        a.i.a0(140L);
        ToolsJni.cmd_251_Normal_Io_Set(0, 1);
        a.i.a0(20L);
        J1();
        this.I6 = true;
        w0(this.f15062k);
        j2(this.f15074q);
        l(this.f15052f ? 1 : 0);
        j(null);
        a(u0.b.D);
        A1(y0.f.C0, true);
        a1(65536, this.M5[4]);
        o(this.f15092z);
        e1(256, this.I5);
        e1(0, this.H5);
        y2(69632, this.P5[0]);
        y2(73728, this.P5[1]);
        y2(135168, this.P5[2]);
        y2(139264, this.P5[3]);
        int[] iArr = this.Q5;
        B0(65536, iArr[0], iArr[1]);
        int[] iArr2 = this.R5;
        B0(131072, iArr2[0], iArr2[1]);
        l2(1);
        int i2 = 0;
        while (true) {
            int[] iArr3 = this.o6;
            if (i2 >= iArr3.length) {
                break;
            }
            m2(i2, iArr3[i2]);
            i2++;
        }
        int i3 = 0;
        while (true) {
            int[] iArr4 = this.o6;
            if (i3 >= iArr4.length) {
                break;
            }
            m2(iArr4.length + i3, this.p6[i3]);
            i3++;
        }
        int i4 = 0;
        while (true) {
            int[] iArr5 = this.o6;
            if (i4 >= iArr5.length) {
                break;
            }
            m2((iArr5.length * 2) + i4, this.q6[i4]);
            i4++;
        }
        int i5 = 0;
        while (true) {
            int[] iArr6 = this.o6;
            if (i5 >= iArr6.length) {
                break;
            }
            m2((iArr6.length * 3) + i5, this.r6[i5]);
            i5++;
        }
        k1(this.Q6);
        E1(0, this.A6[0]);
        E1(1, this.A6[1]);
        E1(2, this.B6[0]);
        E1(5, 1);
        E1(3, this.B6[1]);
        E1(6, 1);
        E1(4, this.B6[2]);
        E1(7, 1);
        E1(18, this.D6[4]);
        E1(19, this.D6[5]);
        E1(20, this.D6[6]);
        E1(8, this.C6[0]);
        E1(9, this.C6[1]);
        E1(10, this.C6[2]);
        E1(11, 1);
        E1(12, 1);
        E1(13, 1);
        E1(17, this.D6[3]);
        E1(16, this.D6[2]);
        E1(14, this.D6[0]);
        E1(15, this.D6[1]);
        t2();
        e eVar = new e();
        synchronized (this) {
            if (SystemProperties.getBoolean("sys.lsec.dmicMono", false)) {
                f2(48, 2);
            }
            d2(1, 128, 396, new int[]{eVar.a(0.0d)});
        }
        N0();
        this.J6 = false;
        g gVar = new g();
        synchronized (this) {
            d2(0, 128, 229, new int[]{gVar.a(0.0d, 0)});
            d2(0, 128, 231, new int[]{gVar.a(0.0d, 0)});
            d2(0, 128, 216, new int[]{eVar.a(0.0d)});
        }
    }

    public int W1(int i2) {
        int i3;
        h hVar = new h();
        synchronized (this) {
            d2(0, 128, 359, new int[]{((i2 + 356) << 8) & 16776960});
        }
        a.i.a0(1L);
        synchronized (this) {
            i3 = R1(1, 118, 0, 1)[0];
        }
        return hVar.a(i3);
    }

    public void X1(int i2, double d2, double d3, double d4, double d5, double d6, int i3) {
    }

    public void Y1(int i2) {
        new i();
        synchronized (this) {
        }
    }

    public void Z1(int i2, int i3) {
        int i4 = (i3 * 768) / 100;
        new d();
        synchronized (this) {
            try {
                if (i2 == 0) {
                    e2(1, 144, 7, new int[]{4607 - i4});
                } else if (i2 == 1) {
                    e2(1, 144, 5, new int[]{3455 - i4});
                } else if (i2 == 2) {
                    e2(1, 144, 3, new int[]{2303 - i4});
                } else if (i2 == 3) {
                    e2(1, 144, 1, new int[]{1151 - i4});
                } else if (i2 == 4) {
                    e2(1, 144, 11, new int[]{6911 - i4});
                } else if (i2 == 5) {
                    e2(1, 144, 9, new int[]{5759 - i4});
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // y0.e
    public void a(int i2) {
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
            i4 = CHANNEL.IN1.f15861a;
        }
        I1(i4 == CHANNEL.IN1.f15861a);
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
        if (k2(i4, i5)) {
            super.a1(i2, i3);
        }
    }

    public void a2(int i2, int i3, int i4) {
        i iVar = new i();
        s2(true);
        synchronized (this) {
            try {
                if (i4 != 0) {
                    d2(i2, 128, i3, new int[]{iVar.a(0)});
                } else {
                    d2(i2, 128, i3, new int[]{iVar.a(1)});
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        s2(false);
    }

    @Override // module.sound.AudioDevice
    public void b1(boolean z2) {
        if (this.K5 != z2) {
            return;
        }
        boolean z3 = !z2;
        this.K5 = z3;
        if (z3) {
            j(null);
        }
        super.b1(z2);
    }

    public void b2(double d2) {
        e eVar = new e();
        synchronized (this) {
            d2(0, 128, 7, new int[]{eVar.a(d2)});
        }
    }

    @Override // module.sound.AudioDevice
    public int[] c1() {
        if (!this.f15050e) {
            return null;
        }
        int[] iArr = new int[3];
        boolean z2 = false;
        for (int i2 = 0; i2 < 3; i2++) {
            iArr[i2] = W1(i2);
            z2 = z2 || iArr[i2] > -140;
        }
        boolean z3 = z2 || e0();
        if (this.J) {
            if (z3) {
                if (this.G6) {
                    this.G6 = false;
                    synchronized (this) {
                        f2(110, 0);
                        P1(0, this.n5[this.M5[0]]);
                        P1(1, this.n5[this.M5[1]]);
                        P1(2, this.n5[this.M5[2]]);
                        P1(3, this.n5[this.M5[3]]);
                        o(y0.f.V0);
                    }
                    y0.h.X(16, false);
                }
                this.W5 = 0;
            } else {
                int i3 = this.W5;
                if (i3 < 7) {
                    this.W5 = i3 + 1;
                }
                if (this.W5 == 6) {
                    this.G6 = true;
                    synchronized (this) {
                        int[] iArr2 = this.n5;
                        P1(0, iArr2[iArr2.length - 1]);
                        int[] iArr3 = this.n5;
                        P1(1, iArr3[iArr3.length - 1]);
                        int[] iArr4 = this.n5;
                        P1(2, iArr4[iArr4.length - 1]);
                        int[] iArr5 = this.n5;
                        P1(3, iArr5[iArr5.length - 1]);
                        P1(5, 0);
                        f2(110, 96);
                    }
                    y0.h.X(16, true);
                }
            }
        }
        int[] iArr6 = {0, 0, 0, 0, 0, 0, 0, 0, 0};
        for (int i4 = 0; i4 < 3; i4++) {
            iArr6[i4] = iArr[i4] + 145;
            iArr6[i4] = (iArr6[i4] * 255) / 145;
            iArr6[i4] = o0.a(iArr6[i4], 0, 255);
        }
        return iArr6;
    }

    public int c2(int i2, int i3, int[] iArr) {
        return this.E5.d(F7, new int[]{i2, s0.c(i3, 1), s0.c(i3, 0)}, iArr);
    }

    public synchronized int d2(int i2, int i3, int i4, int[] iArr) {
        if (!this.I6) {
            return 0;
        }
        int[] iArr2 = new int[iArr.length * 3];
        for (int i5 = 0; i5 < iArr.length; i5++) {
            int i6 = i5 * 3;
            iArr2[i6 + 0] = (iArr[i5] >> 16) & 255;
            iArr2[i6 + 1] = (iArr[i5] >> 8) & 255;
            iArr2[i6 + 2] = iArr[i5] & 255;
        }
        this.E5.d(F7, new int[]{i3, (i4 >> 8) & 255, i4 & 255}, iArr2);
        return i2 == 0 ? this.E5.d(F7, new int[]{164}, 0, 0) : this.E5.d(F7, new int[]{165}, 0, 0);
    }

    public synchronized int e2(int i2, int i3, int i4, int[] iArr) {
        if (!this.I6) {
            return 0;
        }
        int[] iArr2 = new int[iArr.length * 3];
        for (int i5 = 0; i5 < iArr.length; i5++) {
            int i6 = i5 * 3;
            iArr2[i6 + 0] = (iArr[i5] >> 16) & 255;
            iArr2[i6 + 1] = (iArr[i5] >> 8) & 255;
            iArr2[i6 + 2] = iArr[i5] & 255;
        }
        this.E5.d(F7, new int[]{i3, (i4 >> 8) & 255, i4 & 255}, iArr2);
        return i2 == 0 ? this.E5.d(F7, new int[]{162}, 0, 0) : this.E5.d(F7, new int[]{163}, 0, 0);
    }

    @Override // module.sound.AudioDevice
    public void f1(boolean z2) {
        super.f1(z2);
    }

    public int f2(int i2, int i3) {
        return c2(192, i2, new int[]{i3});
    }

    public boolean g2(int[] iArr, int i2) {
        int[] iArrP2;
        return i2 == 0 || (iArrP2 = p2(i2)) == null || !Arrays.equals(iArr, iArrP2);
    }

    public final void h2(int i2) {
        i iVar = new i();
        c cVar = new c();
        s2(true);
        synchronized (this) {
            try {
                if (i2 == 0) {
                    d2(1, 128, 206, new int[]{cVar.c(1)});
                } else {
                    d2(1, 128, 206, new int[]{cVar.c(0)});
                }
                if (i2 == 1) {
                    d2(1, 128, 309, new int[]{iVar.a(0)});
                } else {
                    d2(1, 128, 309, new int[]{iVar.a(1)});
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        s2(false);
    }

    @Override // module.sound.AudioDevice
    public void i1(int i2, int i3) {
    }

    public void i2(int i2, int... iArr) {
        if (i2 < 0 || i2 >= this.f15060j || iArr.length != this.f15072p) {
            return;
        }
        H1(i2, 0, iArr[0], iArr[1] / 10.0f, this.p5[Math.min(this.p5.length - 1, iArr[2])]);
    }

    @Override // module.sound.AudioDevice, y0.e
    public void j(int[] iArr) {
        if (iArr != null) {
            Log.e("ak7738", "  field2Ic: " + b0.e(iArr, 0, iArr.length));
        }
        if (iArr != null) {
            Log.e("ak7738", " field2Ic1------ loaded: " + this.f15050e + "  speakerLinkage: " + this.K5);
        }
        if (!this.f15050e || this.G6) {
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
            i3 = CHANNEL.IN1.f15861a;
        }
        return i3 == CHANNEL.IN1.f15861a ? 1 : 0;
    }

    @Override // module.sound.AudioDevice
    public void j1(int i2, int i3) {
        boolean z2 = false;
        if (i3 > 100 || i3 < 0) {
            i3 = 0;
        }
        switch (i2) {
            case 65536:
                int[] iArr = this.P5;
                z2 = i3 != iArr[4];
                iArr[4] = i3;
                break;
            case 69632:
                int[] iArr2 = this.P5;
                boolean z3 = i3 != iArr2[0];
                iArr2[0] = i3;
                z2 = z3;
                break;
            case 73728:
                int[] iArr3 = this.P5;
                z2 = i3 != iArr3[1];
                iArr3[1] = i3;
                break;
            case 131072:
                int[] iArr4 = this.P5;
                z2 = i3 != iArr4[5];
                iArr4[5] = i3;
                break;
            case 135168:
                int[] iArr5 = this.P5;
                z2 = i3 != iArr5[2];
                iArr5[2] = i3;
                break;
            case 139264:
                int[] iArr6 = this.P5;
                z2 = i3 != iArr6[3];
                iArr6[3] = i3;
                break;
            case 1073741824:
                int[] iArr7 = this.P5;
                z2 = (i3 == iArr7[0] && i3 == iArr7[1] && i3 == iArr7[2] && i3 == iArr7[3] && i3 == iArr7[4] && i3 == iArr7[5]) ? false : true;
                j1(69632, i3);
                j1(73728, i3);
                j1(135168, i3);
                j1(139264, i3);
                j1(65536, i3);
                j1(131072, i3);
                break;
        }
        y2(i2, i3);
        if (z2) {
            H0(AudioDevice.STORE.SURRLEVEL, this.P5);
            super.j1(i2, i3);
        }
    }

    public void j2(int[] iArr) {
        int length = iArr.length / this.f15072p;
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = this.f15072p;
            i2(i2, iArr[i2 * i3], iArr[(i2 * i3) + 2], iArr[(i3 * i2) + 1]);
        }
    }

    @Override // module.sound.AudioDevice
    public void k1(int i2) {
        new i();
        int i3 = i2 > 2 ? 0 : i2;
        if (i3 == 0) {
            a2(0, 25, 0);
            a.f.p().t(LogType.AUDIO, String.format(" 关闭混响------", new Object[0]));
        } else if (i3 == 1) {
            a2(0, 25, 1);
            a.f.p().t(LogType.AUDIO, String.format("进入混响  1--- ", new Object[0]));
            V1(0, this.e6[0], this.Z5[this.d6[0]], this.b6[this.f6[0]], 0);
            V1(2, 0, this.Z5[4], 0, 0);
            V1(3, 0, this.Z5[0], 0, 0);
            V1(4, 0, this.Z5[0], 0, 0);
            V1(5, 0, this.Z5[0], 0, 0);
            V1(6, 0, this.Z5[0], 0, 0);
        } else if (i3 == 2) {
            a2(0, 25, 1);
            a.f.p().t(LogType.AUDIO, String.format("进入混响  2--- ", new Object[0]));
            V1(1, this.e6[1], this.a6[this.d6[1]], this.c6[1] + this.f6[1], 0);
            V1(2, this.e6[2], this.a6[this.d6[2]], this.c6[2] + this.f6[2], 0);
            V1(3, this.e6[3], this.a6[this.d6[3]], this.f6[3] + this.c6[3], 0);
            V1(4, this.e6[4], this.a6[this.d6[4]], this.c6[4] + this.f6[4], 0);
            V1(5, this.e6[5], this.a6[this.d6[5]], this.f6[5] + this.c6[5], 0);
            V1(6, this.e6[6], this.a6[this.d6[6]], this.f6[6] + this.c6[6], 0);
        }
        if (this.Q6 == i3) {
            return;
        }
        this.Q6 = i3;
        super.k1(i3);
        int i4 = this.Q6;
        if (i4 == 1 || i4 == 2) {
            w2();
        }
    }

    public boolean k2(int i2, int i3) {
        boolean z2 = false;
        if (i2 >= 0) {
            int[] iArr = this.M5;
            if (i2 < iArr.length) {
                int i4 = 16 - i3;
                if (iArr[i2] != i4) {
                    iArr[i2] = i4;
                    h0 h0Var = this.f15080t;
                    AudioDevice.STORE store = AudioDevice.STORE.SPEAKER_GAINS;
                    h0Var.r(store.ordinal(), this.M5);
                    this.f15080t.e(store.ordinal());
                    z2 = true;
                }
                P1(i2, this.n5[this.M5[i2]]);
            }
        }
        return z2;
    }

    @Override // module.sound.AudioDevice, y0.e
    public void l(int i2) {
        this.f15052f = i2 == 1;
        super.l(i2);
        q2();
    }

    @Override // module.sound.AudioDevice
    public void l1(boolean z2) {
        if (this.L5 == z2) {
            return;
        }
        this.L5 = z2;
        Y1(z2 ? 1 : 0);
        super.l1(z2);
    }

    public void l2(int i2) {
        int iA = o0.a(i2, 0, 3);
        if (this.l6 != iA) {
            this.l6 = iA;
        }
        y0.h.s0(83, this.l6);
    }

    @Override // y0.e
    public void m(int i2, int i3) {
        int i4;
        if (i2 < 0 || i2 >= 48 || (i4 = u0.b.D) < 0 || i4 >= 20 || y0.f.f18090z0[i4] != i2) {
            return;
        }
        G1(o0.a(i3, 0, 10));
    }

    @Override // module.sound.AudioDevice
    public void m0() {
        super.m0();
        this.L5 = Y(AudioDevice.STORE.SURRON, 0) == 1;
        this.P5 = Z(AudioDevice.STORE.SURRLEVEL, this.P5);
        this.Q6 = Y(AudioDevice.STORE.SURRMOED, this.Q6);
        this.H5 = Y(AudioDevice.STORE.SBWLFREQ, this.H5);
        this.I5 = Y(AudioDevice.STORE.SBWHFREQ, this.I5);
        this.F5 = Y(AudioDevice.STORE.SUBWOOF_QVAL, 32);
        this.S5 = Z(AudioDevice.STORE.STEREO_PAEAM, this.S5);
        this.M5 = Z(AudioDevice.STORE.SPEAKER_GAINS, this.M5);
        this.N5 = Z(AudioDevice.STORE.NOISE_GATE, this.N5);
        this.Q5[0] = Y(AudioDevice.STORE.P2BFFREQ, 0);
        this.Q5[1] = Y(AudioDevice.STORE.P2BFGAIN, 0);
        this.R5[0] = Y(AudioDevice.STORE.P2BRFREQ, 0);
        this.R5[1] = Y(AudioDevice.STORE.P2BRGAIN, 0);
        this.O5[0] = Y(AudioDevice.STORE.HPFFA, 20);
        this.O5[1] = Y(AudioDevice.STORE.HPFFB, 200);
        this.O5[2] = Y(AudioDevice.STORE.HPFRA, 20);
        this.O5[3] = Y(AudioDevice.STORE.HPFRB, 200);
        this.T5 = Z(AudioDevice.STORE.SURR_FIELD, this.T5);
        this.A6 = Z(AudioDevice.STORE.CSAUTO_SRS, this.A6);
        this.B6 = Z(AudioDevice.STORE.CSAUTO_FOC, this.B6);
        this.C6 = Z(AudioDevice.STORE.CSAUTO_TRUBASS, this.C6);
        this.D6 = Z(AudioDevice.STORE.CSAUTO_OTHERS, this.D6);
        if (SystemProperties.getBoolean("sys.lsec.dts_default_close", false)) {
            this.D6[0] = 0;
        }
        if (SystemProperties.getBoolean("sys.lsec.phantom_default_close", false)) {
            this.D6[3] = 0;
        }
        this.d6 = Z(AudioDevice.STORE.DLY_MIXER_LVL, this.d6);
        this.e6 = Z(AudioDevice.STORE.DLY_MIXER_PHASE, this.e6);
        this.f6 = Z(AudioDevice.STORE.DLY_MIXER_TAP, this.f6);
        this.o6 = Z(AudioDevice.STORE.FILTER_CEN, this.o6);
        this.p6 = Z(AudioDevice.STORE.FILTER_FRT, this.p6);
        this.q6 = Z(AudioDevice.STORE.FILTER_REAR, this.q6);
        this.r6 = Z(AudioDevice.STORE.FILTER_SUB, this.r6);
        this.N6 = Y(AudioDevice.STORE.OPTICAL_DIRECT, s0.m("sys.lsec.opticalDirectDef", 1)) == 1;
        this.O6 = Y(AudioDevice.STORE.OPTICAL_TYPE, SystemProperties.getInt("sys.lsec.optType", 1));
        this.H6 = SystemProperties.getBoolean("sys.lsec.eqconfig", false);
    }

    /* JADX WARN: Code duplicated, block: B:123:0x01a9  */
    /* JADX WARN: Code duplicated, block: B:125:0x01ad  */
    /* JADX WARN: Code duplicated, block: B:130:0x01ec  */
    /* JADX WARN: Code duplicated, block: B:132:0x01ef  */
    /* JADX WARN: Code duplicated, block: B:133:0x01f7  */
    /* JADX WARN: Code duplicated, block: B:135:0x01fb  */
    /* JADX WARN: Code duplicated, block: B:136:0x0203  */
    /* JADX WARN: Code duplicated, block: B:138:0x0207  */
    /* JADX WARN: Code duplicated, block: B:139:0x020f  */
    /* JADX WARN: Code duplicated, block: B:148:? A[RETURN, SYNTHETIC] */
    public void m2(int i2, int i3) {
        int iA;
        byte b2;
        int i4;
        int i5;
        int i6;
        int i7;
        byte b3;
        int i8;
        int i9;
        int i10;
        int i11;
        f fVar = new f();
        if (i2 < 0 || i2 >= 16) {
            return;
        }
        int i12 = i2 % 2;
        int i13 = i2 % 4;
        int i14 = i2 / 2;
        int i15 = i14 % 2;
        int i16 = (i14 >= 6 || i14 <= 1) ? 1 : 0;
        if (i12 == 0) {
            int i17 = i13 + 1;
            if (i2 < 4) {
                iA = i15 == 0 ? o0.a(i3, 20, 500) : o0.a(i3, 30, 200);
                int[] iArr = this.o6;
                if (iArr[i13] != iA) {
                    iArr[i13] = iA;
                    b2 = 1;
                } else {
                    b2 = -1;
                }
                i4 = (i15 == 0 ? 1 : 100) * iA;
                i5 = i15 == 0 ? this.m6[iArr[i17]] : this.n6[iArr[i17]];
            } else {
                if (i2 >= 8) {
                    if (i2 < 12) {
                        iA = i15 == 0 ? o0.a(i3, 20, 250) : o0.a(i3, 30, 200);
                        int[] iArr2 = this.q6;
                        if (iArr2[i13] != iA) {
                            iArr2[i13] = iA;
                            b2 = 1;
                        } else {
                            b2 = -1;
                        }
                        i4 = (i15 == 0 ? 1 : 100) * iA;
                        i5 = i15 == 0 ? this.m6[iArr2[i17]] : this.n6[iArr2[i17]];
                    } else {
                        int iA2 = i15 == 0 ? o0.a(i3, 20, 200) : o0.a(i3, 20, 250);
                        int[] iArr3 = this.r6;
                        if (iArr3[i13] != iA2) {
                            iArr3[i13] = iA2;
                            b2 = 1;
                        } else {
                            b2 = -1;
                        }
                        i5 = i15 == 0 ? this.m6[iArr3[i17]] : this.n6[iArr3[i17]];
                        i7 = iA2;
                        i6 = i7;
                    }
                    b3 = b2;
                    i8 = i5;
                    i9 = this.g6[i14];
                    synchronized (this) {
                        i10 = 0;
                        for (i11 = 4; i10 < i11; i11 = 4) {
                            int i18 = i10;
                            d2(i16, 132, i9 + (i18 * 5), fVar.d(0, i8, i10, i6, 0.70711d, 10.0d, 1));
                            i10 = i18 + 1;
                        }
                    }
                    y0.h.s0(84, i2, i7);
                    if (b3 > 0) {
                        if (i2 < 4) {
                            H0(AudioDevice.STORE.FILTER_CEN, this.o6);
                            return;
                        }
                        if (i2 < 8) {
                            H0(AudioDevice.STORE.FILTER_FRT, this.p6);
                        } else if (i2 < 12) {
                            H0(AudioDevice.STORE.FILTER_REAR, this.q6);
                        } else {
                            H0(AudioDevice.STORE.FILTER_SUB, this.r6);
                        }
                    }
                }
                iA = i15 == 0 ? o0.a(i3, 20, 250) : o0.a(i3, 30, 200);
                int[] iArr4 = this.p6;
                if (iArr4[i13] != iA) {
                    iArr4[i13] = iA;
                    b2 = 1;
                } else {
                    b2 = -1;
                }
                i4 = (i15 == 0 ? 1 : 100) * iA;
                i5 = i15 == 0 ? this.m6[iArr4[i17]] : this.n6[iArr4[i17]];
            }
        } else {
            iA = o0.a(i3, 0, 5);
            int i19 = i13 - 1;
            if (i2 < 4) {
                int[] iArr5 = this.o6;
                if (iArr5[i13] != iA) {
                    iArr5[i13] = iA;
                    b2 = 1;
                } else {
                    b2 = -1;
                }
                i4 = (i15 == 0 ? 1 : 100) * iArr5[i19];
                i5 = i15 == 0 ? this.m6[iArr5[i13]] : this.n6[iArr5[i13]];
            } else if (i2 < 8) {
                int[] iArr6 = this.p6;
                if (iArr6[i13] != iA) {
                    iArr6[i13] = iA;
                    b2 = 1;
                } else {
                    b2 = -1;
                }
                i4 = (i15 == 0 ? 1 : 100) * iArr6[i19];
                i5 = i15 == 0 ? this.m6[iArr6[i13]] : this.n6[iArr6[i13]];
            } else if (i2 < 12) {
                int[] iArr7 = this.q6;
                if (iArr7[i13] != iA) {
                    iArr7[i13] = iA;
                    b2 = 1;
                } else {
                    b2 = -1;
                }
                i4 = (i15 == 0 ? 1 : 100) * iArr7[i19];
                i5 = i15 == 0 ? this.m6[iArr7[i13]] : this.n6[iArr7[i13]];
            } else {
                int[] iArr8 = this.r6;
                if (iArr8[i13] != iA) {
                    iArr8[i13] = iA;
                    b2 = 1;
                } else {
                    b2 = -1;
                }
                i4 = iArr8[i19];
                i5 = i15 == 0 ? this.m6[iArr8[i13]] : this.n6[iArr8[i13]];
            }
        }
        i7 = iA;
        i6 = i4;
        b3 = b2;
        i8 = i5;
        i9 = this.g6[i14];
        synchronized (this) {
            i10 = 0;
            while (i10 < i11) {
                int i110 = i10;
                d2(i16, 132, i9 + (i110 * 5), fVar.d(0, i8, i10, i6, 0.70711d, 10.0d, 1));
                i10 = i110 + 1;
            }
            y0.h.s0(84, i2, i7);
            if (b3 > 0) {
                if (i2 < 4) {
                    H0(AudioDevice.STORE.FILTER_CEN, this.o6);
                    return;
                }
                if (i2 < 8) {
                    H0(AudioDevice.STORE.FILTER_FRT, this.p6);
                } else if (i2 < 12) {
                    H0(AudioDevice.STORE.FILTER_REAR, this.q6);
                } else {
                    H0(AudioDevice.STORE.FILTER_SUB, this.r6);
                }
            }
        }
    }

    public final double n2(double d2) {
        return Math.max(-10.0d, Math.min(d2 >= 0.0d ? (0.8d - (0.02d * d2)) * d2 : d2 * ((0.02d * d2) + 0.8d), Math.min(10.0d, d2)));
    }

    @Override // module.sound.AudioDevice, y0.e
    public void o(int i2) {
        P1(5, i2);
        super.o(i2);
    }

    public double o2(int i2) {
        return ((double) i2) / 100.0d;
    }

    @Override // module.sound.AudioDevice
    public int p0() {
        return 120;
    }

    public int[] p2(int i2) {
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
    public int q0() {
        return -1090;
    }

    public final void q2() {
        synchronized (this) {
            f fVar = new f();
            d2(0, 132, 206, fVar.a(0, 4, 320, 0.70711d, this.f15052f ? D7[this.f15054g] : 0.0d, 1));
            d2(0, 132, 211, fVar.a(0, 3, 2000, 0.70711d, this.f15052f ? E7[this.f15054g] : 0.0d, 3));
        }
    }

    @Override // module.sound.AudioDevice
    public void r0(int i2) {
        int iMax = Math.max(0, Math.min(i2, this.j5.length - 1));
        this.f15056h = iMax;
        super.r0(iMax);
        O1(1, x1(iMax, this.j5) / 10, 0);
    }

    public void r2(boolean z2) {
        if (this.f15050e) {
            if (z2) {
                s2(true);
                this.J6 = true;
            } else {
                this.J6 = false;
                s2(false);
            }
        }
    }

    public void s2(boolean z2) {
        if (this.f15050e && !this.J6) {
            synchronized (this) {
                e eVar = new e();
                if (z2) {
                    d2(0, 128, 216, new int[]{eVar.a(-145.0d)});
                    a.i.a0(45L);
                } else {
                    a.i.a0(3L);
                    d2(0, 128, 216, new int[]{eVar.a(0.0d)});
                }
            }
        }
    }

    public final void t2() {
        synchronized (this) {
            if (this.N6) {
                f2(65, 14);
            } else {
                f2(65, 17);
            }
        }
    }

    @Override // module.sound.AudioDevice
    public int u1() {
        return super.u1();
    }

    public final void u2(int i2) {
        this.N6 = i2 == 1;
        t2();
        G0(AudioDevice.STORE.OPTICAL_DIRECT, i2);
        y0.h.s0(85, i2);
    }

    @Override // module.sound.AudioDevice
    public void v0(boolean z2) {
        super.v0(z2);
        if (this.f15050e) {
            if (z2) {
                int[] iArr = this.n5;
                P1(0, iArr[iArr.length - 1]);
                int[] iArr2 = this.n5;
                P1(1, iArr2[iArr2.length - 1]);
                int[] iArr3 = this.n5;
                P1(2, iArr3[iArr3.length - 1]);
                int[] iArr4 = this.n5;
                P1(3, iArr4[iArr4.length - 1]);
                P1(5, 0);
            } else if (!this.G6) {
                j(null);
                o(y0.f.V0);
            }
            if (!z2) {
                t2();
            } else {
                synchronized (this) {
                    f2(65, 0);
                }
            }
        }
    }

    public final void v2(int i2) {
        int iMax = Math.max(0, Math.min(i2, 2));
        this.O6 = iMax;
        AudioDevice.STORE store = AudioDevice.STORE.OPTICAL_TYPE;
        G0(store, iMax);
        this.f15080t.e(store.ordinal());
        y0.h.s0(90, iMax);
    }

    @Override // module.sound.AudioDevice
    public void w0(int i2) {
        int[] iArrP2 = p2(i2);
        if (g2(this.f15074q, i2)) {
            System.arraycopy(iArrP2, 0, this.f15074q, 0, iArrP2.length);
            int i3 = this.f15060j;
            int[] iArr = new int[i3];
            int[] iArr2 = new int[i3];
            int[] iArr3 = new int[i3];
            for (int i4 = 0; i4 < this.f15060j; i4++) {
                int i5 = this.f15072p;
                iArr2[i4] = iArrP2[i4 * i5];
                iArr[i4] = iArrP2[(i4 * i5) + 1];
                iArr3[i4] = iArrP2[(i5 * i4) + 2];
            }
            j2(iArrP2);
            y0.h.H(iArr, iArr2, iArr3, this.f15060j, this);
        }
    }

    public void w2() {
        if (this.Q5[0] != 0) {
            C0(65536, 0);
        }
        if (this.R5[0] != 0) {
            C0(131072, 0);
        }
        if (this.Q5[1] != 0) {
            D0(65536, 0);
        }
        if (this.R5[1] != 0) {
            D0(131072, 0);
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

    public void x2(int i2, int i3) {
        if (i2 >= 0 || i2 < this.S5.length) {
            int iMax = Math.max(0, Math.min(i3, this.t5.length));
            if (i2 == 0 || i2 == 1 || i2 == 2 || i2 == 3 || i2 == 4) {
                int[] iArr = this.S5;
                if (iArr[i2] != iMax) {
                    iArr[i2] = iMax;
                    y0.h.s0(63, i2, iMax);
                    H0(AudioDevice.STORE.STEREO_PAEAM, this.S5);
                }
                int i4 = !this.L5 ? 1 : 0;
                int[] iArr2 = this.t5;
                int[] iArr3 = this.S5;
                X1(i4, 0.0d, iArr2[iArr3[0]], iArr2[iArr3[1]], iArr2[iArr3[2]], iArr3[3] / 10.0f, this.s5[iArr3[4]]);
            }
        }
    }

    @Override // module.sound.AudioDevice
    public void y() {
        if (this.f15054g == 0 || y0.f.f18055i == 1) {
            return;
        }
        synchronized (this) {
            d2(0, 128, 233, new int[]{256});
        }
    }

    public void y2(int i2, int i3) {
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
            Z1(i4, i3);
        }
    }

    public void z2(int i2, int i3) {
        int i4 = i2;
        if (i4 > 100) {
            i4 = 50;
        }
        int i5 = i3 <= 100 ? i3 : 50;
        int[] iArr = this.T5;
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
        s2(true);
        j1(69632, i14);
        j1(73728, i15);
        j1(135168, i16);
        j1(139264, i17);
        s2(false);
        H0(AudioDevice.STORE.SURR_FIELD, this.T5);
        y0.h.s0(70, i4, i5);
    }
}
