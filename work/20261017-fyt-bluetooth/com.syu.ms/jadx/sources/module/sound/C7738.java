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
public class C7738 extends AudioDevice {
    public static double[] u7 = {0.0d, 10.0d, 10.0d, 10.0d, 10.0d, 10.0d, 10.0d, 9.5d, 9.0d, 8.5d, 8.0d, 7.5d, 7.0d, 6.5d, 6.0d, 5.5d, 5.0d, 4.5d, 4.0d, 3.5d, 3.0d, 2.5d, 2.0d, 1.5d, 1.0d, 0.5d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d};
    public static double[] v7 = {0.0d, 7.0d, 7.0d, 7.0d, 7.0d, 7.0d, 7.0d, 6.8d, 6.5d, 6.2d, 5.9d, 5.6d, 5.2d, 4.8d, 4.4d, 4.0d, 3.6d, 3.2d, 2.8d, 2.4d, 2.0d, 1.6d, 1.2d, 0.8d, 0.5d, 0.3d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d};
    public static int w7 = 28;
    public static double[] x7 = null;
    public final int A1;
    public final int A2;
    public final int A3;
    public final int A4;
    public int[] A5;
    public int A6;
    public final int B1;
    public final int B2;
    public final int B3;
    public final int B4;
    public int[] B5;
    public boolean B6;
    public final int C1;
    public final int C2;
    public final int C3;
    public final int C4;
    public double C5;
    public boolean C6;
    public final int D1;
    public final int D2;
    public final int D3;
    public final int D4;
    public int[] D5;
    public boolean D6;
    public final int E1;
    public final int E2;
    public final int E3;
    public final int E4;
    public final int[] E5;
    public Runnable E6;
    public final int F1;
    public final int F2;
    public final int F3;
    public final int F4;
    public final int[] F5;
    public Handler F6;
    public final int G1;
    public final int G2;
    public final int G3;
    public final int G4;
    public final int[] G5;
    public Runnable G6;
    public final int H1;
    public final int H2;
    public final int H3;
    public final int H4;
    public final int[] H5;
    public final int H6;
    public final boolean I0;
    public final int I1;
    public final int I2;
    public final int I3;
    public final int I4;
    public final int[] I5;
    public int I6;
    public final String J0;
    public final int J1;
    public final int J2;
    public final int J3;
    public final int J4;
    public final int[] J5;
    public final int J6;
    public final int K0;
    public final int K1;
    public final int K2;
    public final int K3;
    public final int K4;
    public final int[] K5;
    public final int K6;
    public final int L0;
    public final int L1;
    public final int L2;
    public final int L3;
    public final int L4;
    public final int[] L5;
    public final int L6;
    public final int M0;
    public final int M1;
    public final int M2;
    public final int M3;
    public final int M4;
    public n M5;
    public final int M6;
    public final int N0;
    public final int N1;
    public final int N2;
    public final int N3;
    public final int N4;
    public int N5;
    public final int N6;
    public final int O0;
    public final int O1;
    public final int O2;
    public final int O3;
    public final int O4;
    public int O5;
    public final int O6;
    public final int P0;
    public final int P1;
    public final int P2;
    public final int P3;
    public final int P4;
    public int P5;
    public final int P6;
    public final int Q0;
    public final int Q1;
    public final int Q2;
    public final int Q3;
    public final int Q4;
    public int Q5;
    public final int Q6;
    public final int R0;
    public final int R1;
    public final int R2;
    public final int R3;
    public final int R4;
    public AudioManager R5;
    public final int R6;
    public final int S0;
    public final int S1;
    public final int S2;
    public final int S3;
    public final int S4;
    public boolean S5;
    public final int S6;
    public final int T0;
    public final int T1;
    public final int T2;
    public final int T3;
    public final int T4;
    public boolean T5;
    public final int T6;
    public final int U0;
    public final int U1;
    public final int U2;
    public final int U3;
    public final int U4;
    public int[] U5;
    public final int U6;
    public final int V0;
    public final int V1;
    public final int V2;
    public final int V3;
    public final int V4;
    public int[] V5;
    public final int V6;
    public final int W0;
    public final int W1;
    public final int W2;
    public final int W3;
    public final int W4;
    public int[] W5;
    public final int W6;
    public final int X0;
    public final int X1;
    public final int X2;
    public final int X3;
    public final int X4;
    public int[] X5;
    public final int X6;
    public final int Y0;
    public final int Y1;
    public final int Y2;
    public final int Y3;
    public final int Y4;
    public int[] Y5;
    public final int Y6;
    public final int Z0;
    public final int Z1;
    public final int Z2;
    public final int Z3;
    public final int Z4;
    public int[] Z5;
    public final int Z6;

    /* JADX INFO: renamed from: a1, reason: collision with root package name */
    public final int f15590a1;
    public final int a2;
    public final int a3;
    public final int a4;
    public final int a5;
    public int[] a6;
    public final int a7;

    /* JADX INFO: renamed from: b1, reason: collision with root package name */
    public final int f15591b1;
    public final int b2;
    public final int b3;
    public final int b4;
    public final int b5;
    public int[] b6;
    public final int b7;

    /* JADX INFO: renamed from: c1, reason: collision with root package name */
    public final int f15592c1;
    public final int c2;
    public final int c3;
    public final int c4;
    public final double c5;
    public final int c6;
    public final int c7;

    /* JADX INFO: renamed from: d1, reason: collision with root package name */
    public final int f15593d1;
    public final int d2;
    public final int d3;
    public final int d4;
    public final double d5;
    public final int d6;
    public final int d7;

    /* JADX INFO: renamed from: e1, reason: collision with root package name */
    public final int f15594e1;
    public final int e2;
    public final int e3;
    public final int e4;
    public final double e5;
    public int e6;
    public final int e7;

    /* JADX INFO: renamed from: f1, reason: collision with root package name */
    public final int f15595f1;
    public final int f2;
    public final int f3;
    public final int f4;
    public final int f5;
    public final int f6;
    public final int f7;

    /* JADX INFO: renamed from: g1, reason: collision with root package name */
    public final int f15596g1;
    public final int g2;
    public final int g3;
    public final int g4;
    public final int g5;
    public final int g6;
    public l g7;

    /* JADX INFO: renamed from: h1, reason: collision with root package name */
    public final int f15597h1;
    public final int h2;
    public final int h3;
    public final int h4;
    public final double h5;
    public int[] h6;
    public final int h7;

    /* JADX INFO: renamed from: i1, reason: collision with root package name */
    public final int f15598i1;
    public final int i2;
    public final int i3;
    public final int i4;
    public final double i5;
    public int[] i6;
    public final int i7;

    /* JADX INFO: renamed from: j1, reason: collision with root package name */
    public final int f15599j1;
    public final int j2;
    public final int j3;
    public final int j4;
    public final int[] j5;
    public int[] j6;
    public final int j7;

    /* JADX INFO: renamed from: k1, reason: collision with root package name */
    public final int f15600k1;
    public final int k2;
    public final int k3;
    public final int k4;
    public int[] k5;
    public int[] k6;
    public final int k7;

    /* JADX INFO: renamed from: l1, reason: collision with root package name */
    public final int f15601l1;
    public final int l2;
    public final int l3;
    public final int l4;
    public int[] l5;
    public int[] l6;
    public final int l7;

    /* JADX INFO: renamed from: m1, reason: collision with root package name */
    public final int f15602m1;
    public final int m2;
    public final int m3;
    public final int m4;
    public final int[] m5;
    public int[] m6;
    public final int m7;

    /* JADX INFO: renamed from: n1, reason: collision with root package name */
    public final int f15603n1;
    public final int n2;
    public final int n3;
    public final int n4;
    public final int[] n5;
    public int[] n6;
    public final int n7;

    /* JADX INFO: renamed from: o1, reason: collision with root package name */
    public final int f15604o1;
    public final int o2;
    public final int o3;
    public final int o4;
    public int[] o5;
    public boolean o6;
    public final int o7;

    /* JADX INFO: renamed from: p1, reason: collision with root package name */
    public final int f15605p1;
    public final int p2;
    public final int p3;
    public final int p4;
    public final int p5;
    public final int p6;
    public final int p7;

    /* JADX INFO: renamed from: q1, reason: collision with root package name */
    public final int f15606q1;
    public final int q2;
    public final int q3;
    public final int q4;
    public final int q5;
    public final int q6;
    public final int q7;
    public final int r1;
    public final int r2;
    public final int r3;
    public final int r4;
    public int[] r5;
    public final int r6;
    public final int r7;
    public final int s1;
    public final int s2;
    public final int s3;
    public final int s4;
    public int[] s5;
    public final int s6;
    public final int s7;
    public final int t1;
    public final int t2;
    public final int t3;
    public final int t4;
    public int[] t5;
    public final int t6;
    public final int t7;
    public final int u1;
    public final int u2;
    public final int u3;
    public final int u4;
    public final int u5;
    public final int[] u6;
    public final int v1;
    public final int v2;
    public final int v3;
    public final int v4;
    public int[] v5;
    public int[] v6;
    public final int w1;
    public final int w2;
    public final int w3;
    public final int w4;
    public int[] w5;
    public int[] w6;
    public final int x1;
    public final int x2;
    public final int x3;
    public final int x4;
    public int[] x5;
    public int[] x6;
    public final int y1;
    public final int y2;
    public final int y3;
    public final int y4;
    public final int[] y5;
    public int[] y6;
    public final int z1;
    public final int z2;
    public final int z3;
    public final int z4;
    public double[] z5;
    public int z6;

    public enum CHANNEL {
        IN1(0),
        IN2(1),
        IN3(2),
        IN4(3),
        IN5(4);


        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f15613a;

        CHANNEL(int i2) {
            this.f15613a = i2;
        }
    }

