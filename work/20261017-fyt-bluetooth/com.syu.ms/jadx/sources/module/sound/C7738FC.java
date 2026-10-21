package module.sound;

import android.bluetooth.BluetoothClass;
import android.content.Context;
import android.media.AudioManager;
import android.media.AudioService;
import android.media.videoeditor.MediaProperties;
import android.net.ConnectivityManager;
import android.net.ProxyProperties;
import android.net.UrlQuerySanitizer;
import android.opengl.GLES10;
import android.os.Handler;
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
import o1.d0;
import o1.h0;
import o1.n;
import o1.o0;
import o1.s0;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class C7738FC extends AudioDevice {
    public static double[] r9 = {0.0d, 10.0d, 10.0d, 10.0d, 10.0d, 10.0d, 10.0d, 9.5d, 9.0d, 8.5d, 8.0d, 7.5d, 7.0d, 6.5d, 6.0d, 5.5d, 5.0d, 4.5d, 4.0d, 3.5d, 3.0d, 2.5d, 2.0d, 1.5d, 1.0d, 0.5d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d};
    public static double[] s9 = {0.0d, 7.0d, 7.0d, 7.0d, 7.0d, 7.0d, 7.0d, 6.8d, 6.5d, 6.2d, 5.9d, 5.6d, 5.2d, 4.8d, 4.4d, 4.0d, 3.6d, 3.2d, 2.8d, 2.4d, 2.0d, 1.6d, 1.2d, 0.8d, 0.5d, 0.3d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d};
    public static int t9 = 24;
    public static double[] u9 = null;
    public final int A1;
    public final int A2;
    public final int A3;
    public final int A4;
    public final int A5;
    public final int A6;
    public int[] A7;
    public Handler A8;
    public final int B1;
    public final int B2;
    public final int B3;
    public final int B4;
    public final int B5;
    public final int B6;
    public int[] B7;
    public Runnable B8;
    public final int C1;
    public final int C2;
    public final int C3;
    public final int C4;
    public final int C5;
    public int[] C6;
    public int[] C7;
    public final double[] C8;
    public final int D1;
    public final int D2;
    public final int D3;
    public final int D4;
    public final int D5;
    public int[] D6;
    public int[] D7;
    public int D8;
    public final int E1;
    public final int E2;
    public final int E3;
    public final int E4;
    public final int E5;
    public int[] E6;
    public boolean E7;
    public final int E8;
    public final int F1;
    public final int F2;
    public final int F3;
    public final int F4;
    public final int F5;
    public final int F6;
    public final int F7;
    public final int F8;
    public final int G1;
    public final int G2;
    public final int G3;
    public final int G4;
    public final int G5;
    public int[] G6;
    public final int G7;
    public final int G8;
    public final int H1;
    public final int H2;
    public final int H3;
    public final int H4;
    public final int H5;
    public int[] H6;
    public final int H7;
    public final int H8;
    public final boolean I0;
    public final int I1;
    public final int I2;
    public final int I3;
    public final int I4;
    public final int I5;
    public int[] I6;
    public final int I7;
    public final int I8;
    public final String J0;
    public final int J1;
    public final int J2;
    public final int J3;
    public final int J4;
    public final int J5;
    public int[] J6;
    public final int J7;
    public final int J8;
    public final int K0;
    public final int K1;
    public final int K2;
    public final int K3;
    public final int K4;
    public final int K5;
    public int[] K6;
    public final int[] K7;
    public final int K8;
    public final int L0;
    public final int L1;
    public final int L2;
    public final int L3;
    public final int L4;
    public final int L5;
    public int[] L6;
    public int[] L7;
    public final int L8;
    public final int M0;
    public final int M1;
    public final int M2;
    public final int M3;
    public final int M4;
    public final int M5;
    public int[] M6;
    public int[] M7;
    public final int M8;
    public final int N0;
    public final int N1;
    public final int N2;
    public final int N3;
    public final int N4;
    public final int N5;
    public int[] N6;
    public int[] N7;
    public final int N8;
    public final int O0;
    public final int O1;
    public final int O2;
    public final int O3;
    public final int O4;
    public final int O5;
    public final int[] O6;
    public int[] O7;
    public final int O8;
    public final int P0;
    public final int P1;
    public final int P2;
    public final int P3;
    public final int P4;
    public final int P5;
    public double[] P6;
    public int[] P7;
    public final int P8;
    public final int Q0;
    public final int Q1;
    public final int Q2;
    public final int Q3;
    public final int Q4;
    public final int Q5;
    public int[] Q6;
    public int Q7;
    public final int Q8;
    public final int R0;
    public final int R1;
    public final int R2;
    public final int R3;
    public final int R4;
    public final int R5;
    public int[] R6;
    public int R7;
    public final int R8;
    public final int S0;
    public final int S1;
    public final int S2;
    public final int S3;
    public final int S4;
    public final int S5;
    public double S6;
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
    public final int[] U6;
    public final int U7;
    public final int U8;
    public final int V0;
    public final int V1;
    public final int V2;
    public final int V3;
    public final int V4;
    public final int V5;
    public final int[] V6;
    public final int V7;
    public final int V8;
    public final int W0;
    public final int W1;
    public final int W2;
    public final int W3;
    public final int W4;
    public final int W5;
    public final int[] W6;
    public final int W7;
    public final int W8;
    public final int X0;
    public final int X1;
    public final int X2;
    public final int X3;
    public final int X4;
    public final int X5;
    public final int[] X6;
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
    public final int f15640a1;
    public final int a2;
    public final int a3;
    public final int a4;
    public final int a5;
    public final int a6;
    public final int[] a7;
    public final int a8;
    public final int a9;

    /* JADX INFO: renamed from: b1, reason: collision with root package name */
    public final int f15641b1;
    public final int b2;
    public final int b3;
    public final int b4;
    public final int b5;
    public final int b6;
    public final int[] b7;
    public final int b8;
    public int[] b9;

    /* JADX INFO: renamed from: c1, reason: collision with root package name */
    public final int f15642c1;
    public final int c2;
    public final int c3;
    public final int c4;
    public final int c5;
    public final int c6;
    public n c7;
    public final int c8;
    public int[] c9;

    /* JADX INFO: renamed from: d1, reason: collision with root package name */
    public final int f15643d1;
    public final int d2;
    public final int d3;
    public final int d4;
    public final int d5;
    public final int d6;
    public int d7;
    public final int d8;
    public m d9;

    /* JADX INFO: renamed from: e1, reason: collision with root package name */
    public final int f15644e1;
    public final int e2;
    public final int e3;
    public final int e4;
    public final int e5;
    public final int e6;
    public int e7;
    public final int e8;
    public final int e9;

    /* JADX INFO: renamed from: f1, reason: collision with root package name */
    public final int f15645f1;
    public final int f2;
    public final int f3;
    public final int f4;
    public final int f5;
    public final int f6;
    public int f7;
    public final int f8;
    public final int f9;

    /* JADX INFO: renamed from: g1, reason: collision with root package name */
    public final int f15646g1;
    public final int g2;
    public final int g3;
    public final int g4;
    public final int g5;
    public final int g6;
    public int g7;
    public final int g8;
    public final int g9;

    /* JADX INFO: renamed from: h1, reason: collision with root package name */
    public final int f15647h1;
    public final int h2;
    public final int h3;
    public final int h4;
    public final int h5;
    public final int h6;
    public AudioManager h7;
    public final int h8;
    public final int h9;

    /* JADX INFO: renamed from: i1, reason: collision with root package name */
    public final int f15648i1;
    public final int i2;
    public final int i3;
    public final int i4;
    public final int i5;
    public final int i6;
    public boolean i7;
    public final int i8;
    public final int i9;

    /* JADX INFO: renamed from: j1, reason: collision with root package name */
    public final int f15649j1;
    public final int j2;
    public final int j3;
    public final int j4;
    public final int j5;
    public final int j6;
    public boolean j7;
    public final int j8;
    public final int j9;

    /* JADX INFO: renamed from: k1, reason: collision with root package name */
    public final int f15650k1;
    public final int k2;
    public final int k3;
    public final int k4;
    public final int k5;
    public final int k6;
    public final int k7;
    public int[] k8;
    public final int k9;

    /* JADX INFO: renamed from: l1, reason: collision with root package name */
    public final int f15651l1;
    public final int l2;
    public final int l3;
    public final int l4;
    public final int l5;
    public final int l6;
    public int[] l7;
    public int[] l8;
    public final int l9;

    /* JADX INFO: renamed from: m1, reason: collision with root package name */
    public final int f15652m1;
    public final int m2;
    public final int m3;
    public final int m4;
    public final int m5;
    public final int m6;
    public int[] m7;
    public int m8;
    public final int m9;

    /* JADX INFO: renamed from: n1, reason: collision with root package name */
    public final int f15653n1;
    public final int n2;
    public final int n3;
    public final int n4;
    public final int n5;
    public final double n6;
    public int[] n7;
    public int n8;
    public final int n9;

    /* JADX INFO: renamed from: o1, reason: collision with root package name */
    public final int f15654o1;
    public final int o2;
    public final int o3;
    public final int o4;
    public final int o5;
    public final double o6;
    public int[] o7;
    public int[][] o8;
    public final int o9;

    /* JADX INFO: renamed from: p1, reason: collision with root package name */
    public final int f15655p1;
    public final int p2;
    public final int p3;
    public final int p4;
    public final int p5;
    public final double p6;
    public final int[] p7;
    public int[][] p8;
    public final int p9;

    /* JADX INFO: renamed from: q1, reason: collision with root package name */
    public final int f15656q1;
    public final int q2;
    public final int q3;
    public final int q4;
    public final int q5;
    public final int q6;
    public int[] q7;
    public int[][] q8;
    public final int q9;
    public final int r1;
    public final int r2;
    public final int r3;
    public final int r4;
    public final int r5;
    public final int r6;
    public int[] r7;
    public int[][] r8;
    public final int s1;
    public final int s2;
    public final int s3;
    public final int s4;
    public final int s5;
    public final double s6;
    public int[] s7;
    public int[][] s8;
    public final int t1;
    public final int t2;
    public final int t3;
    public final int t4;
    public final int t5;
    public final double t6;
    public int[] t7;
    public int[][] t8;
    public final int u1;
    public final int u2;
    public final int u3;
    public final int u4;
    public final int u5;
    public final int[] u6;
    public final int u7;
    public final int[][] u8;
    public final int v1;
    public final int v2;
    public final int v3;
    public final int v4;
    public final int v5;
    public int[] v6;
    public final int v7;
    public int[] v8;
    public final int w1;
    public final int w2;
    public final int w3;
    public final int w4;
    public final int w5;
    public int[] w6;
    public int w7;
    public int[] w8;
    public final int x1;
    public final int x2;
    public final int x3;
    public final int x4;
    public final int x5;
    public final int[] x6;
    public int[] x7;
    public boolean x8;
    public final int y1;
    public final int y2;
    public final int y3;
    public final int y4;
    public final int y5;
    public final int[] y6;
    public int[] y7;
    public boolean y8;
    public final int z1;
    public final int z2;
    public final int z3;
    public final int z4;
    public final int z5;
    public int[] z6;
    public int[] z7;
    public Runnable z8;

    public enum CHANNEL {
        IN1(0),
        IN2(1),
        IN3(2),
        IN4(3),
        IN5(4);


        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f15663a;

        CHANNEL(int i2) {
            this.f15663a = i2;
        }
    }

    public class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int[] f15664a = new int[9];

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f15665b;

        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = 0;
            while (true) {
                this.f15665b = i2;
                int i3 = this.f15665b;
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
            C7738FC.this.A8.postDelayed(this, TimedRemoteCaller.DEFAULT_CALL_TIMEOUT_MILLIS);
        }
    }

    public class c {
        public c() {
        }

        public int a(double d2) {
            return C7738FC.this.d9.a(d2, 0);
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
            return C7738FC.this.d9.a(dPow, 2);
        }
    }

    public class f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public double f15671a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public double f15672b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public double f15673c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public double f15674d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public double f15675e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public double f15676f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public double f15677g;

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
                    double d13 = fVar.f15675e;
                    d5 = d13 + 1.0d;
                    double d14 = fVar.f15673c;
                    d6 = ((1.0d - d14) / 2.0d) / d5;
                    d7 = (1.0d - d14) / d5;
                    d8 = (-(1.0d - d13)) / d5;
                    d9 = (d14 * 2.0d) / d5;
                    d10 = 1.0d - d14;
                } else if (i3 == 2) {
                    fVar = this;
                    double d15 = fVar.f15675e;
                    double d16 = fVar.f15676f;
                    double d17 = (d15 / d16) + 1.0d;
                    double d18 = fVar.f15673c;
                    double d19 = (d18 * (-2.0d)) / d17;
                    d9 = (d18 * 2.0d) / d17;
                    d11 = (1.0d - (d15 * d16)) / d17;
                    d7 = d19;
                    d12 = ((d15 * d16) + 1.0d) / d17;
                    d8 = (-(1.0d - (d15 / d16))) / d17;
                } else if (i3 == 3) {
                    fVar = this;
                    double dSqrt = Math.sqrt(fVar.f15676f / d2);
                    fVar.f15677g = dSqrt;
                    double d20 = fVar.f15676f;
                    double d21 = fVar.f15673c;
                    double d22 = fVar.f15672b;
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
                    double dSqrt2 = Math.sqrt(this.f15676f / d2);
                    this.f15677g = dSqrt2;
                    double d28 = this.f15676f;
                    double d29 = this.f15673c;
                    double d30 = this.f15672b;
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
                return i2 == 0 ? new int[]{C7738FC.this.d9.a(d11, i5), C7738FC.this.d9.a(d7, i5), C7738FC.this.d9.a(d8, i5), C7738FC.this.d9.a(d9, i5), C7738FC.this.d9.a(d12, i5)} : new int[]{C7738FC.this.d9.b(d11, i5), C7738FC.this.d9.c(d11, i5), C7738FC.this.d9.b(d7, i5), C7738FC.this.d9.c(d7, i5), C7738FC.this.d9.b(d8, i5), C7738FC.this.d9.c(d8, i5), C7738FC.this.d9.b(d9, i5), C7738FC.this.d9.c(d9, i5), C7738FC.this.d9.b(d12, i5), C7738FC.this.d9.c(d12, i5)};
            }
            fVar = this;
            d4 = 2.0d;
            double d37 = fVar.f15675e;
            d5 = d37 + 1.0d;
            double d38 = fVar.f15673c;
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
            this.f15671a = d4;
            this.f15672b = Math.sin(d4);
            this.f15673c = Math.cos(this.f15671a);
            this.f15675e = this.f15672b / (d2 * 2.0d);
            if (i2 == 2 || i2 == 3 || i2 == 4) {
                this.f15676f = Math.pow(10.0d, d3 / 40.0d);
            } else {
                this.f15676f = Math.sqrt(Math.pow(10.0d, d3 / 20.0d));
            }
        }

        public void c(int i2, int i3, double d2, double d3) {
            double d4 = (((double) i3) * 6.283185307179586d) / 48000.0d;
            this.f15671a = d4;
            this.f15672b = Math.sin(d4);
            this.f15673c = Math.cos(this.f15671a);
            this.f15674d = Math.tan(this.f15671a / 2.0d);
            this.f15675e = this.f15672b / (d2 * 2.0d);
            if (i2 == 2 || i2 == 3 || i2 == 4 || (i2 >= 5 && i2 <= 20)) {
                this.f15676f = Math.pow(10.0d, d3 / 40.0d);
            } else {
                this.f15676f = Math.sqrt(Math.pow(10.0d, d3 / 20.0d));
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
                    double d11 = this.f15673c / (this.f15672b + 1.0d);
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
                    dPow2 = (1.0d - this.f15672b) / this.f15673c;
                    double d12 = (dPow2 + 1.0d) / 2.0d;
                    dPow = d12;
                    d5 = -d12;
                    dPow3 = 0.0d;
                    d6 = 0.0d;
                }
            } else if (i3 == 7) {
                d4 = 1.0d;
                if (i4 == 0) {
                    double d13 = this.f15675e;
                    d7 = d13 + 1.0d;
                    double d14 = this.f15673c;
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
                    double d15 = this.f15675e;
                    d7 = d15 + 1.0d;
                    double d16 = this.f15673c;
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
                    double d18 = this.f15674d;
                    double dPow5 = (dCos * d18) + 1.0d + Math.pow(d18, 2.0d);
                    double dPow6 = Math.pow(this.f15674d, 2.0d) / dPow5;
                    double dCos2 = Math.cos(d17) * 2.0d;
                    double d19 = this.f15674d;
                    dPow3 = (((dCos2 * d19) - 1.0d) - Math.pow(d19, 2.0d)) / dPow5;
                    dPow4 = ((1.0d - Math.pow(this.f15674d, 2.0d)) * 2.0d) / dPow5;
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
                            double d21 = this.f15674d;
                            double dPow7 = (dCos3 * d21) + 1.0d + Math.pow(d21, 2.0d);
                            double dPow8 = Math.pow(this.f15674d, 2.0d) / dPow7;
                            double dCos4 = Math.cos(d20) * 2.0d;
                            double d22 = this.f15674d;
                            dPow3 = (((dCos4 * d22) - 1.0d) - Math.pow(d22, 2.0d)) / dPow7;
                            dPow = dPow8;
                            dPow2 = ((1.0d - Math.pow(this.f15674d, 2.0d)) * 2.0d) / dPow7;
                            d6 = dPow;
                            d5 = dPow8 * 2.0d;
                        } else if (i3 == 20) {
                            double d23 = (((double) ((i4 * 2) + 1)) * 3.141592653589793d) / 16.0d;
                            double dCos5 = Math.cos(d23) * 2.0d;
                            double d24 = this.f15674d;
                            double dPow9 = (dCos5 * d24) + 1.0d + Math.pow(d24, 2.0d);
                            double d25 = 1.0d / dPow9;
                            double dCos6 = Math.cos(d23) * 2.0d;
                            double d26 = this.f15674d;
                            double dPow10 = (((dCos6 * d26) - 1.0d) - Math.pow(d26, 2.0d)) / dPow9;
                            dPow = d25;
                            dPow2 = ((1.0d - Math.pow(this.f15674d, 2.0d)) * 2.0d) / dPow9;
                            d5 = d25 * (-2.0d);
                            d6 = dPow;
                            dPow3 = dPow10;
                        }
                    } else if (i4 <= 2) {
                        double d27 = (((double) ((i4 * 2) + 1)) * 3.141592653589793d) / 12.0d;
                        double dCos7 = Math.cos(d27) * 2.0d;
                        double d28 = this.f15674d;
                        double dPow11 = (dCos7 * d28) + 1.0d + Math.pow(d28, 2.0d);
                        double d29 = 1.0d / dPow11;
                        d5 = d29 * (-2.0d);
                        double dCos8 = Math.cos(d27) * 2.0d;
                        double d30 = this.f15674d;
                        dPow3 = (((dCos8 * d30) - 1.0d) - Math.pow(d30, 2.0d)) / dPow11;
                        dPow4 = ((1.0d - Math.pow(this.f15674d, 2.0d)) * 2.0d) / dPow11;
                        dPow = d29;
                        dPow2 = dPow4;
                        d6 = dPow;
                    }
                } else if (i4 <= 2) {
                    double d31 = (((double) ((i4 * 2) + 1)) * 3.141592653589793d) / 12.0d;
                    double dCos9 = Math.cos(d31) * 2.0d;
                    double d32 = this.f15674d;
                    double dPow12 = (dCos9 * d32) + 1.0d + Math.pow(d32, 2.0d);
                    dPow = Math.pow(this.f15674d, 2.0d) / dPow12;
                    d5 = dPow * 2.0d;
                    double dCos10 = Math.cos(d31) * 2.0d;
                    double d33 = this.f15674d;
                    double dPow13 = (((dCos10 * d33) - 1.0d) - Math.pow(d33, 2.0d)) / dPow12;
                    dPow2 = ((1.0d - Math.pow(this.f15674d, 2.0d)) * 2.0d) / dPow12;
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
                double d35 = this.f15674d;
                double dPow14 = (dCos11 * d35) + 1.0d + Math.pow(d35, 2.0d);
                d6 = 1.0d / dPow14;
                double dCos12 = Math.cos(d34) * 2.0d;
                double d36 = this.f15674d;
                dPow3 = (((dCos12 * d36) - 1.0d) - Math.pow(d36, 2.0d)) / dPow14;
                dPow2 = ((1.0d - Math.pow(this.f15674d, 2.0d)) * 2.0d) / dPow14;
                d5 = d6 * (-2.0d);
                dPow = d6;
            }
            return i2 == 0 ? new int[]{C7738FC.this.d9.a(d6, i6), C7738FC.this.d9.a(d5, i6), C7738FC.this.d9.a(dPow3, i6), C7738FC.this.d9.a(dPow2, i6), C7738FC.this.d9.a(dPow, i6)} : new int[]{C7738FC.this.d9.b(d6, i6), C7738FC.this.d9.c(d6, i6), C7738FC.this.d9.b(d5, i6), C7738FC.this.d9.c(d5, i6), C7738FC.this.d9.b(dPow3, i6), C7738FC.this.d9.c(dPow3, i6), C7738FC.this.d9.b(dPow2, i6), C7738FC.this.d9.c(dPow2, i6), C7738FC.this.d9.b(dPow, i6), C7738FC.this.d9.c(dPow, i6)};
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
            return C7738FC.this.d9.a(dPow, 2);
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
        public final double f15681a = 0.0d;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final double f15682b = -145.0d;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public double f15683c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public double f15684d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public double f15685e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public double f15686f;

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
                    double d11 = this.f15686f;
                    double d12 = d11 + 1.0d;
                    double d13 = this.f15685e;
                    d3 = ((1.0d - d13) / 2.0d) / d12;
                    double d14 = (1.0d - d13) / d12;
                    d5 = (-(1.0d - d11)) / d12;
                    d6 = (d13 * 2.0d) / d12;
                    d7 = ((1.0d - d13) / 2.0d) / d12;
                    d4 = d14;
                }
                return new int[]{C7738FC.this.d9.a(d10, i4), C7738FC.this.d9.a(d4, i4), C7738FC.this.d9.a(d9, i4), C7738FC.this.d9.a(d8, i4), C7738FC.this.d9.a(d7, i4)};
            }
            double d15 = this.f15686f;
            double d16 = d15 + 1.0d;
            double d17 = this.f15685e;
            d3 = ((d17 + 1.0d) / 2.0d) / d16;
            d4 = (-(d17 + 1.0d)) / d16;
            d5 = (-(1.0d - d15)) / d16;
            d6 = (d17 * 2.0d) / d16;
            d7 = ((d17 + 1.0d) / 2.0d) / d16;
            d8 = d6;
            d9 = d5;
            d10 = d3;
            return new int[]{C7738FC.this.d9.a(d10, i4), C7738FC.this.d9.a(d4, i4), C7738FC.this.d9.a(d9, i4), C7738FC.this.d9.a(d8, i4), C7738FC.this.d9.a(d7, i4)};
        }

        public int b(double d2) {
            return C7738FC.this.d9.a(d2 <= -145.0d ? 0.0d : Math.pow(10.0d, d2 / 20.0d), 2);
        }

        public int c(double d2) {
            return C7738FC.this.d9.a(d2 <= -145.0d ? 0.0d : Math.pow(10.0d, d2 / 20.0d), 2);
        }

        public int d(double d2) {
            return C7738FC.this.d9.a(d2 <= -145.0d ? 0.0d : Math.pow(10.0d, d2 / 20.0d), 2);
        }

        public int e(double d2) {
            return C7738FC.this.d9.a(d2, 1);
        }

        public int f(double d2) {
            return C7738FC.this.d9.a(1.0d - d2, 1);
        }

        public int g(double d2) {
            return C7738FC.this.d9.a(d2 <= -145.0d ? 0.0d : Math.pow(10.0d, d2 / 20.0d), 2);
        }

        public void h(int i2, int i3, double d2) {
            double d3 = (((double) i3) * 6.283185307179586d) / 48000.0d;
            this.f15683c = d3;
            this.f15684d = Math.sin(d3);
            this.f15685e = Math.cos(this.f15683c);
            this.f15686f = this.f15684d / (d2 * 2.0d);
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
            return C7738FC.this.d9.a(dPow, 2);
        }
    }

    public class l {
        public l() {
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
            return C7738FC.this.d9.a(dPow, 2);
        }
    }

    public class m {
        public m() {
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

    public C7738FC(n nVar) {
        super(36, 3);
        this.I0 = false;
        this.J0 = "C7738FC";
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
        this.f15640a1 = 48;
        this.f15641b1 = 49;
        this.f15642c1 = 50;
        this.f15643d1 = 51;
        this.f15644e1 = 52;
        this.f15645f1 = 53;
        this.f15646g1 = 55;
        this.f15647h1 = 58;
        this.f15648i1 = 59;
        this.f15649j1 = 60;
        this.f15650k1 = 61;
        this.f15651l1 = 62;
        this.f15652m1 = 63;
        this.f15653n1 = 0;
        this.f15654o1 = 1;
        this.f15655p1 = 2;
        this.f15656q1 = 3;
        this.r1 = 4;
        this.s1 = 5;
        this.t1 = 6;
        this.u1 = 64;
        this.v1 = 65;
        this.w1 = 66;
        this.x1 = 67;
        this.y1 = 68;
        this.z1 = 69;
        this.A1 = 7;
        this.B1 = 8;
        this.C1 = 9;
        this.D1 = 10;
        this.E1 = 11;
        this.F1 = 12;
        this.G1 = 13;
        this.H1 = 70;
        this.I1 = 71;
        this.J1 = 73;
        this.K1 = 76;
        this.L1 = 77;
        this.M1 = 87;
        this.N1 = 97;
        this.O1 = 107;
        this.P1 = 117;
        this.Q1 = 127;
        this.R1 = 137;
        this.S1 = 147;
        this.T1 = 157;
        this.U1 = 167;
        this.V1 = 177;
        this.W1 = 187;
        this.X1 = 197;
        this.Y1 = 207;
        this.Z1 = 217;
        this.a2 = 227;
        this.b2 = 237;
        this.c2 = i.a.Theme_preferenceHeaderPanelStyle;
        this.d2 = 252;
        this.e2 = 257;
        this.f2 = 262;
        this.g2 = 267;
        this.h2 = BluetoothClass.Device.COMPUTER_HANDHELD_PC_PDA;
        this.i2 = 277;
        this.j2 = 282;
        this.k2 = 287;
        this.l2 = 292;
        this.m2 = 297;
        this.n2 = 302;
        this.o2 = 307;
        this.p2 = 312;
        this.q2 = 317;
        this.r2 = 322;
        this.s2 = 327;
        this.t2 = 332;
        this.u2 = 337;
        this.v2 = 342;
        this.w2 = 343;
        this.x2 = 345;
        this.y2 = 348;
        this.z2 = 349;
        this.A2 = 351;
        this.B2 = 354;
        this.C2 = 359;
        this.D2 = 364;
        this.E2 = 369;
        this.F2 = 374;
        this.G2 = 379;
        this.H2 = 384;
        this.I2 = 389;
        this.J2 = 394;
        this.K2 = 399;
        this.L2 = 400;
        this.M2 = 401;
        this.N2 = 402;
        this.O2 = 403;
        this.P2 = UrlQuerySanitizer.IllegalCharacterValueSanitizer.URL_LEGAL;
        this.Q2 = UrlQuerySanitizer.IllegalCharacterValueSanitizer.URL_AND_SPACE_LEGAL;
        this.R2 = Downloads.Impl.STATUS_NOT_ACCEPTABLE;
        this.S2 = 407;
        this.T2 = 408;
        this.U2 = 306;
        this.V2 = 0;
        this.W2 = 26;
        this.X2 = 53;
        this.Y2 = 54;
        this.Z2 = 68;
        this.a3 = 69;
        this.b3 = 70;
        this.c3 = 72;
        this.d3 = 86;
        this.e3 = 87;
        this.f3 = 88;
        this.g3 = 102;
        this.h3 = 103;
        this.i3 = 104;
        this.j3 = 106;
        this.k3 = 130;
        this.l3 = 154;
        this.m3 = 180;
        this.n3 = 181;
        this.o3 = 182;
        this.p3 = 203;
        this.q3 = 204;
        this.r3 = 205;
        this.s3 = 206;
        this.t3 = 305;
        this.u3 = 307;
        this.v3 = 312;
        this.w3 = 313;
        this.x3 = 318;
        this.y3 = 323;
        this.z3 = 328;
        this.A3 = 333;
        this.B3 = 338;
        this.C3 = 343;
        this.D3 = 348;
        this.E3 = 353;
        this.F3 = 354;
        this.G3 = 356;
        this.H3 = 0;
        this.I3 = 1;
        this.J3 = 359;
        this.K3 = MediaProperties.HEIGHT_360;
        this.L3 = 361;
        this.M3 = 363;
        this.N3 = 2;
        this.O3 = 3;
        this.P3 = 366;
        this.Q3 = 367;
        this.R3 = 368;
        this.S3 = 370;
        this.T3 = 372;
        this.U3 = 373;
        this.V3 = 374;
        this.W3 = 375;
        this.X3 = 376;
        this.Y3 = 377;
        this.Z3 = 378;
        this.a4 = 379;
        this.b4 = 381;
        this.c4 = 384;
        this.d4 = 389;
        this.e4 = 390;
        this.f4 = 395;
        this.g4 = 400;
        this.h4 = UrlQuerySanitizer.IllegalCharacterValueSanitizer.URL_AND_SPACE_LEGAL;
        this.i4 = 410;
        this.j4 = 415;
        this.k4 = 420;
        this.l4 = 425;
        this.m4 = 430;
        this.n4 = 431;
        this.o4 = 432;
        this.p4 = 433;
        this.q4 = 434;
        this.r4 = 436;
        this.s4 = 4;
        this.t4 = 5;
        this.u4 = 439;
        this.v4 = 440;
        this.w4 = 441;
        this.x4 = 442;
        this.y4 = 443;
        this.z4 = 444;
        this.A4 = 446;
        this.B4 = 6;
        this.C4 = 7;
        this.D4 = 449;
        this.E4 = 450;
        this.F4 = 451;
        this.G4 = 456;
        this.H4 = 461;
        this.I4 = 466;
        this.J4 = 471;
        this.K4 = 476;
        this.L4 = 481;
        this.M4 = 486;
        this.N4 = Downloads.Impl.STATUS_UNKNOWN_ERROR;
        this.O4 = Downloads.Impl.STATUS_FILE_ERROR;
        this.P4 = Downloads.Impl.STATUS_UNHANDLED_HTTP_CODE;
        this.Q4 = 8;
        this.R4 = 9;
        this.S4 = Downloads.Impl.STATUS_TOO_MANY_REDIRECTS;
        this.T4 = Downloads.Impl.STATUS_BLOCKED;
        this.U4 = 503;
        this.V4 = 508;
        this.W4 = 513;
        this.X4 = 518;
        this.Y4 = 523;
        this.Z4 = BluetoothClass.Device.PHONE_MODEM_OR_GATEWAY;
        this.a5 = 533;
        this.b5 = 538;
        this.c5 = 539;
        this.d5 = 541;
        this.e5 = 10;
        this.f5 = 11;
        this.g5 = 544;
        this.h5 = 545;
        this.i5 = 546;
        this.j5 = 548;
        this.k5 = 12;
        this.l5 = 13;
        this.m5 = 551;
        this.n5 = 552;
        this.o5 = 553;
        this.p5 = 555;
        this.q5 = 14;
        this.r5 = 15;
        this.s5 = 558;
        this.t5 = 559;
        this.u5 = 564;
        this.v5 = 569;
        this.w5 = 574;
        this.x5 = 579;
        this.y5 = 584;
        this.z5 = 589;
        this.A5 = 594;
        this.B5 = 599;
        this.C5 = CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR;
        this.D5 = 602;
        this.E5 = 16;
        this.F5 = 17;
        this.G5 = 605;
        this.H5 = 606;
        this.I5 = 607;
        this.J5 = 609;
        this.K5 = 18;
        this.L5 = 19;
        this.M5 = 612;
        this.N5 = 613;
        this.O5 = 48000;
        this.P5 = 0;
        this.Q5 = 1;
        this.R5 = 0;
        this.S5 = 1;
        this.T5 = 2;
        this.U5 = 3;
        this.V5 = 4;
        this.W5 = 5;
        this.X5 = 6;
        this.Y5 = 7;
        this.Z5 = 8;
        this.a6 = 9;
        this.b6 = 10;
        this.c6 = 11;
        this.d6 = 12;
        this.e6 = 13;
        this.f6 = 14;
        this.g6 = 15;
        this.h6 = 16;
        this.i6 = 17;
        this.j6 = 18;
        this.k6 = 19;
        this.l6 = 20;
        this.m6 = 21;
        this.n6 = -144.0d;
        this.o6 = 12.0d;
        this.p6 = -145.0d;
        this.q6 = 0;
        this.r6 = 1;
        this.s6 = -40.0d;
        this.t6 = 8.0d;
        this.u6 = new int[]{0, 15, 1, 135, 2, 3, 3, 16, 4, 39, 5, 0, 6, 0, 7, 144, 8, 39, 9, 144, 10, 39, 11, 144, 12, 39, 13, 16, 14, 39, 15, 16, 16, 39, 17, 16, 18, 4, 19, 8, 20, 0, 21, 0, 22, 119, 23, 119, 24, 119, 25, 119, 26, 18, 27, 52, 28, 0, 29, 119, 30, 119, 31, 0, 32, 0, 33, 119, 34, 0, 35, 0, 36, 0, 37, 23, 38, 24, 39, 21, 40, 22, 41, 19, 42, 20, 43, 25, 44, 26, 45, 30, 46, 0, 47, 0, 48, 0, 49, 13, 50, 14, 51, 0, 52, 0, 53, 0, 54, 0, 55, 1, 56, 0, 57, 0, 58, 0, 59, 0, 60, 0, 61, 0, 62, 0, 63, 0, 64, 0, 65, 22, 66, 0, 67, 0, 68, 0, 69, 0, 70, 0, 71, 0, 72, 0, 73, 32, 74, 2, 75, 2, 76, 0, 77, 0, 78, 0, 79, 170, 80, 0, 81, 0, 82, 0, 83, 0, 84, 0, 85, 0, 86, 0, 87, 34, 88, 59, 89, 0, 90, 0, 91, 0, 92, 0, 93, 102, 94, 0, 95, 48, 96, 48, 97, 48, 98, 48, 99, 48, 100, 0, 101, 0, 102, 13, 103, 0, 104, 24, 105, 24, 106, 24, 107, 24, 108, 0, 109, 0, 110, 0, 111, 0, 112, 0, 113, 0, 114, 0, 115, 0, 116, 0, 117, 0, 118, 0, 119, 0, 120, 0, 121, 0, 122, 0, 123, 0, 124, 0, 125, 0, 126, 0, 127, 4, 128, 2, 129, 0, 130, 0, 131, 62, 132, 226, 133, 31, 134, 0, 135, 0, 144, 0, 145, 0, 146, 0, 147, 0, 148, 0, 149, 0};
        this.v6 = null;
        this.w6 = null;
        this.x6 = new int[]{0, 2, 63, 0, 2, 63, 0, 4, 127, 0, 4, 127, 0, 6, 191, 0, 6, 191, 0, 8, 255, 0, 8, 255, 0, 11, 63, 0, 11, 63, 0, 13, 127, 0, 13, 127, 0, 15, 191, 0, 15, 191, 0, 17, 255, 0, 17, 255, 0, 20, 63, 0, 20, 63, 0, 22, 127, 0, 22, 127};
        this.y6 = new int[]{0, 1, i.a.Theme_actionModeWebSearchDrawable, 0, 1, i.a.Theme_actionModeWebSearchDrawable, 0, 1, i.a.Theme_actionModeWebSearchDrawable, 0, 1, i.a.Theme_actionModeWebSearchDrawable, 0, 1, i.a.Theme_actionModeWebSearchDrawable, 0, 1, i.a.Theme_actionModeWebSearchDrawable, 0, 1, i.a.Theme_actionModeWebSearchDrawable, 0, 3, 231, 0, 3, 231, 0, 3, 231, 0, 3, 231, 0, 3, 231, 0, 3, 231, 0, 3, 231};
        this.z6 = new int[]{20, 24, 29, 36, 45, 53, 65, 80, 100, 120, 140, 170, 210, 260, 320, 390, 470, 570, 700, 850, 1000, 1300, 1600, 1900, 2300, 2800, 3400, 4100, 5000, 6100, 7500, 9000, 11000, 14000, 17000, Window.PROGRESS_SECONDARY_START};
        this.A6 = 100;
        this.B6 = -50;
        this.C6 = new int[]{-1450, -580, -500, -440, -390, -350, -310, -280, -260, -250, -240, -230, -220, -210, AudioService.STREAM_REMOTE_MUSIC, -190, -180, -170, -160, -150, -140, -130, -120, -110, -100, -90, -80, -70, -60, -50, -40, -30, -20, -10, 0, 10, 20};
        this.D6 = new int[]{-1450, -360, -300, -250, -210, -180, -150, -130, -110, -100, -90, -80, -70, -60, -50, -40, -30, -20, -10, 0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 110, 120, 130, 140, 150, 160, 170};
        this.E6 = new int[]{77, 87, 97, 107, 117, 127, 137, 147, 157, 167, 177, 187, 197, 207, 217, 227, 237, i.a.Theme_preferenceHeaderPanelStyle, 252, 257, 262, 267, BluetoothClass.Device.COMPUTER_HANDHELD_PC_PDA, 277, 282, 287, 292, 297, 302, 307, 312, 317, 322, 327, 332, 337};
        this.F6 = -2;
        this.G6 = new int[]{-2, -2, -2, -2, -2, -2, -2, -2, -2, -5, -8, -11, -14, -17, -20, -23, -145};
        this.H6 = new int[]{-145, -27, -23, -20, -18, -16, -14, -13, -12, -11, -10, -9, -8, -7, -6, -5, -4, -3, -2, -1, 0};
        this.I6 = new int[]{538, 552, 443, 433, 606, 599, MediaProperties.HEIGHT_360, 353, Downloads.Impl.STATUS_UNKNOWN_ERROR, 545};
        this.J6 = new int[]{544, 558, 449, 439, 612, 605, 366, 359, Downloads.Impl.STATUS_TOO_MANY_REDIRECTS, 551};
        this.K6 = new int[]{-145, -9, -6, -3, 0, 2, 4, 6, 8, 10, 12};
        this.L6 = new int[]{11, 15, 7, 5, 19, 17, 3, 1, 9, 13};
        this.M6 = new int[]{2880, 4032, 1728, MediaProperties.SAMPLES_PER_FRAME_MP3, 5184, GLES10.GL_AMBIENT, 576, 0, 2304, 3456};
        this.N6 = new int[]{-10, -9, -8, -7, -6, -5, -4, -3, -2, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
        this.O6 = new int[]{20, 68, 86, 108, 134, 172, 214, 260};
        this.P6 = new double[]{0.0d, 2.0d, 4.0d, 5.5d, 6.5d, 7.5d, 8.0d, 8.5d, 9.0d, 9.5d, 10.0d};
        this.Q6 = new int[]{100, 150, 200, 250, 300, MediaProperties.HEIGHT_360, 420, 500, CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR, MediaProperties.HEIGHT_720, 850, 1000, 1200, 1400, 1600, BluetoothClass.Device.WEARABLE_PAGER, 2100, 2500, ConnectivityManager.CONNECTIVITY_CHANGE_DELAY_DEFAULT, 3500, 4000};
        this.R6 = new int[]{-145, -80, -48, -32, -25, -21, -18, -16, -14, -12, -10, -9, -8, -7, -6, -5, -4, -3, -2, -1, 0};
        this.S6 = 1.0d;
        this.T6 = new int[]{20, 10, 50, 24, 10, 50, 29, 10, 50, 36, 10, 50, 44, 10, 50, 54, 10, 50, 66, 10, 50, 81, 10, 50, 100, 10, 50, 125, 10, 50, 152, 10, 50, 183, 10, 50, 220, 10, 50, i.a.Theme_findOnPagePreviousDrawable, 10, 50, SpellChecker.WORD_ITERATOR_INTERVAL, 10, 50, 440, 10, 50, 545, 10, 50, 680, 10, 50, 850, 10, 50, 1050, 10, 50, 1360, 10, 50, 1770, 10, 50, 2200, 10, 50, 2750, 10, 50, 3420, 10, 50, 4270, 10, 50, 5370, 10, 50, 6550, 10, 50, 8130, 10, 50, 9750, 10, 50, 11350, 10, 50, 13000, 10, 50, 14630, 10, 50, 16290, 10, 50, 18100, 10, 50, Window.PROGRESS_SECONDARY_START, 10, 50};
        int[] iArr = {20, 10, 50, 24, 10, 50, 29, 10, 50, 36, 10, 50, 44, 10, 50, 54, 10, 50, 66, 10, 50, 81, 10, 50, 100, 10, 50, 125, 10, 50, 152, 10, 50, 183, 10, 50, 220, 10, 50, i.a.Theme_findOnPagePreviousDrawable, 10, 50, SpellChecker.WORD_ITERATOR_INTERVAL, 10, 50, 440, 10, 50, 545, 10, 50, 680, 10, 50, 850, 10, 50, 1050, 10, 50, 1360, 10, 50, 1770, 10, 50, 2200, 10, 50, 2750, 10, 50, 3420, 10, 50, 4270, 10, 50, 5370, 10, 50, 6550, 10, 50, 8130, 10, 50, 9750, 10, 50, 11350, 10, 50, 13000, 10, 50, 14630, 10, 50, 16290, 10, 50, 18100, 10, 50, Window.PROGRESS_SECONDARY_START, 10, 50};
        this.U6 = iArr;
        int[] iArr2 = {20, 17, 50, 24, 17, 50, 29, 17, 50, 36, 17, 50, 44, 17, 50, 54, 17, 50, 66, 16, 50, 81, 15, 50, 100, 14, 50, 125, 13, 50, 152, 12, 50, 183, 12, 50, 220, 11, 50, i.a.Theme_findOnPagePreviousDrawable, 9, 50, SpellChecker.WORD_ITERATOR_INTERVAL, 8, 50, 440, 6, 50, 545, 6, 50, 680, 6, 50, 850, 6, 50, 1050, 6, 50, 1360, 7, 50, 1770, 8, 50, 2200, 9, 50, 2750, 11, 50, 3420, 12, 50, 4270, 13, 50, 5370, 14, 50, 6550, 15, 50, 8130, 16, 50, 9750, 17, 50, 11350, 17, 50, 13000, 17, 50, 14630, 17, 50, 16290, 17, 50, 18100, 17, 50, Window.PROGRESS_SECONDARY_START, 17, 50};
        this.V6 = iArr2;
        int[] iArr3 = {20, 4, 50, 24, 4, 50, 29, 4, 50, 36, 4, 50, 44, 4, 50, 54, 4, 50, 66, 4, 50, 81, 4, 50, 100, 5, 50, 125, 7, 50, 152, 8, 50, 183, 9, 50, 220, 10, 50, i.a.Theme_findOnPagePreviousDrawable, 11, 50, SpellChecker.WORD_ITERATOR_INTERVAL, 12, 50, 440, 14, 50, 545, 13, 50, 680, 13, 50, 850, 12, 50, 1050, 12, 50, 1360, 12, 50, 1770, 12, 50, 2200, 13, 50, 2750, 13, 50, 3420, 14, 50, 4270, 12, 50, 5370, 10, 50, 6550, 10, 50, 8130, 10, 50, 9750, 10, 50, 11350, 10, 50, 13000, 10, 50, 14630, 10, 50, 16290, 10, 50, 18100, 10, 50, Window.PROGRESS_SECONDARY_START, 10, 50};
        this.W6 = iArr3;
        int[] iArr4 = {20, 16, 50, 24, 16, 50, 29, 16, 50, 36, 16, 50, 44, 16, 50, 54, 16, 50, 66, 17, 50, 81, 17, 50, 100, 16, 50, 125, 15, 50, 152, 14, 50, 183, 13, 50, 220, 12, 50, i.a.Theme_findOnPagePreviousDrawable, 11, 50, SpellChecker.WORD_ITERATOR_INTERVAL, 10, 50, 440, 8, 50, 545, 9, 50, 680, 11, 50, 850, 12, 50, 1050, 11, 50, 1360, 10, 50, 1770, 9, 50, 2200, 8, 50, 2750, 7, 50, 3420, 6, 50, 4270, 6, 50, 5370, 6, 50, 6550, 5, 50, 8130, 5, 50, 9750, 4, 50, 11350, 3, 50, 13000, 3, 50, 14630, 3, 50, 16290, 3, 50, 18100, 3, 50, Window.PROGRESS_SECONDARY_START, 3, 50};
        this.X6 = iArr4;
        int[] iArr5 = {20, 16, 50, 24, 16, 50, 29, 16, 50, 36, 16, 50, 44, 15, 50, 54, 15, 50, 66, 14, 50, 81, 14, 50, 100, 10, 50, 125, 9, 50, 152, 8, 50, 183, 7, 50, 220, 6, 50, i.a.Theme_findOnPagePreviousDrawable, 9, 50, SpellChecker.WORD_ITERATOR_INTERVAL, 11, 50, 440, 13, 50, 545, 14, 50, 680, 14, 50, 850, 14, 50, 1050, 14, 50, 1360, 13, 50, 1770, 10, 50, 2200, 8, 50, 2750, 6, 50, 3420, 7, 50, 4270, 9, 50, 5370, 11, 50, 6550, 14, 50, 8130, 16, 50, 9750, 15, 50, 11350, 14, 50, 13000, 14, 50, 14630, 14, 50, 16290, 14, 50, 18100, 14, 50, Window.PROGRESS_SECONDARY_START, 14, 50};
        this.Y6 = iArr5;
        int[] iArr6 = {20, 16, 50, 24, 16, 50, 29, 16, 50, 36, 16, 50, 44, 16, 50, 54, 16, 50, 66, 16, 50, 81, 16, 50, 100, 16, 50, 125, 16, 50, 152, 15, 50, 183, 15, 50, 220, 14, 50, i.a.Theme_findOnPagePreviousDrawable, 14, 50, SpellChecker.WORD_ITERATOR_INTERVAL, 14, 50, 440, 15, 50, 545, 16, 50, 680, 16, 50, 850, 15, 50, 1050, 14, 50, 1360, 13, 50, 1770, 12, 50, 2200, 12, 50, 2750, 12, 50, 3420, 11, 50, 4270, 11, 50, 5370, 10, 50, 6550, 10, 50, 8130, 10, 50, 9750, 9, 50, 11350, 8, 50, 13000, 8, 50, 14630, 8, 50, 16290, 8, 50, 18100, 8, 50, Window.PROGRESS_SECONDARY_START, 8, 50};
        this.Z6 = iArr6;
        int[] iArr7 = {20, 14, 50, 24, 14, 50, 29, 14, 50, 36, 14, 50, 44, 13, 50, 54, 12, 50, 66, 12, 50, 81, 12, 50, 100, 10, 50, 125, 8, 50, 152, 6, 50, 183, 5, 50, 220, 4, 50, i.a.Theme_findOnPagePreviousDrawable, 6, 50, SpellChecker.WORD_ITERATOR_INTERVAL, 7, 50, 440, 9, 50, 545, 10, 50, 680, 10, 50, 850, 10, 50, 1050, 10, 50, 1360, 10, 50, 1770, 10, 50, 2200, 11, 50, 2750, 12, 50, 3420, 12, 50, 4270, 12, 50, 5370, 12, 50, 6550, 13, 50, 8130, 14, 50, 9750, 15, 50, 11350, 16, 50, 13000, 16, 50, 14630, 16, 50, 16290, 16, 50, 18100, 16, 50, Window.PROGRESS_SECONDARY_START, 16, 50};
        this.a7 = iArr7;
        int[] iArr8 = {20, 10, 50, 24, 10, 50, 29, 10, 50, 36, 10, 50, 44, 10, 50, 54, 10, 50, 66, 11, 50, 81, 12, 50, 100, 13, 50, 125, 14, 50, 152, 14, 50, 183, 14, 50, 220, 15, 50, i.a.Theme_findOnPagePreviousDrawable, 15, 50, SpellChecker.WORD_ITERATOR_INTERVAL, 16, 50, 440, 16, 50, 545, 16, 50, 680, 17, 50, 850, 17, 50, 1050, 17, 50, 1360, 17, 50, 1770, 16, 50, 2200, 16, 50, 2750, 16, 50, 3420, 16, 50, 4270, 16, 50, 5370, 16, 50, 6550, 16, 50, 8130, 15, 50, 9750, 15, 50, 11350, 14, 50, 13000, 14, 50, 14630, 14, 50, 16290, 14, 50, 18100, 14, 50, Window.PROGRESS_SECONDARY_START, 14, 50};
        this.b7 = iArr8;
        this.c7 = null;
        this.d7 = 50;
        this.e7 = 200;
        this.f7 = 250;
        this.g7 = 20;
        this.h7 = null;
        this.i7 = true;
        this.j7 = false;
        this.k7 = 20;
        this.l7 = new int[]{20, 20, 20, 20, 20, 20, 20, 20, 20, 20};
        this.m7 = new int[]{-30, 2, 9};
        this.n7 = new int[4];
        this.o7 = new int[]{25, 12, 25, 12, 25, 12, 12, 0, 0, 0};
        this.p7 = new int[]{25, 12, 25, 12, 25, 12, 12, 0, 0, 0};
        this.q7 = new int[]{0, 0};
        this.r7 = new int[]{0, 0};
        this.s7 = new int[]{15, 15, 15, 10, 4};
        this.t7 = new int[]{50, 50};
        this.u7 = 0;
        this.v7 = 1;
        this.w7 = 0;
        this.x7 = new int[]{-145, -40, -15, -5, 0, 1, 2, 3, 4, 5, 6};
        this.y7 = new int[]{-145, -52, -27, -17, -12, -11, -10, -9, -8, -7, -6};
        this.z7 = new int[]{5, 8, 11, 15, 20, 25, 30, 35, 40, 45, 50};
        this.A7 = new int[]{0, 0, 5, 10, 15, 25, 35};
        this.B7 = new int[]{5, 5, 5, 5, 5, 5, 5};
        this.C7 = new int[]{1, 0, 0, 0, 0, 0, 0};
        this.D7 = new int[]{0, 0, 0, 0, 0, 0, 0};
        this.E7 = true;
        this.F7 = 0;
        this.G7 = 1;
        this.H7 = 0;
        this.I7 = 1;
        this.J7 = 2;
        this.K7 = new int[]{40, 40, 40, 40, 40, 1, 1, 1, 40, 40, 40, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0};
        this.L7 = new int[]{40, 40};
        this.M7 = new int[]{40, 40, 40, 1, 1, 1};
        this.N7 = new int[]{40, 40, 40, 1, 1, 1};
        this.O7 = new int[]{1, 1, 1, 1, 0, 0, 0};
        this.P7 = new int[]{53, 54, 69, 87, 103, 70, 88, 104, 180, 181, 182, 203, 204, 205, 206, 305, 26, 72, 106, 130, 154};
        this.Q7 = 0;
        this.R7 = 0;
        this.S7 = 0;
        this.T7 = 1;
        this.U7 = 2;
        this.V7 = 0;
        this.W7 = 1;
        this.X7 = 2;
        this.Y7 = 3;
        this.Z7 = 4;
        this.a8 = 100;
        this.b8 = 101;
        this.c8 = 102;
        this.d8 = 103;
        this.e8 = 104;
        this.f8 = 105;
        this.g8 = 106;
        this.h8 = 107;
        this.i8 = 108;
        this.j8 = 109;
        this.k8 = new int[]{21, 6, 8, 12, 16, 20};
        this.l8 = new int[]{21, 5, 7, 11, 15, 19};
        this.m8 = 2;
        this.n8 = 0;
        this.o8 = new int[][]{new int[]{0, 0, 0, 0}, new int[]{0, 0, 0, 0}, new int[]{0, 0, 0, 0}};
        this.p8 = new int[][]{new int[]{0, 0, 0, 0}, new int[]{0, 0, 0, 0}, new int[]{0, 0, 0, 0}};
        this.q8 = new int[][]{new int[]{0, 0, 0, 0}, new int[]{0, 0, 0, 0}, new int[]{0, 0, 0, 0}};
        this.r8 = new int[][]{new int[]{0, 0, 0, 0}, new int[]{0, 0, 0, 0}, new int[]{0, 0, 0, 0}};
        this.s8 = new int[][]{new int[]{0, 0, 0, 0}, new int[]{0, 0, 0, 0}, new int[]{0, 0, 0, 0}};
        this.t8 = new int[][]{new int[]{12, 0, 28, 0, 0, 0, 35, 0, 0, 0, 35, 0, 0, 0, 35, 0, 0, 0, 13, 0}, new int[]{12, 0, 28, 0, 0, 0, 35, 0, 0, 0, 35, 0, 0, 0, 35, 0, 0, 0, 13, 0}, new int[]{12, 0, 28, 0, 0, 0, 35, 0, 0, 0, 35, 0, 0, 0, 35, 0, 0, 0, 13, 0}};
        this.u8 = new int[][]{new int[]{12, 0, 28, 0, 0, 0, 35, 0, 0, 0, 35, 0, 0, 0, 35, 0, 0, 0, 13, 0}, new int[]{12, 0, 28, 0, 0, 0, 35, 0, 0, 0, 35, 0, 0, 0, 35, 0, 0, 0, 13, 0}, new int[]{12, 0, 28, 0, 0, 0, 35, 0, 0, 0, 35, 0, 0, 0, 35, 0, 0, 0, 13, 0}};
        this.v8 = new int[]{0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
        this.w8 = new int[]{0, 0, 0, 0, 0};
        this.x8 = false;
        this.y8 = false;
        this.z8 = new a();
        this.A8 = new Handler();
        this.B8 = new b();
        this.C8 = new double[]{0.8d, 0.6d, 0.5d, 0.3d, 0.3d, 0.3d, 0.3d, 0.3d};
        this.D8 = 0;
        this.E8 = 100;
        this.F8 = 50;
        this.G8 = 0;
        this.H8 = 1;
        this.I8 = 2;
        this.J8 = 3;
        this.K8 = 4;
        this.L8 = 5;
        this.M8 = 6;
        this.N8 = 7;
        this.O8 = 8;
        this.P8 = 9;
        this.Q8 = 10;
        this.R8 = 11;
        this.S8 = 12;
        this.T8 = 13;
        this.U8 = 14;
        this.V8 = 15;
        this.W8 = 16;
        this.X8 = 17;
        this.Y8 = 18;
        this.Z8 = 19;
        this.a9 = 20;
        this.b9 = new int[]{Downloads.Impl.STATUS_BLOCKED, 518, 390, 410, 559, 579, 313, 333, 451, 471};
        this.c9 = new int[]{20, 24, 29, 36, 45, 53, 65, 80, 100, 120, 140, 170, 210, 260, 320, 390, 470, 570, 700, 850, 1000, 1300, 1600, 1900, 2300, 2800, 3400, 4100, 5000, 6100, 7500, 9000, 11000, 14000, 17000, Window.PROGRESS_SECONDARY_START};
        this.d9 = new m();
        this.e9 = 0;
        this.f9 = 1;
        this.g9 = 2;
        this.h9 = 0;
        this.i9 = 1;
        this.j9 = 2;
        this.k9 = 3;
        this.l9 = 4;
        this.m9 = 5;
        this.n9 = 6;
        this.o9 = 7;
        this.p9 = 0;
        this.q9 = 1;
        synchronized (this.f15047c0) {
            Z0(0, this.T6);
            Z0(1, iArr);
            Z0(2, iArr2);
            Z0(3, iArr3);
            Z0(4, iArr4);
            Z0(5, iArr5);
            Z0(6, iArr6);
            Z0(7, iArr7);
            Z0(8, iArr8);
            x(this.C6);
            this.h7 = (AudioManager) App.c().getSystemService(Context.AUDIO_SERVICE);
            this.c7 = nVar;
        }
    }

    @Override // module.sound.AudioDevice
    public void A1(int i2, boolean z2) {
        if (i2 < 0 || i2 >= AudioDevice.G0.length) {
            return;
        }
        f2(m1(i2) / 10.0f);
        if (z2 || i2 != this.f15054g) {
            int i3 = this.f15054g;
            boolean z3 = i3 >= 25 && i2 < 25;
            if (i2 != i3) {
                this.f15054g = i2;
            }
            if (this.f15052f) {
                t2();
            }
            if (i2 >= 25 || z3) {
                m2(this.f15074q);
            }
        }
    }

    public void A2(int i2, int i3) {
        if (i2 < 0 || i2 >= this.o7.length) {
            return;
        }
        d2(i2, i3);
    }

    @Override // module.sound.AudioDevice
    public void B0(int i2, int i3, int i4) {
        int i5;
        if (i2 == 65536) {
            i5 = 384;
        } else {
            i5 = i2 == 131072 ? 307 : -1;
        }
        D1(i5, this.O6[i3], i4);
        if (i3 == 0 || i4 == 0) {
            e2(1, i5 != 307 ? 389 : 312, 0);
        } else {
            if (i3 <= 0 || i4 <= 0) {
                return;
            }
            e2(1, i5 != 307 ? 389 : 312, 1);
        }
    }

    public void B2(int i2, int i3) {
        int i4 = i2;
        if (i4 > 100) {
            i4 = 50;
        }
        int i5 = i3 <= 100 ? i3 : 50;
        int[] iArr = this.t7;
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
        int i14 = i12 - i8;
        int i15 = i12 - i9;
        int i16 = i12 - i10;
        int i17 = i12 - i11;
        Log.e("C7738FC", "surroundField Fl: " + i14 + " Fr: " + i15 + " Rl: " + i16 + " Rr: " + i17);
        int i18 = (i14 * 100) / BluetoothClass.Device.COMPUTER_HANDHELD_PC_PDA;
        int i19 = (i15 * 100) / BluetoothClass.Device.COMPUTER_HANDHELD_PC_PDA;
        int i20 = (i16 * 100) / BluetoothClass.Device.COMPUTER_HANDHELD_PC_PDA;
        int i21 = (i17 * 100) / BluetoothClass.Device.COMPUTER_HANDHELD_PC_PDA;
        v2(true);
        j1(100, i18);
        j1(101, i19);
        j1(102, i18);
        j1(103, i19);
        j1(104, i18);
        j1(105, i19);
        j1(106, i20);
        j1(107, i21);
        j1(108, 0);
        j1(109, 0);
        v2(false);
        H0(AudioDevice.STORE.SURR_FIELD, this.t7);
        y0.h.s0(70, i4, i5);
    }

    @Override // module.sound.AudioDevice
    public void C0(int i2, int i3) {
        boolean z2;
        int i4;
        int i5;
        int iMax = Math.max(0, Math.min(i3, this.O6.length));
        int i6 = -1;
        if (i2 == 65536) {
            i6 = 384;
            int[] iArr = this.q7;
            z2 = iArr[0] != iMax;
            i5 = iArr[0];
            iArr[0] = iMax;
            i4 = iArr[1];
        } else if (i2 == 131072) {
            int[] iArr2 = this.r7;
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
        if (i6 > 0) {
            D1(i6, this.O6[iMax], i4);
            if ((i5 > 0 && iMax == 0) || i4 == 0) {
                e2(1, i6 != 307 ? 389 : 312, 0);
            } else if (i5 == 0 && iMax > 0) {
                e2(1, i6 != 307 ? 389 : 312, 1);
            }
            if (z2) {
                super.C0(i2, iMax);
                if (this.D8 != 0) {
                    if ((i2 != 65536 || this.q7[0] == 0) && (i2 != 131072 || this.r7[0] == 0)) {
                        return;
                    }
                    k1(0);
                }
            }
        }
    }

    public void C2(int i2) {
        boolean z2 = nt.W != 0;
        if (i2 == 0) {
            if (z2) {
                B2(75, 25);
                return;
            } else {
                B2(25, 25);
                return;
            }
        }
        if (i2 == 1) {
            if (z2) {
                B2(25, 25);
                return;
            } else {
                B2(75, 25);
                return;
            }
        }
        if (i2 == 2) {
            B2(50, 75);
        } else if (i2 != 3) {
            B2(50, 50);
        } else {
            B2(50, 50);
        }
    }

    @Override // module.sound.AudioDevice
    public void D(int i2, int[] iArr, float[] fArr, String[] strArr) {
        switch (i2) {
            case 61:
                s0.h(iArr, 0);
                break;
            case 62:
                s0.h(iArr, 2);
                break;
            case 63:
                if (s0.h(iArr, 1)) {
                    z2(iArr[0], iArr[1]);
                }
                break;
            case 68:
                if (s0.h(iArr, 1)) {
                    E1(iArr[0], iArr[1]);
                }
                break;
            case 69:
                if (s0.h(iArr, 1)) {
                    Y1(iArr[0], iArr[1]);
                }
                break;
            case 70:
                if (s0.h(iArr, 1)) {
                    B2(iArr[0], iArr[1]);
                }
                break;
            case 71:
                if (s0.h(iArr, 0)) {
                    C2(iArr[0]);
                }
                break;
            case 75:
                if (s0.h(iArr, 0)) {
                    p2(iArr[0]);
                }
                break;
            case 76:
                if (s0.h(iArr, 1)) {
                    q2(iArr[0], iArr[1]);
                }
                break;
            case 77:
                if (s0.h(iArr, 1)) {
                    y2(iArr[0], iArr[1]);
                }
                break;
            case 78:
                if (s0.h(iArr, 1)) {
                    x2(iArr[0], iArr[1]);
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
            int[] iArr = this.q7;
            z2 = iArr[1] != iMax;
            i5 = iArr[0];
            int i7 = iArr[1];
            iArr[1] = iMax;
            i4 = i7;
        } else if (i2 == 131072) {
            int[] iArr2 = this.r7;
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
        if (i6 > 0) {
            D1(i6, this.O6[i5], iMax);
            if (z2) {
                if ((i4 > 0 && iMax == 0) || i5 == 0) {
                    e2(1, i6 != 307 ? 389 : 312, 0);
                } else if (i4 == 0 && iMax > 0) {
                    e2(1, i6 != 307 ? 389 : 312, 1);
                }
                super.D0(i2, iMax);
                if (this.D8 != 0) {
                    if ((i2 != 65536 || this.q7[1] == 0) && (i2 != 131072 || this.r7[1] == 0)) {
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
            h2(1, 132, i2, fVar.a(0, 4, i3, 1.0d, d2, 1));
        }
    }

    public void E1(int i2, int i3) {
        int i4 = i3;
        if (i2 >= 0 || i2 < this.s7.length) {
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
                            int[] iArr3 = this.L7;
                            if (iArr3[0] != i4) {
                                iArr3[0] = i4;
                                y0.h.s0(68, i2, i4);
                                H0(AudioDevice.STORE.CSAUTO_SRS, this.L7);
                            }
                            double dR2 = r2(i4);
                            h2(1, 128, 53, new int[]{cVar.a(dR2)});
                            a.f.p().t(LogType.AUDIO, String.format(" MixCenter2Rear-> index: %4d， value: %4d，gain: %2.3f", Integer.valueOf(i2), Integer.valueOf(i4), Double.valueOf(dR2)));
                            break;
                        case 1:
                            if (i4 > 100) {
                                i4 = 50;
                            }
                            int[] iArr4 = this.L7;
                            if (iArr4[1] != i4) {
                                iArr4[1] = i4;
                                y0.h.s0(68, i2, i4);
                                H0(AudioDevice.STORE.CSAUTO_SRS, this.L7);
                            }
                            double dR3 = r2(i4);
                            h2(1, 128, 54, new int[]{cVar.a(dR3)});
                            a.f.p().t(LogType.AUDIO, String.format(" MixFront2Rear-> index: %4d， value: %4d，gain: %2.3f", Integer.valueOf(i2), Integer.valueOf(i4), Double.valueOf(dR3)));
                            break;
                        case 2:
                            if (i4 > 100) {
                                i4 = 50;
                            }
                            int[] iArr5 = this.M7;
                            if (iArr5[0] != i4) {
                                iArr5[0] = i4;
                                y0.h.s0(68, i2, i4);
                                H0(AudioDevice.STORE.CSAUTO_FOC, this.M7);
                            }
                            double dR4 = r2(i4);
                            h2(1, 128, 69, new int[]{cVar.a(dR4)});
                            a.f.p().t(LogType.AUDIO, String.format(" FocusCenterLevel-> index: %4d， value: %4d，gain: %2.3f", Integer.valueOf(i2), Integer.valueOf(i4), Double.valueOf(dR4)));
                            break;
                        case 3:
                            if (i4 > 100) {
                                i4 = 50;
                            }
                            int[] iArr6 = this.M7;
                            if (iArr6[1] != i4) {
                                iArr6[1] = i4;
                                y0.h.s0(68, i2, i4);
                                H0(AudioDevice.STORE.CSAUTO_FOC, this.M7);
                            }
                            double dR5 = r2(i4);
                            h2(1, 128, 87, new int[]{cVar.a(dR5)});
                            a.f.p().t(LogType.AUDIO, String.format(" FocusFrontlevel-> index: %4d， value: %4d，gain: %2.3f", Integer.valueOf(i2), Integer.valueOf(i4), Double.valueOf(dR5)));
                            break;
                        case 4:
                            if (i4 > 100) {
                                i4 = 50;
                            }
                            int[] iArr7 = this.M7;
                            if (iArr7[2] != i4) {
                                iArr7[2] = i4;
                                y0.h.s0(68, i2, i4);
                                H0(AudioDevice.STORE.CSAUTO_FOC, this.M7);
                            }
                            double dR6 = r2(i4);
                            h2(1, 128, 103, new int[]{cVar.a(dR6)});
                            a.f.p().t(LogType.AUDIO, String.format(" FocusRearlevel-> index: %4d， value: %4d，gain: %2.3f", Integer.valueOf(i2), Integer.valueOf(i4), Double.valueOf(dR6)));
                            break;
                        case 8:
                            if (i4 > 100) {
                                i4 = 50;
                            }
                            int[] iArr8 = this.N7;
                            if (iArr8[0] != i4) {
                                iArr8[0] = i4;
                                y0.h.s0(68, i2, i4);
                                H0(AudioDevice.STORE.CSAUTO_TRUBASS, this.N7);
                            }
                            double dR7 = r2(i4);
                            h2(1, 128, 180, new int[]{cVar.a(dR7)});
                            a.f.p().t(LogType.AUDIO, String.format(" TruBassRearControl-> index: %4d， value: %4d，gain: %2.3f", Integer.valueOf(i2), Integer.valueOf(i4), Double.valueOf(dR7)));
                            break;
                        case 9:
                            if (i4 > 100) {
                                i4 = 50;
                            }
                            int[] iArr9 = this.N7;
                            if (iArr9[1] != i4) {
                                iArr9[1] = i4;
                                y0.h.s0(68, i2, i4);
                                H0(AudioDevice.STORE.CSAUTO_TRUBASS, this.N7);
                            }
                            double dR8 = r2(i4);
                            h2(1, 128, 181, new int[]{cVar.a(dR8)});
                            a.f.p().t(LogType.AUDIO, String.format(" TruBassFrontControl-> index: %4d， value: %4d，gain: %2.3f", Integer.valueOf(i2), Integer.valueOf(i4), Double.valueOf(dR8)));
                            break;
                        case 10:
                            if (i4 > 100) {
                                i4 = 50;
                            }
                            int[] iArr10 = this.N7;
                            if (iArr10[2] != i4) {
                                iArr10[2] = i4;
                                y0.h.s0(68, i2, i4);
                                H0(AudioDevice.STORE.CSAUTO_TRUBASS, this.N7);
                            }
                            double dR9 = r2(i4);
                            h2(1, 128, 182, new int[]{cVar.a(dR9)});
                            a.f.p().t(LogType.AUDIO, String.format(" TruBassSubwooferControl-> index: %4d， value: %4d，gain: %2.3f", Integer.valueOf(i2), Integer.valueOf(i4), Double.valueOf(dR9)));
                            break;
                        case 14:
                            int[] iArr11 = this.O7;
                            if (iArr11[0] != i4) {
                                iArr11[0] = i4;
                                y0.h.s0(68, i2, i4);
                                AudioDevice.STORE store = AudioDevice.STORE.CSAUTO_OTHERS;
                                H0(store, this.O7);
                                this.f15080t.e(store.ordinal());
                            }
                            v2(true);
                            if (i4 == 0) {
                                h2(1, 128, 206, new int[]{cVar.c(1)});
                                a.f.p().t(LogType.AUDIO, String.format(" CSAuto ON  模式---", new Object[0]));
                            } else {
                                h2(1, 128, 206, new int[]{cVar.c(0)});
                                a.f.p().t(LogType.AUDIO, String.format(" CSAuto OFF  模式---", new Object[0]));
                            }
                            if (i4 == 1) {
                                h2(1, 128, 450, new int[]{jVar.a(0)});
                            } else {
                                h2(1, 128, 450, new int[]{jVar.a(1)});
                            }
                            v2(false);
                            break;
                        case 15:
                            int[] iArr12 = this.O7;
                            if (iArr12[1] != i4) {
                                iArr12[1] = i4;
                                y0.h.s0(68, i2, i4);
                                AudioDevice.STORE store2 = AudioDevice.STORE.CSAUTO_OTHERS;
                                H0(store2, this.O7);
                                this.f15080t.e(store2.ordinal());
                            }
                            v2(true);
                            if (i4 == 2) {
                                h2(1, 128, 305, new int[]{cVar.b(2)});
                                a.f.p().t(LogType.AUDIO, String.format("CSAuto ModeSelCinema 模式--- ", new Object[0]));
                            } else if (i4 == 1) {
                                h2(1, 128, 305, new int[]{cVar.b(1)});
                                a.f.p().t(LogType.AUDIO, String.format("CSAuto ModeSelMusic 模式--- ", new Object[0]));
                            } else {
                                h2(1, 128, 305, new int[]{cVar.b(0)});
                                a.f.p().t(LogType.AUDIO, String.format("CSAuto ModeSelMono 模式--- ", new Object[0]));
                            }
                            v2(false);
                            break;
                        case 17:
                            int[] iArr13 = this.O7;
                            if (iArr13[3] != i4) {
                                iArr13[3] = i4;
                                y0.h.s0(68, i2, i4);
                                H0(AudioDevice.STORE.CSAUTO_OTHERS, this.O7);
                            }
                            v2(true);
                            if (i4 == 0) {
                                h2(1, 128, 72, new int[]{cVar.c(0)});
                                a.f.p().t(LogType.AUDIO, String.format(" Phantom OFF  模式---", new Object[0]));
                            } else {
                                h2(1, 128, 72, new int[]{cVar.c(1)});
                                a.f.p().t(LogType.AUDIO, String.format(" Phantom ON  模式---", new Object[0]));
                            }
                            v2(false);
                            break;
                        case 18:
                            if (i4 >= 0 && i4 <= 7) {
                                int[] iArr14 = this.O7;
                                if (iArr14[4] != i4) {
                                    iArr14[4] = i4;
                                    y0.h.s0(68, i2, i4);
                                    H0(AudioDevice.STORE.CSAUTO_OTHERS, this.O7);
                                }
                                int[] iArrD = cVar.d(i4);
                                if (iArrD != null) {
                                    System.arraycopy(iArrD, 0, iArr, 0, 16);
                                    System.arraycopy(iArrD, 16, iArr2, 0, 8);
                                    h2(1, 143, 106, iArr);
                                    h2(1, 135, 122, iArr2);
                                    a.f.p().t(LogType.AUDIO, String.format(" TruBassSubwooferSpeakSize-> index: %4d， value: %4d", Integer.valueOf(i2), Integer.valueOf(i3)));
                                }
                            }
                            break;
                        case 19:
                            if (i4 >= 0 && i4 <= 7) {
                                int[] iArr15 = this.O7;
                                if (iArr15[5] != i4) {
                                    iArr15[5] = i4;
                                    y0.h.s0(68, i2, i4);
                                    H0(AudioDevice.STORE.CSAUTO_OTHERS, this.O7);
                                }
                                int[] iArrD2 = cVar.d(i4);
                                if (iArrD2 != null) {
                                    System.arraycopy(iArrD2, 0, iArr, 0, 16);
                                    System.arraycopy(iArrD2, 16, iArr2, 0, 8);
                                    h2(1, 143, 130, iArr);
                                    h2(1, 135, 146, iArr2);
                                    a.f.p().t(LogType.AUDIO, String.format(" TruBassFrontSpeakSize-> index: %4d， value: %4d", Integer.valueOf(i2), Integer.valueOf(i3)));
                                }
                            }
                            break;
                        case 20:
                            if (i4 >= 0 && i4 <= 7) {
                                int[] iArr16 = this.O7;
                                if (iArr16[6] != i4) {
                                    iArr16[6] = i4;
                                    y0.h.s0(68, i2, i4);
                                    H0(AudioDevice.STORE.CSAUTO_OTHERS, this.O7);
                                }
                                int[] iArrD3 = cVar.d(i4);
                                if (iArrD3 != null) {
                                    System.arraycopy(iArrD3, 0, iArr, 0, 16);
                                    System.arraycopy(iArrD3, 16, iArr2, 0, 8);
                                    h2(1, 143, 154, iArr);
                                    h2(1, 135, 170, iArr2);
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
        L0(0, channel.f15663a);
        L0(1, CHANNEL.IN2.f15663a);
        CHANNEL channel2 = CHANNEL.IN4;
        L0(2, channel2.f15663a);
        L0(3, channel2.f15663a);
        CHANNEL channel3 = CHANNEL.IN3;
        L0(4, channel3.f15663a);
        L0(5, CHANNEL.IN5.f15663a);
        L0(6, channel3.f15663a);
        L0(7, channel.f15663a);
        L0(8, channel.f15663a);
        L0(9, channel.f15663a);
        L0(10, channel.f15663a);
        L0(11, channel3.f15663a);
        L0(12, channel3.f15663a);
        L0(13, channel3.f15663a);
        L0(14, channel.f15663a);
        L0(15, channel.f15663a);
        L0(16, channel.f15663a);
    }

    /* JADX WARN: Code duplicated, block: B:9:0x0026  */
    public void F1(int i2) {
        int i3;
        j jVar = new j();
        synchronized (this) {
            h2(0, 128, 0, new int[]{jVar.a(1)});
        }
        byte bW1 = (byte) (((byte) W1(102)) & 252);
        if (i2 == CHANNEL.IN1.f15663a) {
            i3 = bW1 | 2;
        } else if (i2 == CHANNEL.IN2.f15663a) {
            i3 = bW1 | 1;
        } else if (i2 == CHANNEL.IN3.f15663a || i2 == CHANNEL.IN5.f15663a) {
            i3 = bW1 | 3;
        } else {
            i3 = bW1 | 2;
        }
        j2(102, (byte) i3);
    }

    @Override // module.sound.AudioDevice
    public void G(int i2) {
        super.G(i2);
        int i3 = 0;
        switch (i2) {
            case 1:
                this.f15080t.v(AudioDevice.STORE.CUSTOMS_EQ_MODE1.ordinal());
                this.f15080t.v(AudioDevice.STORE.CUSTOMS_EQ_MODE2.ordinal());
                this.f15080t.v(AudioDevice.STORE.MODE.ordinal());
                this.f15080t.v(AudioDevice.STORE.TYPE.ordinal());
                this.f15062k = -1;
                C();
                n0();
                h(1);
                break;
            case 2:
                this.i7 = false;
                y0.h.p(8, 8);
                for (int i4 = 0; i4 < this.v8.length; i4++) {
                    y2(i4, 0);
                }
                for (int i5 = 0; i5 < this.w8.length; i5++) {
                    x2(i5, 0);
                }
                while (i3 < this.l7.length) {
                    a1(i3 + 100, 20);
                    i3++;
                }
                break;
            case 3:
                this.f15080t.v(AudioDevice.STORE.SURRLEVEL.ordinal());
                this.f15080t.v(AudioDevice.STORE.SURR_FIELD.ordinal());
                C2(0);
                break;
            case 4:
                this.f15080t.v(AudioDevice.STORE.P2BASSON.ordinal());
                this.f15080t.v(AudioDevice.STORE.P2BFFREQ.ordinal());
                this.f15080t.v(AudioDevice.STORE.P2BRFREQ.ordinal());
                this.f15080t.v(AudioDevice.STORE.P2BFGAIN.ordinal());
                this.f15080t.v(AudioDevice.STORE.P2BRGAIN.ordinal());
                C0(65536, 0);
                C0(131072, 0);
                D0(65536, 0);
                D0(131072, 0);
                break;
            case 6:
                this.f15080t.v(AudioDevice.STORE.STEREO_PAEAM.ordinal());
                l1(false);
                z2(0, 15);
                z2(1, 15);
                z2(2, 15);
                z2(3, 10);
                z2(4, 4);
                break;
            case 8:
                this.f15080t.v(AudioDevice.STORE.CSAUTO_SRS.ordinal());
                this.f15080t.v(AudioDevice.STORE.CSAUTO_FOC.ordinal());
                this.f15080t.v(AudioDevice.STORE.CSAUTO_TRUBASS.ordinal());
                this.f15080t.v(AudioDevice.STORE.CSAUTO_OTHERS.ordinal());
                u2(true);
                int i6 = 0;
                while (true) {
                    int[] iArr = this.K7;
                    if (i6 >= iArr.length) {
                        u2(false);
                    } else {
                        E1(i6, iArr[i6]);
                        i6++;
                    }
                    break;
                }
                break;
            case 9:
                this.f15080t.v(AudioDevice.STORE.DLY_MIXER_LVL.ordinal());
                this.f15080t.v(AudioDevice.STORE.DLY_MIXER_PHASE.ordinal());
                this.f15080t.v(AudioDevice.STORE.DLY_MIXER_TAP.ordinal());
                k1(0);
                int i7 = 0;
                int i8 = 0;
                while (true) {
                    int[] iArr2 = this.B7;
                    if (i7 >= iArr2.length) {
                        int i9 = 0;
                        while (true) {
                            int[] iArr3 = this.C7;
                            if (i9 >= iArr3.length) {
                                int i10 = 0;
                                while (true) {
                                    int[] iArr4 = this.D7;
                                    if (i10 < iArr4.length) {
                                        iArr4[i10] = 0;
                                        y0.h.s0(69, i8, iArr4[i10]);
                                        i8++;
                                        i10++;
                                    }
                                }
                            } else {
                                if (i9 == 0) {
                                    iArr3[i9] = 1;
                                } else {
                                    iArr3[i9] = 0;
                                }
                                y0.h.s0(69, i8, iArr3[i9]);
                                i8++;
                                i9++;
                            }
                        }
                    } else {
                        iArr2[i7] = 5;
                        y0.h.s0(69, i8, iArr2[i7]);
                        i8++;
                        i7++;
                    }
                    break;
                }
                break;
            case 10:
                int i11 = this.m8;
                if (i11 == 2) {
                    this.f15080t.v(AudioDevice.STORE.FREQ_CUT_3WAY.ordinal());
                } else if (i11 == 1) {
                    this.f15080t.v(AudioDevice.STORE.FREQ_CUT_2WAY.ordinal());
                } else {
                    this.f15080t.v(AudioDevice.STORE.FREQ_CUT_5_1CH.ordinal());
                }
                this.n8 = 0;
                y0.h.s0(76, 60, 0);
                int i12 = this.m8;
                int length = i12 * this.t8[i12].length;
                int i13 = 0;
                while (true) {
                    int[][] iArr5 = this.t8;
                    int i14 = this.m8;
                    if (i13 >= iArr5[i14].length) {
                        while (true) {
                            int[][] iArr6 = this.t8;
                            int i15 = this.m8;
                            if (i3 < iArr6[i15].length) {
                                q2(length + i3, iArr6[i15][i3]);
                                i3 = i3 + 1 + 1;
                            }
                        }
                    } else {
                        iArr5[i14][i13] = this.u8[i14][i13];
                        y0.h.s0(76, length + i13, iArr5[i14][i13]);
                        i13++;
                    }
                    break;
                }
                break;
        }
    }

    public void G1(int i2) {
        int i3 = u0.b.D;
        if (j0(i3) == 1) {
            O1(1, ((this.P6[i2] - 6.0d) - 6.0d) - 4.0d);
        } else if (i3 == 1) {
            O1(0, ((this.P6[i2] - 4.0d) - 6.0d) - 4.0d);
        } else {
            O1(0, ((this.P6[i2] - 8.0d) - 6.0d) - 4.0d);
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
        f fVar = new f();
        synchronized (this) {
            double dO2 = o2(d3);
            if (i3 == 1) {
                h2(0, 137, this.E6[i2], fVar.a(1, 2, i4, d2, dO2, 1));
            } else {
                h2(0, 132, this.E6[i2], fVar.a(0, 2, i4, d2, dO2, 1));
            }
        }
    }

    public void J1(boolean z2) {
        j jVar = new j();
        synchronized (this) {
            try {
                if (z2) {
                    h2(0, 128, 7, new int[]{jVar.a(1)});
                } else {
                    h2(0, 128, 7, new int[]{jVar.a(0)});
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void K1() {
        X1(0, 0, 0, 0);
        a.i.a0(10L);
        N1();
        a.i.a0(10L);
        X1(1, 0, 0, 0);
        a.i.a0(10L);
        synchronized (this) {
            L1();
            M1();
        }
        a.i.a0(10L);
        X1(1, 1, 1, 1);
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
        if (i6 < this.N6.length) {
            l2(i2, iArr[i4], iArr[i5], i6);
        }
        super.L(i2, i3);
    }

    public void L1() {
        this.v6 = s0.A(App.c(), R.raw.akm7738fc_pram_table1, 16);
        this.w6 = s0.A(App.c(), R.raw.akm7738fc_cram_table1, 16);
        this.c7.d(t9, new int[]{184, 0, 0}, this.v6);
        this.c7.d(t9, new int[]{180, 0, 0}, this.w6);
        this.c7.d(t9, new int[]{178, 0, 0}, this.y6);
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
        this.v6 = s0.A(App.c(), R.raw.akm7738fc_pram_table2, 16);
        this.w6 = s0.A(App.c(), R.raw.akm7738fc_cram_table2, 16);
        this.c7.d(t9, new int[]{185, 0, 0}, this.v6);
        this.c7.d(t9, new int[]{181, 0, 0}, this.w6);
        this.c7.d(t9, new int[]{179, 0, 0}, this.x6);
    }

    public void N1() {
        int i2;
        int i3 = 0;
        while (true) {
            int[] iArr = this.u6;
            if (i3 >= iArr.length) {
                return;
            }
            int i4 = iArr[i3];
            if (i4 != 1) {
                i2 = i4 != 133 ? iArr[i3 + 1] : iArr[i3 + 1] & (-32);
            } else {
                i2 = iArr[i3 + 1] & (-129);
            }
            j2(iArr[i3], i2);
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
        if (i6 < this.N6.length) {
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
                    j2(95, i3);
                    j2(96, i3);
                    j2(97, i3);
                    j2(98, i3);
                } else {
                    h2(0, 128, 1, new int[]{eVar.a(d2)});
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
                    t2();
                    e2(0, 24, 1);
                } else {
                    e2(0, 24, 0);
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
            h2(0, 128, 348, new int[]{eVar.a(d2)});
            if (d2 <= -145.0d) {
                h2(1, 128, 442, new int[]{gVar.a(-145.0d, 0)});
                h2(1, 128, 432, new int[]{gVar.a(-145.0d, 0)});
            } else {
                h2(1, 128, 442, new int[]{gVar.a(0.0d, 0)});
                h2(1, 128, 432, new int[]{gVar.a(0.0d, 0)});
            }
        }
    }

    @Override // module.sound.AudioDevice
    public void R0(boolean z2) {
        super.R0(z2);
        if (z2) {
            u0.b.V3 = z2;
        }
    }

    public void R1(int i2, double d2, int i3, int i4) {
    }

    public void S1(int i2, int i3) {
        k kVar = new k();
        if (i2 < 0 || i2 >= this.l7.length) {
            return;
        }
        synchronized (this) {
            h2(1, 128, this.J6[i2], new int[]{kVar.a(0.0d, i3)});
        }
    }

    public void T1(int i2, int i3) {
        e eVar = new e();
        if (i2 < 0 || i2 >= this.l7.length) {
            return;
        }
        synchronized (this) {
            h2(1, 128, this.I6[i2], new int[]{eVar.a(i3)});
        }
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
            int i6 = 0;
            while (true) {
                int[] iArr4 = this.l7;
                if (i6 >= iArr4.length) {
                    break;
                }
                r1(bVar, i2, i6 + 100, iArr4[i6]);
                i6++;
            }
        } else if (i2 == 55) {
            r1(bVar, i2, this.i7 ? 1 : 0);
        } else if (i2 == 29) {
            r1(bVar, i2, 65536, this.q7[1]);
            r1(bVar, i2, 131072, this.r7[1]);
        } else if (i2 == 30) {
            r1(bVar, i2, 65536, this.q7[0]);
            r1(bVar, i2, 131072, this.r7[0]);
        } else if (i2 == 62) {
            r1(bVar, i2, this.m7);
        } else if (i2 != 63) {
            switch (i2) {
                case 32:
                    r1(bVar, i2, this.j7 ? 1 : 0);
                    break;
                case 33:
                    r1(bVar, i2, this.D8);
                    break;
                case 34:
                    int i7 = 0;
                    while (true) {
                        int[] iArr5 = this.o7;
                        if (i7 < iArr5.length) {
                            r1(bVar, i2, i7 + 100, iArr5[i7]);
                            i7++;
                        }
                        break;
                    }
                    break;
                default:
                    switch (i2) {
                        case 68:
                            int[] iArr6 = new int[21];
                            int[] iArr7 = this.L7;
                            System.arraycopy(iArr7, 0, iArr6, 0, iArr7.length);
                            int[] iArr8 = this.M7;
                            System.arraycopy(iArr8, 0, iArr6, 2, iArr8.length);
                            int[] iArr9 = this.N7;
                            System.arraycopy(iArr9, 0, iArr6, 8, iArr9.length);
                            int[] iArr10 = this.O7;
                            System.arraycopy(iArr10, 0, iArr6, 14, iArr10.length);
                            for (int i8 = 0; i8 < 21; i8++) {
                                r1(bVar, i2, i8, iArr6[i8]);
                            }
                            break;
                        case 69:
                            int i9 = 0;
                            int i10 = 0;
                            while (true) {
                                int[] iArr11 = this.B7;
                                if (i9 >= iArr11.length) {
                                    int i11 = 0;
                                    while (true) {
                                        int[] iArr12 = this.C7;
                                        if (i11 >= iArr12.length) {
                                            int i12 = 0;
                                            while (true) {
                                                int[] iArr13 = this.D7;
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
                                    r1(bVar, i2, i10, iArr11[i9]);
                                    i10++;
                                    i9++;
                                }
                                break;
                            }
                            break;
                        case 70:
                            int[] iArr14 = this.t7;
                            r1(bVar, i2, iArr14[0], iArr14[1]);
                            break;
                        default:
                            switch (i2) {
                                case 75:
                                    r1(bVar, i2, this.m8);
                                    break;
                                case 76:
                                    r1(bVar, i2, 60, this.n8);
                                    int i13 = 0;
                                    while (true) {
                                        int[][] iArr15 = this.t8;
                                        if (i13 < iArr15.length) {
                                            int length = iArr15[i13].length * i13;
                                            int i14 = 0;
                                            while (true) {
                                                int[][] iArr16 = this.t8;
                                                if (i14 < iArr16[i13].length) {
                                                    r1(bVar, i2, length + i14, iArr16[i13][i14]);
                                                    i14++;
                                                }
                                            }
                                            i13++;
                                        }
                                        break;
                                    }
                                    break;
                                case 77:
                                    int i15 = 0;
                                    while (true) {
                                        int[] iArr17 = this.v8;
                                        if (i15 < iArr17.length) {
                                            r1(bVar, i2, i15, iArr17[i15]);
                                            i15++;
                                        }
                                        break;
                                    }
                                    break;
                                case 78:
                                    int i16 = 0;
                                    while (true) {
                                        int[] iArr18 = this.w8;
                                        if (i16 < iArr18.length) {
                                            r1(bVar, i2, i16, iArr18[i16]);
                                            i16++;
                                        }
                                        break;
                                    }
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
            int[] iArr19 = this.s7;
            if (iArr19 != null && iArr19.length > 0) {
                int i17 = 0;
                while (true) {
                    int[] iArr20 = this.s7;
                    if (i17 >= iArr20.length) {
                        break;
                    }
                    r1(bVar, i2, i17, iArr20[i17]);
                    i17++;
                }
            }
        }
        return z2 ? z2 : super.U(i2, bVar);
    }

    public int[] U1(int i2, int i3, int i4) {
        int[] iArr = new int[i4];
        return this.c7.e(i4, t9, false, i2, s0.c(i3, 1), s0.c(i3, 0));
    }

    public int[] V1(int i2, int i3, int i4, int i5) {
        int i6 = i5 * 3;
        int[] iArrE = new int[i6];
        int[] iArr = new int[i5];
        if (i2 != 0) {
            iArrE = this.c7.e(i6, t9, false, i3, s0.c(i4, 1), s0.c(i4, 0));
        }
        for (int i7 = 0; i7 < i5; i7++) {
            int i8 = i7 * 3;
            iArr[i7] = ((iArrE[i8 + 0] << 16) & Spanned.SPAN_PRIORITY) + ((iArrE[i8 + 1] << 8) & 65280) + (iArrE[i8 + 2] & 255);
        }
        return iArr;
    }

    @Override // module.sound.AudioDevice
    public void W0() {
        super.W0();
        this.x8 = false;
        this.y8 = true;
        this.i7 = false;
        ToolsJni.cmd_251_Normal_Io_Set(0, 0);
        a.i.a0(140L);
        ToolsJni.cmd_251_Normal_Io_Set(0, 1);
        a.i.a0(20L);
        K1();
        this.x8 = true;
        w0(this.f15062k);
        m2(this.f15074q);
        l(this.f15052f ? 1 : 0);
        a(u0.b.D);
        A1(y0.f.C0, true);
        int i2 = 0;
        while (true) {
            int[] iArr = this.l7;
            if (i2 >= iArr.length) {
                break;
            }
            a1(i2 + 100, iArr[i2]);
            i2++;
        }
        int i3 = 0;
        while (true) {
            int[] iArr2 = this.v8;
            if (i3 >= iArr2.length) {
                break;
            }
            y2(i3, iArr2[i3]);
            i3++;
        }
        int i4 = 0;
        while (true) {
            int[] iArr3 = this.o7;
            if (i4 >= iArr3.length) {
                int[] iArr4 = this.m7;
                R1(1, iArr4[0], iArr4[1], iArr4[2]);
                p2(this.m8);
                int[] iArr5 = this.q7;
                B0(65536, iArr5[0], iArr5[1]);
                int[] iArr6 = this.r7;
                B0(131072, iArr6[0], iArr6[1]);
                int i5 = !this.j7 ? 1 : 0;
                int[] iArr7 = this.R6;
                int[] iArr8 = this.s7;
                b2(i5, 0.0d, iArr7[iArr8[0]], iArr7[iArr8[1]], iArr7[iArr8[2]], iArr8[3] / 10.0f, this.Q6[iArr8[4]]);
                k1(this.D8);
                E1(0, this.L7[0]);
                E1(1, this.L7[1]);
                E1(2, this.M7[0]);
                E1(5, 1);
                E1(3, this.M7[1]);
                E1(6, 1);
                E1(4, this.M7[2]);
                E1(7, 1);
                E1(18, this.O7[4]);
                E1(19, this.O7[5]);
                E1(20, this.O7[6]);
                E1(8, this.N7[0]);
                E1(9, this.N7[1]);
                E1(10, this.N7[2]);
                E1(11, 1);
                E1(12, 1);
                E1(13, 1);
                E1(17, this.O7[3]);
                E1(16, this.O7[2]);
                E1(14, this.O7[0]);
                E1(15, this.O7[1]);
                this.y8 = false;
                e eVar = new e();
                synchronized (this) {
                    h2(1, 128, 378, new int[]{eVar.a(-40.0d)});
                    h2(0, 128, 342, new int[]{eVar.a(8.0d)});
                }
                return;
            }
            A2(i4 + 100, iArr3[i4]);
            i4++;
        }
    }

    public int W1(int i2) {
        return U1(64, i2, 1)[0] & 255;
    }

    public void X1(int i2, int i3, int i4, int i5) {
        byte bW1 = (byte) W1(1);
        byte bW2 = (byte) W1(133);
        j2(1, (byte) (i2 != 0 ? bW1 | (-128) : bW1 & 127));
        byte b2 = (byte) (i3 != 0 ? bW2 | 16 : bW2 & (-17));
        byte b3 = (byte) (i4 != 0 ? b2 | 14 : b2 & (-15));
        j2(133, (byte) (i5 != 0 ? b3 | 1 : b3 & (-2)));
    }

    public void Y1(int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        new j();
        l lVar = new l();
        int[] iArr = this.B7;
        int length = i2 % iArr.length;
        if (i2 < iArr.length) {
            if (iArr[length] != i3) {
                iArr[length] = i3;
                y0.h.s0(69, i2, i3);
                H0(AudioDevice.STORE.DLY_MIXER_LVL, this.B7);
            }
        } else if (i2 < iArr.length * 2) {
            int[] iArr2 = this.C7;
            if (iArr2[length] != i3) {
                iArr2[length] = i3;
                y0.h.s0(69, i2, i3);
                H0(AudioDevice.STORE.DLY_MIXER_PHASE, this.C7);
            }
        } else if (i2 < iArr.length * 3) {
            int[] iArr3 = this.D7;
            if (iArr3[length] != i3) {
                iArr3[length] = i3;
                y0.h.s0(69, i2, i3);
                H0(AudioDevice.STORE.DLY_MIXER_TAP, this.D7);
            }
        }
        synchronized (this) {
            int[] iArr4 = this.B7;
            if (i2 < iArr4.length * 2) {
                if (length == 0) {
                    i9 = this.x7[iArr4[length]];
                    i8 = 64;
                    i7 = 58;
                } else {
                    i7 = (length + 58) - 1;
                    i8 = (length + 64) - 1;
                    i9 = this.y7[iArr4[length]];
                }
                if (i2 == iArr4.length) {
                    v2(true);
                }
                double d2 = i9;
                h2(0, 128, i7, new int[]{lVar.a(d2, this.C7[length])});
                h2(0, 128, i8, new int[]{lVar.a(d2, this.C7[length])});
                if (i2 == this.B7.length) {
                    v2(false);
                }
            } else if (i2 < iArr4.length * 3) {
                if (length == 0) {
                    i5 = 8;
                    i6 = this.z7[this.D7[0]];
                    i4 = 1;
                } else {
                    i4 = (length + 1) - 1;
                    i5 = (length + 8) - 1;
                    i6 = this.D7[length] + this.A7[length];
                }
                i2(0, 144, i4, new int[]{499 - i6});
                i2(0, 144, i5, new int[]{999 - i6});
            }
        }
    }

    public void Z1(int i2, int i3, int i4, int i5, int i6) {
        new j();
        l lVar = new l();
        if (i2 >= this.B7.length) {
            return;
        }
        synchronized (this) {
            int i7 = i2 + 58;
            int i8 = i2 + 64;
            if (i2 != 0) {
                i7--;
                i8--;
            }
            double d2 = i4;
            h2(0, 128, i7, new int[]{lVar.a(d2, i3)});
            h2(0, 128, i8, new int[]{lVar.a(d2, i3)});
            int i9 = i2 + 1;
            int i10 = i2 + 8;
            if (i2 != 0) {
                i9--;
                i10--;
            }
            i2(0, 144, i9, new int[]{499 - i5});
            i2(0, 144, i10, new int[]{999 - i5});
        }
    }

    /* JADX WARN: Code duplicated, block: B:42:0x008c  */
    /* JADX WARN: Code duplicated, block: B:43:0x00b9  */
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
        if ("1".equals(s0.o("sys.fyt.bluetooth_type", "0")) && (i3 == 2 || i3 == 3)) {
            i5 = CHANNEL.IN1.f15663a;
        }
        if (i5 < 0) {
            i5 = CHANNEL.IN1.f15663a;
        }
        boolean z6 = i5 == CHANNEL.IN1.f15663a;
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
                    d0.e(AudioManager.class.getName(), this.h7, "setVoiceSwitch2iis", new Class[]{cls}, Boolean.valueOf(z5));
                    d0.e(AudioManager.class.getName(), this.h7, "setAudioSwitch2iis", new Class[]{cls}, Boolean.valueOf(z5));
                } else {
                    String name2 = AudioManager.class.getName();
                    AudioManager audioManager = this.h7;
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
                d0.e(AudioManager.class.getName(), this.h7, "setVoiceSwitch2iis", new Class[]{cls}, Boolean.valueOf(z5));
                d0.e(AudioManager.class.getName(), this.h7, "setAudioSwitch2iis", new Class[]{cls}, Boolean.valueOf(z5));
            } else {
                String name3 = AudioManager.class.getName();
                AudioManager audioManager2 = this.h7;
                Class cls3 = Integer.TYPE;
                d0.e(name3, audioManager2, "setWiredDeviceConnectionState", new Class[]{cls3, cls3, String.class, String.class}, 8, Integer.valueOf(!z5), ProxyProperties.LOCAL_EXCL_LIST, ProxyProperties.LOCAL_EXCL_LIST);
            }
            z8 = z4;
        }
        J1(z8);
        F1(i5);
        int i6 = y0.f.f18090z0[i3];
        if (i6 >= 0 && i6 < 48) {
            m(i6, y0.f.f18084w0[i6]);
        }
        int[] iArrS2 = s2(this.f15062k);
        if (iArrS2 == null || !Arrays.equals(this.f15074q, iArrS2)) {
            return;
        }
        for (int i7 = 0; i7 < this.C8.length; i7++) {
            int i8 = this.f15072p;
            l2(i7, iArrS2[i7 * i8], iArrS2[(i7 * i8) + 2], iArrS2[(i8 * i7) + 1]);
        }
    }

    @Override // module.sound.AudioDevice
    public void a1(int i2, int i3) {
        if (n2((i2 < 100 || i2 >= 110) ? -1 : i2 - 100, o0.a(i3, 0, 20))) {
            super.a1(i2, i3);
        }
    }

    public int a2(int i2) {
        h hVar = new h();
        synchronized (this) {
            h2(0, 128, 408, new int[]{((i2 + 399) << 8) & 16776960});
        }
        a.i.a0(1L);
        return hVar.a((V1(1, 118, 0, 1)[0] >> 4) & 268435455);
    }

    @Override // module.sound.AudioDevice
    public void b1(boolean z2) {
        if (this.i7 != z2) {
            return;
        }
        this.i7 = false;
        super.b1(z2);
    }

    public void b2(int i2, double d2, double d3, double d4, double d5, double d6, int i3) {
        j jVar = new j();
        i iVar = new i();
        synchronized (this) {
            try {
                if (i2 != 0) {
                    h2(0, 128, 51, new int[]{jVar.a(1)});
                } else {
                    h2(0, 128, 51, new int[]{jVar.a(0)});
                    h2(0, 128, 25, new int[]{iVar.c(d2)});
                    h2(0, 128, 26, new int[]{iVar.g(d3)});
                    h2(0, 128, 37, new int[]{iVar.d(d4)});
                    h2(0, 128, 50, new int[]{iVar.b(d5)});
                    h2(0, 128, 49, new int[]{iVar.e(d6)});
                    h2(0, 128, 48, new int[]{iVar.f(d6)});
                    int[] iArrA = iVar.a(1, i3, 0.70711d, 1);
                    h2(0, 132, 27, iArrA);
                    h2(0, 132, 32, iArrA);
                    int[] iArrA2 = iVar.a(0, i3, 0.70711d, 1);
                    h2(0, 132, 38, iArrA2);
                    h2(0, 132, 43, iArrA2);
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
            iArr[i3] = a2(i3);
            z2 = z2 || iArr[i3] > -140;
        }
        boolean z3 = z2 || e0();
        if ((Configure.Property.BLUETOOTH_TYPE.d(0) == 7 && ((i2 = u0.b.D) == 3 || i2 == 2)) || u0.b.D == 1) {
            z3 = true;
        }
        if (this.J) {
            if (z3) {
                if (this.w7 >= 20) {
                    synchronized (this) {
                    }
                }
                this.w7 = 0;
            } else {
                int i4 = this.w7;
                if (i4 < 21) {
                    this.w7 = i4 + 1;
                }
                if (this.w7 == 20) {
                    synchronized (this) {
                    }
                }
            }
        }
        return iArr;
    }

    public void c2(int i2) {
        new j();
        synchronized (this) {
            try {
                if (i2 != 0) {
                    int i3 = this.j7 ? 0 : 1;
                    int[] iArr = this.R6;
                    int[] iArr2 = this.s7;
                    b2(i3, 0.0d, iArr[iArr2[0]], iArr[iArr2[1]], iArr[iArr2[2]], iArr2[3] / 10.0f, this.Q6[iArr2[4]]);
                    e2(0, 51, 1);
                } else {
                    e2(0, 51, 0);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void d2(int i2, int i3) {
        int i4 = (i3 * 384) / 100;
        new d();
        synchronized (this) {
            if (i2 >= 0) {
                if (i2 < this.o7.length) {
                    i2(1, 144, this.L6[i2], new int[]{(this.M6[i2] + 575) - i4});
                }
            }
        }
    }

    public void e2(int i2, int i3, int i4) {
        j jVar = new j();
        v2(true);
        synchronized (this) {
            try {
                if (i4 != 0) {
                    h2(i2, 128, i3, new int[]{jVar.a(0)});
                } else {
                    h2(i2, 128, i3, new int[]{jVar.a(1)});
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        v2(false);
    }

    public void f2(double d2) {
        e eVar = new e();
        synchronized (this) {
            h2(0, 128, 8, new int[]{eVar.a(d2)});
        }
    }

    public int g2(int i2, int i3, int[] iArr) {
        return this.c7.d(t9, new int[]{i2, s0.c(i3, 1), s0.c(i3, 0)}, iArr);
    }

    public synchronized int h2(int i2, int i3, int i4, int[] iArr) {
        if (!this.x8) {
            return 0;
        }
        int[] iArr2 = new int[iArr.length * 3];
        for (int i5 = 0; i5 < iArr.length; i5++) {
            int i6 = i5 * 3;
            iArr2[i6 + 0] = (iArr[i5] >> 16) & 255;
            iArr2[i6 + 1] = (iArr[i5] >> 8) & 255;
            iArr2[i6 + 2] = iArr[i5] & 255;
        }
        this.c7.d(t9, new int[]{i3, (i4 >> 8) & 255, i4 & 255}, iArr2);
        return i2 == 0 ? this.c7.d(t9, new int[]{164}, 0, 0) : this.c7.d(t9, new int[]{165}, 0, 0);
    }

    @Override // module.sound.AudioDevice
    public void i1(int i2, int i3) {
    }

    public synchronized int i2(int i2, int i3, int i4, int[] iArr) {
        if (!this.x8) {
            return 0;
        }
        int[] iArr2 = new int[iArr.length * 3];
        for (int i5 = 0; i5 < iArr.length; i5++) {
            int i6 = i5 * 3;
            iArr2[i6 + 0] = (iArr[i5] >> 16) & 255;
            iArr2[i6 + 1] = (iArr[i5] >> 8) & 255;
            iArr2[i6 + 2] = iArr[i5] & 255;
        }
        this.c7.d(t9, new int[]{i3, (i4 >> 8) & 255, i4 & 255}, iArr2);
        return i2 == 0 ? this.c7.d(t9, new int[]{162}, 0, 0) : this.c7.d(t9, new int[]{163}, 0, 0);
    }

    @Override // module.sound.AudioDevice, y0.e
    public void j(int[] iArr) {
    }

    @Override // module.sound.AudioDevice
    public int j0(int i2) {
        int i3 = this.f15048d.get(i2);
        if (i3 < 0) {
            i3 = CHANNEL.IN1.f15663a;
        }
        return i3 == CHANNEL.IN1.f15663a ? 1 : 0;
    }

    @Override // module.sound.AudioDevice
    public void j1(int i2, int i3) {
        Log.e("C7738FC", "surroundField 1 index: " + i2 + " level: " + i3);
        int i4 = (i3 > 100 || i3 < 0) ? 0 : i3;
        if (i2 < 100 || i2 >= 110) {
            return;
        }
        int i5 = i2 - 100;
        int[] iArr = this.o7;
        boolean z2 = i4 != iArr[i5];
        iArr[i5] = i4;
        Log.e("C7738FC", "surroundField 1 index: " + i5 + " level: " + i3 + " changed: " + z2);
        d2(i5, i4);
        if (z2) {
            H0(AudioDevice.STORE.SURRLEVEL, this.o7);
            super.j1(i5 + 100, i4);
        }
    }

    public int j2(int i2, int i3) {
        return g2(192, i2, new int[]{i3});
    }

    @Override // module.sound.AudioDevice
    public void k1(int i2) {
        new j();
        int i3 = i2 > 2 ? 0 : i2;
        if (i3 == 0) {
            e2(0, 76, 0);
            a.f.p().t(LogType.AUDIO, String.format(" 关闭混响------", new Object[0]));
        } else if (i3 == 1) {
            e2(0, 76, 1);
            a.f.p().t(LogType.AUDIO, String.format("进入混响  1--- ", new Object[0]));
            Z1(0, this.C7[0], this.x7[this.B7[0]], this.z7[this.D7[0]], 0);
            Z1(2, 0, 0, 0, 0);
            Z1(3, 0, this.x7[0], 0, 0);
            Z1(4, 0, this.x7[0], 0, 0);
            Z1(5, 0, this.x7[0], 0, 0);
            Z1(6, 0, this.x7[0], 0, 0);
        } else if (i3 == 2) {
            e2(0, 76, 1);
            a.f.p().t(LogType.AUDIO, String.format("进入混响  2--- ", new Object[0]));
            Z1(1, this.C7[1], this.y7[this.B7[1]], this.A7[1] + this.D7[1], 0);
            Z1(2, this.C7[2], this.y7[this.B7[2]], this.A7[2] + this.D7[2], 0);
            Z1(3, this.C7[3], this.y7[this.B7[3]], this.D7[3] + this.A7[3], 0);
            Z1(4, this.C7[4], this.y7[this.B7[4]], this.D7[4] + this.A7[4], 0);
            Z1(5, this.C7[5], this.y7[this.B7[5]], this.D7[5] + this.A7[5], 0);
            Z1(6, this.C7[6], this.y7[this.B7[6]], this.D7[6] + this.A7[6], 0);
        }
        if (this.D8 == i3) {
            return;
        }
        this.D8 = i3;
        super.k1(i3);
        int i4 = this.D8;
        if (i4 == 1 || i4 == 2) {
            w2();
        }
    }

    public boolean k2(int[] iArr, int i2) {
        int[] iArrS2;
        return i2 == 0 || (iArrS2 = s2(i2)) == null || !Arrays.equals(iArr, iArrS2);
    }

    @Override // module.sound.AudioDevice, y0.e
    public void l(int i2) {
        this.f15052f = i2 == 1;
        super.l(i2);
        H1(this.f15052f ? 1 : 0);
    }

    @Override // module.sound.AudioDevice
    public void l1(boolean z2) {
        if (this.j7 == z2) {
            return;
        }
        this.j7 = z2;
        c2(z2 ? 1 : 0);
        super.l1(z2);
    }

    public void l2(int i2, int... iArr) {
        if (i2 < 0 || i2 >= this.f15060j || iArr.length != this.f15072p) {
            return;
        }
        int iMin = Math.min(this.N6.length - 1, iArr[2]);
        if (i2 < 17) {
            I1(i2, 1, iArr[0], iArr[1] / 10.0f, this.N6[iMin]);
        } else {
            I1(i2, 0, iArr[0], iArr[1] / 10.0f, this.N6[iMin]);
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
        this.j7 = Y(AudioDevice.STORE.SURRON, 0) == 1;
        this.o7 = Z(AudioDevice.STORE.SURRLEVEL, this.o7);
        this.D8 = Y(AudioDevice.STORE.SURRMOED, this.D8);
        this.f7 = Y(AudioDevice.STORE.SBWLFREQ, this.f7);
        this.g7 = Y(AudioDevice.STORE.SBWHFREQ, this.g7);
        this.d7 = Y(AudioDevice.STORE.SUBWOOF_QVAL, 50);
        this.s7 = Z(AudioDevice.STORE.STEREO_PAEAM, this.s7);
        this.l7 = Z(AudioDevice.STORE.SPEAKER_GAINS, this.l7);
        this.m7 = Z(AudioDevice.STORE.NOISE_GATE, this.m7);
        this.q7[0] = Y(AudioDevice.STORE.P2BFFREQ, 0);
        this.q7[1] = Y(AudioDevice.STORE.P2BFGAIN, 0);
        this.r7[0] = Y(AudioDevice.STORE.P2BRFREQ, 0);
        this.r7[1] = Y(AudioDevice.STORE.P2BRGAIN, 0);
        this.n7[0] = Y(AudioDevice.STORE.HPFFA, 20);
        this.n7[1] = Y(AudioDevice.STORE.HPFFB, 200);
        this.n7[2] = Y(AudioDevice.STORE.HPFRA, 20);
        this.n7[3] = Y(AudioDevice.STORE.HPFRB, 200);
        this.t7 = Z(AudioDevice.STORE.SURR_FIELD, this.t7);
        this.L7 = Z(AudioDevice.STORE.CSAUTO_SRS, this.L7);
        this.M7 = Z(AudioDevice.STORE.CSAUTO_FOC, this.M7);
        this.N7 = Z(AudioDevice.STORE.CSAUTO_TRUBASS, this.N7);
        this.O7 = Z(AudioDevice.STORE.CSAUTO_OTHERS, this.O7);
        this.B7 = Z(AudioDevice.STORE.DLY_MIXER_LVL, this.B7);
        this.C7 = Z(AudioDevice.STORE.DLY_MIXER_PHASE, this.C7);
        this.D7 = Z(AudioDevice.STORE.DLY_MIXER_TAP, this.D7);
        this.v8 = Z(AudioDevice.STORE.SPK_PHASE, this.v8);
        this.w8 = Z(AudioDevice.STORE.SPK_LINK, this.w8);
        this.m8 = Y(AudioDevice.STORE.FREQ_CUT_MODE, this.m8);
        int[][] iArr = this.t8;
        iArr[0] = Z(AudioDevice.STORE.FREQ_CUT_5_1CH, iArr[0]);
        int[][] iArr2 = this.t8;
        iArr2[1] = Z(AudioDevice.STORE.FREQ_CUT_2WAY, iArr2[1]);
        int[][] iArr3 = this.t8;
        iArr3[2] = Z(AudioDevice.STORE.FREQ_CUT_3WAY, iArr3[2]);
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
        if (i2 >= 0 && i2 < this.l7.length) {
            int iA = o0.a(i3, 0, 20);
            int[] iArr = this.l7;
            if (iArr[i2] != iA) {
                iArr[i2] = iA;
                h0 h0Var = this.f15080t;
                AudioDevice.STORE store = AudioDevice.STORE.SPEAKER_GAINS;
                h0Var.r(store.ordinal(), this.l7);
                this.f15080t.e(store.ordinal());
                z2 = true;
            }
            T1(i2, this.H6[this.l7[i2]]);
        }
        return z2;
    }

    @Override // module.sound.AudioDevice, y0.e
    public void o(int i2) {
        super.o(i2);
    }

    public final double o2(double d2) {
        int i2 = this.f15054g;
        return i2 >= 25 ? Math.max(-10.0d, Math.min(((36 - i2) / 2) + 4, Math.min(10.0d, d2))) : d2;
    }

    @Override // module.sound.AudioDevice
    public int p0() {
        int[] iArr = this.C6;
        return iArr[iArr.length - 1];
    }

    public void p2(int i2) {
        int i3 = 0;
        int iA = o0.a(i2, 0, 2);
        if (this.m8 != iA) {
            this.m8 = iA;
            AudioDevice.STORE store = AudioDevice.STORE.FREQ_CUT_MODE;
            G0(store, iA);
            this.f15080t.e(store.ordinal());
            y0.h.s0(75, iA);
            this.n8 = 0;
            y0.h.s0(76, 60, 0);
        }
        int i4 = this.m8;
        int length = i4 * this.t8[i4].length;
        while (true) {
            int[][] iArr = this.t8;
            int i5 = this.m8;
            if (i3 >= iArr[i5].length) {
                return;
            }
            q2(length + i3, iArr[i5][i3]);
            i3 = i3 + 1 + 1;
        }
    }

    @Override // module.sound.AudioDevice
    public int q0() {
        return -1440;
    }

    public void q2(int i2, int i3) {
        char c2;
        int i4;
        int i5;
        boolean z2;
        int i6 = i3;
        f fVar = new f();
        if (i2 < 0 || i2 > 60) {
            return;
        }
        int i7 = i2 / 20;
        int i8 = i2 % 20;
        int i9 = i8 / 2;
        int i10 = i8 % 2;
        int i11 = i9 % 2;
        boolean z3 = false;
        int i12 = 1;
        if (i2 >= 60) {
            if (i6 < 0 || i6 >= 5) {
                i6 = 0;
            }
            if (this.n8 != i6) {
                this.n8 = i6;
                y0.h.s0(76, i2, i6);
                return;
            }
            return;
        }
        int iA = o0.a(i6, 0, i10 == 0 ? 35 : 5);
        int[][] iArr = this.t8;
        int i13 = this.m8;
        if (iArr[i13][i8] != iA) {
            iArr[i13][i8] = iA;
            c2 = 1;
        } else {
            c2 = 65535;
        }
        int i14 = this.b9[i9];
        int i15 = i11 == 0 ? this.k8[iArr[i13][(i9 * 2) + 1]] : this.l8[iArr[i13][(i9 * 2) + 1]];
        synchronized (this) {
            int i16 = 0;
            while (i16 < 4) {
                int i17 = i16;
                int i18 = i12;
                h2(i18, 132, i14 + (i17 * 5), fVar.d(0, i15, i16, this.c9[this.t8[this.m8][i9 * 2]], 0.70711d, 10.0d, 1));
                i16 = i17 + 1;
                i12 = i18;
                z3 = z3;
                iA = iA;
            }
            i4 = iA;
            i5 = i12;
            z2 = z3;
        }
        int[] iArr2 = new int[2];
        iArr2[z2 ? 1 : 0] = i2;
        iArr2[i5] = i4;
        y0.h.s0(76, iArr2);
        if (c2 > 0) {
            if (i7 == 0) {
                H0(AudioDevice.STORE.FREQ_CUT_5_1CH, this.t8[i7]);
            } else if (i7 == i5) {
                H0(AudioDevice.STORE.FREQ_CUT_2WAY, this.t8[i7]);
            } else {
                if (i7 != 2) {
                    return;
                }
                H0(AudioDevice.STORE.FREQ_CUT_3WAY, this.t8[i7]);
            }
        }
    }

    @Override // module.sound.AudioDevice
    public void r0(int i2) {
        int iMax = Math.max(0, Math.min(i2, this.D6.length - 1));
        this.f15056h = iMax;
        Q1(1, x1(iMax, this.D6) / 10, 0);
    }

    public double r2(int i2) {
        return ((double) i2) / 100.0d;
    }

    public int[] s2(int i2) {
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

    public final void t2() {
        synchronized (this) {
            f fVar = new f();
            h2(0, 132, 14, fVar.a(0, 4, 320, 0.70711d, r9[this.f15054g], 1));
            h2(0, 132, 19, fVar.a(0, 3, 2000, 0.70711d, s9[this.f15054g], 2));
        }
    }

    @Override // module.sound.AudioDevice
    public int u1() {
        return super.u1();
    }

    public void u2(boolean z2) {
        if (this.f15050e) {
            if (z2) {
                v2(true);
                this.y8 = true;
            } else {
                this.y8 = false;
                v2(false);
            }
        }
    }

    @Override // module.sound.AudioDevice
    public void v0(boolean z2) {
        super.v0(z2);
        if (!this.f15050e) {
            return;
        }
        int i2 = 0;
        if (z2) {
            for (int i3 = 0; i3 < this.l7.length; i3++) {
                T1(i3, this.H6[0]);
            }
            return;
        }
        while (true) {
            int[] iArr = this.l7;
            if (i2 >= iArr.length) {
                return;
            }
            T1(i2, this.H6[iArr[i2]]);
            i2++;
        }
    }

    public void v2(boolean z2) {
        if (this.f15050e && !this.y8) {
            synchronized (this) {
                e eVar = new e();
                if (z2) {
                    h2(0, 128, 342, new int[]{eVar.a(-145.0d)});
                    a.i.a0(45L);
                } else {
                    a.i.a0(3L);
                    h2(0, 128, 342, new int[]{eVar.a(8.0d)});
                }
            }
        }
    }

    @Override // module.sound.AudioDevice
    public void w0(int i2) {
        int[] iArrS2 = s2(i2);
        if (k2(this.f15074q, i2)) {
            System.arraycopy(iArrS2, 0, this.f15074q, 0, iArrS2.length);
            int i3 = this.f15060j;
            int[] iArr = new int[i3];
            int[] iArr2 = new int[i3];
            int[] iArr3 = new int[i3];
            for (int i4 = 0; i4 < this.f15060j; i4++) {
                int i5 = this.f15072p;
                iArr2[i4] = iArrS2[i4 * i5];
                iArr[i4] = iArrS2[(i4 * i5) + 1];
                iArr3[i4] = iArrS2[(i5 * i4) + 2];
            }
            m2(iArrS2);
            y0.h.H(iArr, iArr2, iArr3, this.f15060j, this);
        }
    }

    public void w2() {
        if (this.q7[0] != 0) {
            C0(65536, 0);
        }
        if (this.r7[0] != 0) {
            C0(131072, 0);
        }
        if (this.q7[1] != 0) {
            D0(65536, 0);
        }
        if (this.r7[1] != 0) {
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
        if (i2 >= 0) {
            int[] iArr = this.w8;
            if (i2 >= iArr.length) {
                return;
            }
            int i4 = i3 == 0 ? 0 : 1;
            if (iArr[i2] != i4) {
                iArr[i2] = i4;
                H0(AudioDevice.STORE.SPK_LINK, iArr);
                y0.h.s0(78, i2, i4);
            }
        }
    }

    @Override // module.sound.AudioDevice
    public void y() {
        synchronized (this) {
            h2(1, 128, 368, new int[]{256});
        }
    }

    public void y2(int i2, int i3) {
        if (i2 >= 0) {
            int[] iArr = this.v8;
            if (i2 >= iArr.length) {
                return;
            }
            int i4 = i3 == 0 ? 0 : 1;
            if (iArr[i2] != i4) {
                iArr[i2] = i4;
                H0(AudioDevice.STORE.SPK_PHASE, iArr);
                y0.h.s0(77, i2, i4);
            }
            S1(i2, i4);
        }
    }

    public void z2(int i2, int i3) {
        if (i2 >= 0 || i2 < this.s7.length) {
            int iMax = Math.max(0, Math.min(i3, this.R6.length));
            if (i2 == 0 || i2 == 1 || i2 == 2 || i2 == 3 || i2 == 4) {
                int[] iArr = this.s7;
                if (iArr[i2] != iMax) {
                    iArr[i2] = iMax;
                    y0.h.s0(63, i2, iMax);
                    H0(AudioDevice.STORE.STEREO_PAEAM, this.s7);
                }
                int i4 = !this.j7 ? 1 : 0;
                int[] iArr2 = this.R6;
                int[] iArr3 = this.s7;
                b2(i4, 0.0d, iArr2[iArr3[0]], iArr2[iArr3[1]], iArr2[iArr3[2]], iArr3[3] / 10.0f, this.Q6[iArr3[4]]);
            }
        }
    }
}
