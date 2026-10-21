package module.sound;

import android.bluetooth.BluetoothClass;
import android.content.Context;
import android.media.AudioManager;
import android.media.AudioService;
import android.media.videoeditor.MediaProperties;
import android.net.ConnectivityManager;
import android.net.ProxyProperties;
import android.net.UrlQuerySanitizer;
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
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class C7738NOR7870 extends AudioDevice {
    public static double[] h9 = {0.0d, 10.0d, 10.0d, 10.0d, 10.0d, 10.0d, 10.0d, 9.5d, 9.0d, 8.5d, 8.0d, 7.5d, 7.0d, 6.5d, 6.0d, 5.5d, 5.0d, 4.5d, 4.0d, 3.5d, 3.0d, 2.5d, 2.0d, 1.5d, 1.0d, 0.5d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d};
    public static double[] i9 = {0.0d, 7.0d, 7.0d, 7.0d, 7.0d, 7.0d, 7.0d, 6.8d, 6.5d, 6.2d, 5.9d, 5.6d, 5.2d, 4.8d, 4.4d, 4.0d, 3.6d, 3.2d, 2.8d, 2.4d, 2.0d, 1.6d, 1.2d, 0.8d, 0.5d, 0.3d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d};
    public static int j9 = 28;
    public static double[] k9 = null;
    public final int A1;
    public final int A2;
    public final int A3;
    public final int A4;
    public final int A5;
    public final double A6;
    public final int A7;
    public final int A8;
    public final int B1;
    public final int B2;
    public final int B3;
    public final int B4;
    public final int B5;
    public final double B6;
    public final int B7;
    public final int B8;
    public final int C1;
    public final int C2;
    public final int C3;
    public final int C4;
    public final int C5;
    public final int[] C6;
    public int[] C7;
    public final int C8;
    public final int D1;
    public final int D2;
    public final int D3;
    public final int D4;
    public final int D5;
    public int[] D6;
    public int[] D7;
    public final int D8;
    public final int E1;
    public final int E2;
    public final int E3;
    public final int E4;
    public final int E5;
    public int[] E6;
    public int[] E7;
    public final int E8;
    public final int F1;
    public final int F2;
    public final int F3;
    public final int F4;
    public final int F5;
    public final int[] F6;
    public int[] F7;
    public final int F8;
    public final int G1;
    public final int G2;
    public final int G3;
    public final int G4;
    public final int G5;
    public final int[] G6;
    public int[] G7;
    public final int G8;
    public final int H1;
    public final int H2;
    public final int H3;
    public final int H4;
    public final int H5;
    public int[] H6;
    public int[] H7;
    public final int H8;
    public final boolean I0;
    public final int I1;
    public final int I2;
    public final int I3;
    public final int I4;
    public final int I5;
    public final int I6;
    public int[] I7;
    public final int I8;
    public final String J0;
    public final int J1;
    public final int J2;
    public final int J3;
    public final int J4;
    public final int J5;
    public final int J6;
    public int[] J7;
    public final int J8;
    public final int K0;
    public final int K1;
    public final int K2;
    public final int K3;
    public final int K4;
    public final int K5;
    public int[] K6;
    public final int K7;
    public final int K8;
    public final int L0;
    public final int L1;
    public final int L2;
    public final int L3;
    public final int L4;
    public final int L5;
    public int[] L6;
    public final int L7;
    public final int L8;
    public final int M0;
    public final int M1;
    public final int M2;
    public final int M3;
    public final int M4;
    public final int M5;
    public double[] M6;
    public final int M7;
    public final int M8;
    public final int N0;
    public final int N1;
    public final int N2;
    public final int N3;
    public final int N4;
    public final int N5;
    public int[] N6;
    public final int N7;
    public final int N8;
    public final int O0;
    public final int O1;
    public final int O2;
    public final int O3;
    public final int O4;
    public final int O5;
    public final int O6;
    public int O7;
    public final int O8;
    public final int P0;
    public final int P1;
    public final int P2;
    public final int P3;
    public final int P4;
    public final int P5;
    public int[] P6;
    public int[] P7;
    public final int P8;
    public final int Q0;
    public final int Q1;
    public final int Q2;
    public final int Q3;
    public final int Q4;
    public final int Q5;
    public int[] Q6;
    public int[] Q7;
    public final int Q8;
    public final int R0;
    public final int R1;
    public final int R2;
    public final int R3;
    public final int R4;
    public final int R5;
    public int[] R6;
    public int[] R7;
    public final int R8;
    public final int S0;
    public final int S1;
    public final int S2;
    public final int S3;
    public final int S4;
    public final int S5;
    public final int[] S6;
    public int[] S7;
    public int[] S8;
    public final int T0;
    public final int T1;
    public final int T2;
    public final int T3;
    public final int T4;
    public final int T5;
    public double[] T6;
    public int[] T7;
    public l T8;
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
    public int[] V6;
    public final int[] V7;
    public final int V8;
    public final int W0;
    public final int W1;
    public final int W2;
    public final int W3;
    public final int W4;
    public final int W5;
    public double W6;
    public boolean W7;
    public final int W8;
    public final int X0;
    public final int X1;
    public final int X2;
    public final int X3;
    public final int X4;
    public final int X5;
    public int[] X6;
    public final int X7;
    public final int X8;
    public final int Y0;
    public final int Y1;
    public final int Y2;
    public final int Y3;
    public final int Y4;
    public final int Y5;
    public final int[] Y6;
    public final int Y7;
    public final int Y8;
    public final int Z0;
    public final int Z1;
    public final int Z2;
    public final int Z3;
    public final int Z4;
    public final int Z5;
    public final int[] Z6;
    public final int Z7;
    public final int Z8;

    /* JADX INFO: renamed from: a1, reason: collision with root package name */
    public final int f15692a1;
    public final int a2;
    public final int a3;
    public final int a4;
    public final int a5;
    public final int a6;
    public final int[] a7;
    public final int a8;
    public final int a9;

    /* JADX INFO: renamed from: b1, reason: collision with root package name */
    public final int f15693b1;
    public final int b2;
    public final int b3;
    public final int b4;
    public final int b5;
    public final int b6;
    public final int[] b7;
    public final int b8;
    public final int b9;

    /* JADX INFO: renamed from: c1, reason: collision with root package name */
    public final int f15694c1;
    public final int c2;
    public final int c3;
    public final int c4;
    public final int c5;
    public final int c6;
    public final int[] c7;
    public final int[] c8;
    public final int c9;

    /* JADX INFO: renamed from: d1, reason: collision with root package name */
    public final int f15695d1;
    public final int d2;
    public final int d3;
    public final int d4;
    public final int d5;
    public final int d6;
    public final int[] d7;
    public int[] d8;
    public final int d9;

    /* JADX INFO: renamed from: e1, reason: collision with root package name */
    public final int f15696e1;
    public final int e2;
    public final int e3;
    public final int e4;
    public final int e5;
    public final int e6;
    public final int[] e7;
    public int[] e8;
    public final int e9;

    /* JADX INFO: renamed from: f1, reason: collision with root package name */
    public final int f15697f1;
    public final int f2;
    public final int f3;
    public final int f4;
    public final int f5;
    public final int f6;
    public final int[] f7;
    public int[] f8;
    public final int f9;

    /* JADX INFO: renamed from: g1, reason: collision with root package name */
    public final int f15698g1;
    public final int g2;
    public final int g3;
    public final int g4;
    public final int g5;
    public final int g6;
    public n g7;
    public int[] g8;
    public final int g9;

    /* JADX INFO: renamed from: h1, reason: collision with root package name */
    public final int f15699h1;
    public final int h2;
    public final int h3;
    public final int h4;
    public final int h5;
    public final int h6;
    public int h7;
    public int h8;

    /* JADX INFO: renamed from: i1, reason: collision with root package name */
    public final int f15700i1;
    public final int i2;
    public final int i3;
    public final int i4;
    public final int i5;
    public final int i6;
    public int i7;
    public int i8;

    /* JADX INFO: renamed from: j1, reason: collision with root package name */
    public final int f15701j1;
    public final int j2;
    public final int j3;
    public final int j4;
    public final int j5;
    public final int j6;
    public int j7;
    public boolean j8;

    /* JADX INFO: renamed from: k1, reason: collision with root package name */
    public final int f15702k1;
    public final int k2;
    public final int k3;
    public final int k4;
    public final int k5;
    public final int k6;
    public int k7;
    public boolean k8;

    /* JADX INFO: renamed from: l1, reason: collision with root package name */
    public final int f15703l1;
    public final int l2;
    public final int l3;
    public final int l4;
    public final int l5;
    public final int l6;
    public AudioManager l7;
    public boolean l8;

    /* JADX INFO: renamed from: m1, reason: collision with root package name */
    public final int f15704m1;
    public final int m2;
    public final int m3;
    public final int m4;
    public final int m5;
    public final int m6;
    public boolean m7;
    public boolean m8;

    /* JADX INFO: renamed from: n1, reason: collision with root package name */
    public final int f15705n1;
    public final int n2;
    public final int n3;
    public final int n4;
    public final int n5;
    public final int n6;
    public boolean n7;
    public Runnable n8;

    /* JADX INFO: renamed from: o1, reason: collision with root package name */
    public final int f15706o1;
    public final int o2;
    public final int o3;
    public final int o4;
    public final int o5;
    public final int o6;
    public int[] o7;
    public Handler o8;

    /* JADX INFO: renamed from: p1, reason: collision with root package name */
    public final int f15707p1;
    public final int p2;
    public final int p3;
    public final int p4;
    public final int p5;
    public final int p6;
    public int[] p7;
    public Runnable p8;

    /* JADX INFO: renamed from: q1, reason: collision with root package name */
    public final int f15708q1;
    public final int q2;
    public final int q3;
    public final int q4;
    public final int q5;
    public final int q6;
    public int[] q7;
    public boolean q8;
    public final int r1;
    public final int r2;
    public final int r3;
    public final int r4;
    public final int r5;
    public final int r6;
    public int[] r7;
    public int r8;
    public final int s1;
    public final int s2;
    public final int s3;
    public final int s4;
    public final int s5;
    public final int s6;
    public int[] s7;
    public double[] s8;
    public final int t1;
    public final int t2;
    public final int t3;
    public final int t4;
    public final int t5;
    public final int t6;
    public int[] t7;
    public int[] t8;
    public final int u1;
    public final int u2;
    public final int u3;
    public final int u4;
    public final int u5;
    public final int u6;
    public int[] u7;
    public int u8;
    public final int v1;
    public final int v2;
    public final int v3;
    public final int v4;
    public final int v5;
    public final double v6;
    public int[] v7;
    public final int v8;
    public final int w1;
    public final int w2;
    public final int w3;
    public final int w4;
    public final int w5;
    public final double w6;
    public final int w7;
    public final int w8;
    public final int x1;
    public final int x2;
    public final int x3;
    public final int x4;
    public final int x5;
    public final double x6;
    public final int x7;
    public final int x8;
    public final int y1;
    public final int y2;
    public final int y3;
    public final int y4;
    public final int y5;
    public final int y6;
    public int y7;
    public final int y8;
    public final int z1;
    public final int z2;
    public final int z3;
    public final int z4;
    public final int z5;
    public final int z6;
    public int z7;
    public final int z8;

    public enum CHANNEL {
        IN1(0),
        IN2(1),
        IN3(2),
        IN4(3),
        IN5(4);


        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f15715a;

        CHANNEL(int i2) {
            this.f15715a = i2;
        }
    }

    public class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int[] f15716a = new int[9];

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f15717b;

        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = 0;
            while (true) {
                this.f15717b = i2;
                int i3 = this.f15717b;
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
            C7738NOR7870.this.o8.postDelayed(this, TimedRemoteCaller.DEFAULT_CALL_TIMEOUT_MILLIS);
        }
    }

    public class c {
        public c() {
        }

        public int a(double d2) {
            return C7738NOR7870.this.T8.a(d2, 0);
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
            return C7738NOR7870.this.T8.a(dPow, 2);
        }
    }

    public class f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public double f15723a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public double f15724b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public double f15725c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public double f15726d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public double f15727e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public double f15728f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public double f15729g;

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
                    double d13 = fVar.f15727e;
                    d5 = d13 + 1.0d;
                    double d14 = fVar.f15725c;
                    d6 = ((1.0d - d14) / 2.0d) / d5;
                    d7 = (1.0d - d14) / d5;
                    d8 = (-(1.0d - d13)) / d5;
                    d9 = (d14 * 2.0d) / d5;
                    d10 = 1.0d - d14;
                } else if (i3 == 2) {
                    fVar = this;
                    double d15 = fVar.f15727e;
                    double d16 = fVar.f15728f;
                    double d17 = (d15 / d16) + 1.0d;
                    double d18 = fVar.f15725c;
                    double d19 = (d18 * (-2.0d)) / d17;
                    d9 = (d18 * 2.0d) / d17;
                    d11 = (1.0d - (d15 * d16)) / d17;
                    d7 = d19;
                    d12 = ((d15 * d16) + 1.0d) / d17;
                    d8 = (-(1.0d - (d15 / d16))) / d17;
                } else if (i3 == 3) {
                    fVar = this;
                    double dSqrt = Math.sqrt(fVar.f15728f / d2);
                    fVar.f15729g = dSqrt;
                    double d20 = fVar.f15728f;
                    double d21 = fVar.f15725c;
                    double d22 = fVar.f15724b;
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
                    double dSqrt2 = Math.sqrt(this.f15728f / d2);
                    this.f15729g = dSqrt2;
                    double d28 = this.f15728f;
                    double d29 = this.f15725c;
                    double d30 = this.f15724b;
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
                return i2 == 0 ? new int[]{C7738NOR7870.this.T8.a(d11, i5), C7738NOR7870.this.T8.a(d7, i5), C7738NOR7870.this.T8.a(d8, i5), C7738NOR7870.this.T8.a(d9, i5), C7738NOR7870.this.T8.a(d12, i5)} : new int[]{C7738NOR7870.this.T8.b(d11, i5), C7738NOR7870.this.T8.c(d11, i5), C7738NOR7870.this.T8.b(d7, i5), C7738NOR7870.this.T8.c(d7, i5), C7738NOR7870.this.T8.b(d8, i5), C7738NOR7870.this.T8.c(d8, i5), C7738NOR7870.this.T8.b(d9, i5), C7738NOR7870.this.T8.c(d9, i5), C7738NOR7870.this.T8.b(d12, i5), C7738NOR7870.this.T8.c(d12, i5)};
            }
            fVar = this;
            d4 = 2.0d;
            double d37 = fVar.f15727e;
            d5 = d37 + 1.0d;
            double d38 = fVar.f15725c;
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
            double d4 = (((double) i3) * 6.283185307179586d) / 48000.0d;
            this.f15723a = d4;
            this.f15724b = Math.sin(d4);
            this.f15725c = Math.cos(this.f15723a);
            this.f15727e = this.f15724b / (d2 * 2.0d);
            if (i2 == 2 || i2 == 3 || i2 == 4) {
                this.f15728f = Math.pow(10.0d, d3 / 40.0d);
            } else {
                this.f15728f = Math.sqrt(Math.pow(10.0d, d3 / 20.0d));
            }
        }

        public void c(int i2, int i3, double d2, double d3) {
            double d4 = (((double) i3) * 6.283185307179586d) / 48000.0d;
            this.f15723a = d4;
            this.f15724b = Math.sin(d4);
            this.f15725c = Math.cos(this.f15723a);
            this.f15726d = Math.tan(this.f15723a / 2.0d);
            this.f15727e = this.f15724b / (d2 * 2.0d);
            if (i2 == 2 || i2 == 3 || i2 == 4 || (i2 >= 5 && i2 <= 20)) {
                this.f15728f = Math.pow(10.0d, d3 / 40.0d);
            } else {
                this.f15728f = Math.sqrt(Math.pow(10.0d, d3 / 20.0d));
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
                    double d11 = this.f15725c / (this.f15724b + 1.0d);
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
                    dPow2 = (1.0d - this.f15724b) / this.f15725c;
                    double d12 = (dPow2 + 1.0d) / 2.0d;
                    dPow = d12;
                    d5 = -d12;
                    dPow3 = 0.0d;
                    d6 = 0.0d;
                }
            } else if (i3 == 7) {
                d4 = 1.0d;
                if (i4 == 0) {
                    double d13 = this.f15727e;
                    d7 = d13 + 1.0d;
                    double d14 = this.f15725c;
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
                    double d15 = this.f15727e;
                    d7 = d15 + 1.0d;
                    double d16 = this.f15725c;
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
                    double d18 = this.f15726d;
                    double dPow5 = (dCos * d18) + 1.0d + Math.pow(d18, 2.0d);
                    double dPow6 = Math.pow(this.f15726d, 2.0d) / dPow5;
                    double dCos2 = Math.cos(d17) * 2.0d;
                    double d19 = this.f15726d;
                    dPow3 = (((dCos2 * d19) - 1.0d) - Math.pow(d19, 2.0d)) / dPow5;
                    dPow4 = ((1.0d - Math.pow(this.f15726d, 2.0d)) * 2.0d) / dPow5;
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
                            double d21 = this.f15726d;
                            double dPow7 = (dCos3 * d21) + 1.0d + Math.pow(d21, 2.0d);
                            double dPow8 = Math.pow(this.f15726d, 2.0d) / dPow7;
                            double dCos4 = Math.cos(d20) * 2.0d;
                            double d22 = this.f15726d;
                            dPow3 = (((dCos4 * d22) - 1.0d) - Math.pow(d22, 2.0d)) / dPow7;
                            dPow = dPow8;
                            dPow2 = ((1.0d - Math.pow(this.f15726d, 2.0d)) * 2.0d) / dPow7;
                            d6 = dPow;
                            d5 = dPow8 * 2.0d;
                        } else if (i3 == 20) {
                            double d23 = (((double) ((i4 * 2) + 1)) * 3.141592653589793d) / 16.0d;
                            double dCos5 = Math.cos(d23) * 2.0d;
                            double d24 = this.f15726d;
                            double dPow9 = (dCos5 * d24) + 1.0d + Math.pow(d24, 2.0d);
                            double d25 = 1.0d / dPow9;
                            double dCos6 = Math.cos(d23) * 2.0d;
                            double d26 = this.f15726d;
                            double dPow10 = (((dCos6 * d26) - 1.0d) - Math.pow(d26, 2.0d)) / dPow9;
                            dPow = d25;
                            dPow2 = ((1.0d - Math.pow(this.f15726d, 2.0d)) * 2.0d) / dPow9;
                            d5 = d25 * (-2.0d);
                            d6 = dPow;
                            dPow3 = dPow10;
                        }
                    } else if (i4 <= 2) {
                        double d27 = (((double) ((i4 * 2) + 1)) * 3.141592653589793d) / 12.0d;
                        double dCos7 = Math.cos(d27) * 2.0d;
                        double d28 = this.f15726d;
                        double dPow11 = (dCos7 * d28) + 1.0d + Math.pow(d28, 2.0d);
                        double d29 = 1.0d / dPow11;
                        d5 = d29 * (-2.0d);
                        double dCos8 = Math.cos(d27) * 2.0d;
                        double d30 = this.f15726d;
                        dPow3 = (((dCos8 * d30) - 1.0d) - Math.pow(d30, 2.0d)) / dPow11;
                        dPow4 = ((1.0d - Math.pow(this.f15726d, 2.0d)) * 2.0d) / dPow11;
                        dPow = d29;
                        dPow2 = dPow4;
                        d6 = dPow;
                    }
                } else if (i4 <= 2) {
                    double d31 = (((double) ((i4 * 2) + 1)) * 3.141592653589793d) / 12.0d;
                    double dCos9 = Math.cos(d31) * 2.0d;
                    double d32 = this.f15726d;
                    double dPow12 = (dCos9 * d32) + 1.0d + Math.pow(d32, 2.0d);
                    dPow = Math.pow(this.f15726d, 2.0d) / dPow12;
                    d5 = dPow * 2.0d;
                    double dCos10 = Math.cos(d31) * 2.0d;
                    double d33 = this.f15726d;
                    double dPow13 = (((dCos10 * d33) - 1.0d) - Math.pow(d33, 2.0d)) / dPow12;
                    dPow2 = ((1.0d - Math.pow(this.f15726d, 2.0d)) * 2.0d) / dPow12;
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
                double d35 = this.f15726d;
                double dPow14 = (dCos11 * d35) + 1.0d + Math.pow(d35, 2.0d);
                d6 = 1.0d / dPow14;
                double dCos12 = Math.cos(d34) * 2.0d;
                double d36 = this.f15726d;
                dPow3 = (((dCos12 * d36) - 1.0d) - Math.pow(d36, 2.0d)) / dPow14;
                dPow2 = ((1.0d - Math.pow(this.f15726d, 2.0d)) * 2.0d) / dPow14;
                d5 = d6 * (-2.0d);
                dPow = d6;
            }
            return i2 == 0 ? new int[]{C7738NOR7870.this.T8.a(d6, i6), C7738NOR7870.this.T8.a(d5, i6), C7738NOR7870.this.T8.a(dPow3, i6), C7738NOR7870.this.T8.a(dPow2, i6), C7738NOR7870.this.T8.a(dPow, i6)} : new int[]{C7738NOR7870.this.T8.b(d6, i6), C7738NOR7870.this.T8.c(d6, i6), C7738NOR7870.this.T8.b(d5, i6), C7738NOR7870.this.T8.c(d5, i6), C7738NOR7870.this.T8.b(dPow3, i6), C7738NOR7870.this.T8.c(dPow3, i6), C7738NOR7870.this.T8.b(dPow2, i6), C7738NOR7870.this.T8.c(dPow2, i6), C7738NOR7870.this.T8.b(dPow, i6), C7738NOR7870.this.T8.c(dPow, i6)};
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
            return C7738NOR7870.this.T8.a(dPow, 2);
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
        public final double f15733a = 0.0d;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final double f15734b = -145.0d;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public double f15735c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public double f15736d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public double f15737e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public double f15738f;

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
                    double d11 = this.f15738f;
                    double d12 = d11 + 1.0d;
                    double d13 = this.f15737e;
                    d3 = ((1.0d - d13) / 2.0d) / d12;
                    double d14 = (1.0d - d13) / d12;
                    d5 = (-(1.0d - d11)) / d12;
                    d6 = (d13 * 2.0d) / d12;
                    d7 = ((1.0d - d13) / 2.0d) / d12;
                    d4 = d14;
                }
                return new int[]{C7738NOR7870.this.T8.a(d10, i4), C7738NOR7870.this.T8.a(d4, i4), C7738NOR7870.this.T8.a(d9, i4), C7738NOR7870.this.T8.a(d8, i4), C7738NOR7870.this.T8.a(d7, i4)};
            }
            double d15 = this.f15738f;
            double d16 = d15 + 1.0d;
            double d17 = this.f15737e;
            d3 = ((d17 + 1.0d) / 2.0d) / d16;
            d4 = (-(d17 + 1.0d)) / d16;
            d5 = (-(1.0d - d15)) / d16;
            d6 = (d17 * 2.0d) / d16;
            d7 = ((d17 + 1.0d) / 2.0d) / d16;
            d8 = d6;
            d9 = d5;
            d10 = d3;
            return new int[]{C7738NOR7870.this.T8.a(d10, i4), C7738NOR7870.this.T8.a(d4, i4), C7738NOR7870.this.T8.a(d9, i4), C7738NOR7870.this.T8.a(d8, i4), C7738NOR7870.this.T8.a(d7, i4)};
        }

        public int b(double d2) {
            return C7738NOR7870.this.T8.a(d2 <= -145.0d ? 0.0d : Math.pow(10.0d, d2 / 20.0d), 2);
        }

        public int c(double d2) {
            return C7738NOR7870.this.T8.a(d2 <= -145.0d ? 0.0d : Math.pow(10.0d, d2 / 20.0d), 2);
        }

        public int d(double d2) {
            return C7738NOR7870.this.T8.a(d2 <= -145.0d ? 0.0d : Math.pow(10.0d, d2 / 20.0d), 2);
        }

        public int e(double d2) {
            return C7738NOR7870.this.T8.a(d2, 1);
        }

        public int f(double d2) {
            return C7738NOR7870.this.T8.a(1.0d - d2, 1);
        }

        public int g(double d2) {
            return C7738NOR7870.this.T8.a(d2 <= -145.0d ? 0.0d : Math.pow(10.0d, d2 / 20.0d), 2);
        }

        public void h(int i2, int i3, double d2) {
            double d3 = (((double) i3) * 6.283185307179586d) / 48000.0d;
            this.f15735c = d3;
            this.f15736d = Math.sin(d3);
            this.f15737e = Math.cos(this.f15735c);
            this.f15738f = this.f15736d / (d2 * 2.0d);
        }
    }

    public class j {
        public j() {
        }

        public int a(int i2) {
            return (i2 == 0 ? 1 : 2) * 16;
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
            return C7738NOR7870.this.T8.a(dPow, 2);
        }
    }

    public class l {
        public l() {
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

    public C7738NOR7870(n nVar) {
        super(36, 3);
        this.I0 = false;
        this.J0 = "C7738N";
        this.K0 = 0;
        this.L0 = 1;
        this.M0 = 2;
        this.N0 = 4;
        this.O0 = 7;
        this.P0 = 8;
        this.Q0 = 9;
        this.R0 = 11;
        this.S0 = 14;
        this.T0 = 19;
        this.U0 = 24;
        this.V0 = 25;
        this.W0 = 26;
        this.X0 = 27;
        this.Y0 = 37;
        this.Z0 = 38;
        this.f15692a1 = 48;
        this.f15693b1 = 49;
        this.f15694c1 = 50;
        this.f15695d1 = 51;
        this.f15696e1 = 52;
        this.f15697f1 = 53;
        this.f15698g1 = 54;
        this.f15699h1 = 55;
        this.f15700i1 = 56;
        this.f15701j1 = 57;
        this.f15702k1 = 0;
        this.f15703l1 = 1;
        this.f15704m1 = 2;
        this.f15705n1 = 3;
        this.f15706o1 = 4;
        this.f15707p1 = 5;
        this.f15708q1 = 6;
        this.r1 = 58;
        this.s1 = 59;
        this.t1 = 60;
        this.u1 = 61;
        this.v1 = 62;
        this.w1 = 63;
        this.x1 = 7;
        this.y1 = 8;
        this.z1 = 9;
        this.A1 = 10;
        this.B1 = 11;
        this.C1 = 12;
        this.D1 = 13;
        this.E1 = 64;
        this.F1 = 65;
        this.G1 = 75;
        this.H1 = 85;
        this.I1 = 95;
        this.J1 = 105;
        this.K1 = 115;
        this.L1 = 125;
        this.M1 = 135;
        this.N1 = 145;
        this.O1 = 155;
        this.P1 = 165;
        this.Q1 = 175;
        this.R1 = 185;
        this.S1 = 195;
        this.T1 = 205;
        this.U1 = 215;
        this.V1 = 225;
        this.W1 = 235;
        this.X1 = 240;
        this.Y1 = i.a.Theme_preferenceFragmentStyle;
        this.Z1 = 250;
        this.a2 = 255;
        this.b2 = 260;
        this.c2 = 265;
        this.d2 = i.a.Theme_findOnPagePreviousDrawable;
        this.e2 = 275;
        this.f2 = BluetoothClass.Device.COMPUTER_WEARABLE;
        this.g2 = 285;
        this.h2 = 290;
        this.i2 = 295;
        this.j2 = 300;
        this.k2 = 305;
        this.l2 = 310;
        this.m2 = 315;
        this.n2 = 320;
        this.o2 = 325;
        this.p2 = 330;
        this.q2 = 331;
        this.r2 = 333;
        this.s2 = 336;
        this.t2 = 337;
        this.u2 = 338;
        this.v2 = 340;
        this.w2 = 343;
        this.x2 = 344;
        this.y2 = 346;
        this.z2 = 349;
        this.A2 = SpellChecker.WORD_ITERATOR_INTERVAL;
        this.B2 = 351;
        this.C2 = 352;
        this.D2 = 353;
        this.E2 = 354;
        this.F2 = 356;
        this.G2 = 359;
        this.H2 = MediaProperties.HEIGHT_360;
        this.I2 = 362;
        this.J2 = 365;
        this.K2 = 370;
        this.L2 = 375;
        this.M2 = 380;
        this.N2 = 385;
        this.O2 = 390;
        this.P2 = 395;
        this.Q2 = 400;
        this.R2 = UrlQuerySanitizer.IllegalCharacterValueSanitizer.URL_AND_SPACE_LEGAL;
        this.S2 = 410;
        this.T2 = 415;
        this.U2 = 420;
        this.V2 = 425;
        this.W2 = 430;
        this.X2 = 431;
        this.Y2 = 433;
        this.Z2 = 436;
        this.a3 = 437;
        this.b3 = 439;
        this.c3 = 442;
        this.d3 = 443;
        this.e3 = 445;
        this.f3 = 448;
        this.g3 = 449;
        this.h3 = 451;
        this.i3 = 454;
        this.j3 = 459;
        this.k3 = 464;
        this.l3 = 469;
        this.m3 = 474;
        this.n3 = 479;
        this.o3 = 484;
        this.p3 = Downloads.Impl.STATUS_CANNOT_RESUME;
        this.q3 = Downloads.Impl.STATUS_UNHANDLED_HTTP_CODE;
        this.r3 = 499;
        this.s3 = 500;
        this.t3 = 501;
        this.u3 = 502;
        this.v3 = 503;
        this.w3 = 504;
        this.x3 = 505;
        this.y3 = 506;
        this.z3 = 507;
        this.A3 = 508;
        this.B3 = 306;
        this.C3 = 0;
        this.D3 = 26;
        this.E3 = 53;
        this.F3 = 54;
        this.G3 = 68;
        this.H3 = 69;
        this.I3 = 70;
        this.J3 = 72;
        this.K3 = 86;
        this.L3 = 87;
        this.M3 = 88;
        this.N3 = 102;
        this.O3 = 103;
        this.P3 = 104;
        this.Q3 = 106;
        this.R3 = 130;
        this.S3 = 154;
        this.T3 = 180;
        this.U3 = 181;
        this.V3 = 182;
        this.W3 = 203;
        this.X3 = 204;
        this.Y3 = 205;
        this.Z3 = 206;
        this.a4 = 305;
        this.b4 = 0;
        this.c4 = 1;
        this.d4 = 2;
        this.e4 = 3;
        this.f4 = 307;
        this.g4 = 312;
        this.h4 = 313;
        this.i4 = 318;
        this.j4 = 323;
        this.k4 = 328;
        this.l4 = 333;
        this.m4 = 338;
        this.n4 = 343;
        this.o4 = 348;
        this.p4 = 353;
        this.q4 = 354;
        this.r4 = 356;
        this.s4 = 359;
        this.t4 = MediaProperties.HEIGHT_360;
        this.u4 = 361;
        this.v4 = 363;
        this.w4 = 366;
        this.x4 = 367;
        this.y4 = 368;
        this.z4 = 370;
        this.A4 = 372;
        this.B4 = 373;
        this.C4 = 374;
        this.D4 = 375;
        this.E4 = 376;
        this.F4 = 377;
        this.G4 = 378;
        this.H4 = 379;
        this.I4 = 381;
        this.J4 = 4;
        this.K4 = 5;
        this.L4 = 6;
        this.M4 = 7;
        this.N4 = 384;
        this.O4 = 389;
        this.P4 = 390;
        this.Q4 = 395;
        this.R4 = 400;
        this.S4 = UrlQuerySanitizer.IllegalCharacterValueSanitizer.URL_AND_SPACE_LEGAL;
        this.T4 = 410;
        this.U4 = 415;
        this.V4 = 420;
        this.W4 = 425;
        this.X4 = 430;
        this.Y4 = 431;
        this.Z4 = 432;
        this.a5 = 433;
        this.b5 = 434;
        this.c5 = 436;
        this.d5 = 439;
        this.e5 = 440;
        this.f5 = 441;
        this.g5 = 442;
        this.h5 = 443;
        this.i5 = 444;
        this.j5 = 446;
        this.k5 = 449;
        this.l5 = 450;
        this.m5 = 451;
        this.n5 = 453;
        this.o5 = 456;
        this.p5 = 8;
        this.q5 = 9;
        this.r5 = 457;
        this.s5 = 462;
        this.t5 = 467;
        this.u5 = 472;
        this.v5 = 477;
        this.w5 = 482;
        this.x5 = 487;
        this.y5 = Downloads.Impl.STATUS_FILE_ERROR;
        this.z5 = Downloads.Impl.STATUS_TOO_MANY_REDIRECTS;
        this.A5 = Downloads.Impl.STATUS_BLOCKED;
        this.B5 = 500;
        this.C5 = 503;
        this.D5 = 10;
        this.E5 = 11;
        this.F5 = 504;
        this.G5 = 509;
        this.H5 = 514;
        this.I5 = 519;
        this.J5 = BluetoothClass.Device.PHONE_SMART;
        this.K5 = 529;
        this.L5 = 534;
        this.M5 = 539;
        this.N5 = 544;
        this.O5 = 545;
        this.P5 = 547;
        this.Q5 = 550;
        this.R5 = 551;
        this.S5 = 552;
        this.T5 = 553;
        this.U5 = 554;
        this.V5 = 555;
        this.W5 = 48000;
        this.X5 = 0;
        this.Y5 = 1;
        this.Z5 = 0;
        this.a6 = 1;
        this.b6 = 2;
        this.c6 = 3;
        this.d6 = 4;
        this.e6 = 5;
        this.f6 = 6;
        this.g6 = 7;
        this.h6 = 8;
        this.i6 = 9;
        this.j6 = 10;
        this.k6 = 11;
        this.l6 = 12;
        this.m6 = 13;
        this.n6 = 14;
        this.o6 = 15;
        this.p6 = 16;
        this.q6 = 17;
        this.r6 = 18;
        this.s6 = 19;
        this.t6 = 20;
        this.u6 = 21;
        this.v6 = -144.0d;
        this.w6 = 12.0d;
        this.x6 = -145.0d;
        this.y6 = 0;
        this.z6 = 1;
        this.A6 = -40.0d;
        this.B6 = 0.0d;
        this.C6 = new int[]{0, 15, 1, 140, 2, 3, 3, 144, 4, 39, 5, 144, 6, 39, 7, 144, 8, 39, 9, 16, 10, 39, 11, 144, 12, 39, 13, 16, 14, 19, 15, 16, 16, 19, 17, 16, 18, 4, 19, 8, 20, 0, 21, 17, 22, 16, 23, 17, 24, 17, 25, 17, 26, 17, 27, 20, 28, 0, 29, 102, 30, 22, 31, 0, 32, 0, 33, 22, 34, 0, 35, 15, 36, 20, 37, 15, 38, 0, 39, 21, 40, 0, 41, 31, 42, 33, 43, 1, 44, 26, 45, 32, 46, 0, 47, 20, 48, 25, 49, 17, 50, 18, 51, 0, 52, 0, 53, 0, 54, 0, 55, 13, 56, 19, 57, 7, 58, 20, 59, 0, 60, 0, 61, 0, 62, 0, 63, 0, 64, 0, 65, 30, 66, 0, 67, 0, 68, 0, 69, 0, 70, 0, 71, 0, 72, 0, 73, 34, 74, 0, 75, 3, 76, 0, 77, 0, 78, 0, 79, 50, 80, 0, 81, 48, 82, 0, 83, 0, 84, 0, 85, 0, 86, 0, 87, 34, 88, 59, 89, 0, 90, 0, 91, 0, 92, 0, 93, 0, 94, 0, 95, 48, 96, 48, 97, 48, 98, 48, 99, 48, 100, 0, 101, 0, 102, 1, 103, 0, 104, 24, 105, 24, 106, 24, 107, 24, 108, 0, 109, 0, 110, 0, 111, 0, 112, 0, 113, 0, 114, 0, 115, 0, 116, 0, 117, 0, 118, 0, 119, 0, 120, 0, 121, 0, 122, 0, 123, 0, 124, 0, 125, 0, 126, 0, 127, 4, 128, 10, 129, 1, 130, 0, 131, 62, 132, i.a.Theme_actionModeFindDrawable, 133, 31, 134, 0, 135, 0, 144, 0, 145, 0, 146, 0, 147, 0, 148, 0, 149, 0};
        this.D6 = null;
        this.E6 = null;
        this.F6 = new int[]{0, 2, 63, 0, 2, 63, 0, 4, 127, 0, 4, 127, 0, 6, 191, 0, 6, 191, 0, 8, 255, 0, 8, 255, 0, 11, 63, 0, 11, 63, 0, 13, 127, 0, 13, 127};
        this.G6 = new int[]{0, 1, i.a.Theme_actionModeWebSearchDrawable, 0, 1, i.a.Theme_actionModeWebSearchDrawable, 0, 1, i.a.Theme_actionModeWebSearchDrawable, 0, 1, i.a.Theme_actionModeWebSearchDrawable, 0, 1, i.a.Theme_actionModeWebSearchDrawable, 0, 1, i.a.Theme_actionModeWebSearchDrawable, 0, 1, i.a.Theme_actionModeWebSearchDrawable, 0, 3, 231, 0, 3, 231, 0, 3, 231, 0, 3, 231, 0, 3, 231, 0, 3, 231, 0, 3, 231};
        this.H6 = new int[]{20, 24, 29, 36, 45, 53, 65, 80, 100, 120, 140, 170, 210, 260, 320, 390, 470, 570, 700, 850, 1000, 1300, 1600, 1900, 2300, 2800, 3400, 4100, 5000, 6100, 7500, 9000, 11000, 14000, 17000, Window.PROGRESS_SECONDARY_START};
        this.I6 = 120;
        this.J6 = 70;
        this.K6 = new int[]{-1450, -600, -520, -460, -410, -370, -330, -300, -280, -270, -260, -250, -240, -230, -220, -210, AudioService.STREAM_REMOTE_MUSIC, -190, -180, -170, -160, -150, -140, -130, -120, -110, -100, -90, -80, -70, -60, -50, -40, -30, -20, -10, 0};
        this.L6 = new int[]{-1450, -480, -420, -370, -330, -300, -270, -250, -230, -220, -210, AudioService.STREAM_REMOTE_MUSIC, -190, -180, -170, -160, -150, -140, -130, -120, -110, -100, -90, -80, -70, -60, -50, -40, -30, -20, -10, 0, 10, 20, 30, 40, 50};
        this.M6 = new double[]{1.6d, 1.4d, 1.35d, 1.32d, 1.3d, 1.25d, 1.1d, 0.9d, 0.7d, 0.5d, 0.4d, 0.2d, 0.1d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.36d, 0.36d, 0.32d, 0.32d, 0.3d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d};
        this.N6 = new int[]{65, 75, 85, 95, 105, 115, 125, 135, 145, 155, 165, 175, 185, 195, 205, 215, 225, 235, 240, i.a.Theme_preferenceFragmentStyle, 250, 255, 260, 265, i.a.Theme_findOnPagePreviousDrawable, 275, BluetoothClass.Device.COMPUTER_WEARABLE, 285, 290, 295, 300, 305, 310, 315, 320, 325};
        this.O6 = 0;
        this.P6 = new int[]{0, 0, 0, 0, 0, 0, 0, 0, 0, -3, -6, -9, -12, -15, -18, -21, -145};
        this.Q6 = new int[]{-145, -21, -18, -15, -12, -10, -8, -6, -4, -2, 0};
        this.R6 = new int[]{-10, -9, -8, -7, -6, -5, -4, -3, -2, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
        this.S6 = new int[]{20, 68, 86, 108, 134, 172, 214, 260};
        this.T6 = new double[]{0.0d, 2.0d, 4.0d, 5.5d, 6.5d, 7.5d, 8.0d, 8.5d, 9.0d, 9.5d, 10.0d};
        this.U6 = new int[]{100, 150, 200, 250, 300, MediaProperties.HEIGHT_360, 420, 500, CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR, MediaProperties.HEIGHT_720, 850, 1000, 1200, 1400, 1600, BluetoothClass.Device.WEARABLE_PAGER, 2100, 2500, ConnectivityManager.CONNECTIVITY_CHANGE_DELAY_DEFAULT, 3500, 4000};
        this.V6 = new int[]{-145, -80, -48, -32, -25, -21, -18, -16, -14, -12, -10, -9, -8, -7, -6, -5, -4, -3, -2, -1, 0};
        this.W6 = 1.0d;
        this.X6 = new int[]{20, 10, 32, 24, 10, 32, 29, 10, 32, 36, 10, 32, 44, 10, 32, 54, 10, 32, 66, 10, 32, 81, 10, 32, 100, 10, 32, 120, 10, 32, 140, 10, 32, 170, 10, 32, 210, 10, 32, 260, 10, 32, 320, 10, 32, 390, 10, 32, 470, 10, 32, 570, 10, 32, 700, 10, 32, 850, 10, 32, 1000, 10, 32, 1260, 10, 32, 1540, 10, 32, 1900, 10, 32, 2300, 10, 32, 2800, 10, 32, 3400, 10, 32, 4100, 10, 32, 5000, 10, 32, 6100, 10, 32, 7500, 10, 32, 9000, 10, 32, 11000, 10, 32, 14000, 10, 32, 17000, 10, 32, Window.PROGRESS_SECONDARY_START, 10, 32};
        int[] iArr = {20, 10, 32, 24, 10, 32, 29, 10, 32, 36, 10, 32, 44, 10, 32, 54, 10, 32, 66, 10, 32, 81, 10, 32, 100, 10, 32, 120, 10, 32, 140, 10, 32, 170, 10, 32, 210, 10, 32, 260, 10, 32, 320, 10, 32, 390, 10, 32, 470, 10, 32, 570, 10, 32, 700, 10, 32, 850, 10, 32, 1000, 10, 32, 1260, 10, 32, 1540, 10, 32, 1900, 10, 32, 2300, 10, 32, 2800, 10, 32, 3400, 10, 32, 4100, 10, 32, 5000, 10, 32, 6100, 10, 32, 7500, 10, 32, 9000, 10, 32, 11000, 10, 32, 14000, 10, 32, 17000, 10, 32, Window.PROGRESS_SECONDARY_START, 10, 32};
        this.Y6 = iArr;
        int[] iArr2 = {20, 14, 32, 24, 14, 32, 29, 14, 32, 36, 14, 32, 44, 14, 32, 54, 14, 32, 66, 14, 32, 81, 13, 32, 100, 13, 32, 120, 12, 32, 140, 11, 32, 170, 11, 32, 210, 10, 32, 260, 9, 32, 320, 9, 32, 390, 8, 32, 470, 7, 32, 570, 7, 32, 700, 7, 32, 850, 7, 32, 1000, 7, 32, 1260, 8, 32, 1540, 9, 32, 1900, 11, 32, 2300, 9, 32, 2800, 11, 32, 3400, 12, 32, 4100, 12, 32, 5000, 13, 32, 6100, 13, 32, 7500, 14, 32, 9000, 14, 32, 11000, 14, 32, 14000, 14, 32, 17000, 14, 32, Window.PROGRESS_SECONDARY_START, 14, 32};
        this.Z6 = iArr2;
        int[] iArr3 = {20, 6, 32, 24, 6, 32, 29, 6, 32, 36, 6, 32, 44, 6, 32, 54, 6, 32, 66, 6, 32, 81, 6, 32, 100, 7, 32, 120, 8, 32, 140, 9, 32, 170, 9, 32, 210, 10, 32, 260, 11, 32, 320, 11, 32, 390, 12, 32, 470, 12, 32, 570, 12, 32, 700, 12, 32, 850, 12, 32, 1000, 11, 32, 1260, 11, 32, 1540, 11, 32, 1900, 12, 32, 2300, 12, 32, 2800, 12, 32, 3400, 13, 32, 4100, 11, 32, 5000, 10, 32, 6100, 10, 32, 7500, 10, 32, 9000, 10, 32, 11000, 10, 32, 14000, 10, 32, 17000, 10, 32, Window.PROGRESS_SECONDARY_START, 10, 32};
        this.a7 = iArr3;
        int[] iArr4 = {20, 14, 32, 24, 14, 32, 29, 14, 32, 36, 14, 32, 44, 14, 32, 54, 14, 32, 66, 14, 32, 81, 14, 32, 100, 14, 32, 120, 13, 32, 140, 13, 32, 170, 12, 32, 210, 11, 32, 260, 11, 32, 320, 10, 32, 390, 9, 32, 470, 9, 32, 570, 11, 32, 700, 11, 32, 850, 11, 32, 1000, 11, 32, 1260, 10, 32, 1540, 9, 32, 1900, 9, 32, 2300, 9, 32, 2800, 8, 32, 3400, 7, 32, 4100, 7, 32, 5000, 7, 32, 6100, 7, 32, 7500, 7, 32, 9000, 6, 32, 11000, 6, 32, 14000, 6, 32, 17000, 6, 32, Window.PROGRESS_SECONDARY_START, 6, 32};
        this.b7 = iArr4;
        int[] iArr5 = {20, 11, 32, 24, 11, 32, 29, 11, 32, 36, 11, 32, 44, 12, 32, 54, 12, 32, 66, 12, 32, 81, 12, 32, 100, 13, 32, 120, 14, 32, 140, 14, 32, 170, 14, 32, 210, 14, 32, 260, 14, 32, 320, 14, 32, 390, 14, 32, 470, 14, 32, 570, 14, 32, 700, 14, 32, 850, 14, 32, 1000, 14, 32, 1260, 14, 32, 1540, 13, 32, 1900, 13, 32, 2300, 12, 32, 2800, 12, 32, 3400, 12, 32, 4100, 11, 32, 5000, 11, 32, 6100, 12, 32, 7500, 11, 32, 9000, 11, 32, 11000, 10, 32, 14000, 10, 32, 17000, 11, 32, Window.PROGRESS_SECONDARY_START, 11, 32};
        this.c7 = iArr5;
        int[] iArr6 = {20, 14, 32, 24, 14, 32, 29, 14, 32, 36, 14, 32, 44, 14, 32, 54, 14, 32, 66, 14, 32, 81, 14, 32, 100, 14, 32, 120, 14, 32, 140, 13, 32, 170, 13, 32, 210, 13, 32, 260, 13, 32, 320, 13, 32, 390, 13, 32, 470, 14, 32, 570, 14, 32, 700, 13, 32, 850, 13, 32, 1000, 13, 32, 1260, 12, 32, 1540, 11, 32, 1900, 11, 32, 2300, 11, 32, 2800, 11, 32, 3400, 11, 32, 4100, 11, 32, 5000, 10, 32, 6100, 10, 32, 7500, 10, 32, 9000, 9, 32, 11000, 9, 32, 14000, 9, 32, 17000, 9, 32, Window.PROGRESS_SECONDARY_START, 9, 32};
        this.d7 = iArr6;
        int[] iArr7 = {20, 13, 32, 24, 13, 32, 29, 13, 32, 36, 13, 32, 44, 12, 32, 54, 12, 32, 66, 11, 32, 81, 11, 32, 100, 10, 32, 120, 8, 32, 140, 7, 32, 170, 7, 32, 210, 6, 32, 260, 7, 32, 320, 8, 32, 390, 9, 32, 470, 10, 32, 570, 10, 32, 700, 10, 32, 850, 10, 32, 1000, 10, 32, 1260, 10, 32, 1540, 10, 32, 1900, 11, 32, 2300, 11, 32, 2800, 11, 32, 3400, 11, 32, 4100, 11, 32, 5000, 11, 32, 6100, 12, 32, 7500, 13, 32, 9000, 13, 32, 11000, 14, 32, 14000, 14, 32, 17000, 14, 32, Window.PROGRESS_SECONDARY_START, 14, 32};
        this.e7 = iArr7;
        int[] iArr8 = {20, 10, 32, 24, 10, 32, 29, 10, 32, 36, 10, 32, 44, 10, 32, 54, 10, 32, 66, 11, 32, 81, 12, 32, 100, 12, 32, 120, 12, 32, 140, 13, 32, 170, 13, 32, 210, 13, 32, 260, 13, 32, 320, 14, 32, 390, 14, 32, 470, 14, 32, 570, 14, 32, 700, 14, 32, 850, 14, 32, 1000, 14, 32, 1260, 14, 32, 1540, 14, 32, 1900, 14, 32, 2300, 14, 32, 2800, 14, 32, 3400, 14, 32, 4100, 14, 32, 5000, 14, 32, 6100, 14, 32, 7500, 13, 32, 9000, 13, 32, 11000, 13, 32, 14000, 13, 32, 17000, 13, 32, Window.PROGRESS_SECONDARY_START, 13, 32};
        this.f7 = iArr8;
        this.g7 = null;
        this.h7 = 32;
        this.i7 = 200;
        this.j7 = 250;
        this.k7 = 20;
        this.l7 = null;
        this.m7 = true;
        this.n7 = false;
        this.o7 = new int[]{8, 8, 8, 8, 8, 8};
        this.p7 = new int[]{-30, 2, 9};
        this.q7 = new int[4];
        this.r7 = new int[]{25, 12, 12, 0, 0, 0};
        this.s7 = new int[]{0, 0};
        this.t7 = new int[]{0, 0};
        this.u7 = new int[]{20, 20, 20, 10, 12};
        this.v7 = new int[]{50, 50};
        this.w7 = 0;
        this.x7 = 1;
        this.y7 = 26;
        this.z7 = 0;
        this.A7 = 9;
        this.B7 = 9;
        this.C7 = new int[]{-145, -49, -24, -14, -9, -8, -7, -6, -5, -4, -3};
        this.D7 = new int[]{-145, -61, -36, -26, -21, -20, -19, -18, -17, -16, -15};
        this.E7 = new int[]{5, 8, 11, 15, 20, 25, 30, 35, 40, 45, 50};
        this.F7 = new int[]{0, 0, 5, 10, 15, 25, 35};
        this.G7 = new int[]{10, 10, 10, 10, 10, 10, 10};
        this.H7 = new int[]{0, 0, 0, 0, 0, 0, 0};
        this.I7 = new int[]{0, 0, 0, 0, 0, 0, 0};
        this.J7 = new int[]{504, BluetoothClass.Device.PHONE_SMART, 390, 410, 313, 333, 457, 477};
        this.K7 = 0;
        this.L7 = 1;
        this.M7 = 2;
        this.N7 = 3;
        this.O7 = 1;
        this.P7 = new int[]{21, 6, 8, 12, 16, 20};
        this.Q7 = new int[]{21, 5, 7, 11, 15, 19};
        this.R7 = new int[]{150, 0, 50, 0};
        this.S7 = new int[]{20, 0, 200, 0};
        this.T7 = new int[]{20, 0, 200, 0};
        this.U7 = new int[]{20, 0, 250, 0};
        this.V7 = new int[]{150, 0, 50, 0, 20, 0, 200, 0, 20, 0, 200, 0, 20, 0, 250, 0};
        this.W7 = true;
        this.X7 = 0;
        this.Y7 = 1;
        this.Z7 = 0;
        this.a8 = 1;
        this.b8 = 2;
        this.c8 = new int[]{40, 40, 40, 40, 40, 1, 1, 1, 40, 40, 40, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0};
        this.d8 = new int[]{40, 40};
        this.e8 = new int[]{40, 40, 40, 1, 1, 1};
        this.f8 = new int[]{40, 40, 40, 1, 1, 1};
        this.g8 = new int[]{1, 1, 1, 1, 0, 0, 0};
        this.h8 = 0;
        this.i8 = 0;
        this.j8 = false;
        this.k8 = false;
        this.l8 = false;
        this.m8 = false;
        this.n8 = new a();
        this.o8 = new Handler();
        this.p8 = new b();
        this.q8 = true;
        this.r8 = 1;
        this.s8 = new double[]{-145.0d, -60.0d, -50.0d, -46.0d, -43.0d, -40.0d, -37.0d, -34.0d, -31.0d, -28.0d, -25.0d};
        this.t8 = new int[]{443, 433, MediaProperties.HEIGHT_360, 353, 544, Downloads.Impl.STATUS_TOO_MANY_REDIRECTS};
        this.u8 = 0;
        this.v8 = 100;
        this.w8 = 50;
        this.x8 = 0;
        this.y8 = 1;
        this.z8 = 2;
        this.A8 = 3;
        this.B8 = 4;
        this.C8 = 5;
        this.D8 = 6;
        this.E8 = 7;
        this.F8 = 8;
        this.G8 = 9;
        this.H8 = 10;
        this.I8 = 11;
        this.J8 = 12;
        this.K8 = 13;
        this.L8 = 14;
        this.M8 = 15;
        this.N8 = 16;
        this.O8 = 17;
        this.P8 = 18;
        this.Q8 = 19;
        this.R8 = 20;
        this.S8 = new int[]{20, 24, 29, 36, 45, 53, 65, 80, 100, 120, 140, 170, 210, 260, 320, 390, 470, 570, 700, 850, 1000, 1300, 1600, 1900, 2300, 2800, 3400, 4100, 5000, 6100, 7500, 9000, 11000, 14000, 17000, Window.PROGRESS_SECONDARY_START};
        this.T8 = new l();
        this.U8 = 0;
        this.V8 = 1;
        this.W8 = 2;
        this.X8 = 0;
        this.Y8 = 1;
        this.Z8 = 2;
        this.a9 = 3;
        this.b9 = 4;
        this.c9 = 5;
        this.d9 = 6;
        this.e9 = 7;
        this.f9 = 0;
        this.g9 = 1;
        synchronized (this.f15047c0) {
            Z0(0, this.X6);
            Z0(1, iArr);
            Z0(2, iArr2);
            Z0(3, iArr3);
            Z0(4, iArr4);
            Z0(5, iArr5);
            Z0(6, iArr6);
            Z0(7, iArr7);
            Z0(8, iArr8);
            x(this.K6);
            this.l7 = (AudioManager) App.c().getSystemService(Context.AUDIO_SERVICE);
            this.g7 = nVar;
        }
    }

    @Override // module.sound.AudioDevice
    public void A1(int i2, boolean z2) {
        if (i2 < 0 || i2 >= AudioDevice.G0.length) {
            return;
        }
        Log.e("C7738N", "=========================volume : " + i2 + " force:" + z2);
        B1(i2, z2);
        if (z2 || i2 != this.f15054g) {
            if (i2 != this.f15054g) {
                this.f15054g = i2;
            }
            if (this.f15052f) {
                u2();
            }
        }
    }

    public void A2() {
        if (this.s7[0] != 0) {
            C0(65536, 0);
        }
        if (this.t7[0] != 0) {
            C0(131072, 0);
        }
        if (this.s7[1] != 0) {
            D0(65536, 0);
        }
        if (this.t7[1] != 0) {
            D0(131072, 0);
        }
    }

    @Override // module.sound.AudioDevice
    public void B0(int i2, int i3, int i4) {
        int i5;
        if (i2 == 65536) {
            i5 = 384;
        } else {
            i5 = i2 == 131072 ? 307 : -1;
        }
        D1(i5, this.S6[i3], i4);
        if (i3 == 0 || i4 == 0) {
            c2(1, i5 != 307 ? 389 : 312, 0);
        } else {
            if (i3 <= 0 || i4 <= 0) {
                return;
            }
            c2(1, i5 != 307 ? 389 : 312, 1);
        }
    }

    public final void B2() {
        int i2;
        int i3;
        e eVar = new e();
        int i4 = this.y7;
        if (s0.l("persist.fyt.ui.txz", false) && SystemProperties.getBoolean("sys.lsec.dmicMono", false)) {
            i4 = this.y7 - 10;
        }
        Log.e("dspmic", "micGain: " + i4);
        int iA = o0.a(i4, -30, 36);
        synchronized (this) {
            int i5 = 12;
            if (iA > 24) {
                i2 = iA - 24;
                i3 = 12;
            } else if (iA > 12) {
                i3 = iA - 12;
                i2 = 0;
            } else {
                i5 = iA;
                i2 = 0;
                i3 = 0;
            }
            f2(0, 128, 448, new int[]{eVar.a(i2)});
            f2(0, 128, 442, new int[]{eVar.a(i3)});
            f2(0, 128, 353, new int[]{eVar.a(i5)});
        }
    }

    @Override // module.sound.AudioDevice
    public void C0(int i2, int i3) {
        boolean z2;
        int i4;
        int i5;
        int iMax = Math.max(0, Math.min(i3, this.S6.length));
        int i6 = -1;
        if (i2 == 65536) {
            i6 = 384;
            int[] iArr = this.s7;
            z2 = iArr[0] != iMax;
            i5 = iArr[0];
            iArr[0] = iMax;
            i4 = iArr[1];
        } else if (i2 == 131072) {
            int[] iArr2 = this.t7;
            z2 = iArr2[0] != iMax;
            int i7 = iArr2[0];
            iArr2[0] = iMax;
            i5 = i7;
            i4 = iArr2[1];
            i6 = 307;
        } else {
            z2 = false;
            iMax = -1;
            i4 = -1;
            i5 = -1;
        }
        if (i6 >= 0) {
            D1(i6, this.S6[iMax], i4);
            if ((i5 > 0 && iMax == 0) || i4 == 0) {
                c2(1, i6 != 307 ? 389 : 312, 0);
            } else if (i5 == 0 && iMax > 0) {
                c2(1, i6 != 307 ? 389 : 312, 1);
            }
            if (z2) {
                super.C0(i2, iMax);
                if (this.u8 != 0) {
                    if ((i2 != 65536 || this.s7[0] == 0) && (i2 != 131072 || this.t7[0] == 0)) {
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
            Log.e("C7738N", "=========================writeVolume : " + i2);
            d2((double) (((float) i2) / 10.0f));
        }
    }

    public void C2(int i2, int i3) {
        if (i2 >= 0 || i2 < this.u7.length) {
            int iMax = Math.max(0, Math.min(i3, this.V6.length));
            if (i2 == 0 || i2 == 1 || i2 == 2 || i2 == 3 || i2 == 4) {
                int[] iArr = this.u7;
                if (iArr[i2] != iMax) {
                    iArr[i2] = iMax;
                    y0.h.s0(63, i2, iMax);
                    H0(AudioDevice.STORE.STEREO_PAEAM, this.u7);
                }
                int i4 = !this.n7 ? 1 : 0;
                int[] iArr2 = this.V6;
                int[] iArr3 = this.u7;
                Z1(i4, 0.0d, iArr2[iArr3[0]], iArr2[iArr3[1]], iArr2[iArr3[2]], iArr3[3] / 10.0f, this.U6[iArr3[4]]);
            }
        }
    }

    @Override // module.sound.AudioDevice
    public void D(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 90) {
            if (s0.h(iArr, 0)) {
                z2(iArr[0]);
            }
            return;
        }
        if (i2 == 93) {
            if (s0.h(iArr, 0)) {
                k2(iArr[0]);
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
                    C2(iArr[0], iArr[1]);
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
                            W1(iArr[0], iArr[1]);
                        }
                        break;
                    case 70:
                        if (s0.h(iArr, 1)) {
                            E2(iArr[0], iArr[1]);
                        }
                        break;
                    case 71:
                        if (s0.h(iArr, 0)) {
                            F2(iArr[0]);
                        }
                        break;
                    default:
                        switch (i2) {
                            case 83:
                                if (s0.h(iArr, 0)) {
                                    o2(iArr[0]);
                                }
                                break;
                            case 84:
                                if (s0.h(iArr, 1)) {
                                    p2(iArr[0], iArr[1]);
                                }
                                break;
                            case 85:
                                if (s0.h(iArr, 0)) {
                                    y2(iArr[0]);
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
        int i5;
        int iMax = Math.max(0, Math.min(i3, 12));
        int i6 = -1;
        if (i2 == 65536) {
            i6 = 384;
            int[] iArr = this.s7;
            z2 = iArr[1] != iMax;
            i5 = iArr[0];
            int i7 = iArr[1];
            iArr[1] = iMax;
            i4 = i7;
        } else if (i2 == 131072) {
            int[] iArr2 = this.t7;
            z2 = iArr2[1] != iMax;
            i4 = iArr2[1];
            iArr2[1] = iMax;
            i5 = iArr2[0];
            i6 = 307;
        } else {
            z2 = false;
            iMax = -1;
            i4 = -1;
            i5 = -1;
        }
        if (i6 >= 0) {
            D1(i6, this.S6[i5], iMax);
            if (z2) {
                if ((i4 > 0 && iMax == 0) || i5 == 0) {
                    c2(1, i6 != 307 ? 389 : 312, 0);
                } else if (i4 == 0 && iMax > 0) {
                    c2(1, i6 != 307 ? 389 : 312, 1);
                }
                super.D0(i2, iMax);
                if (this.u8 != 0) {
                    if ((i2 != 65536 || this.s7[1] == 0) && (i2 != 131072 || this.t7[1] == 0)) {
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

    public void D2(int i2, int i3) {
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
            b2(i4, i3);
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
        if (i2 >= 0 || i2 < this.u7.length) {
            new j();
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
                            int[] iArr3 = this.d8;
                            if (iArr3[0] != i4) {
                                iArr3[0] = i4;
                                y0.h.s0(68, i2, i4);
                                H0(AudioDevice.STORE.CSAUTO_SRS, this.d8);
                            }
                            double dR2 = r2(i4);
                            f2(1, 128, 53, new int[]{cVar.a(dR2)});
                            a.f.p().t(LogType.AUDIO, String.format(" MixCenter2Rear-> index: %4d， value: %4d，gain: %2.3f", Integer.valueOf(i2), Integer.valueOf(i4), Double.valueOf(dR2)));
                            break;
                        case 1:
                            if (i4 > 100) {
                                i4 = 50;
                            }
                            int[] iArr4 = this.d8;
                            if (iArr4[1] != i4) {
                                iArr4[1] = i4;
                                y0.h.s0(68, i2, i4);
                                H0(AudioDevice.STORE.CSAUTO_SRS, this.d8);
                            }
                            double dR3 = r2(i4);
                            f2(1, 128, 54, new int[]{cVar.a(dR3)});
                            a.f.p().t(LogType.AUDIO, String.format(" MixFront2Rear-> index: %4d， value: %4d，gain: %2.3f", Integer.valueOf(i2), Integer.valueOf(i4), Double.valueOf(dR3)));
                            break;
                        case 2:
                            if (i4 > 100) {
                                i4 = 50;
                            }
                            int[] iArr5 = this.e8;
                            if (iArr5[0] != i4) {
                                iArr5[0] = i4;
                                y0.h.s0(68, i2, i4);
                                H0(AudioDevice.STORE.CSAUTO_FOC, this.e8);
                            }
                            double dR4 = r2(i4);
                            f2(1, 128, 69, new int[]{cVar.a(dR4)});
                            a.f.p().t(LogType.AUDIO, String.format(" FocusCenterLevel-> index: %4d， value: %4d，gain: %2.3f", Integer.valueOf(i2), Integer.valueOf(i4), Double.valueOf(dR4)));
                            break;
                        case 3:
                            if (i4 > 100) {
                                i4 = 50;
                            }
                            int[] iArr6 = this.e8;
                            if (iArr6[1] != i4) {
                                iArr6[1] = i4;
                                y0.h.s0(68, i2, i4);
                                H0(AudioDevice.STORE.CSAUTO_FOC, this.e8);
                            }
                            double dR5 = r2(i4);
                            f2(1, 128, 87, new int[]{cVar.a(dR5)});
                            a.f.p().t(LogType.AUDIO, String.format(" FocusFrontlevel-> index: %4d， value: %4d，gain: %2.3f", Integer.valueOf(i2), Integer.valueOf(i4), Double.valueOf(dR5)));
                            break;
                        case 4:
                            if (i4 > 100) {
                                i4 = 50;
                            }
                            int[] iArr7 = this.e8;
                            if (iArr7[2] != i4) {
                                iArr7[2] = i4;
                                y0.h.s0(68, i2, i4);
                                H0(AudioDevice.STORE.CSAUTO_FOC, this.e8);
                            }
                            double dR6 = r2(i4);
                            f2(1, 128, 103, new int[]{cVar.a(dR6)});
                            a.f.p().t(LogType.AUDIO, String.format(" FocusRearlevel-> index: %4d， value: %4d，gain: %2.3f", Integer.valueOf(i2), Integer.valueOf(i4), Double.valueOf(dR6)));
                            break;
                        case 8:
                            if (i4 > 100) {
                                i4 = 50;
                            }
                            int[] iArr8 = this.f8;
                            if (iArr8[0] != i4) {
                                iArr8[0] = i4;
                                y0.h.s0(68, i2, i4);
                                H0(AudioDevice.STORE.CSAUTO_TRUBASS, this.f8);
                            }
                            double dR7 = r2(i4);
                            f2(1, 128, 180, new int[]{cVar.a(dR7)});
                            a.f.p().t(LogType.AUDIO, String.format(" TruBassRearControl-> index: %4d， value: %4d，gain: %2.3f", Integer.valueOf(i2), Integer.valueOf(i4), Double.valueOf(dR7)));
                            break;
                        case 9:
                            if (i4 > 100) {
                                i4 = 50;
                            }
                            int[] iArr9 = this.f8;
                            if (iArr9[1] != i4) {
                                iArr9[1] = i4;
                                y0.h.s0(68, i2, i4);
                                H0(AudioDevice.STORE.CSAUTO_TRUBASS, this.f8);
                            }
                            double dR8 = r2(i4);
                            f2(1, 128, 181, new int[]{cVar.a(dR8)});
                            a.f.p().t(LogType.AUDIO, String.format(" TruBassFrontControl-> index: %4d， value: %4d，gain: %2.3f", Integer.valueOf(i2), Integer.valueOf(i4), Double.valueOf(dR8)));
                            break;
                        case 10:
                            if (i4 > 100) {
                                i4 = 50;
                            }
                            int[] iArr10 = this.f8;
                            if (iArr10[2] != i4) {
                                iArr10[2] = i4;
                                y0.h.s0(68, i2, i4);
                                H0(AudioDevice.STORE.CSAUTO_TRUBASS, this.f8);
                            }
                            double dR9 = r2(i4);
                            f2(1, 128, 182, new int[]{cVar.a(dR9)});
                            a.f.p().t(LogType.AUDIO, String.format(" TruBassSubwooferControl-> index: %4d， value: %4d，gain: %2.3f", Integer.valueOf(i2), Integer.valueOf(i4), Double.valueOf(dR9)));
                            break;
                        case 14:
                            int[] iArr11 = this.g8;
                            if (iArr11[0] != i4) {
                                iArr11[0] = i4;
                                y0.h.s0(68, i2, i4);
                                AudioDevice.STORE store = AudioDevice.STORE.CSAUTO_OTHERS;
                                H0(store, this.g8);
                                this.f15080t.e(store.ordinal());
                            }
                            m2(this.f15074q);
                            j2(i4);
                            break;
                        case 15:
                            int[] iArr12 = this.g8;
                            if (iArr12[1] != i4) {
                                iArr12[1] = i4;
                                y0.h.s0(68, i2, i4);
                                AudioDevice.STORE store2 = AudioDevice.STORE.CSAUTO_OTHERS;
                                H0(store2, this.g8);
                                this.f15080t.e(store2.ordinal());
                            }
                            w2(true);
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
                            w2(false);
                            break;
                        case 17:
                            int[] iArr13 = this.g8;
                            if (iArr13[3] != i4) {
                                iArr13[3] = i4;
                                y0.h.s0(68, i2, i4);
                                H0(AudioDevice.STORE.CSAUTO_OTHERS, this.g8);
                            }
                            w2(true);
                            if (i4 == 0) {
                                f2(1, 128, 72, new int[]{cVar.c(0)});
                                a.f.p().t(LogType.AUDIO, String.format(" Phantom OFF  模式---", new Object[0]));
                            } else {
                                f2(1, 128, 72, new int[]{cVar.c(1)});
                                a.f.p().t(LogType.AUDIO, String.format(" Phantom ON  模式---", new Object[0]));
                            }
                            w2(false);
                            break;
                        case 18:
                            if (i4 >= 0 && i4 <= 7) {
                                int[] iArr14 = this.g8;
                                if (iArr14[4] != i4) {
                                    iArr14[4] = i4;
                                    y0.h.s0(68, i2, i4);
                                    H0(AudioDevice.STORE.CSAUTO_OTHERS, this.g8);
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
                                int[] iArr15 = this.g8;
                                if (iArr15[5] != i4) {
                                    iArr15[5] = i4;
                                    y0.h.s0(68, i2, i4);
                                    H0(AudioDevice.STORE.CSAUTO_OTHERS, this.g8);
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
                                int[] iArr16 = this.g8;
                                if (iArr16[6] != i4) {
                                    iArr16[6] = i4;
                                    y0.h.s0(68, i2, i4);
                                    H0(AudioDevice.STORE.CSAUTO_OTHERS, this.g8);
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
        int i4 = i2;
        if (i4 > 100) {
            i4 = 50;
        }
        int i5 = i3 <= 100 ? i3 : 50;
        int[] iArr = this.v7;
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
        int i10 = iSqrt2 - i6;
        int i11 = iSqrt3 - i6;
        int i12 = iSqrt4 - i6;
        int i13 = i8 > i10 ? i8 : i10;
        int i14 = i11 > i12 ? i11 : i12;
        if (i13 <= i14) {
            i13 = i14;
        }
        int i15 = ((i13 - i8) * 100) / BluetoothClass.Device.COMPUTER_HANDHELD_PC_PDA;
        int i16 = ((i13 - i10) * 100) / BluetoothClass.Device.COMPUTER_HANDHELD_PC_PDA;
        int i17 = ((i13 - i11) * 100) / BluetoothClass.Device.COMPUTER_HANDHELD_PC_PDA;
        int i18 = ((i13 - i12) * 100) / BluetoothClass.Device.COMPUTER_HANDHELD_PC_PDA;
        w2(true);
        j1(69632, i15);
        j1(73728, i16);
        j1(135168, i17);
        j1(139264, i18);
        w2(false);
        H0(AudioDevice.STORE.SURR_FIELD, this.v7);
        y0.h.s0(70, i4, i5);
    }

    @Override // module.sound.AudioDevice
    public void F() {
        CHANNEL channel = CHANNEL.IN1;
        L0(0, channel.f15715a);
        L0(1, CHANNEL.IN2.f15715a);
        CHANNEL channel2 = CHANNEL.IN4;
        L0(2, channel2.f15715a);
        L0(3, channel2.f15715a);
        CHANNEL channel3 = CHANNEL.IN3;
        L0(4, channel3.f15715a);
        CHANNEL channel4 = CHANNEL.IN5;
        L0(5, channel4.f15715a);
        L0(6, channel4.f15715a);
        L0(7, channel.f15715a);
        L0(8, channel.f15715a);
        L0(9, channel.f15715a);
        L0(10, channel.f15715a);
        L0(11, channel3.f15715a);
        L0(12, channel3.f15715a);
        L0(13, channel3.f15715a);
        L0(14, channel.f15715a);
        L0(15, channel.f15715a);
        L0(16, channel.f15715a);
    }

    public void F1(int i2) {
        int i3;
        j jVar = new j();
        synchronized (this) {
            if (i2 == CHANNEL.IN4.f15715a) {
                f2(0, 128, 0, new int[]{jVar.a(1)});
            } else {
                f2(0, 128, 0, new int[]{jVar.a(0)});
            }
        }
        byte bU1 = (byte) (((byte) U1(102)) & 252);
        if (i2 == CHANNEL.IN1.f15715a) {
            i3 = bU1 | 3;
        } else if (i2 == CHANNEL.IN2.f15715a) {
            i3 = bU1 | 1;
        } else if (i2 == CHANNEL.IN3.f15715a) {
            i3 = bU1 | 2;
        } else {
            int i4 = CHANNEL.IN5.f15715a;
            i3 = bU1 | 3;
        }
        h2(102, (byte) i3);
    }

    public void F2(int i2) {
        boolean z2 = nt.W != 0;
        if (i2 == 0) {
            if (z2) {
                E2(75, 25);
                return;
            } else {
                E2(25, 25);
                return;
            }
        }
        if (i2 == 1) {
            if (z2) {
                E2(25, 25);
                return;
            } else {
                E2(75, 25);
                return;
            }
        }
        if (i2 == 2) {
            E2(50, 75);
        } else if (i2 != 3) {
            E2(50, 50);
        } else {
            E2(50, 50);
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
            F2(0);
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
            int[] iArr = this.u7;
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
            H0(store, this.u7);
            this.n7 = false;
            w2(true);
            if (!this.n7) {
                int[] iArr2 = this.V6;
                int[] iArr3 = this.u7;
                Z1(0, 0.0d, iArr2[iArr3[0]], iArr2[iArr3[1]], iArr2[iArr3[2]], iArr3[3] / 10.0f, this.U6[iArr3[4]]);
            }
            int i4 = !this.n7 ? 1 : 0;
            int[] iArr4 = this.V6;
            int[] iArr5 = this.u7;
            Z1(i4, 0.0d, iArr4[iArr5[i3]], iArr4[iArr5[1]], iArr4[iArr5[2]], iArr5[3] / 10.0f, this.U6[iArr5[4]]);
            w2(i3);
            boolean z2 = this.n7;
            G0(AudioDevice.STORE.SURRON, z2 ? 1 : 0);
            y0.h.s0(32, z2 ? 1 : 0);
            return;
        }
        if (i2 == 11) {
            o2(1);
            while (true) {
                int[] iArr6 = this.V7;
                if (i3 >= iArr6.length) {
                    return;
                }
                p2(i3, iArr6[i3]);
                i3++;
            }
        } else if (i2 == 8) {
            this.f15080t.v(AudioDevice.STORE.CSAUTO_SRS.ordinal());
            this.f15080t.v(AudioDevice.STORE.CSAUTO_FOC.ordinal());
            this.f15080t.v(AudioDevice.STORE.CSAUTO_TRUBASS.ordinal());
            this.f15080t.v(AudioDevice.STORE.CSAUTO_OTHERS.ordinal());
            v2(true);
            int i5 = SystemProperties.getBoolean("sys.lsec.dts_default_close", false) ? 0 : this.c8[14];
            int i6 = SystemProperties.getBoolean("sys.lsec.phantom_default_close", false) ? 0 : this.c8[17];
            int i7 = 0;
            while (true) {
                int[] iArr7 = this.c8;
                if (i7 >= iArr7.length) {
                    v2(false);
                    return;
                }
                if (i7 == 14) {
                    E1(i7, i5);
                } else if (i7 == 17) {
                    E1(i7, i6);
                } else {
                    E1(i7, iArr7[i7]);
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
            int i10 = 0;
            while (true) {
                int[] iArr8 = this.G7;
                if (i8 >= iArr8.length) {
                    break;
                }
                iArr8[i8] = 10;
                y0.h.s0(69, i10, iArr8[i8]);
                i10++;
                i8++;
            }
            int i11 = 0;
            while (true) {
                int[] iArr9 = this.H7;
                if (i11 >= iArr9.length) {
                    break;
                }
                if (i11 == 0) {
                    iArr9[i11] = 1;
                } else {
                    iArr9[i11] = 0;
                }
                y0.h.s0(69, i10, iArr9[i11]);
                i10++;
                i11++;
            }
            int i12 = 0;
            while (true) {
                int[] iArr10 = this.I7;
                if (i12 >= iArr10.length) {
                    return;
                }
                iArr10[i12] = 0;
                y0.h.s0(69, i10, iArr10[i12]);
                i10++;
                i12++;
            }
        }
    }

    public void G1(int i2) {
        int i3 = u0.b.D;
        if (j0(i3) == 1) {
            O1(1, this.T6[i2] - 10.0d);
            return;
        }
        if (i3 == 1) {
            O1(0, this.T6[i2] - 4.5d);
        } else if (i3 == 2 || i3 == 3) {
            O1(1, this.T6[i2] - 6.0d);
        } else {
            O1(0, this.T6[i2] - 9.0d);
        }
    }

    public void H1(int i2) {
        if (i2 != 0) {
            P1(1);
        } else {
            P1(0);
        }
    }

    public void I1(int i2, int i3, int i4, double d2, double d3) {
        double d4;
        f fVar = new f();
        synchronized (this) {
            double dQ2 = (this.g8[0] == 1 ? q2(d3) : d3) * 1.5d;
            if (this.k8 && this.g8[0] == 0) {
                if (dQ2 <= 0.0d) {
                    d4 = this.M6[i2];
                } else if (dQ2 <= 1.5d) {
                    d4 = this.M6[i2] / 2.0d;
                }
                dQ2 += d4;
            }
            double dMax = Math.max(-15.0d, Math.min(dQ2, 15.0d));
            int i5 = dMax == 0.0d ? 21 : 2;
            if (i3 == 1) {
                f2(0, 137, this.N6[i2], fVar.a(1, i5, i4, d2, dMax, 1));
            } else {
                f2(0, 132, this.N6[i2], fVar.a(0, i5, i4, d2, dMax, 1));
            }
        }
    }

    public void J1(boolean z2) {
        j jVar = new j();
        synchronized (this) {
            try {
                if (z2) {
                    f2(0, 128, 7, new int[]{jVar.a(1)});
                } else {
                    f2(0, 128, 7, new int[]{jVar.a(0)});
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void K1() {
        V1(0, 0, 0, 0);
        a.i.a0(10L);
        N1();
        a.i.a0(10L);
        V1(1, 0, 0, 0);
        a.i.a0(10L);
        synchronized (this) {
            L1();
            M1();
        }
        a.i.a0(10L);
        V1(1, 1, 1, 1);
        a.i.a0(100L);
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
        if (i6 < this.R6.length) {
            l2(i2, iArr[i4], iArr[i5], i6);
        }
        super.L(i2, i3);
    }

    public void L1() {
        if (SystemProperties.getBoolean("sys.lsec.dmicMono", false)) {
            this.D6 = s0.A(App.c(), R.raw.akm7738_pram_table1_7870nor_dmicmono, 16);
            Log.e("alex", "Write 7870normal dmicmono");
        } else {
            this.D6 = s0.A(App.c(), R.raw.akm7738_pram_table1_7870nor, 16);
            Log.e("alex", "Write 7870normal");
        }
        this.E6 = s0.A(App.c(), R.raw.akm7738_cram_table1_7870nor, 16);
        this.g7.d(j9, new int[]{184, 0, 0}, this.D6);
        this.g7.d(j9, new int[]{180, 0, 0}, this.E6);
        this.g7.d(j9, new int[]{178, 0, 0}, this.G6);
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
        l2(i2, iArr[i4], iArr[i4 + 2], iArr[i5]);
        super.M(i2, i3);
    }

    public void M1() {
        this.D6 = s0.A(App.c(), R.raw.akm7738_pram_table2_7870nor, 16);
        this.E6 = s0.A(App.c(), R.raw.akm7738_cram_table2_7870nor, 16);
        this.g7.d(j9, new int[]{185, 0, 0}, this.D6);
        this.g7.d(j9, new int[]{181, 0, 0}, this.E6);
        this.g7.d(j9, new int[]{179, 0, 0}, this.F6);
    }

    @Override // module.sound.AudioDevice
    public void N0() {
        e eVar = new e();
        this.f15045b0 = Math.max(0, Math.min(this.f15045b0, 10));
        Log.e("alex", "beepVolume: " + this.f15045b0);
        synchronized (this) {
            f2(1, 128, 378, new int[]{eVar.a(this.s8[this.f15045b0])});
        }
    }

    /* JADX WARN: Code duplicated, block: B:43:0x008d  */
    public void N1() {
        int i2;
        int i3 = 0;
        while (true) {
            int[] iArr = this.C6;
            if (i3 >= iArr.length) {
                return;
            }
            int i4 = iArr[i3];
            int i5 = 14;
            if (i4 == 1) {
                int i6 = this.r8;
                if (i6 == 1) {
                    i5 = 12;
                } else if (i6 == 2) {
                    i5 = 19;
                } else {
                    i5 = 7;
                }
            } else if (i4 != 14) {
                if (i4 == 79) {
                    i2 = j4.f16464b == 143 ? 48 : iArr[i3 + 1];
                } else if (i4 == 128) {
                    int i7 = this.r8;
                    if (i7 == 1) {
                        i5 = 10;
                    } else if (i7 != 2) {
                        i5 = 2;
                    }
                } else if (i4 == 133) {
                    i5 = iArr[i3 + 1] & (-32);
                } else if (i4 == 35) {
                    int i8 = SystemProperties.getInt("persist.blinkbt.qcc3031.ecnr.disable", 0);
                    Log.e("alex", "------btEcnrConfig:" + i8);
                    if (j4.f16464b == 143) {
                        i2 = 20;
                    } else {
                        i2 = i8 == 1 ? 32 : this.C6[i3 + 1];
                    }
                } else if (i4 != 36) {
                    i5 = iArr[i3 + 1];
                } else if (j4.f16464b == 143) {
                    i5 = 19;
                } else {
                    i2 = iArr[i3 + 1];
                }
                i5 = i2;
            } else {
                int i10 = this.r8;
                if (i10 == 1) {
                    i5 = 19;
                } else {
                    i5 = i10 == 2 ? 9 : 39;
                }
            }
            h2(this.C6[i3], i5);
            i3 += 2;
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
        if (i6 < this.R6.length) {
            l2(i2, iArr[i4], iArr[i5], i6);
        }
        super.O(i2, i3);
    }

    public void O1(int i2, double d2) {
        e eVar = new e();
        synchronized (this) {
            try {
                if (i2 == 0) {
                    int i3 = (int) (48.0d - (d2 * 2.0d));
                    h2(97, i3);
                    h2(98, i3);
                } else {
                    f2(0, 128, 1, new int[]{eVar.a(d2)});
                    f2(0, 128, 337, new int[]{eVar.a(d2)});
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void P1(int i2) {
        new j();
        synchronized (this) {
            try {
                if (i2 != 0) {
                    u2();
                    c2(0, 24, 1);
                } else {
                    c2(0, 24, 0);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void Q1(int i2, double d2, int i3) {
        new j();
        e eVar = new e();
        g gVar = new g();
        synchronized (this) {
            f2(0, 128, 343, new int[]{eVar.a(d2)});
            if (d2 <= -145.0d) {
                f2(1, 128, 442, new int[]{gVar.a(-145.0d, 0)});
                f2(1, 128, 432, new int[]{gVar.a(-145.0d, 0)});
                f2(0, 128, 349, new int[]{gVar.a(-145.0d, 0)});
                f2(0, 128, 351, new int[]{gVar.a(-145.0d, 0)});
            } else {
                f2(1, 128, 442, new int[]{gVar.a(0.0d, 0)});
                f2(1, 128, 432, new int[]{gVar.a(0.0d, 0)});
                f2(0, 128, 349, new int[]{gVar.a(0.0d, 0)});
                f2(0, 128, 351, new int[]{gVar.a(0.0d, 0)});
            }
        }
    }

    @Override // module.sound.AudioDevice
    public void R0(boolean z2) {
        super.R0(z2);
        if (z2) {
            u0.b.V3 = z2;
        }
        if (z2 || !this.j8) {
            return;
        }
        this.j8 = false;
        synchronized (this) {
            h2(110, 0);
            R1(0, this.P6[this.o7[0]]);
            R1(1, this.P6[this.o7[1]]);
            R1(2, this.P6[this.o7[2]]);
            R1(3, this.P6[this.o7[3]]);
            o(y0.f.V0);
        }
        y0.h.X(16, false);
        this.z7 = 0;
    }

    public void R1(int i2, int i3) {
        e eVar = new e();
        if (i2 >= 0 && i2 <= 3) {
            synchronized (this) {
                f2(1, 128, this.t8[i2], new int[]{eVar.a(i3)});
            }
        } else if (i2 == 5) {
            synchronized (this) {
                f2(1, 128, Downloads.Impl.STATUS_TOO_MANY_REDIRECTS, new int[]{eVar.a(this.Q6[i3])});
            }
        }
    }

    public int[] S1(int i2, int i3, int i4) {
        int[] iArr = new int[i4];
        return this.g7.e(i4, j9, false, i2, s0.c(i3, 1), s0.c(i3, 0));
    }

    public int[] T1(int i2, int i3, int i4, int i5) {
        int i6 = i5 * 3;
        int[] iArrE = new int[i6];
        int[] iArr = new int[i5];
        if (i2 != 0) {
            iArrE = this.g7.e(i6, j9, false, i3, s0.c(i4, 1), s0.c(i4, 0));
        }
        for (int i7 = 0; i7 < i5; i7++) {
            int i8 = i7 * 3;
            iArr[i7] = ((iArrE[i8 + 0] << 16) & Spanned.SPAN_PRIORITY) + ((iArrE[i8 + 1] << 8) & 65280) + (iArrE[i8 + 2] & 255);
        }
        return iArr;
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
            r1(bVar, i2, 69632, this.o7[0]);
            r1(bVar, i2, 73728, this.o7[1]);
            r1(bVar, i2, 135168, this.o7[2]);
            r1(bVar, i2, 139264, this.o7[3]);
            r1(bVar, i2, 65536, this.o7[4]);
        } else if (i2 == 90) {
            r1(bVar, i2, this.r8);
        } else if (i2 == 93) {
            r1(bVar, i2, this.y7);
        } else if (i2 == 26) {
            r1(bVar, i2, this.f15092z);
        } else if (i2 == 27) {
            r1(bVar, i2, 0, this.j7);
            r1(bVar, i2, 256, this.k7);
        } else if (i2 == 55) {
            r1(bVar, i2, this.m7 ? 1 : 0);
        } else if (i2 != 56) {
            switch (i2) {
                case 29:
                    r1(bVar, i2, 65536, this.s7[1]);
                    r1(bVar, i2, 131072, this.t7[1]);
                    break;
                case 30:
                    r1(bVar, i2, 65536, this.s7[0]);
                    r1(bVar, i2, 131072, this.t7[0]);
                    break;
                case 31:
                    r1(bVar, i2, 65552, this.q7[0]);
                    r1(bVar, i2, 65568, this.q7[1]);
                    r1(bVar, i2, WifiStateMachine.CMD_STATIC_IP_FAILURE, this.q7[2]);
                    r1(bVar, i2, 131104, this.q7[3]);
                    break;
                case 32:
                    r1(bVar, i2, this.n7 ? 1 : 0);
                    break;
                case 33:
                    r1(bVar, i2, this.u8);
                    break;
                case 34:
                    r1(bVar, i2, 69632, this.r7[0]);
                    r1(bVar, i2, 73728, this.r7[1]);
                    r1(bVar, i2, 135168, this.r7[2]);
                    r1(bVar, i2, 139264, this.r7[3]);
                    r1(bVar, i2, 65536, this.r7[4]);
                    r1(bVar, i2, 131072, this.r7[5]);
                    break;
                default:
                    switch (i2) {
                        case 61:
                            r1(bVar, i2, this.h7);
                            break;
                        case 62:
                            r1(bVar, i2, this.p7);
                            break;
                        case 63:
                            int[] iArr4 = this.u7;
                            if (iArr4 != null && iArr4.length > 0) {
                                int i6 = 0;
                                while (true) {
                                    int[] iArr5 = this.u7;
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
                                    int[] iArr7 = this.d8;
                                    System.arraycopy(iArr7, 0, iArr6, 0, iArr7.length);
                                    int[] iArr8 = this.e8;
                                    System.arraycopy(iArr8, 0, iArr6, 2, iArr8.length);
                                    int[] iArr9 = this.f8;
                                    System.arraycopy(iArr9, 0, iArr6, 8, iArr9.length);
                                    int[] iArr10 = this.g8;
                                    System.arraycopy(iArr10, 0, iArr6, 14, iArr10.length);
                                    for (int i7 = 0; i7 < 21; i7++) {
                                        r1(bVar, i2, i7, iArr6[i7]);
                                    }
                                    break;
                                case 69:
                                    int i8 = 0;
                                    int i10 = 0;
                                    while (true) {
                                        int[] iArr11 = this.G7;
                                        if (i8 >= iArr11.length) {
                                            int i11 = 0;
                                            while (true) {
                                                int[] iArr12 = this.H7;
                                                if (i11 >= iArr12.length) {
                                                    int i12 = 0;
                                                    while (true) {
                                                        int[] iArr13 = this.I7;
                                                        if (i12 < iArr13.length) {
                                                            r1(bVar, i2, i10, iArr13[i12]);
                                                            i10++;
                                                            i12++;
                                                        }
                                                    }
                                                } else {
                                                    r1(bVar, i2, i10, iArr12[i11]);
                                                    i10++;
                                                    i11++;
                                                }
                                            }
                                        } else {
                                            r1(bVar, i2, i10, iArr11[i8]);
                                            i10++;
                                            i8++;
                                        }
                                        break;
                                    }
                                    break;
                                case 70:
                                    int[] iArr14 = this.v7;
                                    r1(bVar, i2, iArr14[0], iArr14[1]);
                                    break;
                                default:
                                    switch (i2) {
                                        case 83:
                                            r1(bVar, i2, this.O7);
                                            break;
                                        case 84:
                                            int i13 = 0;
                                            while (true) {
                                                int[] iArr15 = this.R7;
                                                if (i13 >= iArr15.length) {
                                                    int i14 = 0;
                                                    while (true) {
                                                        int[] iArr16 = this.R7;
                                                        if (i14 >= iArr16.length) {
                                                            int i15 = 0;
                                                            while (true) {
                                                                int[] iArr17 = this.R7;
                                                                if (i15 >= iArr17.length) {
                                                                    int i16 = 0;
                                                                    while (true) {
                                                                        int[] iArr18 = this.R7;
                                                                        if (i16 < iArr18.length) {
                                                                            r1(bVar, i2, (iArr18.length * 3) + i16, this.U7[i16]);
                                                                            i16++;
                                                                        }
                                                                    }
                                                                } else {
                                                                    r1(bVar, i2, (iArr17.length * 2) + i15, this.T7[i15]);
                                                                    i15++;
                                                                }
                                                            }
                                                        } else {
                                                            r1(bVar, i2, iArr16.length + i14, this.S7[i14]);
                                                            i14++;
                                                        }
                                                    }
                                                } else {
                                                    r1(bVar, i2, i13, iArr15[i13]);
                                                    i13++;
                                                }
                                                break;
                                            }
                                            break;
                                        case 85:
                                            r1(bVar, i2, this.q8 ? 1 : 0);
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
            r1(bVar, i2, 0, this.h8);
            r1(bVar, i2, 16, this.i8);
        }
        return z2 ? z2 : super.U(i2, bVar);
    }

    public int U1(int i2) {
        return S1(64, i2, 1)[0] & 255;
    }

    public void V1(int i2, int i3, int i4, int i5) {
        byte bU1 = (byte) U1(1);
        byte bU2 = (byte) U1(133);
        h2(1, (byte) (i2 != 0 ? bU1 | (-128) : bU1 & 127));
        byte b2 = (byte) (i3 != 0 ? bU2 | 16 : bU2 & (-17));
        byte b3 = (byte) (i4 != 0 ? b2 | 14 : b2 & (-15));
        h2(133, (byte) (i5 != 0 ? b3 | 1 : b3 & (-2)));
    }

    @Override // module.sound.AudioDevice
    public void W0() {
        super.W0();
        this.l8 = false;
        this.m8 = true;
        ToolsJni.cmd_251_Normal_Io_Set(0, 0);
        a.i.a0(140L);
        ToolsJni.cmd_251_Normal_Io_Set(0, 1);
        a.i.a0(20L);
        K1();
        this.l8 = true;
        w0(this.f15062k);
        m2(this.f15074q);
        l(this.f15052f ? 1 : 0);
        j(null);
        a(u0.b.D);
        A1(y0.f.C0, true);
        a1(65536, this.o7[4]);
        o(this.f15092z);
        e1(256, this.k7);
        e1(0, this.j7);
        D2(69632, this.r7[0]);
        D2(73728, this.r7[1]);
        D2(135168, this.r7[2]);
        D2(139264, this.r7[3]);
        int[] iArr = this.s7;
        B0(65536, iArr[0], iArr[1]);
        int[] iArr2 = this.t7;
        B0(131072, iArr2[0], iArr2[1]);
        int i2 = !this.n7 ? 1 : 0;
        int[] iArr3 = this.V6;
        int[] iArr4 = this.u7;
        Z1(i2, 0.0d, iArr3[iArr4[0]], iArr3[iArr4[1]], iArr3[iArr4[2]], iArr4[3] / 10.0f, this.U6[iArr4[4]]);
        o2(1);
        int i3 = 0;
        while (true) {
            int[] iArr5 = this.R7;
            if (i3 >= iArr5.length) {
                break;
            }
            p2(i3, iArr5[i3]);
            i3++;
        }
        int i4 = 0;
        while (true) {
            int[] iArr6 = this.R7;
            if (i4 >= iArr6.length) {
                break;
            }
            p2(iArr6.length + i4, this.S7[i4]);
            i4++;
        }
        int i5 = 0;
        while (true) {
            int[] iArr7 = this.R7;
            if (i5 >= iArr7.length) {
                break;
            }
            p2((iArr7.length * 2) + i5, this.T7[i5]);
            i5++;
        }
        int i6 = 0;
        while (true) {
            int[] iArr8 = this.R7;
            if (i6 >= iArr8.length) {
                break;
            }
            p2((iArr8.length * 3) + i6, this.U7[i6]);
            i6++;
        }
        k1(this.u8);
        E1(0, this.d8[0]);
        E1(1, this.d8[1]);
        E1(2, this.e8[0]);
        E1(5, 1);
        E1(3, this.e8[1]);
        E1(6, 1);
        E1(4, this.e8[2]);
        E1(7, 1);
        E1(18, this.g8[4]);
        E1(19, this.g8[5]);
        E1(20, this.g8[6]);
        E1(8, this.f8[0]);
        E1(9, this.f8[1]);
        E1(10, this.f8[2]);
        E1(11, 1);
        E1(12, 1);
        E1(13, 1);
        E1(17, this.g8[3]);
        E1(16, this.g8[2]);
        E1(14, this.g8[0]);
        E1(15, this.g8[1]);
        x2();
        synchronized (this) {
            if (SystemProperties.getBoolean("sys.lsec.dmicMono", false)) {
                h2(48, 2);
            }
        }
        s2();
        N0();
        this.m8 = false;
        e eVar = new e();
        g gVar = new g();
        synchronized (this) {
            f2(0, 128, SpellChecker.WORD_ITERATOR_INTERVAL, new int[]{gVar.a(0.0d, 0)});
            f2(0, 128, 352, new int[]{gVar.a(0.0d, 0)});
            f2(1, 128, 544, new int[]{eVar.a(0.0d)});
            f2(0, 128, 330, new int[]{eVar.a(0.0d)});
        }
    }

    public void W1(int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i10;
        new j();
        k kVar = new k();
        int[] iArr = this.G7;
        int length = i2 % iArr.length;
        if (i2 < iArr.length) {
            if (iArr[length] != i3) {
                int iMax = Math.max(0, Math.min(i3, 10));
                this.G7[length] = iMax;
                y0.h.s0(69, i2, iMax);
                H0(AudioDevice.STORE.DLY_MIXER_LVL, this.G7);
            }
        } else if (i2 < iArr.length * 2) {
            int[] iArr2 = this.H7;
            if (iArr2[length] != i3) {
                iArr2[length] = i3;
                y0.h.s0(69, i2, i3);
                H0(AudioDevice.STORE.DLY_MIXER_PHASE, this.H7);
            }
        } else if (i2 < iArr.length * 3) {
            int[] iArr3 = this.I7;
            if (iArr3[length] != i3) {
                iArr3[length] = i3;
                y0.h.s0(69, i2, i3);
                H0(AudioDevice.STORE.DLY_MIXER_TAP, this.I7);
            }
        }
        synchronized (this) {
            int[] iArr4 = this.G7;
            if (i2 < iArr4.length * 2) {
                if (length == 0) {
                    i10 = this.C7[iArr4[length]];
                    i8 = 58;
                    i7 = 52;
                } else {
                    i7 = (length + 52) - 1;
                    i8 = (length + 58) - 1;
                    i10 = this.D7[iArr4[length]];
                }
                if (i2 == iArr4.length) {
                    w2(true);
                }
                double d2 = i10;
                f2(0, 128, i7, new int[]{kVar.a(d2, this.H7[length])});
                f2(0, 128, i8, new int[]{kVar.a(d2, this.H7[length])});
                if (i2 == this.G7.length) {
                    w2(false);
                }
            } else if (i2 < iArr4.length * 3) {
                if (length == 0) {
                    i5 = 8;
                    i6 = this.E7[this.I7[0]];
                    i4 = 1;
                } else {
                    i4 = (length + 1) - 1;
                    i5 = (length + 8) - 1;
                    i6 = this.I7[length] + this.F7[length];
                }
                g2(0, 144, i4, new int[]{499 - i6});
                g2(0, 144, i5, new int[]{999 - i6});
            }
        }
    }

    public void X1(int i2, int i3, int i4, int i5, int i6) {
        new j();
        k kVar = new k();
        if (i2 >= this.G7.length) {
            return;
        }
        synchronized (this) {
            int i7 = i2 + 52;
            int i8 = i2 + 58;
            if (i2 != 0) {
                i7--;
                i8--;
            }
            double d2 = i4;
            f2(0, 128, i7, new int[]{kVar.a(d2, i3)});
            f2(0, 128, i8, new int[]{kVar.a(d2, i3)});
            int i10 = i2 + 1;
            int i11 = i2 + 8;
            if (i2 != 0) {
                i10--;
                i11--;
            }
            g2(0, 144, i10, new int[]{499 - i5});
            g2(0, 144, i11, new int[]{999 - i5});
        }
    }

    public int Y1(int i2) {
        h hVar = new h();
        synchronized (this) {
            f2(0, 128, 508, new int[]{((i2 + 499) << 8) & 16776960});
        }
        a.i.a0(1L);
        return hVar.a(T1(1, 118, 0, 1)[0]);
    }

    public void Z1(int i2, double d2, double d3, double d4, double d5, double d6, int i3) {
        j jVar = new j();
        i iVar = new i();
        synchronized (this) {
            try {
                if (i2 != 0) {
                    f2(0, 128, 51, new int[]{jVar.a(1)});
                } else {
                    f2(0, 128, 51, new int[]{jVar.a(0)});
                    f2(0, 128, 25, new int[]{iVar.c(-6.0d)});
                    f2(0, 128, 26, new int[]{iVar.g(d3)});
                    f2(0, 128, 37, new int[]{iVar.d(d4)});
                    f2(0, 128, 50, new int[]{iVar.b(d5)});
                    f2(0, 128, 49, new int[]{iVar.e(d6)});
                    f2(0, 128, 48, new int[]{iVar.f(d6)});
                    int[] iArrA = iVar.a(1, i3, 0.70711d, 1);
                    f2(0, 132, 27, iArrA);
                    f2(0, 132, 32, iArrA);
                    int[] iArrA2 = iVar.a(0, i3, 0.70711d, 1);
                    f2(0, 132, 38, iArrA2);
                    f2(0, 132, 43, iArrA2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:41:0x007a  */
    /* JADX WARN: Code duplicated, block: B:42:0x00a7  */
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
        int i3 = h0.c.G == 1 ? 2 : i2;
        int i4 = u0.b.E;
        if (i4 >= 0) {
            i3 = i4;
        }
        this.f15064l = i3;
        int i5 = this.f15048d.get(i3) & 15;
        if (i5 < 0) {
            i5 = CHANNEL.IN1.f15715a;
        }
        boolean z6 = i5 == CHANNEL.IN1.f15715a || i5 == CHANNEL.IN4.f15715a;
        c4 c4Var = j4.f16466d;
        if (c4Var == null || !c4Var.l3()) {
            z2 = false;
            z3 = z6;
        } else {
            z2 = true;
            z3 = false;
        }
        if (!z2 && i3 == 1 && (gVar = g.e.f2254a) != null && ((Chip) gVar).M()) {
            z2 = true;
            z3 = false;
        }
        boolean z7 = z3;
        boolean z8 = z3;
        if (this.f15086w) {
            if (i3 == 2) {
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
                    d0.e(AudioManager.class.getName(), this.l7, "setVoiceSwitch2iis", new Class[]{cls}, Boolean.valueOf(z5));
                    d0.e(AudioManager.class.getName(), this.l7, "setAudioSwitch2iis", new Class[]{cls}, Boolean.valueOf(z5));
                } else {
                    String name2 = AudioManager.class.getName();
                    AudioManager audioManager = this.l7;
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
                d0.e(AudioManager.class.getName(), this.l7, "setVoiceSwitch2iis", new Class[]{cls}, Boolean.valueOf(z5));
                d0.e(AudioManager.class.getName(), this.l7, "setAudioSwitch2iis", new Class[]{cls}, Boolean.valueOf(z5));
            } else {
                String name3 = AudioManager.class.getName();
                AudioManager audioManager2 = this.l7;
                Class cls3 = Integer.TYPE;
                d0.e(name3, audioManager2, "setWiredDeviceConnectionState", new Class[]{cls3, cls3, String.class, String.class}, 8, Integer.valueOf(!z5), ProxyProperties.LOCAL_EXCL_LIST, ProxyProperties.LOCAL_EXCL_LIST);
            }
            z8 = z4;
        }
        J1(z8);
        F1(i5);
        j2(i3 != 2 ? this.g8[0] : 0);
        int i6 = y0.f.f18090z0[i3];
        if (i6 < 0 || i6 >= 48) {
            return;
        }
        m(i6, y0.f.f18084w0[i6]);
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
        if (n2(i4, i5)) {
            super.a1(i2, i3);
        }
    }

    public void a2(int i2) {
        new j();
        synchronized (this) {
            try {
                if (i2 != 0) {
                    c2(0, 51, 1);
                } else {
                    c2(0, 51, 0);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // module.sound.AudioDevice
    public void b1(boolean z2) {
        if (this.m7 != z2) {
            return;
        }
        boolean z3 = !z2;
        this.m7 = z3;
        if (z3) {
            j(null);
        }
        super.b1(z2);
    }

    public void b2(int i2, int i3) {
        int i4 = (i3 * 384) / 100;
        new d();
        synchronized (this) {
            try {
                if (i2 == 0) {
                    g2(1, 144, 5, new int[]{1727 - i4});
                } else if (i2 == 1) {
                    g2(1, 144, 7, new int[]{2303 - i4});
                } else if (i2 == 2) {
                    g2(1, 144, 1, new int[]{575 - i4});
                } else if (i2 == 3) {
                    g2(1, 144, 3, new int[]{1151 - i4});
                } else if (i2 == 4) {
                    g2(1, 144, 11, new int[]{3455 - i4});
                } else if (i2 == 5) {
                    g2(1, 144, 9, new int[]{2879 - i4});
                }
            } catch (Throwable th) {
                throw th;
            }
        }
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
            iArr[i3] = Y1(i3);
            z2 = z2 || iArr[i3] > -140;
        }
        boolean z3 = z2 || e0();
        if ((Configure.Property.BLUETOOTH_TYPE.d(0) == 7 && ((i2 = u0.b.D) == 3 || i2 == 2)) || u0.b.D == 1) {
            z3 = true;
        }
        if (this.J) {
            if (z3) {
                if (this.j8) {
                    this.j8 = false;
                    synchronized (this) {
                        h2(110, 0);
                        R1(0, this.P6[this.o7[0]]);
                        R1(1, this.P6[this.o7[1]]);
                        R1(2, this.P6[this.o7[2]]);
                        R1(3, this.P6[this.o7[3]]);
                        o(y0.f.V0);
                    }
                    y0.h.X(16, false);
                }
                this.z7 = 0;
            } else {
                int i4 = this.z7;
                if (i4 < 7) {
                    this.z7 = i4 + 1;
                }
                if (this.z7 == 6) {
                    this.j8 = true;
                    synchronized (this) {
                        int[] iArr2 = this.P6;
                        R1(0, iArr2[iArr2.length - 1]);
                        int[] iArr3 = this.P6;
                        R1(1, iArr3[iArr3.length - 1]);
                        int[] iArr4 = this.P6;
                        R1(2, iArr4[iArr4.length - 1]);
                        int[] iArr5 = this.P6;
                        R1(3, iArr5[iArr5.length - 1]);
                        R1(5, 0);
                        h2(110, 96);
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

    public void c2(int i2, int i3, int i4) {
        j jVar = new j();
        w2(true);
        synchronized (this) {
            try {
                if (i4 != 0) {
                    f2(i2, 128, i3, new int[]{jVar.a(0)});
                } else {
                    f2(i2, 128, i3, new int[]{jVar.a(1)});
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        w2(false);
    }

    public void d2(double d2) {
        e eVar = new e();
        synchronized (this) {
            f2(0, 128, 8, new int[]{eVar.a(d2)});
        }
    }

    public int e2(int i2, int i3, int[] iArr) {
        return this.g7.d(j9, new int[]{i2, s0.c(i3, 1), s0.c(i3, 0)}, iArr);
    }

    @Override // module.sound.AudioDevice
    public void f1(boolean z2) {
        super.f1(z2);
    }

    public synchronized int f2(int i2, int i3, int i4, int[] iArr) {
        if (!this.l8) {
            return 0;
        }
        int[] iArr2 = new int[iArr.length * 3];
        for (int i5 = 0; i5 < iArr.length; i5++) {
            int i6 = i5 * 3;
            iArr2[i6 + 0] = (iArr[i5] >> 16) & 255;
            iArr2[i6 + 1] = (iArr[i5] >> 8) & 255;
            iArr2[i6 + 2] = iArr[i5] & 255;
        }
        this.g7.d(j9, new int[]{i3, (i4 >> 8) & 255, i4 & 255}, iArr2);
        return i2 == 0 ? this.g7.d(j9, new int[]{164}, 0, 0) : this.g7.d(j9, new int[]{165}, 0, 0);
    }

    public synchronized int g2(int i2, int i3, int i4, int[] iArr) {
        if (!this.l8) {
            return 0;
        }
        int[] iArr2 = new int[iArr.length * 3];
        for (int i5 = 0; i5 < iArr.length; i5++) {
            int i6 = i5 * 3;
            iArr2[i6 + 0] = (iArr[i5] >> 16) & 255;
            iArr2[i6 + 1] = (iArr[i5] >> 8) & 255;
            iArr2[i6 + 2] = iArr[i5] & 255;
        }
        this.g7.d(j9, new int[]{i3, (i4 >> 8) & 255, i4 & 255}, iArr2);
        return i2 == 0 ? this.g7.d(j9, new int[]{162}, 0, 0) : this.g7.d(j9, new int[]{163}, 0, 0);
    }

    public int h2(int i2, int i3) {
        return e2(192, i2, new int[]{i3});
    }

    @Override // module.sound.AudioDevice
    public void i1(int i2, int i3) {
    }

    public boolean i2(int[] iArr, int i2) {
        int[] iArrT2;
        return i2 == 0 || (iArrT2 = t2(i2)) == null || !Arrays.equals(iArr, iArrT2);
    }

    @Override // module.sound.AudioDevice, y0.e
    public void j(int[] iArr) {
        if (iArr != null) {
            Log.e("ak7738", "  field2Ic: " + b0.e(iArr, 0, iArr.length));
        }
        if (iArr != null) {
            Log.e("ak7738", " field2Ic1------ loaded: " + this.f15050e + "  speakerLinkage: " + this.m7);
        }
        if (!this.f15050e || this.j8) {
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
            i3 = CHANNEL.IN1.f15715a;
        }
        return i3 == CHANNEL.IN1.f15715a ? 1 : 0;
    }

    @Override // module.sound.AudioDevice
    public void j1(int i2, int i3) {
        boolean z2 = false;
        if (i3 > 100 || i3 < 0) {
            i3 = 0;
        }
        switch (i2) {
            case 65536:
                int[] iArr = this.r7;
                z2 = i3 != iArr[4];
                iArr[4] = i3;
                break;
            case 69632:
                int[] iArr2 = this.r7;
                boolean z3 = i3 != iArr2[0];
                iArr2[0] = i3;
                z2 = z3;
                break;
            case 73728:
                int[] iArr3 = this.r7;
                z2 = i3 != iArr3[1];
                iArr3[1] = i3;
                break;
            case 131072:
                int[] iArr4 = this.r7;
                z2 = i3 != iArr4[5];
                iArr4[5] = i3;
                break;
            case 135168:
                int[] iArr5 = this.r7;
                z2 = i3 != iArr5[2];
                iArr5[2] = i3;
                break;
            case 139264:
                int[] iArr6 = this.r7;
                z2 = i3 != iArr6[3];
                iArr6[3] = i3;
                break;
            case 1073741824:
                int[] iArr7 = this.r7;
                z2 = (i3 == iArr7[0] && i3 == iArr7[1] && i3 == iArr7[2] && i3 == iArr7[3] && i3 == iArr7[4] && i3 == iArr7[5]) ? false : true;
                j1(69632, i3);
                j1(73728, i3);
                j1(135168, i3);
                j1(139264, i3);
                j1(65536, i3);
                j1(131072, i3);
                break;
        }
        D2(i2, i3);
        if (z2) {
            H0(AudioDevice.STORE.SURRLEVEL, this.r7);
            super.j1(i2, i3);
        }
    }

    public final void j2(int i2) {
        j jVar = new j();
        c cVar = new c();
        w2(true);
        synchronized (this) {
            try {
                if (i2 == 0) {
                    f2(1, 128, 206, new int[]{cVar.c(1)});
                } else {
                    f2(1, 128, 206, new int[]{cVar.c(0)});
                }
                if (i2 == 1) {
                    f2(1, 128, 456, new int[]{jVar.a(0)});
                } else {
                    f2(1, 128, 456, new int[]{jVar.a(1)});
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        w2(false);
    }

    @Override // module.sound.AudioDevice
    public void k1(int i2) {
        new j();
        int i3 = i2 > 2 ? 0 : i2;
        if (i3 == 0) {
            c2(0, 64, 0);
            a.f.p().t(LogType.AUDIO, String.format(" 关闭混响------", new Object[0]));
        } else if (i3 == 1) {
            c2(0, 64, 1);
            a.f.p().t(LogType.AUDIO, String.format("进入混响  1--- ", new Object[0]));
            X1(0, this.H7[0], this.C7[this.G7[0]], this.E7[this.I7[0]], 0);
            X1(2, 0, this.C7[4], 0, 0);
            X1(3, 0, this.C7[0], 0, 0);
            X1(4, 0, this.C7[0], 0, 0);
            X1(5, 0, this.C7[0], 0, 0);
            X1(6, 0, this.C7[0], 0, 0);
        } else if (i3 == 2) {
            c2(0, 64, 1);
            a.f.p().t(LogType.AUDIO, String.format("进入混响  2--- ", new Object[0]));
            X1(1, this.H7[1], this.D7[this.G7[1]], this.F7[1] + this.I7[1], 0);
            X1(2, this.H7[2], this.D7[this.G7[2]], this.F7[2] + this.I7[2], 0);
            X1(3, this.H7[3], this.D7[this.G7[3]], this.I7[3] + this.F7[3], 0);
            X1(4, this.H7[4], this.D7[this.G7[4]], this.F7[4] + this.I7[4], 0);
            X1(5, this.H7[5], this.D7[this.G7[5]], this.I7[5] + this.F7[5], 0);
            X1(6, this.H7[6], this.D7[this.G7[6]], this.I7[6] + this.F7[6], 0);
        }
        if (this.u8 == i3) {
            return;
        }
        this.u8 = i3;
        super.k1(i3);
        int i4 = this.u8;
        if (i4 == 1 || i4 == 2) {
            A2();
        }
    }

    public final void k2(int i2) {
        if (i2 != this.y7) {
            i2 = o0.a(i2, -30, 36);
            this.y7 = i2;
            B2();
            SystemProperties.set("persist.dspmic.gain", String.valueOf(i2));
        }
        y0.h.s0(93, i2);
    }

    @Override // module.sound.AudioDevice, y0.e
    public void l(int i2) {
        this.f15052f = i2 == 1;
        super.l(i2);
        H1(this.f15052f ? 1 : 0);
    }

    @Override // module.sound.AudioDevice
    public void l1(boolean z2) {
        if (this.n7 == z2) {
            return;
        }
        this.n7 = z2;
        a2(z2 ? 1 : 0);
        super.l1(z2);
    }

    public void l2(int i2, int... iArr) {
        if (i2 < 0 || i2 >= this.f15060j || iArr.length != this.f15072p) {
            return;
        }
        int iMin = Math.min(this.R6.length - 1, iArr[2]);
        if (i2 < 17) {
            I1(i2, 1, iArr[0], iArr[1] / 10.0f, this.R6[iMin]);
        } else {
            I1(i2, 0, iArr[0], iArr[1] / 10.0f, this.R6[iMin]);
        }
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
        this.n7 = Y(AudioDevice.STORE.SURRON, 0) == 1;
        this.r7 = Z(AudioDevice.STORE.SURRLEVEL, this.r7);
        this.u8 = Y(AudioDevice.STORE.SURRMOED, this.u8);
        this.j7 = Y(AudioDevice.STORE.SBWLFREQ, this.j7);
        this.k7 = Y(AudioDevice.STORE.SBWHFREQ, this.k7);
        this.h7 = Y(AudioDevice.STORE.SUBWOOF_QVAL, 32);
        this.u7 = Z(AudioDevice.STORE.STEREO_PAEAM, this.u7);
        this.o7 = Z(AudioDevice.STORE.SPEAKER_GAINS, this.o7);
        this.p7 = Z(AudioDevice.STORE.NOISE_GATE, this.p7);
        this.s7[0] = Y(AudioDevice.STORE.P2BFFREQ, 0);
        this.s7[1] = Y(AudioDevice.STORE.P2BFGAIN, 0);
        this.t7[0] = Y(AudioDevice.STORE.P2BRFREQ, 0);
        this.t7[1] = Y(AudioDevice.STORE.P2BRGAIN, 0);
        this.q7[0] = Y(AudioDevice.STORE.HPFFA, 20);
        this.q7[1] = Y(AudioDevice.STORE.HPFFB, 200);
        this.q7[2] = Y(AudioDevice.STORE.HPFRA, 20);
        this.q7[3] = Y(AudioDevice.STORE.HPFRB, 200);
        this.v7 = Z(AudioDevice.STORE.SURR_FIELD, this.v7);
        this.d8 = Z(AudioDevice.STORE.CSAUTO_SRS, this.d8);
        this.e8 = Z(AudioDevice.STORE.CSAUTO_FOC, this.e8);
        this.f8 = Z(AudioDevice.STORE.CSAUTO_TRUBASS, this.f8);
        this.g8 = Z(AudioDevice.STORE.CSAUTO_OTHERS, this.g8);
        if (SystemProperties.getBoolean("sys.lsec.dts_default_close", false)) {
            this.g8[0] = 0;
        }
        if (SystemProperties.getBoolean("sys.lsec.phantom_default_close", false)) {
            this.g8[3] = 0;
        }
        this.G7 = Z(AudioDevice.STORE.DLY_MIXER_LVL, this.G7);
        this.H7 = Z(AudioDevice.STORE.DLY_MIXER_PHASE, this.H7);
        this.I7 = Z(AudioDevice.STORE.DLY_MIXER_TAP, this.I7);
        this.R7 = Z(AudioDevice.STORE.FILTER_CEN, this.R7);
        this.S7 = Z(AudioDevice.STORE.FILTER_FRT, this.S7);
        this.T7 = Z(AudioDevice.STORE.FILTER_REAR, this.T7);
        this.U7 = Z(AudioDevice.STORE.FILTER_SUB, this.U7);
        this.q8 = Y(AudioDevice.STORE.OPTICAL_DIRECT, s0.m("sys.lsec.opticalDirectDef", 1)) == 1;
        this.r8 = Y(AudioDevice.STORE.OPTICAL_TYPE, SystemProperties.getInt("sys.lsec.optType", 1));
        this.k8 = Configure.Property.EQ_CONFIG.b(false);
        int i2 = SystemProperties.getInt("persist.dspmic.gain", 26);
        this.y7 = i2;
        this.y7 = o0.a(i2, -30, 36);
    }

    public void m2(int[] iArr) {
        int length = iArr.length / this.f15072p;
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = this.f15072p;
            l2(i2, iArr[i2 * i3], iArr[(i2 * i3) + 2], iArr[(i3 * i2) + 1]);
        }
    }

    public boolean n2(int i2, int i3) {
        boolean z2 = false;
        if (i2 >= 0) {
            int[] iArr = this.o7;
            if (i2 < iArr.length) {
                int i4 = 16 - i3;
                if (iArr[i2] != i4) {
                    iArr[i2] = i4;
                    h0 h0Var = this.f15080t;
                    AudioDevice.STORE store = AudioDevice.STORE.SPEAKER_GAINS;
                    h0Var.r(store.ordinal(), this.o7);
                    this.f15080t.e(store.ordinal());
                    z2 = true;
                }
                R1(i2, this.P6[this.o7[i2]]);
            }
        }
        return z2;
    }

    @Override // module.sound.AudioDevice, y0.e
    public void o(int i2) {
        R1(5, i2);
        super.o(i2);
    }

    public void o2(int i2) {
        int iA = o0.a(i2, 0, 3);
        if (this.O7 != iA) {
            this.O7 = iA;
        }
        y0.h.s0(83, this.O7);
    }

    @Override // module.sound.AudioDevice
    public int p0() {
        return 120;
    }

    /* JADX WARN: Code duplicated, block: B:118:0x01a5  */
    /* JADX WARN: Code duplicated, block: B:120:0x01a8  */
    /* JADX WARN: Code duplicated, block: B:126:0x01e6 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:127:0x01e8  */
    /* JADX WARN: Code duplicated, block: B:128:0x01f0  */
    /* JADX WARN: Code duplicated, block: B:130:0x01f4  */
    /* JADX WARN: Code duplicated, block: B:131:0x01fc  */
    /* JADX WARN: Code duplicated, block: B:133:0x0200  */
    /* JADX WARN: Code duplicated, block: B:134:0x0208  */
    /* JADX WARN: Code duplicated, block: B:143:? A[RETURN, SYNTHETIC] */
    public void p2(int i2, int i3) {
        int iA;
        byte b2;
        int i4;
        int i5;
        byte b3;
        int i6;
        int i7;
        int i8;
        int i10;
        int i11;
        int i12;
        byte b4;
        f fVar = new f();
        if (i2 < 0 || i2 >= 16) {
            return;
        }
        int i13 = i2 % 4;
        int i14 = i2 / 2;
        int i15 = i14 % 2;
        int i16 = 4;
        if (i2 % 2 == 0) {
            int i17 = i13 + 1;
            if (i2 < 4) {
                iA = i15 == 0 ? o0.a(i3, 20, 500) : o0.a(i3, 30, 200);
                int[] iArr = this.R7;
                if (iArr[i13] != iA) {
                    iArr[i13] = iA;
                    b2 = 1;
                } else {
                    b2 = -1;
                }
                i4 = (i15 == 0 ? 1 : 100) * iA;
                i5 = i15 == 0 ? this.P7[iArr[i17]] : this.Q7[iArr[i17]];
            } else {
                if (i2 >= 8) {
                    if (i2 < 12) {
                        iA = i15 == 0 ? o0.a(i3, 20, 250) : o0.a(i3, 30, 200);
                        int[] iArr2 = this.T7;
                        if (iArr2[i13] != iA) {
                            iArr2[i13] = iA;
                            b2 = 1;
                        } else {
                            b2 = -1;
                        }
                        i4 = (i15 == 0 ? 1 : 100) * iA;
                        i5 = i15 == 0 ? this.P7[iArr2[i17]] : this.Q7[iArr2[i17]];
                    } else {
                        int iA2 = i15 == 0 ? o0.a(i3, 20, 200) : o0.a(i3, 20, 250);
                        int[] iArr3 = this.U7;
                        if (iArr3[i13] != iA2) {
                            iArr3[i13] = iA2;
                            b4 = 1;
                        } else {
                            b4 = -1;
                        }
                        i6 = iA2;
                        i7 = i15 == 0 ? this.P7[iArr3[i17]] : this.Q7[iArr3[i17]];
                        b3 = b4;
                        i8 = i6;
                    }
                    i10 = this.J7[i14];
                    synchronized (this) {
                        i11 = 0;
                        while (i11 < i16) {
                            int i18 = i11;
                            int i19 = i16;
                            f2(1, 132, i10 + (i18 * 5), fVar.d(0, i7, i11, i6, 0.70711d, 10.0d, 1));
                            i11 = i18 + 1;
                            i16 = i19;
                        }
                        i12 = i16;
                    }
                    y0.h.s0(84, i2, i8);
                    if (b3 > 0) {
                        if (i2 < i12) {
                            H0(AudioDevice.STORE.FILTER_CEN, this.R7);
                            return;
                        }
                        if (i2 < 8) {
                            H0(AudioDevice.STORE.FILTER_FRT, this.S7);
                        } else if (i2 < 12) {
                            H0(AudioDevice.STORE.FILTER_REAR, this.T7);
                        } else {
                            H0(AudioDevice.STORE.FILTER_SUB, this.U7);
                        }
                    }
                }
                iA = i15 == 0 ? o0.a(i3, 20, 250) : o0.a(i3, 30, 200);
                int[] iArr4 = this.S7;
                if (iArr4[i13] != iA) {
                    iArr4[i13] = iA;
                    b2 = 1;
                } else {
                    b2 = -1;
                }
                i4 = (i15 == 0 ? 1 : 100) * iA;
                i5 = i15 == 0 ? this.P7[iArr4[i17]] : this.Q7[iArr4[i17]];
            }
        } else {
            iA = o0.a(i3, 0, 5);
            int i20 = i13 - 1;
            if (i2 < 4) {
                int[] iArr5 = this.R7;
                if (iArr5[i13] != iA) {
                    iArr5[i13] = iA;
                    b2 = 1;
                } else {
                    b2 = -1;
                }
                i4 = (i15 == 0 ? 1 : 100) * iArr5[i20];
                i5 = i15 == 0 ? this.P7[iArr5[i13]] : this.Q7[iArr5[i13]];
            } else if (i2 < 8) {
                int[] iArr6 = this.S7;
                if (iArr6[i13] != iA) {
                    iArr6[i13] = iA;
                    b2 = 1;
                } else {
                    b2 = -1;
                }
                i4 = (i15 == 0 ? 1 : 100) * iArr6[i20];
                i5 = i15 == 0 ? this.P7[iArr6[i13]] : this.Q7[iArr6[i13]];
            } else if (i2 < 12) {
                int[] iArr7 = this.T7;
                if (iArr7[i13] != iA) {
                    iArr7[i13] = iA;
                    b2 = 1;
                } else {
                    b2 = -1;
                }
                i4 = (i15 == 0 ? 1 : 100) * iArr7[i20];
                i5 = i15 == 0 ? this.P7[iArr7[i13]] : this.Q7[iArr7[i13]];
            } else {
                int[] iArr8 = this.U7;
                if (iArr8[i13] != iA) {
                    iArr8[i13] = iA;
                    b2 = 1;
                } else {
                    b2 = -1;
                }
                i4 = iArr8[i20];
                i5 = i15 == 0 ? this.P7[iArr8[i13]] : this.Q7[iArr8[i13]];
            }
        }
        i7 = i5;
        i6 = i4;
        b3 = b2;
        i8 = iA;
        i10 = this.J7[i14];
        synchronized (this) {
            i11 = 0;
            while (i11 < i16) {
                int i110 = i11;
                int i111 = i16;
                f2(1, 132, i10 + (i110 * 5), fVar.d(0, i7, i11, i6, 0.70711d, 10.0d, 1));
                i11 = i110 + 1;
                i16 = i111;
            }
            i12 = i16;
            y0.h.s0(84, i2, i8);
            if (b3 > 0) {
                if (i2 < i12) {
                    H0(AudioDevice.STORE.FILTER_CEN, this.R7);
                    return;
                }
                if (i2 < 8) {
                    H0(AudioDevice.STORE.FILTER_FRT, this.S7);
                } else if (i2 < 12) {
                    H0(AudioDevice.STORE.FILTER_REAR, this.T7);
                } else {
                    H0(AudioDevice.STORE.FILTER_SUB, this.U7);
                }
            }
        }
    }

    @Override // module.sound.AudioDevice
    public int q0() {
        return -1090;
    }

    public final double q2(double d2) {
        return Math.max(-10.0d, Math.min(d2 >= 0.0d ? (0.8d - (0.02d * d2)) * d2 : d2 * ((0.02d * d2) + 0.8d), Math.min(10.0d, d2)));
    }

    @Override // module.sound.AudioDevice
    public void r0(int i2) {
        int iMax = Math.max(0, Math.min(i2, this.L6.length - 1));
        this.f15056h = iMax;
        Q1(1, x1(iMax, this.L6) / 10, 0);
    }

    public double r2(int i2) {
        return ((double) i2) / 100.0d;
    }

    public final void s2() {
        int i2;
        int i3;
        B2();
        e eVar = new e();
        int i4 = SystemProperties.getInt("persist.dspref.gain", 16);
        if (s0.l("persist.fyt.ui.txz", false) && SystemProperties.getBoolean("sys.lsec.dmicMono", false)) {
            i4 -= 9;
        }
        Log.e("dspmic", "refGain : " + i4);
        int iA = o0.a(i4, -15, 32);
        synchronized (this) {
            int i5 = 12;
            if (iA > 24) {
                i2 = iA - 24;
                i3 = 12;
            } else if (iA > 12) {
                i3 = iA - 12;
                i2 = 0;
            } else {
                i5 = iA;
                i2 = 0;
                i3 = 0;
            }
            f2(0, 128, 436, new int[]{eVar.a(i2)});
            f2(0, 128, 430, new int[]{eVar.a(i3)});
            f2(0, 128, 359, new int[]{eVar.a(i5)});
        }
    }

    public int[] t2(int i2) {
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
    public int u1() {
        return super.u1();
    }

    public final void u2() {
        synchronized (this) {
            f fVar = new f();
            f2(0, 132, 14, fVar.a(0, 4, 320, 0.70711d, h9[this.f15054g], 1));
            f2(0, 132, 19, fVar.a(0, 3, 2000, 0.70711d, i9[this.f15054g], 2));
        }
    }

    @Override // module.sound.AudioDevice
    public void v0(boolean z2) {
        super.v0(z2);
        if (this.f15050e) {
            if (z2) {
                int[] iArr = this.P6;
                R1(0, iArr[iArr.length - 1]);
                int[] iArr2 = this.P6;
                R1(1, iArr2[iArr2.length - 1]);
                int[] iArr3 = this.P6;
                R1(2, iArr3[iArr3.length - 1]);
                int[] iArr4 = this.P6;
                R1(3, iArr4[iArr4.length - 1]);
                R1(5, 0);
            } else if (!this.j8) {
                j(null);
                o(y0.f.V0);
            }
            synchronized (this) {
                h2(65, z2 ? 0 : 30);
            }
        }
    }

    public void v2(boolean z2) {
        if (this.f15050e) {
            if (z2) {
                w2(true);
                this.m8 = true;
            } else {
                this.m8 = false;
                w2(false);
            }
        }
    }

    @Override // module.sound.AudioDevice
    public void w0(int i2) {
        int[] iArrT2 = t2(i2);
        if (i2(this.f15074q, i2)) {
            System.arraycopy(iArrT2, 0, this.f15074q, 0, iArrT2.length);
            int i3 = this.f15060j;
            int[] iArr = new int[i3];
            int[] iArr2 = new int[i3];
            int[] iArr3 = new int[i3];
            for (int i4 = 0; i4 < this.f15060j; i4++) {
                int i5 = this.f15072p;
                iArr2[i4] = iArrT2[i4 * i5];
                iArr[i4] = iArrT2[(i4 * i5) + 1];
                iArr3[i4] = iArrT2[(i5 * i4) + 2];
            }
            m2(iArrT2);
            y0.h.H(iArr, iArr2, iArr3, this.f15060j, this);
        }
    }

    public void w2(boolean z2) {
        if (this.f15050e && !this.m8) {
            synchronized (this) {
                e eVar = new e();
                if (z2) {
                    f2(0, 128, 330, new int[]{eVar.a(-145.0d)});
                    a.i.a0(45L);
                } else {
                    a.i.a0(3L);
                    f2(0, 128, 330, new int[]{eVar.a(0.0d)});
                }
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

    public final void x2() {
        synchronized (this) {
            if (this.q8) {
                h2(55, 13);
            } else {
                h2(55, 20);
            }
        }
    }

    @Override // module.sound.AudioDevice
    public void y() {
        if (this.f15054g == 0 || y0.f.f18055i == 1) {
            return;
        }
        synchronized (this) {
            f2(1, 128, 368, new int[]{256});
        }
    }

    public final void y2(int i2) {
        this.q8 = i2 == 1;
        x2();
        G0(AudioDevice.STORE.OPTICAL_DIRECT, i2);
        y0.h.s0(85, i2);
    }

    public final void z2(int i2) {
        int iMax = Math.max(0, Math.min(i2, 2));
        this.r8 = iMax;
        AudioDevice.STORE store = AudioDevice.STORE.OPTICAL_TYPE;
        G0(store, iMax);
        this.f15080t.e(store.ordinal());
        y0.h.s0(90, iMax);
    }
}