    public class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int[] f15614a = new int[9];

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f15615b;

        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = 0;
            while (true) {
                this.f15615b = i2;
                int i3 = this.f15615b;
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
            C7738.this.F6.postDelayed(this, TimedRemoteCaller.DEFAULT_CALL_TIMEOUT_MILLIS);
        }
    }

    public class c {
        public c() {
        }

        public int a(double d2) {
            return C7738.this.g7.a(d2, 0);
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
            return C7738.this.g7.a(dPow, 2);
        }
    }

    public class f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public double f15621a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public double f15622b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public double f15623c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public double f15624d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public double f15625e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public double f15626f;

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
                    double d13 = fVar.f15624d;
                    d5 = d13 + 1.0d;
                    double d14 = fVar.f15623c;
                    d6 = ((1.0d - d14) / 2.0d) / d5;
                    d7 = (1.0d - d14) / d5;
                    d8 = (-(1.0d - d13)) / d5;
                    d9 = (d14 * 2.0d) / d5;
                    d10 = 1.0d - d14;
                } else if (i3 == 2) {
                    fVar = this;
                    double d15 = fVar.f15624d;
                    double d16 = fVar.f15625e;
                    double d17 = (d15 / d16) + 1.0d;
                    double d18 = fVar.f15623c;
                    double d19 = (d18 * (-2.0d)) / d17;
                    d9 = (d18 * 2.0d) / d17;
                    d11 = (1.0d - (d15 * d16)) / d17;
                    d7 = d19;
                    d12 = ((d15 * d16) + 1.0d) / d17;
                    d8 = (-(1.0d - (d15 / d16))) / d17;
                } else if (i3 == 3) {
                    fVar = this;
                    double dSqrt = Math.sqrt(fVar.f15625e / d2);
                    fVar.f15626f = dSqrt;
                    double d20 = fVar.f15625e;
                    double d21 = fVar.f15623c;
                    double d22 = fVar.f15622b;
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
                    double dSqrt2 = Math.sqrt(this.f15625e / d2);
                    this.f15626f = dSqrt2;
                    double d28 = this.f15625e;
                    double d29 = this.f15623c;
                    double d30 = this.f15622b;
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
                return i2 == 0 ? new int[]{C7738.this.g7.a(d11, i5), C7738.this.g7.a(d7, i5), C7738.this.g7.a(d8, i5), C7738.this.g7.a(d9, i5), C7738.this.g7.a(d12, i5)} : new int[]{C7738.this.g7.b(d11, i5), C7738.this.g7.c(d11, i5), C7738.this.g7.b(d7, i5), C7738.this.g7.c(d7, i5), C7738.this.g7.b(d8, i5), C7738.this.g7.c(d8, i5), C7738.this.g7.b(d9, i5), C7738.this.g7.c(d9, i5), C7738.this.g7.b(d12, i5), C7738.this.g7.c(d12, i5)};
            }
            fVar = this;
            d4 = 2.0d;
            double d37 = fVar.f15624d;
            d5 = d37 + 1.0d;
            double d38 = fVar.f15623c;
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
            this.f15621a = d4;
            this.f15622b = Math.sin(d4);
            this.f15623c = Math.cos(this.f15621a);
            this.f15624d = this.f15622b / (d2 * 2.0d);
            if (i2 == 2 || i2 == 3 || i2 == 4) {
                this.f15625e = Math.pow(10.0d, d3 / 40.0d);
            } else {
                this.f15625e = Math.sqrt(Math.pow(10.0d, d3 / 20.0d));
            }
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
            return C7738.this.g7.a(dPow, 2);
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
        public final double f15630a = 0.0d;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final double f15631b = -145.0d;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public double f15632c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public double f15633d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public double f15634e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public double f15635f;

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
                    double d11 = this.f15635f;
                    double d12 = d11 + 1.0d;
                    double d13 = this.f15634e;
                    d3 = ((1.0d - d13) / 2.0d) / d12;
                    double d14 = (1.0d - d13) / d12;
                    d5 = (-(1.0d - d11)) / d12;
                    d6 = (d13 * 2.0d) / d12;
                    d7 = ((1.0d - d13) / 2.0d) / d12;
                    d4 = d14;
                }
                return new int[]{C7738.this.g7.a(d10, i4), C7738.this.g7.a(d4, i4), C7738.this.g7.a(d9, i4), C7738.this.g7.a(d8, i4), C7738.this.g7.a(d7, i4)};
            }
            double d15 = this.f15635f;
            double d16 = d15 + 1.0d;
            double d17 = this.f15634e;
            d3 = ((d17 + 1.0d) / 2.0d) / d16;
            d4 = (-(d17 + 1.0d)) / d16;
            d5 = (-(1.0d - d15)) / d16;
            d6 = (d17 * 2.0d) / d16;
            d7 = ((d17 + 1.0d) / 2.0d) / d16;
            d8 = d6;
            d9 = d5;
            d10 = d3;
            return new int[]{C7738.this.g7.a(d10, i4), C7738.this.g7.a(d4, i4), C7738.this.g7.a(d9, i4), C7738.this.g7.a(d8, i4), C7738.this.g7.a(d7, i4)};
        }

        public int b(double d2) {
            return C7738.this.g7.a(d2 <= -145.0d ? 0.0d : Math.pow(10.0d, d2 / 20.0d), 2);
        }

        public int c(double d2) {
            return C7738.this.g7.a(d2 <= -145.0d ? 0.0d : Math.pow(10.0d, d2 / 20.0d), 2);
        }

        public int d(double d2) {
            return C7738.this.g7.a(d2 <= -145.0d ? 0.0d : Math.pow(10.0d, d2 / 20.0d), 2);
        }

        public int e(double d2) {
            return C7738.this.g7.a(d2, 1);
        }

        public int f(double d2) {
            return C7738.this.g7.a(1.0d - d2, 1);
        }

        public int g(double d2) {
            return C7738.this.g7.a(d2 <= -145.0d ? 0.0d : Math.pow(10.0d, d2 / 20.0d), 2);
        }

        public void h(int i2, int i3, double d2) {
            double d3 = (((double) i3) * 6.283185307179586d) / 48000.0d;
            this.f15632c = d3;
            this.f15633d = Math.sin(d3);
            this.f15634e = Math.cos(this.f15632c);
            this.f15635f = this.f15633d / (d2 * 2.0d);
        }
    }

    public class j {
        public j() {
        }

        public int a(int i2) {
            return (i2 == 0 ? 1 : 2) * 16;
        }

        public int b(int i2) {
            int i3 = 2;
            if (i2 == 0) {
                i3 = 1;
            } else if (i2 != 1) {
                i3 = i2 == 2 ? 4 : 8;
            }
            return i3 * 16;
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
            return C7738.this.g7.a(dPow, 2);
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

    public C7738(n nVar) {
        super(36, 3);
        this.I0 = false;
        this.J0 = "C7738";
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
        this.f15590a1 = 48;
        this.f15591b1 = 49;
        this.f15592c1 = 50;
        this.f15593d1 = 51;
        this.f15594e1 = 52;
        this.f15595f1 = 53;
        this.f15596g1 = 54;
        this.f15597h1 = 55;
        this.f15598i1 = 56;
        this.f15599j1 = 57;
        this.f15600k1 = 0;
        this.f15601l1 = 1;
        this.f15602m1 = 2;
        this.f15603n1 = 3;
        this.f15604o1 = 4;
        this.f15605p1 = 5;
        this.f15606q1 = 6;
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
        this.u2 = 339;
        this.v2 = 342;
        this.w2 = 347;
        this.x2 = 352;
        this.y2 = 357;
        this.z2 = 362;
        this.A2 = 367;
        this.B2 = 372;
        this.C2 = 377;
        this.D2 = 382;
        this.E2 = 387;
        this.F2 = 388;
        this.G2 = 389;
        this.H2 = 390;
        this.I2 = 391;
        this.J2 = 392;
        this.K2 = 393;
        this.L2 = 394;
        this.M2 = 395;
        this.N2 = 396;
        this.O2 = 306;
        this.P2 = 0;
        this.Q2 = 26;
        this.R2 = 53;
        this.S2 = 54;
        this.T2 = 68;
        this.U2 = 69;
        this.V2 = 70;
        this.W2 = 72;
        this.X2 = 86;
        this.Y2 = 87;
        this.Z2 = 88;
        this.a3 = 102;
        this.b3 = 103;
        this.c3 = 104;
        this.d3 = 106;
        this.e3 = 130;
        this.f3 = 154;
        this.g3 = 180;
        this.h3 = 181;
        this.i3 = 182;
        this.j3 = 203;
        this.k3 = 204;
        this.l3 = 205;
        this.m3 = 206;
        this.n3 = 305;
        this.o3 = 0;
        this.p3 = 1;
        this.q3 = 2;
        this.r3 = 3;
        this.s3 = 307;
        this.t3 = 312;
        this.u3 = 313;
        this.v3 = 318;
        this.w3 = 319;
        this.x3 = 324;
        this.y3 = 325;
        this.z3 = 326;
        this.A3 = 328;
        this.B3 = 331;
        this.C3 = 332;
        this.D3 = 334;
        this.E3 = 337;
        this.F3 = 338;
        this.G3 = 339;
        this.H3 = 341;
        this.I3 = 344;
        this.J3 = 345;
        this.K3 = 346;
        this.L3 = 348;
        this.M3 = SpellChecker.WORD_ITERATOR_INTERVAL;
        this.N3 = 351;
        this.O3 = 352;
        this.P3 = 353;
        this.Q3 = 354;
        this.R3 = 355;
        this.S3 = 356;
        this.T3 = 357;
        this.U3 = 359;
        this.V3 = 4;
        this.W3 = 5;
        this.X3 = 6;
        this.Y3 = 7;
        this.Z3 = 362;
        this.a4 = 367;
        this.b4 = 368;
        this.c4 = 373;
        this.d4 = 374;
        this.e4 = 379;
        this.f4 = 380;
        this.g4 = 381;
        this.h4 = 382;
        this.i4 = 383;
        this.j4 = 384;
        this.k4 = 385;
        this.l4 = 386;
        this.m4 = 387;
        this.n4 = 389;
        this.o4 = 392;
        this.p4 = 393;
        this.q4 = 395;
        this.r4 = 398;
        this.s4 = 399;
        this.t4 = 400;
        this.u4 = 402;
        this.v4 = UrlQuerySanitizer.IllegalCharacterValueSanitizer.URL_AND_SPACE_LEGAL;
        this.w4 = Downloads.Impl.STATUS_NOT_ACCEPTABLE;
        this.x4 = 8;
        this.y4 = 9;
        this.z4 = 407;
        this.A4 = Downloads.Impl.STATUS_PRECONDITION_FAILED;
        this.B4 = 417;
        this.C4 = 418;
        this.D4 = 420;
        this.E4 = 423;
        this.F4 = 424;
        this.G4 = 426;
        this.H4 = 429;
        this.I4 = 10;
        this.J4 = 11;
        this.K4 = 430;
        this.L4 = 435;
        this.M4 = 440;
        this.N4 = 441;
        this.O4 = 443;
        this.P4 = 446;
        this.Q4 = 447;
        this.R4 = 449;
        this.S4 = 452;
        this.T4 = 453;
        this.U4 = 48000;
        this.V4 = 0;
        this.W4 = 1;
        this.X4 = 0;
        this.Y4 = 1;
        this.Z4 = 2;
        this.a5 = 3;
        this.b5 = 4;
        this.c5 = -144.0d;
        this.d5 = 12.0d;
        this.e5 = -145.0d;
        this.f5 = 0;
        this.g5 = 1;
        this.h5 = -40.0d;
        this.i5 = 4.0d;
        this.j5 = new int[]{0, 15, 1, 135, 2, 3, 3, 16, 4, 39, 5, 0, 6, 0, 7, 144, 8, 39, 9, 144, 10, 39, 11, 144, 12, 39, 13, 16, 14, 39, 15, 16, 16, 39, 17, 16, 18, 4, 19, 8, 20, 0, 21, 0, 22, 7, 23, 87, 24, 119, 25, 119, 26, 18, 27, 52, 28, 0, 29, 117, 30, 119, 31, 0, 32, 0, 33, 119, 34, 0, 35, 0, 36, 0, 37, 19, 38, 20, 39, 31, 40, 32, 41, 19, 42, 20, 43, 25, 44, 26, 45, 30, 46, 27, 47, 0, 48, 0, 49, 13, 50, 14, 51, 0, 52, 0, 53, 0, 54, 0, 55, 1, 56, 21, 57, 22, 58, 0, 59, 0, 60, 0, 61, 0, 62, 0, 63, 0, 64, 0, 65, 22, 66, 0, 67, 0, 68, 0, 69, 0, 70, 0, 71, 0, 72, 0, 73, 32, 74, 2, 75, 2, 76, 0, 77, 0, 78, 0, 79, 170, 80, 0, 81, 0, 82, 0, 83, 0, 84, 0, 85, 0, 86, 0, 87, 34, 88, 59, 89, 0, 90, 0, 91, 0, 92, 0, 93, 51, 94, 0, 95, 48, 96, 48, 97, 48, 98, 48, 99, 48, 100, 0, 101, 0, 102, 29, 103, 0, 104, 24, 105, 24, 106, 24, 107, 24, 108, 0, 109, 0, 110, 0, 111, 0, 112, 0, 113, 0, 114, 0, 115, 0, 116, 0, 117, 0, 118, 0, 119, 0, 120, 0, 121, 0, 122, 0, 123, 0, 124, 0, 125, 0, 126, 0, 127, 4, 128, 2, 129, 0, 130, 0, 131, 62, 132, 226, 133, 31, 134, 0, 135, 0, 144, 0, 145, 0, 146, 0, 147, 0, 148, 0, 149, 0};
        this.k5 = null;
        this.l5 = null;
        this.m5 = new int[]{0, 2, 63, 0, 2, 63, 0, 4, 127, 0, 4, 127, 0, 6, 191, 0, 6, 191, 0, 8, 255, 0, 8, 255, 0, 11, 63, 0, 11, 63, 0, 13, 127, 0, 13, 127};
        this.n5 = new int[]{0, 1, i.a.Theme_actionModeWebSearchDrawable, 0, 1, i.a.Theme_actionModeWebSearchDrawable, 0, 1, i.a.Theme_actionModeWebSearchDrawable, 0, 1, i.a.Theme_actionModeWebSearchDrawable, 0, 1, i.a.Theme_actionModeWebSearchDrawable, 0, 1, i.a.Theme_actionModeWebSearchDrawable, 0, 1, i.a.Theme_actionModeWebSearchDrawable, 0, 3, 231, 0, 3, 231, 0, 3, 231, 0, 3, 231, 0, 3, 231, 0, 3, 231, 0, 3, 231};
        this.o5 = new int[]{20, 24, 29, 36, 45, 53, 65, 80, 100, 120, 140, 170, 210, 260, 320, 390, 470, 570, 700, 850, 1000, 1300, 1600, 1900, 2300, 2800, 3400, 4100, 5000, 6100, 7500, 9000, 11000, 14000, 17000, Window.PROGRESS_SECONDARY_START};
        this.p5 = 160;
        this.q5 = 70;
        this.r5 = new int[]{-1450, -640, -560, -500, -450, -410, -370, -340, -320, -310, -300, -290, -280, -270, -260, -250, -240, -230, -220, -210, AudioService.STREAM_REMOTE_MUSIC, -190, -180, -170, -160, -150, -140, -130, -120, -110, -100, -90, -80, -70, -60, -50, -40};
        this.s5 = new int[]{-1450, -480, -420, -370, -330, -300, -270, -250, -230, -220, -210, AudioService.STREAM_REMOTE_MUSIC, -190, -180, -170, -160, -150, -140, -130, -120, -110, -100, -90, -80, -70, -60, -50, -40, -30, -20, -10, 0, 10, 20, 30, 40, 50};
        this.t5 = new int[]{65, 75, 85, 95, 105, 115, 125, 135, 145, 155, 165, 175, 185, 195, 205, 215, 225, 235, 240, i.a.Theme_preferenceFragmentStyle, 250, 255, 260, 265, i.a.Theme_findOnPagePreviousDrawable, 275, BluetoothClass.Device.COMPUTER_WEARABLE, 285, 290, 295, 300, 305, 310, 315, 320, 325};
        this.u5 = 0;
        this.v5 = new int[]{24, 24, 24, 24, 24, 24, 24, 24, 24, 30, 36, 42, 48, 54, 60, 66, 255};
        this.w5 = new int[]{-145, -21, -18, -15, -12, -10, -8, -6, -4, -2, 0};
        this.x5 = new int[]{-10, -9, -8, -7, -6, -5, -4, -3, -2, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
        this.y5 = new int[]{20, 68, 86, 108, 134, 172, 214, 260};
        this.z5 = new double[]{0.0d, 2.0d, 4.0d, 5.5d, 6.5d, 7.5d, 8.0d, 8.5d, 9.0d, 9.5d, 10.0d};
        this.A5 = new int[]{100, 150, 200, 250, 300, MediaProperties.HEIGHT_360, 420, 500, CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR, MediaProperties.HEIGHT_720, 850, 1000, 1200, 1400, 1600, BluetoothClass.Device.WEARABLE_PAGER, 2100, 2500, ConnectivityManager.CONNECTIVITY_CHANGE_DELAY_DEFAULT, 3500, 4000};
        this.B5 = new int[]{-145, -80, -48, -32, -25, -21, -18, -16, -14, -12, -10, -9, -8, -7, -6, -5, -4, -3, -2, -1, 0};
        this.C5 = 1.0d;
        this.D5 = new int[]{20, 10, 50, 24, 10, 50, 29, 10, 50, 36, 10, 50, 44, 10, 50, 54, 10, 50, 66, 10, 50, 81, 10, 50, 100, 10, 50, 125, 10, 50, 152, 10, 50, 183, 10, 50, 220, 10, 50, i.a.Theme_findOnPagePreviousDrawable, 10, 50, SpellChecker.WORD_ITERATOR_INTERVAL, 10, 50, 440, 10, 50, 545, 10, 50, 680, 10, 50, 850, 10, 50, 1050, 10, 50, 1360, 10, 50, 1770, 10, 50, 2200, 10, 50, 2750, 10, 50, 3420, 10, 50, 4270, 10, 50, 5370, 10, 50, 6550, 10, 50, 8130, 10, 50, 9750, 10, 50, 11350, 10, 50, 13000, 10, 50, 14630, 10, 50, 16290, 10, 50, 18100, 10, 50, Window.PROGRESS_SECONDARY_START, 10, 50};
        int[] iArr = {20, 10, 50, 24, 10, 50, 29, 10, 50, 36, 10, 50, 44, 10, 50, 54, 10, 50, 66, 10, 50, 81, 10, 50, 100, 10, 50, 125, 10, 50, 152, 10, 50, 183, 10, 50, 220, 10, 50, i.a.Theme_findOnPagePreviousDrawable, 10, 50, SpellChecker.WORD_ITERATOR_INTERVAL, 10, 50, 440, 10, 50, 545, 10, 50, 680, 10, 50, 850, 10, 50, 1050, 10, 50, 1360, 10, 50, 1770, 10, 50, 2200, 10, 50, 2750, 10, 50, 3420, 10, 50, 4270, 10, 50, 5370, 10, 50, 6550, 10, 50, 8130, 10, 50, 9750, 10, 50, 11350, 10, 50, 13000, 10, 50, 14630, 10, 50, 16290, 10, 50, 18100, 10, 50, Window.PROGRESS_SECONDARY_START, 10, 50};
        this.E5 = iArr;
        int[] iArr2 = {20, 17, 50, 24, 17, 50, 29, 17, 50, 36, 17, 50, 44, 17, 50, 54, 17, 50, 66, 16, 50, 81, 15, 50, 100, 14, 50, 125, 13, 50, 152, 12, 50, 183, 12, 50, 220, 11, 50, i.a.Theme_findOnPagePreviousDrawable, 9, 50, SpellChecker.WORD_ITERATOR_INTERVAL, 8, 50, 440, 6, 50, 545, 6, 50, 680, 6, 50, 850, 6, 50, 1050, 6, 50, 1360, 7, 50, 1770, 8, 50, 2200, 9, 50, 2750, 11, 50, 3420, 12, 50, 4270, 13, 50, 5370, 14, 50, 6550, 15, 50, 8130, 16, 50, 9750, 17, 50, 11350, 17, 50, 13000, 17, 50, 14630, 17, 50, 16290, 17, 50, 18100, 17, 50, Window.PROGRESS_SECONDARY_START, 17, 50};
        this.F5 = iArr2;
        int[] iArr3 = {20, 4, 50, 24, 4, 50, 29, 4, 50, 36, 4, 50, 44, 4, 50, 54, 4, 50, 66, 4, 50, 81, 4, 50, 100, 5, 50, 125, 7, 50, 152, 8, 50, 183, 9, 50, 220, 10, 50, i.a.Theme_findOnPagePreviousDrawable, 11, 50, SpellChecker.WORD_ITERATOR_INTERVAL, 12, 50, 440, 14, 50, 545, 13, 50, 680, 13, 50, 850, 12, 50, 1050, 12, 50, 1360, 12, 50, 1770, 12, 50, 2200, 13, 50, 2750, 13, 50, 3420, 14, 50, 4270, 12, 50, 5370, 10, 50, 6550, 10, 50, 8130, 10, 50, 9750, 10, 50, 11350, 10, 50, 13000, 10, 50, 14630, 10, 50, 16290, 10, 50, 18100, 10, 50, Window.PROGRESS_SECONDARY_START, 10, 50};
        this.G5 = iArr3;
        int[] iArr4 = {20, 16, 50, 24, 16, 50, 29, 16, 50, 36, 16, 50, 44, 16, 50, 54, 16, 50, 66, 17, 50, 81, 17, 50, 100, 16, 50, 125, 15, 50, 152, 14, 50, 183, 13, 50, 220, 12, 50, i.a.Theme_findOnPagePreviousDrawable, 11, 50, SpellChecker.WORD_ITERATOR_INTERVAL, 10, 50, 440, 8, 50, 545, 9, 50, 680, 11, 50, 850, 12, 50, 1050, 11, 50, 1360, 10, 50, 1770, 9, 50, 2200, 8, 50, 2750, 7, 50, 3420, 6, 50, 4270, 6, 50, 5370, 6, 50, 6550, 5, 50, 8130, 5, 50, 9750, 4, 50, 11350, 3, 50, 13000, 3, 50, 14630, 3, 50, 16290, 3, 50, 18100, 3, 50, Window.PROGRESS_SECONDARY_START, 3, 50};
        this.H5 = iArr4;
        int[] iArr5 = {20, 16, 50, 24, 16, 50, 29, 16, 50, 36, 16, 50, 44, 15, 50, 54, 15, 50, 66, 14, 50, 81, 14, 50, 100, 10, 50, 125, 9, 50, 152, 8, 50, 183, 7, 50, 220, 6, 50, i.a.Theme_findOnPagePreviousDrawable, 9, 50, SpellChecker.WORD_ITERATOR_INTERVAL, 11, 50, 440, 13, 50, 545, 14, 50, 680, 14, 50, 850, 14, 50, 1050, 14, 50, 1360, 13, 50, 1770, 10, 50, 2200, 8, 50, 2750, 6, 50, 3420, 7, 50, 4270, 9, 50, 5370, 11, 50, 6550, 14, 50, 8130, 16, 50, 9750, 15, 50, 11350, 14, 50, 13000, 14, 50, 14630, 14, 50, 16290, 14, 50, 18100, 14, 50, Window.PROGRESS_SECONDARY_START, 14, 50};
        this.I5 = iArr5;
        int[] iArr6 = {20, 16, 50, 24, 16, 50, 29, 16, 50, 36, 16, 50, 44, 16, 50, 54, 16, 50, 66, 16, 50, 81, 16, 50, 100, 16, 50, 125, 16, 50, 152, 15, 50, 183, 15, 50, 220, 14, 50, i.a.Theme_findOnPagePreviousDrawable, 14, 50, SpellChecker.WORD_ITERATOR_INTERVAL, 14, 50, 440, 15, 50, 545, 16, 50, 680, 16, 50, 850, 15, 50, 1050, 14, 50, 1360, 13, 50, 1770, 12, 50, 2200, 12, 50, 2750, 12, 50, 3420, 11, 50, 4270, 11, 50, 5370, 10, 50, 6550, 10, 50, 8130, 10, 50, 9750, 9, 50, 11350, 8, 50, 13000, 8, 50, 14630, 8, 50, 16290, 8, 50, 18100, 8, 50, Window.PROGRESS_SECONDARY_START, 8, 50};
        this.J5 = iArr6;
        int[] iArr7 = {20, 14, 50, 24, 14, 50, 29, 14, 50, 36, 14, 50, 44, 13, 50, 54, 12, 50, 66, 12, 50, 81, 12, 50, 100, 10, 50, 125, 8, 50, 152, 6, 50, 183, 5, 50, 220, 4, 50, i.a.Theme_findOnPagePreviousDrawable, 6, 50, SpellChecker.WORD_ITERATOR_INTERVAL, 7, 50, 440, 9, 50, 545, 10, 50, 680, 10, 50, 850, 10, 50, 1050, 10, 50, 1360, 10, 50, 1770, 10, 50, 2200, 11, 50, 2750, 12, 50, 3420, 12, 50, 4270, 12, 50, 5370, 12, 50, 6550, 13, 50, 8130, 14, 50, 9750, 15, 50, 11350, 16, 50, 13000, 16, 50, 14630, 16, 50, 16290, 16, 50, 18100, 16, 50, Window.PROGRESS_SECONDARY_START, 16, 50};
        this.K5 = iArr7;
        int[] iArr8 = {20, 10, 50, 24, 10, 50, 29, 10, 50, 36, 10, 50, 44, 10, 50, 54, 10, 50, 66, 11, 50, 81, 12, 50, 100, 13, 50, 125, 14, 50, 152, 14, 50, 183, 14, 50, 220, 15, 50, i.a.Theme_findOnPagePreviousDrawable, 15, 50, SpellChecker.WORD_ITERATOR_INTERVAL, 16, 50, 440, 16, 50, 545, 16, 50, 680, 17, 50, 850, 17, 50, 1050, 17, 50, 1360, 17, 50, 1770, 16, 50, 2200, 16, 50, 2750, 16, 50, 3420, 16, 50, 4270, 16, 50, 5370, 16, 50, 6550, 16, 50, 8130, 15, 50, 9750, 15, 50, 11350, 14, 50, 13000, 14, 50, 14630, 14, 50, 16290, 14, 50, 18100, 14, 50, Window.PROGRESS_SECONDARY_START, 14, 50};
        this.L5 = iArr8;
        this.M5 = null;
        this.N5 = 50;
        this.O5 = 200;
        this.P5 = 250;
        this.Q5 = 20;
        this.R5 = null;
        this.S5 = true;
        this.T5 = false;
        this.U5 = new int[]{8, 8, 8, 8, 8, 8};
        this.V5 = new int[]{-30, 2, 9};
        this.W5 = new int[4];
        this.X5 = new int[]{25, 12, 12, 0, 0, 0};
        this.Y5 = new int[]{0, 0};
        this.Z5 = new int[]{0, 0};
        this.a6 = new int[]{20, 20, 20, 10, 12};
        this.b6 = new int[]{50, 50};
        this.c6 = 0;
        this.d6 = 1;
        this.e6 = 0;
        this.f6 = 9;
        this.g6 = 9;
        this.h6 = new int[]{-145, -49, -24, -14, -9, -8, -7, -6, -5, -4, -3};
        this.i6 = new int[]{-145, -61, -36, -26, -21, -20, -19, -18, -17, -16, -15};
        this.j6 = new int[]{5, 8, 11, 15, 20, 25, 30, 35, 40, 45, 50};
        this.k6 = new int[]{0, 0, 5, 10, 15, 25, 35};
        this.l6 = new int[]{10, 10, 10, 10, 10, 10, 10};
        this.m6 = new int[]{0, 0, 0, 0, 0, 0, 0};
        this.n6 = new int[]{0, 0, 0, 0, 0, 0, 0};
        this.o6 = true;
        this.p6 = 0;
        this.q6 = 1;
        this.r6 = 0;
        this.s6 = 1;
        this.t6 = 2;
        this.u6 = new int[]{40, 40, 40, 40, 40, 1, 1, 1, 40, 40, 40, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0};
        this.v6 = new int[]{40, 40};
        this.w6 = new int[]{40, 40, 40, 1, 1, 1};
        this.x6 = new int[]{40, 40, 40, 1, 1, 1};
        this.y6 = new int[]{1, 1, 1, 1, 0, 0, 0};
        this.z6 = 0;
        this.A6 = 0;
        this.B6 = false;
        this.C6 = false;
        this.D6 = false;
        this.E6 = new a();
        this.F6 = new Handler();
        this.G6 = new b();
        this.H6 = 24;
        this.I6 = 0;
        this.J6 = 100;
        this.K6 = 50;
        this.L6 = 0;
        this.M6 = 1;
        this.N6 = 2;
        this.O6 = 3;
        this.P6 = 4;
        this.Q6 = 5;
        this.R6 = 6;
        this.S6 = 7;
        this.T6 = 8;
        this.U6 = 9;
        this.V6 = 10;
        this.W6 = 11;
        this.X6 = 12;
        this.Y6 = 13;
        this.Z6 = 14;
        this.a7 = 15;
        this.b7 = 16;
        this.c7 = 17;
        this.d7 = 18;
        this.e7 = 19;
        this.f7 = 20;
        this.g7 = new l();
        this.h7 = 0;
        this.i7 = 1;
        this.j7 = 2;
        this.k7 = 0;
        this.l7 = 1;
        this.m7 = 2;
        this.n7 = 3;
        this.o7 = 4;
        this.p7 = 5;
        this.q7 = 6;
        this.r7 = 7;
        this.s7 = 0;
        this.t7 = 1;
        synchronized (this.f15047c0) {
            Z0(0, this.D5);
            Z0(1, iArr);
            Z0(2, iArr2);
            Z0(3, iArr3);
            Z0(4, iArr4);
            Z0(5, iArr5);
            Z0(6, iArr6);
            Z0(7, iArr7);
            Z0(8, iArr8);
            x(this.r5);
            this.R5 = (AudioManager) App.c().getSystemService(Context.AUDIO_SERVICE);
            this.M5 = nVar;
        }
    }

    @Override // module.sound.AudioDevice
    public void A1(int i2, boolean z2) {
        if (i2 < 0 || i2 >= AudioDevice.G0.length) {
            return;
        }
        j2(m1(i2) / 10.0f);
        if (z2 || i2 != this.f15054g) {
            if (i2 != this.f15054g) {
                this.f15054g = i2;
            }
            if (this.f15052f) {
                v2();
            }
        }
    }

    public void A2(int i2, int i3) {
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
            h2(i4, i3);
        }
    }

    @Override // module.sound.AudioDevice
    public void B0(int i2, int i3, int i4) {
        int i5;
        if (i2 == 65536) {
            i5 = 362;
        } else {
            i5 = i2 == 131072 ? 307 : -1;
        }
        D1(i5, this.y5[i3], i4);
        if (i3 == 0 || i4 == 0) {
            i2(1, i5 != 307 ? 367 : 312, 0);
        } else {
            if (i3 <= 0 || i4 <= 0) {
                return;
            }
            i2(1, i5 != 307 ? 367 : 312, 1);
        }
    }

    public void B2(int i2, int i3) {
        int i4 = i2;
        if (i4 > 100) {
            i4 = 50;
        }
        int i5 = i3 <= 100 ? i3 : 50;
        int[] iArr = this.b6;
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
        H0(AudioDevice.STORE.SURR_FIELD, this.b6);
        y0.h.s0(70, i4, i5);
    }

    @Override // module.sound.AudioDevice
    public void C0(int i2, int i3) {
        boolean z2;
        int i4;
        int i5;
        int iMax = Math.max(0, Math.min(i3, this.y5.length));
        int i6 = -1;
        if (i2 == 65536) {
            i6 = 362;
            int[] iArr = this.Y5;
            z2 = iArr[0] != iMax;
            i5 = iArr[0];
            iArr[0] = iMax;
            i4 = iArr[1];
        } else if (i2 == 131072) {
            int[] iArr2 = this.Z5;
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
            D1(i6, this.y5[iMax], i4);
            if ((i5 > 0 && iMax == 0) || i4 == 0) {
                i2(1, i6 != 307 ? 367 : 312, 0);
            } else if (i5 == 0 && iMax > 0) {
                i2(1, i6 != 307 ? 367 : 312, 1);
            }
            if (z2) {
                super.C0(i2, iMax);
                if (this.I6 != 0) {
                    if ((i2 != 65536 || this.Y5[0] == 0) && (i2 != 131072 || this.Z5[0] == 0)) {
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
        if (i2 != 56) {
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
                default:
                    switch (i2) {
                        case 68:
                            if (s0.h(iArr, 1)) {
                                E1(iArr[0], iArr[1]);
                            }
                            break;
                        case 69:
                            if (s0.h(iArr, 1)) {
                                b2(iArr[0], iArr[1]);
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
                    }
                    break;
            }
        }
        if (s0.h(iArr, 1)) {
            if ((iArr[0] & 16) == 0) {
                if (iArr[1] != this.z6) {
                    int i3 = iArr[1];
                    this.z6 = i3;
                    if (i3 < 0 || i3 > 3 || i3 == 1) {
                        this.z6 = 0;
                    }
                    w2(true);
                    g0(65552, this.W5[0]);
                    g0(WifiStateMachine.CMD_STATIC_IP_FAILURE, this.W5[2]);
                    g0(65568, this.W5[1]);
                    g0(131104, this.W5[3]);
                    w2(false);
                    y0.h.s0(56, 0, this.z6);
                    AudioDevice.STORE store = AudioDevice.STORE.LOW_PASS_FILTERING;
                    G0(store, this.z6);
                    this.f15080t.e(store.ordinal());
                    return;
                }
                return;
            }
            if ((iArr[0] & 16) == 0 || iArr[1] == this.A6) {
                return;
            }
            int i4 = iArr[1];
            this.A6 = i4;
            if (i4 < 0 || i4 > 3 || i4 == 1) {
                this.A6 = 0;
            }
            w2(true);
            g0(65552, this.W5[0]);
            g0(WifiStateMachine.CMD_STATIC_IP_FAILURE, this.W5[2]);
            g0(65568, this.W5[1]);
            g0(131104, this.W5[3]);
            w2(false);
            y0.h.s0(56, 16, this.A6);
            AudioDevice.STORE store2 = AudioDevice.STORE.HIGH_PASS_FILTERING;
            G0(store2, this.A6);
            this.f15080t.e(store2.ordinal());
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
            i6 = 362;
            int[] iArr = this.Y5;
            z2 = iArr[1] != iMax;
            i5 = iArr[0];
            int i7 = iArr[1];
            iArr[1] = iMax;
            i4 = i7;
        } else if (i2 == 131072) {
            int[] iArr2 = this.Z5;
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
            D1(i6, this.y5[i5], iMax);
            if (z2) {
                if ((i4 > 0 && iMax == 0) || i5 == 0) {
                    i2(1, i6 != 307 ? 367 : 312, 0);
                } else if (i4 == 0 && iMax > 0) {
                    i2(1, i6 != 307 ? 367 : 312, 1);
                }
                super.D0(i2, iMax);
                if (this.I6 != 0) {
                    if ((i2 != 65536 || this.Y5[1] == 0) && (i2 != 131072 || this.Z5[1] == 0)) {
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
            l2(1, 132, i2, fVar.a(0, 4, i3, 1.0d, d2, 1));
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
        return (int) ((((double) (iArr2[iJ] - iArr2[i2])) * s0.w(((((double) (i3 - 60)) * 74.0d) / ((double) 60)) + 1.0d, 75.0d)) + 0.5d);
    }

    public void E1(int i2, int i3) {
        int i4 = i3;
        if (i2 >= 0 || i2 < this.a6.length) {
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
                            int[] iArr3 = this.v6;
                            if (iArr3[0] != i4) {
                                iArr3[0] = i4;
                                y0.h.s0(68, i2, i4);
                                H0(AudioDevice.STORE.CSAUTO_SRS, this.v6);
                            }
                            double dS2 = s2(i4);
                            l2(1, 128, 53, new int[]{cVar.a(dS2)});
                            a.f.p().t(LogType.AUDIO, String.format(" MixCenter2Rear-> index: %4d， value: %4d，gain: %2.3f", Integer.valueOf(i2), Integer.valueOf(i4), Double.valueOf(dS2)));
                            break;
                        case 1:
                            if (i4 > 100) {
                                i4 = 50;
                            }
                            int[] iArr4 = this.v6;
                            if (iArr4[1] != i4) {
                                iArr4[1] = i4;
                                y0.h.s0(68, i2, i4);
                                H0(AudioDevice.STORE.CSAUTO_SRS, this.v6);
                            }
                            double dS3 = s2(i4);
                            l2(1, 128, 54, new int[]{cVar.a(dS3)});
                            a.f.p().t(LogType.AUDIO, String.format(" MixFront2Rear-> index: %4d， value: %4d，gain: %2.3f", Integer.valueOf(i2), Integer.valueOf(i4), Double.valueOf(dS3)));
                            break;
                        case 2:
                            if (i4 > 100) {
                                i4 = 50;
                            }
                            int[] iArr5 = this.w6;
                            if (iArr5[0] != i4) {
                                iArr5[0] = i4;
                                y0.h.s0(68, i2, i4);
                                H0(AudioDevice.STORE.CSAUTO_FOC, this.w6);
                            }
                            double dS4 = s2(i4);
                            l2(1, 128, 69, new int[]{cVar.a(dS4)});
                            a.f.p().t(LogType.AUDIO, String.format(" FocusCenterLevel-> index: %4d， value: %4d，gain: %2.3f", Integer.valueOf(i2), Integer.valueOf(i4), Double.valueOf(dS4)));
                            break;
                        case 3:
                            if (i4 > 100) {
                                i4 = 50;
                            }
                            int[] iArr6 = this.w6;
                            if (iArr6[1] != i4) {
                                iArr6[1] = i4;
                                y0.h.s0(68, i2, i4);
                                H0(AudioDevice.STORE.CSAUTO_FOC, this.w6);
                            }
                            double dS5 = s2(i4);
                            l2(1, 128, 87, new int[]{cVar.a(dS5)});
                            a.f.p().t(LogType.AUDIO, String.format(" FocusFrontlevel-> index: %4d， value: %4d，gain: %2.3f", Integer.valueOf(i2), Integer.valueOf(i4), Double.valueOf(dS5)));
                            break;
                        case 4:
                            if (i4 > 100) {
                                i4 = 50;
                            }
                            int[] iArr7 = this.w6;
                            if (iArr7[2] != i4) {
                                iArr7[2] = i4;
                                y0.h.s0(68, i2, i4);
                                H0(AudioDevice.STORE.CSAUTO_FOC, this.w6);
                            }
                            double dS6 = s2(i4);
                            l2(1, 128, 103, new int[]{cVar.a(dS6)});
                            a.f.p().t(LogType.AUDIO, String.format(" FocusRearlevel-> index: %4d， value: %4d，gain: %2.3f", Integer.valueOf(i2), Integer.valueOf(i4), Double.valueOf(dS6)));
                            break;
                        case 8:
                            if (i4 > 100) {
                                i4 = 50;
                            }
                            int[] iArr8 = this.x6;
                            if (iArr8[0] != i4) {
                                iArr8[0] = i4;
                                y0.h.s0(68, i2, i4);
                                H0(AudioDevice.STORE.CSAUTO_TRUBASS, this.x6);
                            }
                            double dS7 = s2(i4);
                            l2(1, 128, 180, new int[]{cVar.a(dS7)});
                            a.f.p().t(LogType.AUDIO, String.format(" TruBassRearControl-> index: %4d， value: %4d，gain: %2.3f", Integer.valueOf(i2), Integer.valueOf(i4), Double.valueOf(dS7)));
                            break;
                        case 9:
                            if (i4 > 100) {
                                i4 = 50;
                            }
                            int[] iArr9 = this.x6;
                            if (iArr9[1] != i4) {
                                iArr9[1] = i4;
                                y0.h.s0(68, i2, i4);
                                H0(AudioDevice.STORE.CSAUTO_TRUBASS, this.x6);
                            }
                            double dS8 = s2(i4);
                            l2(1, 128, 181, new int[]{cVar.a(dS8)});
                            a.f.p().t(LogType.AUDIO, String.format(" TruBassFrontControl-> index: %4d， value: %4d，gain: %2.3f", Integer.valueOf(i2), Integer.valueOf(i4), Double.valueOf(dS8)));
                            break;
                        case 10:
                            if (i4 > 100) {
                                i4 = 50;
                            }
                            int[] iArr10 = this.x6;
                            if (iArr10[2] != i4) {
                                iArr10[2] = i4;
                                y0.h.s0(68, i2, i4);
                                H0(AudioDevice.STORE.CSAUTO_TRUBASS, this.x6);
                            }
                            double dS9 = s2(i4);
                            l2(1, 128, 182, new int[]{cVar.a(dS9)});
                            a.f.p().t(LogType.AUDIO, String.format(" TruBassSubwooferControl-> index: %4d， value: %4d，gain: %2.3f", Integer.valueOf(i2), Integer.valueOf(i4), Double.valueOf(dS9)));
                            break;
                        case 14:
                            int[] iArr11 = this.y6;
                            if (iArr11[0] != i4) {
                                iArr11[0] = i4;
                                y0.h.s0(68, i2, i4);
                                AudioDevice.STORE store = AudioDevice.STORE.CSAUTO_OTHERS;
                                H0(store, this.y6);
                                this.f15080t.e(store.ordinal());
                            }
                            x2(true);
                            if (i4 == 0) {
                                l2(1, 128, 206, new int[]{cVar.c(1)});
                                a.f.p().t(LogType.AUDIO, String.format(" CSAuto ON  模式---", new Object[0]));
                            } else {
                                l2(1, 128, 206, new int[]{cVar.c(0)});
                                a.f.p().t(LogType.AUDIO, String.format(" CSAuto OFF  模式---", new Object[0]));
                            }
                            if (i4 == 1) {
                                e1(256, this.Q5);
                                e1(0, this.P5);
                                F1(0, 200, 0.70711d);
                                F1(1, 5000, 0.70711d);
                                l2(1, 128, Downloads.Impl.STATUS_NOT_ACCEPTABLE, new int[]{jVar.a(0)});
                            } else {
                                e1(256, this.Q5);
                                e1(0, this.P5);
                                F1(0, 200, 0.70711d);
                                F1(1, 5000, 0.70711d);
                                l2(1, 128, Downloads.Impl.STATUS_NOT_ACCEPTABLE, new int[]{jVar.a(1)});
                            }
                            x2(false);
                            break;
                        case 15:
                            int[] iArr12 = this.y6;
                            if (iArr12[1] != i4) {
                                iArr12[1] = i4;
                                y0.h.s0(68, i2, i4);
                                AudioDevice.STORE store2 = AudioDevice.STORE.CSAUTO_OTHERS;
                                H0(store2, this.y6);
                                this.f15080t.e(store2.ordinal());
                            }
                            x2(true);
                            if (i4 == 2) {
                                l2(1, 128, 305, new int[]{cVar.b(2)});
                                a.f.p().t(LogType.AUDIO, String.format("CSAuto ModeSelCinema 模式--- ", new Object[0]));
                            } else if (i4 == 1) {
                                l2(1, 128, 305, new int[]{cVar.b(1)});
                                a.f.p().t(LogType.AUDIO, String.format("CSAuto ModeSelMusic 模式--- ", new Object[0]));
                            } else {
                                l2(1, 128, 305, new int[]{cVar.b(0)});
                                a.f.p().t(LogType.AUDIO, String.format("CSAuto ModeSelMono 模式--- ", new Object[0]));
                            }
                            x2(false);
                            break;
                        case 17:
                            int[] iArr13 = this.y6;
                            if (iArr13[3] != i4) {
                                iArr13[3] = i4;
                                y0.h.s0(68, i2, i4);
                                H0(AudioDevice.STORE.CSAUTO_OTHERS, this.y6);
                            }
                            x2(true);
                            if (i4 == 0) {
                                l2(1, 128, 72, new int[]{cVar.c(0)});
                                a.f.p().t(LogType.AUDIO, String.format(" Phantom OFF  模式---", new Object[0]));
                            } else {
                                l2(1, 128, 72, new int[]{cVar.c(1)});
                                a.f.p().t(LogType.AUDIO, String.format(" Phantom ON  模式---", new Object[0]));
                            }
                            x2(false);
                            break;
                        case 18:
                            if (i4 >= 0 && i4 <= 7) {
                                int[] iArr14 = this.y6;
                                if (iArr14[4] != i4) {
                                    iArr14[4] = i4;
                                    y0.h.s0(68, i2, i4);
                                    H0(AudioDevice.STORE.CSAUTO_OTHERS, this.y6);
                                }
                                int[] iArrD = cVar.d(i4);
                                if (iArrD != null) {
                                    System.arraycopy(iArrD, 0, iArr, 0, 16);
                                    System.arraycopy(iArrD, 16, iArr2, 0, 8);
                                    l2(1, 143, 106, iArr);
                                    l2(1, 135, 122, iArr2);
                                    a.f.p().t(LogType.AUDIO, String.format(" TruBassSubwooferSpeakSize-> index: %4d， value: %4d", Integer.valueOf(i2), Integer.valueOf(i3)));
                                }
                            }
                            break;
                        case 19:
                            if (i4 >= 0 && i4 <= 7) {
                                int[] iArr15 = this.y6;
                                if (iArr15[5] != i4) {
                                    iArr15[5] = i4;
                                    y0.h.s0(68, i2, i4);
                                    H0(AudioDevice.STORE.CSAUTO_OTHERS, this.y6);
                                }
                                int[] iArrD2 = cVar.d(i4);
                                if (iArrD2 != null) {
                                    System.arraycopy(iArrD2, 0, iArr, 0, 16);
                                    System.arraycopy(iArrD2, 16, iArr2, 0, 8);
                                    l2(1, 143, 130, iArr);
                                    l2(1, 135, 146, iArr2);
                                    a.f.p().t(LogType.AUDIO, String.format(" TruBassFrontSpeakSize-> index: %4d， value: %4d", Integer.valueOf(i2), Integer.valueOf(i3)));
                                }
                            }
                            break;
                        case 20:
                            if (i4 >= 0 && i4 <= 7) {
                                int[] iArr16 = this.y6;
                                if (iArr16[6] != i4) {
                                    iArr16[6] = i4;
                                    y0.h.s0(68, i2, i4);
                                    H0(AudioDevice.STORE.CSAUTO_OTHERS, this.y6);
                                }
                                int[] iArrD3 = cVar.d(i4);
                                if (iArrD3 != null) {
                                    System.arraycopy(iArrD3, 0, iArr, 0, 16);
                                    System.arraycopy(iArrD3, 16, iArr2, 0, 8);
                                    l2(1, 143, 154, iArr);
                                    l2(1, 135, 170, iArr2);
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
        L0(0, channel.f15613a);
        L0(1, CHANNEL.IN2.f15613a);
        CHANNEL channel2 = CHANNEL.IN4;
        L0(2, channel2.f15613a);
        L0(3, channel2.f15613a);
        CHANNEL channel3 = CHANNEL.IN3;
        L0(4, channel3.f15613a);
        L0(5, CHANNEL.IN5.f15613a);
        L0(6, channel3.f15613a);
        L0(7, channel.f15613a);
        L0(8, channel.f15613a);
        L0(9, channel.f15613a);
        L0(10, channel.f15613a);
        L0(11, channel3.f15613a);
        L0(12, channel3.f15613a);
        L0(13, channel3.f15613a);
        L0(14, channel.f15613a);
        L0(15, channel.f15613a);
        L0(16, channel.f15613a);
    }

    public void F1(int i2, int i3, double d2) {
        int i4;
        f fVar = new f();
        if (i2 == 0) {
            i4 = 430;
        } else if (i2 != 1) {
            return;
        } else {
            i4 = 435;
        }
        int i5 = i4;
        if (this.y6[0] == 1) {
            i2 = 10;
        }
        int[] iArrA = fVar.a(0, i2, i3, d2, 0.0d, 1);
        synchronized (this) {
            l2(1, 132, i5, iArrA);
        }
    }

    @Override // module.sound.AudioDevice
    public void G(int i2) {
        super.G(i2);
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
                y0.h.p(8, 8);
                a1(65536, 16);
                break;
            case 3:
                this.f15080t.v(AudioDevice.STORE.SURRLEVEL.ordinal());
                this.f15080t.v(AudioDevice.STORE.SURR_FIELD.ordinal());
                C2(0);
                j1(65536, 0);
                j1(131072, 0);
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
            case 5:
                this.f15080t.v(AudioDevice.STORE.HPFFA.ordinal());
                this.f15080t.v(AudioDevice.STORE.HPFFB.ordinal());
                this.f15080t.v(AudioDevice.STORE.HPFRA.ordinal());
                this.f15080t.v(AudioDevice.STORE.HPFRB.ordinal());
                this.z6 = 0;
                this.A6 = 0;
                w2(true);
                g0(65552, 20);
                g0(65568, 200);
                g0(WifiStateMachine.CMD_STATIC_IP_FAILURE, 20);
                g0(131104, 200);
                w2(false);
                y0.h.s0(56, 0, this.z6);
                y0.h.s0(56, 16, this.A6);
                break;
            case 6:
                h0 h0Var = this.f15080t;
                AudioDevice.STORE store = AudioDevice.STORE.STEREO_PAEAM;
                h0Var.v(store.ordinal());
                int[] iArr = this.a6;
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
                H0(store, this.a6);
                this.T5 = false;
                x2(true);
                int[] iArr2 = this.B5;
                int[] iArr3 = this.a6;
                e2(0, 0.0d, iArr2[iArr3[0]], iArr2[iArr3[1]], iArr2[iArr3[2]], iArr3[3] / 10.0f, this.A5[iArr3[4]]);
                int[] iArr4 = this.B5;
                int[] iArr5 = this.a6;
                e2(1, 0.0d, iArr4[iArr5[0]], iArr4[iArr5[1]], iArr4[iArr5[2]], iArr5[3] / 10.0f, this.A5[iArr5[4]]);
                x2(false);
                boolean z2 = this.T5;
                G0(AudioDevice.STORE.SURRON, z2 ? 1 : 0);
                y0.h.s0(32, z2 ? 1 : 0);
                break;
            case 8:
                this.f15080t.v(AudioDevice.STORE.CSAUTO_SRS.ordinal());
                this.f15080t.v(AudioDevice.STORE.CSAUTO_FOC.ordinal());
                this.f15080t.v(AudioDevice.STORE.CSAUTO_TRUBASS.ordinal());
                this.f15080t.v(AudioDevice.STORE.CSAUTO_OTHERS.ordinal());
                w2(true);
                int i3 = 0;
                while (true) {
                    int[] iArr6 = this.u6;
                    if (i3 >= iArr6.length) {
                        w2(false);
                    } else {
                        E1(i3, iArr6[i3]);
                        i3++;
                    }
                    break;
                }
                break;
            case 9:
                this.f15080t.v(AudioDevice.STORE.DLY_MIXER_LVL.ordinal());
                this.f15080t.v(AudioDevice.STORE.DLY_MIXER_PHASE.ordinal());
                this.f15080t.v(AudioDevice.STORE.DLY_MIXER_TAP.ordinal());
                k1(0);
                int i4 = 0;
                int i5 = 0;
                while (true) {
                    int[] iArr7 = this.l6;
                    if (i4 >= iArr7.length) {
                        int i6 = 0;
                        while (true) {
                            int[] iArr8 = this.m6;
                            if (i6 >= iArr8.length) {
                                int i7 = 0;
                                while (true) {
                                    int[] iArr9 = this.n6;
                                    if (i7 < iArr9.length) {
                                        iArr9[i7] = 0;
                                        y0.h.s0(69, i5, iArr9[i7]);
                                        i5++;
                                        i7++;
                                    }
                                }
                            } else {
                                if (i6 == 0) {
                                    iArr8[i6] = 1;
                                } else {
                                    iArr8[i6] = 0;
                                }
                                y0.h.s0(69, i5, iArr8[i6]);
                                i5++;
                                i6++;
                            }
                        }
                    } else {
                        iArr7[i4] = 10;
                        y0.h.s0(69, i5, iArr7[i4]);
                        i5++;
                        i4++;
                    }
                    break;
                }
                break;
        }
    }

    public void G1(int i2) {
        CHANNEL channel;
        int i3;
        j jVar = new j();
        synchronized (this) {
            channel = CHANNEL.IN2;
            if (i2 == channel.f15613a || i2 == CHANNEL.IN3.f15613a || i2 == CHANNEL.IN5.f15613a) {
                l2(0, 128, 0, new int[]{jVar.b(1)});
            } else if (i2 != CHANNEL.IN1.f15613a && i2 != CHANNEL.IN4.f15613a) {
                l2(0, 128, 0, new int[]{jVar.b(0)});
            } else if (k0()) {
                l2(0, 128, 0, new int[]{jVar.b(2)});
            } else {
                l2(0, 128, 0, new int[]{jVar.b(0)});
            }
        }
        byte bZ1 = (byte) (((byte) Z1(102)) & 252);
        if (i2 == CHANNEL.IN1.f15613a) {
            i3 = bZ1 | 3;
        } else if (i2 == channel.f15613a) {
            i3 = bZ1 | 1;
        } else if (i2 == CHANNEL.IN3.f15613a) {
            i3 = bZ1 | 2;
        } else {
            int i4 = CHANNEL.IN5.f15613a;
            i3 = bZ1 | 3;
        }
        n2(102, (byte) i3);
    }

    public void H1(int i2) {
        int i3 = u0.b.D;
        if (j0(i3) == 1) {
            R1(1, this.z5[i2] - 7.5d);
        } else if (i3 == 1) {
            R1(0, this.z5[i2] - 5.5d);
        } else {
            R1(0, this.z5[i2] - 10.0d);
        }
    }

    public void I1(int i2) {
        if (i2 != 0) {
            S1(1);
        } else {
            S1(0);
        }
    }

    public void J1(int i2, int i3, int i4, double d2, double d3) {
        f fVar = new f();
        synchronized (this) {
            try {
                if (i3 == 1) {
                    l2(0, 137, this.t5[i2], fVar.a(1, 2, i4, d2, d3, 1));
                } else {
                    l2(0, 132, this.t5[i2], fVar.a(0, 2, i4, d2, d3, 1));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void K1(int i2, int i3) {
        j jVar = new j();
        synchronized (this) {
            try {
                if (i3 != 0) {
                    l2(1, 128, i2, new int[]{jVar.a(0)});
                } else {
                    l2(1, 128, i2, new int[]{jVar.a(1)});
                }
            } catch (Throwable th) {
                throw th;
            }
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
        if (i6 < this.x5.length) {
            p2(i2, iArr[i4], iArr[i5], i6);
        }
        super.L(i2, i3);
    }

    public void L1(int i2, int i3, double d2) {
        f fVar = new f();
        if (i3 <= 20) {
            if (i2 == 374) {
                K1(379, 0);
            } else {
                K1(324, 0);
            }
            i3 = 20;
        } else if (i2 == 374) {
            K1(379, 1);
        } else {
            K1(324, 1);
        }
        int i4 = i3 >= 500 ? 500 : i3;
        synchronized (this) {
            l2(1, 132, i2, fVar.a(0, 0, i4, d2, 0.0d, 1));
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
        p2(i2, iArr[i4], iArr[i4 + 2], iArr[i5]);
        super.M(i2, i3);
    }

    public void M1(boolean z2) {
        j jVar = new j();
        synchronized (this) {
            try {
                if (z2) {
                    l2(0, 128, 7, new int[]{jVar.a(1)});
                } else {
                    l2(0, 128, 7, new int[]{jVar.a(0)});
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void N1() {
        a2(0, 0, 0, 0);
        a.i.a0(10L);
        Q1();
        a.i.a0(10L);
        a2(1, 0, 0, 0);
        a.i.a0(10L);
        synchronized (this) {
            O1();
            P1();
        }
        a.i.a0(10L);
        a2(1, 1, 1, 1);
        a.i.a0(100L);
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
        if (i6 < this.x5.length) {
            p2(i2, iArr[i4], iArr[i5], i6);
        }
        super.O(i2, i3);
    }

    public void O1() {
        this.k5 = s0.A(App.c(), R.raw.akm7738_pram_table1, 16);
        this.l5 = s0.A(App.c(), R.raw.akm7738_cram_table1, 16);
        this.M5.d(w7, new int[]{184, 0, 0}, this.k5);
        this.M5.d(w7, new int[]{180, 0, 0}, this.l5);
        this.M5.d(w7, new int[]{178, 0, 0}, this.n5);
    }

    public void P1() {
        this.k5 = s0.A(App.c(), R.raw.akm7738_pram_table2, 16);
        this.l5 = s0.A(App.c(), R.raw.akm7738_cram_table2, 16);
        this.M5.d(w7, new int[]{185, 0, 0}, this.k5);
        this.M5.d(w7, new int[]{181, 0, 0}, this.l5);
        this.M5.d(w7, new int[]{179, 0, 0}, this.m5);
    }

    public void Q1() {
        int i2;
        int i3 = 0;
        while (true) {
            int[] iArr = this.j5;
            if (i3 >= iArr.length) {
                return;
            }
            int i4 = iArr[i3];
            if (i4 != 1) {
                i2 = i4 != 133 ? iArr[i3 + 1] : iArr[i3 + 1] & (-32);
            } else {
                i2 = iArr[i3 + 1] & (-129);
            }
            n2(iArr[i3], i2);
            i3 += 2;
        }
    }

    @Override // module.sound.AudioDevice
    public void R0(boolean z2) {
        super.R0(z2);
        if (z2) {
            u0.b.V3 = z2;
        }
        if (z2 || !this.B6) {
            return;
        }
        this.B6 = false;
        synchronized (this) {
            n2(110, 0);
            W1(0, this.v5[this.U5[0]]);
            W1(1, this.v5[this.U5[1]]);
            W1(2, this.v5[this.U5[2]]);
            W1(3, this.v5[this.U5[3]]);
            e eVar = new e();
            l2(1, 128, 386, new int[]{eVar.a(0.0d)});
            l2(1, 128, 325, new int[]{eVar.a(0.0d)});
            l2(1, 128, 440, new int[]{eVar.a(0.0d)});
            l2(1, 128, 417, new int[]{eVar.a(0.0d)});
        }
        y0.h.X(16, false);
        this.e6 = 0;
    }

    public void R1(int i2, double d2) {
        e eVar = new e();
        synchronized (this) {
            try {
                if (i2 == 0) {
                    int i3 = (int) (48.0d - (d2 * 2.0d));
                    n2(95, i3);
                    n2(96, i3);
                    n2(97, i3);
                    n2(98, i3);
                    n2(99, i3);
                } else {
                    l2(0, 128, 1, new int[]{eVar.a(d2)});
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void S1(int i2) {
        new j();
        synchronized (this) {
            try {
                if (i2 != 0) {
                    v2();
                    i2(0, 24, 1);
                } else {
                    i2(0, 24, 0);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void T1(int i2, int i3) {
        j jVar = new j();
        synchronized (this) {
            try {
                if (i3 != 0) {
                    l2(1, 128, i2, new int[]{jVar.a(0)});
                } else {
                    l2(1, 128, i2, new int[]{jVar.a(1)});
                }
            } catch (Throwable th) {
                throw th;
            }
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
            r1(bVar, i2, 69632, this.U5[0]);
            r1(bVar, i2, 73728, this.U5[1]);
            r1(bVar, i2, 135168, this.U5[2]);
            r1(bVar, i2, 139264, this.U5[3]);
            r1(bVar, i2, 65536, this.U5[4]);
        } else if (i2 == 26) {
            r1(bVar, i2, this.f15092z);
        } else if (i2 == 27) {
            r1(bVar, i2, 0, this.P5);
            r1(bVar, i2, 256, this.Q5);
        } else if (i2 == 55) {
            r1(bVar, i2, this.S5 ? 1 : 0);
        } else if (i2 != 56) {
            switch (i2) {
                case 29:
                    r1(bVar, i2, 65536, this.Y5[1]);
                    r1(bVar, i2, 131072, this.Z5[1]);
                    break;
                case 30:
                    r1(bVar, i2, 65536, this.Y5[0]);
                    r1(bVar, i2, 131072, this.Z5[0]);
                    break;
                case 31:
                    r1(bVar, i2, 65552, this.W5[0]);
                    r1(bVar, i2, 65568, this.W5[1]);
                    r1(bVar, i2, WifiStateMachine.CMD_STATIC_IP_FAILURE, this.W5[2]);
                    r1(bVar, i2, 131104, this.W5[3]);
                    break;
                case 32:
                    r1(bVar, i2, this.T5 ? 1 : 0);
                    break;
                case 33:
                    r1(bVar, i2, this.I6);
                    break;
                case 34:
                    r1(bVar, i2, 69632, this.X5[0]);
                    r1(bVar, i2, 73728, this.X5[1]);
                    r1(bVar, i2, 135168, this.X5[2]);
                    r1(bVar, i2, 139264, this.X5[3]);
                    r1(bVar, i2, 65536, this.X5[4]);
                    r1(bVar, i2, 131072, this.X5[5]);
                    break;
                default:
                    switch (i2) {
                        case 61:
                            r1(bVar, i2, this.N5);
                            break;
                        case 62:
                            r1(bVar, i2, this.V5);
                            break;
                        case 63:
                            int[] iArr4 = this.a6;
                            if (iArr4 != null && iArr4.length > 0) {
                                int i6 = 0;
                                while (true) {
                                    int[] iArr5 = this.a6;
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
                                    int[] iArr7 = this.v6;
                                    System.arraycopy(iArr7, 0, iArr6, 0, iArr7.length);
                                    int[] iArr8 = this.w6;
                                    System.arraycopy(iArr8, 0, iArr6, 2, iArr8.length);
                                    int[] iArr9 = this.x6;
                                    System.arraycopy(iArr9, 0, iArr6, 8, iArr9.length);
                                    int[] iArr10 = this.y6;
                                    System.arraycopy(iArr10, 0, iArr6, 14, iArr10.length);
                                    for (int i7 = 0; i7 < 21; i7++) {
                                        r1(bVar, i2, i7, iArr6[i7]);
                                    }
                                    break;
                                case 69:
                                    int i8 = 0;
                                    int i9 = 0;
                                    while (true) {
                                        int[] iArr11 = this.l6;
                                        if (i8 >= iArr11.length) {
                                            int i10 = 0;
                                            while (true) {
                                                int[] iArr12 = this.m6;
                                                if (i10 >= iArr12.length) {
                                                    int i11 = 0;
                                                    while (true) {
                                                        int[] iArr13 = this.n6;
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
                                    int[] iArr14 = this.b6;
                                    r1(bVar, i2, iArr14[0], iArr14[1]);
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
            r1(bVar, i2, 0, this.z6);
            r1(bVar, i2, 16, this.A6);
        }
        return z2 ? z2 : super.U(i2, bVar);
    }

    public void U1(int i2, int i3, double d2) {
        int i4;
        f fVar = new f();
        if (i3 >= 20000) {
            if (i2 == 368) {
                T1(373, 0);
            } else {
                T1(318, 0);
            }
            i4 = 20000;
        } else {
            if (i2 == 368) {
                T1(373, 1);
            } else {
                T1(318, 1);
            }
            i4 = i3;
        }
        synchronized (this) {
            l2(1, 132, i2, fVar.a(0, 1, i4, d2, 0.0d, 1));
        }
    }

    public void V1(int i2, double d2, int i3) {
        new j();
        e eVar = new e();
        g gVar = new g();
        synchronized (this) {
            l2(0, 128, 336, new int[]{eVar.a(d2)});
            if (d2 <= -145.0d) {
                l2(1, 128, 382, new int[]{gVar.a(-145.0d, 0)});
                l2(1, 128, 385, new int[]{gVar.a(-145.0d, 0)});
            } else {
                l2(1, 128, 382, new int[]{gVar.a(0.0d, 0)});
                l2(1, 128, 385, new int[]{gVar.a(0.0d, 0)});
            }
        }
    }

    @Override // module.sound.AudioDevice
    public void W0() {
        super.W0();
        this.C6 = false;
        this.D6 = true;
        ToolsJni.cmd_251_Normal_Io_Set(0, 0);
        a.i.a0(140L);
        ToolsJni.cmd_251_Normal_Io_Set(0, 1);
        a.i.a0(20L);
        N1();
        this.C6 = true;
        w0(this.f15062k);
        q2(this.f15074q);
        l(this.f15052f ? 1 : 0);
        j(null);
        a(u0.b.D);
        A1(y0.f.C0, true);
        a1(65536, this.U5[4]);
        o(this.f15092z);
        e1(256, this.Q5);
        e1(0, this.P5);
        A2(69632, this.X5[0]);
        A2(73728, this.X5[1]);
        A2(135168, this.X5[2]);
        A2(139264, this.X5[3]);
        g0(65552, this.W5[0]);
        g0(65568, this.W5[1]);
        g0(WifiStateMachine.CMD_STATIC_IP_FAILURE, this.W5[2]);
        g0(131104, this.W5[3]);
        int[] iArr = this.Y5;
        B0(65536, iArr[0], iArr[1]);
        int[] iArr2 = this.Z5;
        B0(131072, iArr2[0], iArr2[1]);
        int i2 = !this.T5 ? 1 : 0;
        int[] iArr3 = this.B5;
        int[] iArr4 = this.a6;
        e2(i2, 0.0d, iArr3[iArr4[0]], iArr3[iArr4[1]], iArr3[iArr4[2]], iArr4[3] / 10.0f, this.A5[iArr4[4]]);
        F1(0, 200, 0.70711d);
        F1(1, 5000, 0.70711d);
        k1(this.I6);
        E1(0, this.v6[0]);
        E1(1, this.v6[1]);
        E1(2, this.w6[0]);
        E1(5, 1);
        E1(3, this.w6[1]);
        E1(6, 1);
        E1(4, this.w6[2]);
        E1(7, 1);
        E1(18, this.y6[4]);
        E1(19, this.y6[5]);
        E1(20, this.y6[6]);
        E1(8, this.x6[0]);
        E1(9, this.x6[1]);
        E1(10, this.x6[2]);
        E1(11, 1);
        E1(12, 1);
        E1(13, 1);
        E1(17, this.y6[3]);
        E1(16, this.y6[2]);
        E1(14, this.y6[0]);
        E1(15, this.y6[1]);
        this.D6 = false;
        e eVar = new e();
        synchronized (this) {
            l2(1, 128, 356, new int[]{eVar.a(-40.0d)});
            l2(0, 128, 330, new int[]{eVar.a(4.0d)});
        }
        String strO = s0.o("persist.syu.audio.bt_input_volume", ProxyProperties.LOCAL_EXCL_LIST);
        if (s0.t(strO)) {
            return;
        }
        try {
            n2(93, Integer.parseInt(strO, 16));
        } catch (Exception unused) {
        }
    }

    public void W1(int i2, int i3) {
        e eVar = new e();
        if (i2 <= 1) {
            n2(i2 + 106, i3);
            return;
        }
        if (i2 <= 3) {
            n2((i2 + 104) - 2, i3);
        } else if (i2 != 4 && i2 == 5) {
            synchronized (this) {
                l2(1, 128, 423, new int[]{eVar.a(this.w5[i3])});
            }
        }
    }

    public int[] X1(int i2, int i3, int i4) {
        int[] iArr = new int[i4];
        return this.M5.e(i4, w7, false, i2, s0.c(i3, 1), s0.c(i3, 0));
    }

    public int[] Y1(int i2, int i3, int i4, int i5) {
        int i6 = i5 * 3;
        int[] iArrE = new int[i6];
        int[] iArr = new int[i5];
        if (i2 != 0) {
            iArrE = this.M5.e(i6, w7, false, i3, s0.c(i4, 1), s0.c(i4, 0));
        }
        for (int i7 = 0; i7 < i5; i7++) {
            int i8 = i7 * 3;
            iArr[i7] = ((iArrE[i8 + 0] << 16) & Spanned.SPAN_PRIORITY) + ((iArrE[i8 + 1] << 8) & 65280) + (iArrE[i8 + 2] & 255);
        }
        return iArr;
    }

    public int Z1(int i2) {
        return X1(64, i2, 1)[0] & 255;
    }

    /* JADX WARN: Code duplicated, block: B:37:0x006c  */
    /* JADX WARN: Code duplicated, block: B:38:0x0099  */
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
            i4 = CHANNEL.IN1.f15613a;
        }
        boolean z6 = i4 == CHANNEL.IN1.f15613a;
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
                    d0.e(AudioManager.class.getName(), this.R5, "setVoiceSwitch2iis", new Class[]{cls}, Boolean.valueOf(z5));
                    d0.e(AudioManager.class.getName(), this.R5, "setAudioSwitch2iis", new Class[]{cls}, Boolean.valueOf(z5));
                } else {
                    String name2 = AudioManager.class.getName();
                    AudioManager audioManager = this.R5;
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
                d0.e(AudioManager.class.getName(), this.R5, "setVoiceSwitch2iis", new Class[]{cls}, Boolean.valueOf(z5));
                d0.e(AudioManager.class.getName(), this.R5, "setAudioSwitch2iis", new Class[]{cls}, Boolean.valueOf(z5));
            } else {
                String name3 = AudioManager.class.getName();
                AudioManager audioManager2 = this.R5;
                Class cls3 = Integer.TYPE;
                d0.e(name3, audioManager2, "setWiredDeviceConnectionState", new Class[]{cls3, cls3, String.class, String.class}, 8, Integer.valueOf(!z5), ProxyProperties.LOCAL_EXCL_LIST, ProxyProperties.LOCAL_EXCL_LIST);
            }
            z8 = z4;
        }
        M1(z8);
        G1(i4);
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
        if (r2(i4, i5)) {
            super.a1(i2, i3);
        }
    }

    public void a2(int i2, int i3, int i4, int i5) {
        byte bZ1 = (byte) Z1(1);
        byte bZ2 = (byte) Z1(133);
        n2(1, (byte) (i2 != 0 ? bZ1 | (-128) : bZ1 & 127));
        byte b2 = (byte) (i3 != 0 ? bZ2 | 16 : bZ2 & (-17));
        byte b3 = (byte) (i4 != 0 ? b2 | 14 : b2 & (-15));
        n2(133, (byte) (i5 != 0 ? b3 | 1 : b3 & (-2)));
    }

    @Override // module.sound.AudioDevice
    public void b1(boolean z2) {
        if (this.S5 != z2) {
            return;
        }
        boolean z3 = !z2;
        this.S5 = z3;
        if (z3) {
            j(null);
        }
        super.b1(z2);
    }

    public void b2(int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        new j();
        k kVar = new k();
        int[] iArr = this.l6;
        int length = i2 % iArr.length;
        if (i2 < iArr.length) {
            if (iArr[length] != i3) {
                int iMax = Math.max(0, Math.min(i3, 10));
                this.l6[length] = iMax;
                y0.h.s0(69, i2, iMax);
                H0(AudioDevice.STORE.DLY_MIXER_LVL, this.l6);
            }
        } else if (i2 < iArr.length * 2) {
            int[] iArr2 = this.m6;
            if (iArr2[length] != i3) {
                iArr2[length] = i3;
                y0.h.s0(69, i2, i3);
                H0(AudioDevice.STORE.DLY_MIXER_PHASE, this.m6);
            }
        } else if (i2 < iArr.length * 3) {
            int[] iArr3 = this.n6;
            if (iArr3[length] != i3) {
                iArr3[length] = i3;
                y0.h.s0(69, i2, i3);
                H0(AudioDevice.STORE.DLY_MIXER_TAP, this.n6);
            }
        }
        synchronized (this) {
            int[] iArr4 = this.l6;
            if (i2 < iArr4.length * 2) {
                if (length == 0) {
                    i9 = this.h6[iArr4[length]];
                    i8 = 58;
                    i7 = 52;
                } else {
                    i7 = (length + 52) - 1;
                    i8 = (length + 58) - 1;
                    i9 = this.i6[iArr4[length]];
                }
                if (i2 == iArr4.length) {
                    x2(true);
                }
                double d2 = i9;
                l2(0, 128, i7, new int[]{kVar.a(d2, this.m6[length])});
                l2(0, 128, i8, new int[]{kVar.a(d2, this.m6[length])});
                if (i2 == this.l6.length) {
                    x2(false);
                }
            } else if (i2 < iArr4.length * 3) {
                if (length == 0) {
                    i5 = 8;
                    i6 = this.j6[this.n6[0]];
                    i4 = 1;
                } else {
                    i4 = (length + 1) - 1;
                    i5 = (length + 8) - 1;
                    i6 = this.n6[length] + this.k6[length];
                }
                m2(0, 144, i4, new int[]{499 - i6});
                m2(0, 144, i5, new int[]{999 - i6});
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
            iArr[i3] = d2(i3);
            z2 = z2 || iArr[i3] > -140;
        }
        boolean z3 = z2 || e0();
        if ((Configure.Property.BLUETOOTH_TYPE.d(0) == 7 && ((i2 = u0.b.D) == 3 || i2 == 2)) || u0.b.D == 1) {
            z3 = true;
        }
        if (this.J) {
            if (z3) {
                if (this.B6) {
                    this.B6 = false;
                    synchronized (this) {
                        n2(110, 0);
                        W1(0, this.v5[this.U5[0]]);
                        W1(1, this.v5[this.U5[1]]);
                        W1(2, this.v5[this.U5[2]]);
                        W1(3, this.v5[this.U5[3]]);
                        e eVar = new e();
                        l2(1, 128, 386, new int[]{eVar.a(0.0d)});
                        l2(1, 128, 325, new int[]{eVar.a(0.0d)});
                        l2(1, 128, 440, new int[]{eVar.a(0.0d)});
                        l2(1, 128, 417, new int[]{eVar.a(0.0d)});
                    }
                    y0.h.X(16, false);
                }
                this.e6 = 0;
            } else {
                int i4 = this.e6;
                if (i4 < 7) {
                    this.e6 = i4 + 1;
                }
                if (this.e6 == 6) {
                    this.B6 = true;
                    synchronized (this) {
                        e eVar2 = new e();
                        l2(1, 128, 386, new int[]{eVar2.a(-145.0d)});
                        l2(1, 128, 325, new int[]{eVar2.a(-145.0d)});
                        l2(1, 128, 440, new int[]{eVar2.a(-145.0d)});
                        l2(1, 128, 417, new int[]{eVar2.a(-145.0d)});
                        int[] iArr2 = this.v5;
                        W1(0, iArr2[iArr2.length - 1]);
                        int[] iArr3 = this.v5;
                        W1(1, iArr3[iArr3.length - 1]);
                        int[] iArr4 = this.v5;
                        W1(2, iArr4[iArr4.length - 1]);
                        int[] iArr5 = this.v5;
                        W1(3, iArr5[iArr5.length - 1]);
                        n2(110, 96);
                    }
                    y0.h.X(16, true);
                }
            }
        }
        return iArr;
    }

    public void c2(int i2, int i3, int i4, int i5, int i6) {
        new j();
        k kVar = new k();
        if (i2 >= this.l6.length) {
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
            l2(0, 128, i7, new int[]{kVar.a(d2, i3)});
            l2(0, 128, i8, new int[]{kVar.a(d2, i3)});
            int i9 = i2 + 1;
            int i10 = i2 + 8;
            if (i2 != 0) {
                i9--;
                i10--;
            }
            m2(0, 144, i9, new int[]{499 - i5});
            m2(0, 144, i10, new int[]{999 - i5});
        }
    }

    public int d2(int i2) {
        h hVar = new h();
        synchronized (this) {
            l2(0, 128, 396, new int[]{((i2 + 387) << 8) & 16776960});
        }
        a.i.a0(1L);
        return hVar.a((Y1(1, 118, 0, 1)[0] >> 4) & 268435455);
    }

    @Override // module.sound.AudioDevice
    public void e1(int i2, int i3) {
        int i4;
        boolean z2;
        if (i2 == 0 && this.P5 != i3) {
            this.P5 = i3;
            z2 = true;
            i4 = 1;
        } else if (i2 != 256 || this.Q5 == i3) {
            i4 = -1;
            z2 = false;
        } else {
            this.Q5 = i3;
            i4 = 0;
            z2 = true;
        }
        f2(i4, i3, this.N5 / 10.0f, this.f15092z);
        if (z2) {
            AudioDevice.STORE store = null;
            if (i2 == 0) {
                store = AudioDevice.STORE.SBWLFREQ;
            } else if (i2 == 256) {
                store = AudioDevice.STORE.SBWHFREQ;
            }
            if (store != null) {
                G0(store, i3);
                y0.h.s0(27, i2, i3);
            }
        }
    }

    public void e2(int i2, double d2, double d3, double d4, double d5, double d6, int i3) {
        j jVar = new j();
        i iVar = new i();
        synchronized (this) {
            try {
                if (i2 != 0) {
                    l2(0, 128, 51, new int[]{jVar.a(1)});
                } else {
                    l2(0, 128, 51, new int[]{jVar.a(0)});
                    l2(0, 128, 25, new int[]{iVar.c(-6.0d)});
                    l2(0, 128, 26, new int[]{iVar.g(d3)});
                    l2(0, 128, 37, new int[]{iVar.d(d4)});
                    l2(0, 128, 50, new int[]{iVar.b(d5)});
                    l2(0, 128, 49, new int[]{iVar.e(d6)});
                    l2(0, 128, 48, new int[]{iVar.f(d6)});
                    int[] iArrA = iVar.a(1, i3, 0.70711d, 1);
                    l2(0, 132, 27, iArrA);
                    l2(0, 132, 32, iArrA);
                    int[] iArrA2 = iVar.a(0, i3, 0.70711d, 1);
                    l2(0, 132, 38, iArrA2);
                    l2(0, 132, 43, iArrA2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // module.sound.AudioDevice
    public void f1(boolean z2) {
        super.f1(z2);
    }

    public void f2(int i2, int i3, double d2, double d3) {
        int i4;
        f fVar = new f();
        if (i2 == 0) {
            i4 = 407;
        } else if (i2 != 1) {
            return;
        } else {
            i4 = Downloads.Impl.STATUS_PRECONDITION_FAILED;
        }
        int i5 = i3 <= 20 ? 20 : i3;
        if (this.y6[0] == 1) {
            i2 = 10;
        }
        int i6 = i2;
        synchronized (this) {
            l2(1, 132, i4, fVar.a(0, i6, i5, 0.70711d, 0.0d, 1));
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // module.sound.AudioDevice
    public void g0(int i2, int i3) {
        int i4;
        boolean z2;
        int i5;
        switch (i2) {
            case 65536:
                g0(65552, i3);
                g0(65568, i3);
                i4 = -1;
                z2 = false;
                break;
            case 65552:
                int[] iArr = this.W5;
                z2 = iArr[0] != i3;
                i5 = 374;
                iArr[0] = i3;
                i4 = i5;
                break;
            case 65568:
                int[] iArr2 = this.W5;
                boolean z3 = iArr2[1] != i3;
                i5 = 368;
                iArr2[1] = i3;
                z2 = z3;
                i4 = i5;
                break;
            case 131072:
                g0(WifiStateMachine.CMD_STATIC_IP_FAILURE, i3);
                g0(131104, i3);
                i4 = -1;
                z2 = false;
                break;
            case WifiStateMachine.CMD_STATIC_IP_FAILURE /* 131088 */:
                int[] iArr3 = this.W5;
                z2 = iArr3[2] != i3;
                i4 = 319;
                iArr3[2] = i3;
                break;
            case 131104:
                int[] iArr4 = this.W5;
                z2 = iArr4[3] != i3;
                i4 = 313;
                iArr4[3] = i3;
                break;
            default:
                i4 = -1;
                z2 = false;
                break;
        }
        if (i4 > 0) {
            u2(i4, i3);
            if (z2) {
                super.g0(i2, i3);
            }
        }
    }

    public void g2(int i2) {
        new j();
        synchronized (this) {
            try {
                if (i2 != 0) {
                    i2(0, 51, 1);
                } else {
                    i2(0, 51, 0);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void h2(int i2, int i3) {
        int i4 = (i3 * 384) / 100;
        new d();
        synchronized (this) {
            try {
                if (i2 == 0) {
                    m2(1, 144, 5, new int[]{1727 - i4});
                } else if (i2 == 1) {
                    m2(1, 144, 7, new int[]{2303 - i4});
                } else if (i2 == 2) {
                    m2(1, 144, 1, new int[]{575 - i4});
                } else if (i2 == 3) {
                    m2(1, 144, 3, new int[]{1151 - i4});
                } else if (i2 == 4) {
                    m2(1, 144, 11, new int[]{3455 - i4});
                } else if (i2 == 5) {
                    m2(1, 144, 9, new int[]{2879 - i4});
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // module.sound.AudioDevice
    public void i1(int i2, int i3) {
    }

    public void i2(int i2, int i3, int i4) {
        j jVar = new j();
        x2(true);
        synchronized (this) {
            try {
                if (i4 != 0) {
                    l2(i2, 128, i3, new int[]{jVar.a(0)});
                } else {
                    l2(i2, 128, i3, new int[]{jVar.a(1)});
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        x2(false);
    }

    @Override // module.sound.AudioDevice, y0.e
    public void j(int[] iArr) {
        if (iArr != null) {
            Log.e("ak7738", "  field2Ic: " + b0.e(iArr, 0, iArr.length));
        }
        if (iArr != null) {
            Log.e("ak7738", " field2Ic1------ loaded: " + this.f15050e + "  speakerLinkage: " + this.S5);
        }
        if (!this.f15050e || this.B6) {
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
            i3 = CHANNEL.IN1.f15613a;
        }
        return i3 == CHANNEL.IN1.f15613a ? 1 : 0;
    }

    @Override // module.sound.AudioDevice
    public void j1(int i2, int i3) {
        boolean z2 = false;
        if (i3 > 100 || i3 < 0) {
            i3 = 0;
        }
        switch (i2) {
            case 65536:
                int[] iArr = this.X5;
                z2 = i3 != iArr[4];
                iArr[4] = i3;
                break;
            case 69632:
                int[] iArr2 = this.X5;
                boolean z3 = i3 != iArr2[0];
                iArr2[0] = i3;
                z2 = z3;
                break;
            case 73728:
                int[] iArr3 = this.X5;
                z2 = i3 != iArr3[1];
                iArr3[1] = i3;
                break;
            case 131072:
                int[] iArr4 = this.X5;
                z2 = i3 != iArr4[5];
                iArr4[5] = i3;
                break;
            case 135168:
                int[] iArr5 = this.X5;
                z2 = i3 != iArr5[2];
                iArr5[2] = i3;
                break;
            case 139264:
                int[] iArr6 = this.X5;
                z2 = i3 != iArr6[3];
                iArr6[3] = i3;
                break;
            case 1073741824:
                int[] iArr7 = this.X5;
                z2 = (i3 == iArr7[0] && i3 == iArr7[1] && i3 == iArr7[2] && i3 == iArr7[3] && i3 == iArr7[4] && i3 == iArr7[5]) ? false : true;
                j1(69632, i3);
                j1(73728, i3);
                j1(135168, i3);
                j1(139264, i3);
                j1(65536, i3);
                j1(131072, i3);
                break;
        }
        A2(i2, i3);
        if (z2) {
            H0(AudioDevice.STORE.SURRLEVEL, this.X5);
            super.j1(i2, i3);
        }
    }

    public void j2(double d2) {
        e eVar = new e();
        synchronized (this) {
            l2(0, 128, 8, new int[]{eVar.a(d2)});
        }
    }

    @Override // module.sound.AudioDevice
    public void k1(int i2) {
        new j();
        int i3 = i2 > 2 ? 0 : i2;
        if (i3 == 0) {
            i2(0, 64, 0);
            a.f.p().t(LogType.AUDIO, String.format(" 关闭混响------", new Object[0]));
        } else if (i3 == 1) {
            i2(0, 64, 1);
            a.f.p().t(LogType.AUDIO, String.format("进入混响  1--- ", new Object[0]));
            c2(0, this.m6[0], this.h6[this.l6[0]], this.j6[this.n6[0]], 0);
            c2(2, 0, this.h6[4], 0, 0);
            c2(3, 0, this.h6[0], 0, 0);
            c2(4, 0, this.h6[0], 0, 0);
            c2(5, 0, this.h6[0], 0, 0);
            c2(6, 0, this.h6[0], 0, 0);
        } else if (i3 == 2) {
            i2(0, 64, 1);
            a.f.p().t(LogType.AUDIO, String.format("进入混响  2--- ", new Object[0]));
            c2(1, this.m6[1], this.i6[this.l6[1]], this.k6[1] + this.n6[1], 0);
            c2(2, this.m6[2], this.i6[this.l6[2]], this.k6[2] + this.n6[2], 0);
            c2(3, this.m6[3], this.i6[this.l6[3]], this.n6[3] + this.k6[3], 0);
            c2(4, this.m6[4], this.i6[this.l6[4]], this.k6[4] + this.n6[4], 0);
            c2(5, this.m6[5], this.i6[this.l6[5]], this.n6[5] + this.k6[5], 0);
            c2(6, this.m6[6], this.i6[this.l6[6]], this.n6[6] + this.k6[6], 0);
        }
        if (this.I6 == i3) {
            return;
        }
        this.I6 = i3;
        super.k1(i3);
        int i4 = this.I6;
        if (i4 == 1 || i4 == 2) {
            y2();
        }
    }

    public int k2(int i2, int i3, int[] iArr) {
        return this.M5.d(w7, new int[]{i2, s0.c(i3, 1), s0.c(i3, 0)}, iArr);
    }

    @Override // module.sound.AudioDevice, y0.e
    public void l(int i2) {
        this.f15052f = i2 == 1;
        super.l(i2);
        I1(this.f15052f ? 1 : 0);
    }

    @Override // module.sound.AudioDevice
    public void l1(boolean z2) {
        if (this.T5 == z2) {
            return;
        }
        this.T5 = z2;
        g2(z2 ? 1 : 0);
        super.l1(z2);
    }

    public synchronized int l2(int i2, int i3, int i4, int[] iArr) {
        if (!this.C6) {
            return 0;
        }
        int[] iArr2 = new int[iArr.length * 3];
        for (int i5 = 0; i5 < iArr.length; i5++) {
            int i6 = i5 * 3;
            iArr2[i6 + 0] = (iArr[i5] >> 16) & 255;
            iArr2[i6 + 1] = (iArr[i5] >> 8) & 255;
            iArr2[i6 + 2] = iArr[i5] & 255;
        }
        this.M5.d(w7, new int[]{i3, (i4 >> 8) & 255, i4 & 255}, iArr2);
        return i2 == 0 ? this.M5.d(w7, new int[]{164}, 0, 0) : this.M5.d(w7, new int[]{165}, 0, 0);
    }

    @Override // y0.e
    public void m(int i2, int i3) {
        int i4;
        if (i2 < 0 || i2 >= 48 || (i4 = u0.b.D) < 0 || i4 >= 20 || y0.f.f18090z0[i4] != i2) {
            return;
        }
        H1(o0.a(i3, 0, 10));
    }

    @Override // module.sound.AudioDevice
    public void m0() {
        super.m0();
        this.T5 = Y(AudioDevice.STORE.SURRON, 0) == 1;
        this.X5 = Z(AudioDevice.STORE.SURRLEVEL, this.X5);
        this.I6 = Y(AudioDevice.STORE.SURRMOED, this.I6);
        this.P5 = Y(AudioDevice.STORE.SBWLFREQ, this.P5);
        this.Q5 = Y(AudioDevice.STORE.SBWHFREQ, this.Q5);
        this.N5 = Y(AudioDevice.STORE.SUBWOOF_QVAL, 50);
        this.a6 = Z(AudioDevice.STORE.STEREO_PAEAM, this.a6);
        this.U5 = Z(AudioDevice.STORE.SPEAKER_GAINS, this.U5);
        this.V5 = Z(AudioDevice.STORE.NOISE_GATE, this.V5);
        this.Y5[0] = Y(AudioDevice.STORE.P2BFFREQ, 0);
        this.Y5[1] = Y(AudioDevice.STORE.P2BFGAIN, 0);
        this.Z5[0] = Y(AudioDevice.STORE.P2BRFREQ, 0);
        this.Z5[1] = Y(AudioDevice.STORE.P2BRGAIN, 0);
        this.W5[0] = Y(AudioDevice.STORE.HPFFA, 20);
        this.W5[1] = Y(AudioDevice.STORE.HPFFB, 200);
        this.W5[2] = Y(AudioDevice.STORE.HPFRA, 20);
        this.W5[3] = Y(AudioDevice.STORE.HPFRB, 200);
        this.b6 = Z(AudioDevice.STORE.SURR_FIELD, this.b6);
        this.v6 = Z(AudioDevice.STORE.CSAUTO_SRS, this.v6);
        this.w6 = Z(AudioDevice.STORE.CSAUTO_FOC, this.w6);
        this.x6 = Z(AudioDevice.STORE.CSAUTO_TRUBASS, this.x6);
        this.y6 = Z(AudioDevice.STORE.CSAUTO_OTHERS, this.y6);
        this.l6 = Z(AudioDevice.STORE.DLY_MIXER_LVL, this.l6);
        this.m6 = Z(AudioDevice.STORE.DLY_MIXER_PHASE, this.m6);
        this.n6 = Z(AudioDevice.STORE.DLY_MIXER_TAP, this.n6);
        this.z6 = Y(AudioDevice.STORE.LOW_PASS_FILTERING, this.z6);
        this.A6 = Y(AudioDevice.STORE.HIGH_PASS_FILTERING, this.A6);
    }

    public synchronized int m2(int i2, int i3, int i4, int[] iArr) {
        if (!this.C6) {
            return 0;
        }
        int[] iArr2 = new int[iArr.length * 3];
        for (int i5 = 0; i5 < iArr.length; i5++) {
            int i6 = i5 * 3;
            iArr2[i6 + 0] = (iArr[i5] >> 16) & 255;
            iArr2[i6 + 1] = (iArr[i5] >> 8) & 255;
            iArr2[i6 + 2] = iArr[i5] & 255;
        }
        this.M5.d(w7, new int[]{i3, (i4 >> 8) & 255, i4 & 255}, iArr2);
        return i2 == 0 ? this.M5.d(w7, new int[]{162}, 0, 0) : this.M5.d(w7, new int[]{163}, 0, 0);
    }

    public int n2(int i2, int i3) {
        return k2(192, i2, new int[]{i3});
    }

    @Override // module.sound.AudioDevice, y0.e
    public void o(int i2) {
        W1(5, i2);
        super.o(i2);
    }

    public boolean o2(int[] iArr, int i2) {
        int[] iArrT2;
        return i2 == 0 || (iArrT2 = t2(i2)) == null || !Arrays.equals(iArr, iArrT2);
    }

    @Override // module.sound.AudioDevice
    public int p0() {
        int[] iArr = this.r5;
        return iArr[iArr.length - 1];
    }

    public void p2(int i2, int... iArr) {
        if (i2 < 0 || i2 >= this.f15060j || iArr.length != this.f15072p) {
            return;
        }
        int iMin = Math.min(this.x5.length - 1, iArr[2]);
        if (i2 < 17) {
            J1(i2, 1, iArr[0], iArr[1] / 10.0f, this.x5[iMin]);
        } else {
            J1(i2, 0, iArr[0], iArr[1] / 10.0f, this.x5[iMin]);
        }
    }

    @Override // module.sound.AudioDevice
    public int q0() {
        return -1440;
    }

    public void q2(int[] iArr) {
        int length = iArr.length / this.f15072p;
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = this.f15072p;
            p2(i2, iArr[i2 * i3], iArr[(i2 * i3) + 2], iArr[(i3 * i2) + 1]);
        }
    }

    @Override // module.sound.AudioDevice
    public void r0(int i2) {
        int iMax = Math.max(0, Math.min(i2, this.s5.length - 1));
        this.f15056h = iMax;
        V1(1, x1(iMax, this.s5) / 10, 0);
    }

    public boolean r2(int i2, int i3) {
        boolean z2 = false;
        if (i2 >= 0) {
            int[] iArr = this.U5;
            if (i2 < iArr.length) {
                int i4 = 16 - i3;
                if (iArr[i2] != i4) {
                    iArr[i2] = i4;
                    h0 h0Var = this.f15080t;
                    AudioDevice.STORE store = AudioDevice.STORE.SPEAKER_GAINS;
                    h0Var.r(store.ordinal(), this.U5);
                    this.f15080t.e(store.ordinal());
                    z2 = true;
                }
                W1(i2, this.v5[this.U5[i2]]);
            }
        }
        return z2;
    }

    public double s2(int i2) {
        return ((double) i2) / 100.0d;
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

    public void u2(int i2, int i3) {
        double d2;
        int i4 = (i2 == 368 || i2 == 313) ? 100 : 1;
        int i5 = this.A6;
        double d3 = 0.5d;
        if (i5 == 2) {
            d2 = 0.58d;
        } else {
            d2 = i5 == 3 ? 0.5d : 0.7079d;
        }
        int i6 = this.z6;
        if (i6 == 2) {
            d3 = 0.58d;
        } else if (i6 != 3) {
            d3 = 0.7079d;
        }
        if (i2 == 374 || i2 == 319) {
            L1(i2, i3 * i4, d2);
        } else {
            U1(i2, i3 * i4, d3);
        }
    }

    @Override // module.sound.AudioDevice
    public void v0(boolean z2) {
        super.v0(z2);
        if (this.f15050e) {
            if (z2) {
                int[] iArr = this.v5;
                W1(0, iArr[iArr.length - 1]);
                int[] iArr2 = this.v5;
                W1(1, iArr2[iArr2.length - 1]);
                int[] iArr3 = this.v5;
                W1(2, iArr3[iArr3.length - 1]);
                int[] iArr4 = this.v5;
                W1(3, iArr4[iArr4.length - 1]);
                W1(5, 0);
            } else if (!this.B6) {
                j(null);
                o(y0.f.V0);
            }
            n2(65, z2 ? 0 : 22);
        }
    }

    public final void v2() {
        synchronized (this) {
            f fVar = new f();
            l2(0, 132, 14, fVar.a(0, 4, 320, 0.70711d, u7[this.f15054g], 1));
            l2(0, 132, 19, fVar.a(0, 3, 2000, 0.70711d, v7[this.f15054g], 2));
        }
    }

    @Override // module.sound.AudioDevice
    public void w0(int i2) {
        int[] iArrT2 = t2(i2);
        if (o2(this.f15074q, i2)) {
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
            q2(iArrT2);
            y0.h.H(iArr, iArr2, iArr3, this.f15060j, this);
        }
    }

    public void w2(boolean z2) {
        if (this.f15050e) {
            if (z2) {
                x2(true);
                this.D6 = true;
            } else {
                this.D6 = false;
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
        if (this.f15050e && !this.D6) {
            synchronized (this) {
                e eVar = new e();
                if (z2) {
                    l2(0, 128, 330, new int[]{eVar.a(-145.0d)});
                    a.i.a0(45L);
                } else {
                    a.i.a0(3L);
                    l2(0, 128, 330, new int[]{eVar.a(4.0d)});
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
            l2(1, 128, 346, new int[]{256});
        }
    }

    public void y2() {
        if (this.Y5[0] != 0) {
            C0(65536, 0);
        }
        if (this.Z5[0] != 0) {
            C0(131072, 0);
        }
        if (this.Y5[1] != 0) {
            D0(65536, 0);
        }
        if (this.Z5[1] != 0) {
            D0(131072, 0);
        }
    }

    public void z2(int i2, int i3) {
        if (i2 >= 0 || i2 < this.a6.length) {
            int iMax = Math.max(0, Math.min(i3, this.B5.length));
            if (i2 == 0 || i2 == 1 || i2 == 2 || i2 == 3 || i2 == 4) {
                int[] iArr = this.a6;
                if (iArr[i2] != iMax) {
                    iArr[i2] = iMax;
                    y0.h.s0(63, i2, iMax);
                    H0(AudioDevice.STORE.STEREO_PAEAM, this.a6);
                }
                int i4 = !this.T5 ? 1 : 0;
                int[] iArr2 = this.B5;
                int[] iArr3 = this.a6;
                e2(i4, 0.0d, iArr2[iArr3[0]], iArr2[iArr3[1]], iArr2[iArr3[2]], iArr3[3] / 10.0f, this.A5[iArr3[4]]);
            }
        }
    }
}
