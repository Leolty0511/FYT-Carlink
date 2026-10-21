package module.sound;

import android.bluetooth.BluetoothClass;
import android.content.Context;
import android.media.AudioManager;
import android.media.AudioService;
import android.media.AudioSystem;
import android.media.videoeditor.MediaProperties;
import android.net.ConnectivityManager;
import android.net.ProxyProperties;
import android.net.UrlQuerySanitizer;
import android.net.wifi.WifiStateMachine;
import android.os.Handler;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.provider.Downloads;
import android.text.Spanned;
import android.util.Log;
import android.util.TimedRemoteCaller;
import android.view.Window;
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
public class C7738NOR7870TDM extends AudioDevice {
    public static double[] A9 = {0.0d, 10.0d, 10.0d, 10.0d, 10.0d, 10.0d, 10.0d, 9.5d, 9.0d, 8.5d, 8.0d, 7.5d, 7.0d, 6.5d, 6.0d, 5.5d, 5.0d, 4.5d, 4.0d, 3.5d, 3.0d, 2.5d, 2.0d, 1.5d, 1.0d, 0.5d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d};
    public static double[] B9 = {0.0d, 7.0d, 7.0d, 7.0d, 7.0d, 7.0d, 7.0d, 6.8d, 6.5d, 6.2d, 5.9d, 5.6d, 5.2d, 4.8d, 4.4d, 4.0d, 3.6d, 3.2d, 2.8d, 2.4d, 2.0d, 1.6d, 1.2d, 0.8d, 0.5d, 0.3d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d};
    public static int C9 = 28;
    public static double[] D9 = null;
    public final int A1;
    public final int A2;
    public final int A3;
    public final int A4;
    public final int A5;
    public final int A6;
    public n A7;
    public final int[] A8;
    public final int B1;
    public final int B2;
    public final int B3;
    public final int B4;
    public final int B5;
    public final int B6;
    public int B7;
    public int B8;
    public final int C1;
    public final int C2;
    public final int C3;
    public final int C4;
    public final int C5;
    public final int C6;
    public int C7;
    public int C8;
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
    public int E7;
    public boolean E8;
    public final int F1;
    public final int F2;
    public final int F3;
    public final int F4;
    public final int F5;
    public final int F6;
    public AudioManager F7;
    public boolean F8;
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
    public boolean H7;
    public Handler H8;
    public final boolean I0;
    public final int I1;
    public final int I2;
    public final int I3;
    public final int I4;
    public final int I5;
    public final int I6;
    public int[] I7;
    public Runnable I8;
    public final String J0;
    public final int J1;
    public final int J2;
    public final int J3;
    public final int J4;
    public final int J5;
    public final int J6;
    public int[] J7;
    public boolean J8;
    public final int K0;
    public final int K1;
    public final int K2;
    public final int K3;
    public final int K4;
    public final int K5;
    public final int K6;
    public int[] K7;
    public boolean K8;
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
    public int[] M8;
    public final int N0;
    public final int N1;
    public final int N2;
    public final int N3;
    public final int N4;
    public final int N5;
    public final int N6;
    public int[] N7;
    public int N8;
    public final int O0;
    public final int O1;
    public final int O2;
    public final int O3;
    public final int O4;
    public final int O5;
    public final int O6;
    public int[] O7;
    public final int O8;
    public final int P0;
    public final int P1;
    public final int P2;
    public final int P3;
    public final int P4;
    public final int P5;
    public final int P6;
    public int[] P7;
    public final int P8;
    public final int Q0;
    public final int Q1;
    public final int Q2;
    public final int Q3;
    public final int Q4;
    public final int Q5;
    public final double Q6;
    public final int Q7;
    public final int Q8;
    public final int R0;
    public final int R1;
    public final int R2;
    public final int R3;
    public final int R4;
    public final int R5;
    public final double R6;
    public final int R7;
    public final int R8;
    public final int S0;
    public final int S1;
    public final int S2;
    public final int S3;
    public final int S4;
    public final int S5;
    public final double S6;
    public int S7;
    public final int S8;
    public final int T0;
    public final int T1;
    public final int T2;
    public final int T3;
    public final int T4;
    public final int T5;
    public final int T6;
    public final int T7;
    public final int T8;
    public final int U0;
    public final int U1;
    public final int U2;
    public final int U3;
    public final int U4;
    public final int U5;
    public final int U6;
    public final int U7;
    public final int U8;
    public final int V0;
    public final int V1;
    public final int V2;
    public final int V3;
    public final int V4;
    public final int V5;
    public final double V6;
    public int[] V7;
    public final int V8;
    public final int W0;
    public final int W1;
    public final int W2;
    public final int W3;
    public final int W4;
    public final int W5;
    public final double W6;
    public int[] W7;
    public final int W8;
    public final int X0;
    public final int X1;
    public final int X2;
    public final int X3;
    public final int X4;
    public final int X5;
    public final int[] X6;
    public int[] X7;
    public final int X8;
    public final int Y0;
    public final int Y1;
    public final int Y2;
    public final int Y3;
    public final int Y4;
    public final int Y5;
    public int[] Y6;
    public int[] Y7;
    public final int Y8;
    public final int Z0;
    public final int Z1;
    public final int Z2;
    public final int Z3;
    public final int Z4;
    public final int Z5;
    public int[] Z6;
    public int[] Z7;
    public final int Z8;

    /* JADX INFO: renamed from: a1, reason: collision with root package name */
    public final int f15743a1;
    public final int a2;
    public final int a3;
    public final int a4;
    public final int a5;
    public final int a6;
    public final int[] a7;
    public int[] a8;
    public final int a9;

    /* JADX INFO: renamed from: b1, reason: collision with root package name */
    public final int f15744b1;
    public final int b2;
    public final int b3;
    public final int b4;
    public final int b5;
    public final int b6;
    public final int[] b7;
    public int[] b8;
    public final int b9;

    /* JADX INFO: renamed from: c1, reason: collision with root package name */
    public final int f15745c1;
    public final int c2;
    public final int c3;
    public final int c4;
    public final int c5;
    public final int c6;
    public int[] c7;
    public int[] c8;
    public final int c9;

    /* JADX INFO: renamed from: d1, reason: collision with root package name */
    public final int f15746d1;
    public final int d2;
    public final int d3;
    public final int d4;
    public final int d5;
    public final int d6;
    public final int d7;
    public final int d8;
    public final int d9;

    /* JADX INFO: renamed from: e1, reason: collision with root package name */
    public final int f15747e1;
    public final int e2;
    public final int e3;
    public final int e4;
    public final int e5;
    public final int e6;
    public final int e7;
    public final int e8;
    public final int e9;

    /* JADX INFO: renamed from: f1, reason: collision with root package name */
    public final int f15748f1;
    public final int f2;
    public final int f3;
    public final int f4;
    public final int f5;
    public final int f6;
    public int[] f7;
    public final int f8;
    public final int f9;

    /* JADX INFO: renamed from: g1, reason: collision with root package name */
    public final int f15749g1;
    public final int g2;
    public final int g3;
    public final int g4;
    public final int g5;
    public final int g6;
    public int[] g7;
    public final int g8;
    public final int g9;

    /* JADX INFO: renamed from: h1, reason: collision with root package name */
    public final int f15750h1;
    public final int h2;
    public final int h3;
    public final int h4;
    public final int h5;
    public final int h6;
    public int[] h7;
    public int h8;
    public final int h9;

    /* JADX INFO: renamed from: i1, reason: collision with root package name */
    public final int f15751i1;
    public final int i2;
    public final int i3;
    public final int i4;
    public final int i5;
    public final int i6;
    public final int i7;
    public int[] i8;
    public final int i9;

    /* JADX INFO: renamed from: j1, reason: collision with root package name */
    public final int f15752j1;
    public final int j2;
    public final int j3;
    public final int j4;
    public final int j5;
    public final int j6;
    public int[] j7;
    public int[] j8;
    public final int j9;

    /* JADX INFO: renamed from: k1, reason: collision with root package name */
    public final int f15753k1;
    public final int k2;
    public final int k3;
    public final int k4;
    public final int k5;
    public final int k6;
    public int[] k7;
    public int[] k8;
    public final int k9;

    /* JADX INFO: renamed from: l1, reason: collision with root package name */
    public final int f15754l1;
    public final int l2;
    public final int l3;
    public final int l4;
    public final int l5;
    public final int l6;
    public int[] l7;
    public int[] l8;
    public int[] l9;

    /* JADX INFO: renamed from: m1, reason: collision with root package name */
    public final int f15755m1;
    public final int m2;
    public final int m3;
    public final int m4;
    public final int m5;
    public final int m6;
    public final int[] m7;
    public int[] m8;
    public l m9;

    /* JADX INFO: renamed from: n1, reason: collision with root package name */
    public final int f15756n1;
    public final int n2;
    public final int n3;
    public final int n4;
    public final int n5;
    public final int n6;
    public double[] n7;
    public int[] n8;
    public final int n9;

    /* JADX INFO: renamed from: o1, reason: collision with root package name */
    public final int f15757o1;
    public final int o2;
    public final int o3;
    public final int o4;
    public final int o5;
    public final int o6;
    public int[] o7;
    public final int[] o8;
    public final int o9;

    /* JADX INFO: renamed from: p1, reason: collision with root package name */
    public final int f15758p1;
    public final int p2;
    public final int p3;
    public final int p4;
    public final int p5;
    public final int p6;
    public int[] p7;
    public boolean p8;
    public final int p9;

    /* JADX INFO: renamed from: q1, reason: collision with root package name */
    public final int f15759q1;
    public final int q2;
    public final int q3;
    public final int q4;
    public final int q5;
    public final int q6;
    public double q7;
    public final int q8;
    public final int q9;
    public final int r1;
    public final int r2;
    public final int r3;
    public final int r4;
    public final int r5;
    public final int r6;
    public int[] r7;
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
    public final int u8;
    public final int u9;
    public final int v1;
    public final int v2;
    public final int v3;
    public final int v4;
    public final int v5;
    public final int v6;
    public final int[] v7;
    public final int[] v8;
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
    public final int[] z7;
    public int[] z8;
    public final int z9;

    public enum CHANNEL {
        IN1(0),
        IN2(1),
        IN3(2),
        IN4(3),
        IN5(4);


        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f15766a;

        CHANNEL(int i2) {
            this.f15766a = i2;
        }
    }

    public class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int[] f15767a = new int[9];

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f15768b;

        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = 0;
            while (true) {
                this.f15768b = i2;
                int i3 = this.f15768b;
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
            C7738NOR7870TDM.this.H8.postDelayed(this, TimedRemoteCaller.DEFAULT_CALL_TIMEOUT_MILLIS);
        }
    }

    public class c {
        public c() {
        }

        public int a(double d2) {
            return C7738NOR7870TDM.this.m9.a(d2, 0);
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
            return C7738NOR7870TDM.this.m9.a(dPow, 2);
        }
    }

    public class f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public double f15774a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public double f15775b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public double f15776c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public double f15777d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public double f15778e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public double f15779f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public double f15780g;

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
                    double d13 = fVar.f15778e;
                    d5 = d13 + 1.0d;
                    double d14 = fVar.f15776c;
                    d6 = ((1.0d - d14) / 2.0d) / d5;
                    d7 = (1.0d - d14) / d5;
                    d8 = (-(1.0d - d13)) / d5;
                    d9 = (d14 * 2.0d) / d5;
                    d10 = 1.0d - d14;
                } else if (i3 == 2) {
                    fVar = this;
                    double d15 = fVar.f15778e;
                    double d16 = fVar.f15779f;
                    double d17 = (d15 / d16) + 1.0d;
                    double d18 = fVar.f15776c;
                    double d19 = (d18 * (-2.0d)) / d17;
                    d9 = (d18 * 2.0d) / d17;
                    d11 = (1.0d - (d15 * d16)) / d17;
                    d7 = d19;
                    d12 = ((d15 * d16) + 1.0d) / d17;
                    d8 = (-(1.0d - (d15 / d16))) / d17;
                } else if (i3 == 3) {
                    fVar = this;
                    double dSqrt = Math.sqrt(fVar.f15779f / d2);
                    fVar.f15780g = dSqrt;
                    double d20 = fVar.f15779f;
                    double d21 = fVar.f15776c;
                    double d22 = fVar.f15775b;
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
                    double dSqrt2 = Math.sqrt(this.f15779f / d2);
                    this.f15780g = dSqrt2;
                    double d28 = this.f15779f;
                    double d29 = this.f15776c;
                    double d30 = this.f15775b;
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
                return i2 == 0 ? new int[]{C7738NOR7870TDM.this.m9.a(d11, i5), C7738NOR7870TDM.this.m9.a(d7, i5), C7738NOR7870TDM.this.m9.a(d8, i5), C7738NOR7870TDM.this.m9.a(d9, i5), C7738NOR7870TDM.this.m9.a(d12, i5)} : new int[]{C7738NOR7870TDM.this.m9.b(d11, i5), C7738NOR7870TDM.this.m9.c(d11, i5), C7738NOR7870TDM.this.m9.b(d7, i5), C7738NOR7870TDM.this.m9.c(d7, i5), C7738NOR7870TDM.this.m9.b(d8, i5), C7738NOR7870TDM.this.m9.c(d8, i5), C7738NOR7870TDM.this.m9.b(d9, i5), C7738NOR7870TDM.this.m9.c(d9, i5), C7738NOR7870TDM.this.m9.b(d12, i5), C7738NOR7870TDM.this.m9.c(d12, i5)};
            }
            fVar = this;
            d4 = 2.0d;
            double d37 = fVar.f15778e;
            d5 = d37 + 1.0d;
            double d38 = fVar.f15776c;
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
            this.f15774a = d4;
            this.f15775b = Math.sin(d4);
            this.f15776c = Math.cos(this.f15774a);
            this.f15778e = this.f15775b / (d2 * 2.0d);
            if (i2 == 2 || i2 == 3 || i2 == 4) {
                this.f15779f = Math.pow(10.0d, d3 / 40.0d);
            } else {
                this.f15779f = Math.sqrt(Math.pow(10.0d, d3 / 20.0d));
            }
        }

        public void c(int i2, int i3, double d2, double d3) {
            double d4 = (((double) i3) * 6.283185307179586d) / 48000.0d;
            this.f15774a = d4;
            this.f15775b = Math.sin(d4);
            this.f15776c = Math.cos(this.f15774a);
            this.f15777d = Math.tan(this.f15774a / 2.0d);
            this.f15778e = this.f15775b / (d2 * 2.0d);
            if (i2 == 2 || i2 == 3 || i2 == 4 || (i2 >= 5 && i2 <= 20)) {
                this.f15779f = Math.pow(10.0d, d3 / 40.0d);
            } else {
                this.f15779f = Math.sqrt(Math.pow(10.0d, d3 / 20.0d));
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
                    double d11 = this.f15776c / (this.f15775b + 1.0d);
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
                    dPow2 = (1.0d - this.f15775b) / this.f15776c;
                    double d12 = (dPow2 + 1.0d) / 2.0d;
                    dPow = d12;
                    d5 = -d12;
                    dPow3 = 0.0d;
                    d6 = 0.0d;
                }
            } else if (i3 == 7) {
                d4 = 1.0d;
                if (i4 == 0) {
                    double d13 = this.f15778e;
                    d7 = d13 + 1.0d;
                    double d14 = this.f15776c;
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
                    double d15 = this.f15778e;
                    d7 = d15 + 1.0d;
                    double d16 = this.f15776c;
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
                    double d18 = this.f15777d;
                    double dPow5 = (dCos * d18) + 1.0d + Math.pow(d18, 2.0d);
                    double dPow6 = Math.pow(this.f15777d, 2.0d) / dPow5;
                    double dCos2 = Math.cos(d17) * 2.0d;
                    double d19 = this.f15777d;
                    dPow3 = (((dCos2 * d19) - 1.0d) - Math.pow(d19, 2.0d)) / dPow5;
                    dPow4 = ((1.0d - Math.pow(this.f15777d, 2.0d)) * 2.0d) / dPow5;
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
                            double d21 = this.f15777d;
                            double dPow7 = (dCos3 * d21) + 1.0d + Math.pow(d21, 2.0d);
                            double dPow8 = Math.pow(this.f15777d, 2.0d) / dPow7;
                            double dCos4 = Math.cos(d20) * 2.0d;
                            double d22 = this.f15777d;
                            dPow3 = (((dCos4 * d22) - 1.0d) - Math.pow(d22, 2.0d)) / dPow7;
                            dPow = dPow8;
                            dPow2 = ((1.0d - Math.pow(this.f15777d, 2.0d)) * 2.0d) / dPow7;
                            d6 = dPow;
                            d5 = dPow8 * 2.0d;
                        } else if (i3 == 20) {
                            double d23 = (((double) ((i4 * 2) + 1)) * 3.141592653589793d) / 16.0d;
                            double dCos5 = Math.cos(d23) * 2.0d;
                            double d24 = this.f15777d;
                            double dPow9 = (dCos5 * d24) + 1.0d + Math.pow(d24, 2.0d);
                            double d25 = 1.0d / dPow9;
                            double dCos6 = Math.cos(d23) * 2.0d;
                            double d26 = this.f15777d;
                            double dPow10 = (((dCos6 * d26) - 1.0d) - Math.pow(d26, 2.0d)) / dPow9;
                            dPow = d25;
                            dPow2 = ((1.0d - Math.pow(this.f15777d, 2.0d)) * 2.0d) / dPow9;
                            d5 = d25 * (-2.0d);
                            d6 = dPow;
                            dPow3 = dPow10;
                        }
                    } else if (i4 <= 2) {
                        double d27 = (((double) ((i4 * 2) + 1)) * 3.141592653589793d) / 12.0d;
                        double dCos7 = Math.cos(d27) * 2.0d;
                        double d28 = this.f15777d;
                        double dPow11 = (dCos7 * d28) + 1.0d + Math.pow(d28, 2.0d);
                        double d29 = 1.0d / dPow11;
                        d5 = d29 * (-2.0d);
                        double dCos8 = Math.cos(d27) * 2.0d;
                        double d30 = this.f15777d;
                        dPow3 = (((dCos8 * d30) - 1.0d) - Math.pow(d30, 2.0d)) / dPow11;
                        dPow4 = ((1.0d - Math.pow(this.f15777d, 2.0d)) * 2.0d) / dPow11;
                        dPow = d29;
                        dPow2 = dPow4;
                        d6 = dPow;
                    }
                } else if (i4 <= 2) {
                    double d31 = (((double) ((i4 * 2) + 1)) * 3.141592653589793d) / 12.0d;
                    double dCos9 = Math.cos(d31) * 2.0d;
                    double d32 = this.f15777d;
                    double dPow12 = (dCos9 * d32) + 1.0d + Math.pow(d32, 2.0d);
                    dPow = Math.pow(this.f15777d, 2.0d) / dPow12;
                    d5 = dPow * 2.0d;
                    double dCos10 = Math.cos(d31) * 2.0d;
                    double d33 = this.f15777d;
                    double dPow13 = (((dCos10 * d33) - 1.0d) - Math.pow(d33, 2.0d)) / dPow12;
                    dPow2 = ((1.0d - Math.pow(this.f15777d, 2.0d)) * 2.0d) / dPow12;
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
                double d35 = this.f15777d;
                double dPow14 = (dCos11 * d35) + 1.0d + Math.pow(d35, 2.0d);
                d6 = 1.0d / dPow14;
                double dCos12 = Math.cos(d34) * 2.0d;
                double d36 = this.f15777d;
                dPow3 = (((dCos12 * d36) - 1.0d) - Math.pow(d36, 2.0d)) / dPow14;
                dPow2 = ((1.0d - Math.pow(this.f15777d, 2.0d)) * 2.0d) / dPow14;
                d5 = d6 * (-2.0d);
                dPow = d6;
            }
            return i2 == 0 ? new int[]{C7738NOR7870TDM.this.m9.a(d6, i6), C7738NOR7870TDM.this.m9.a(d5, i6), C7738NOR7870TDM.this.m9.a(dPow3, i6), C7738NOR7870TDM.this.m9.a(dPow2, i6), C7738NOR7870TDM.this.m9.a(dPow, i6)} : new int[]{C7738NOR7870TDM.this.m9.b(d6, i6), C7738NOR7870TDM.this.m9.c(d6, i6), C7738NOR7870TDM.this.m9.b(d5, i6), C7738NOR7870TDM.this.m9.c(d5, i6), C7738NOR7870TDM.this.m9.b(dPow3, i6), C7738NOR7870TDM.this.m9.c(dPow3, i6), C7738NOR7870TDM.this.m9.b(dPow2, i6), C7738NOR7870TDM.this.m9.c(dPow2, i6), C7738NOR7870TDM.this.m9.b(dPow, i6), C7738NOR7870TDM.this.m9.c(dPow, i6)};
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
            return C7738NOR7870TDM.this.m9.a(dPow, 2);
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
        public final double f15784a = 0.0d;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final double f15785b = -145.0d;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public double f15786c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public double f15787d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public double f15788e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public double f15789f;

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
                    double d11 = this.f15789f;
                    double d12 = d11 + 1.0d;
                    double d13 = this.f15788e;
                    d3 = ((1.0d - d13) / 2.0d) / d12;
                    double d14 = (1.0d - d13) / d12;
                    d5 = (-(1.0d - d11)) / d12;
                    d6 = (d13 * 2.0d) / d12;
                    d7 = ((1.0d - d13) / 2.0d) / d12;
                    d4 = d14;
                }
                return new int[]{C7738NOR7870TDM.this.m9.a(d10, i4), C7738NOR7870TDM.this.m9.a(d4, i4), C7738NOR7870TDM.this.m9.a(d9, i4), C7738NOR7870TDM.this.m9.a(d8, i4), C7738NOR7870TDM.this.m9.a(d7, i4)};
            }
            double d15 = this.f15789f;
            double d16 = d15 + 1.0d;
            double d17 = this.f15788e;
            d3 = ((d17 + 1.0d) / 2.0d) / d16;
            d4 = (-(d17 + 1.0d)) / d16;
            d5 = (-(1.0d - d15)) / d16;
            d6 = (d17 * 2.0d) / d16;
            d7 = ((d17 + 1.0d) / 2.0d) / d16;
            d8 = d6;
            d9 = d5;
            d10 = d3;
            return new int[]{C7738NOR7870TDM.this.m9.a(d10, i4), C7738NOR7870TDM.this.m9.a(d4, i4), C7738NOR7870TDM.this.m9.a(d9, i4), C7738NOR7870TDM.this.m9.a(d8, i4), C7738NOR7870TDM.this.m9.a(d7, i4)};
        }

        public int b(double d2) {
            return C7738NOR7870TDM.this.m9.a(d2 <= -145.0d ? 0.0d : Math.pow(10.0d, d2 / 20.0d), 2);
        }

        public int c(double d2) {
            return C7738NOR7870TDM.this.m9.a(d2 <= -145.0d ? 0.0d : Math.pow(10.0d, d2 / 20.0d), 2);
        }

        public int d(double d2) {
            return C7738NOR7870TDM.this.m9.a(d2 <= -145.0d ? 0.0d : Math.pow(10.0d, d2 / 20.0d), 2);
        }

        public int e(double d2) {
            return C7738NOR7870TDM.this.m9.a(d2, 1);
        }

        public int f(double d2) {
            return C7738NOR7870TDM.this.m9.a(1.0d - d2, 1);
        }

        public int g(double d2) {
            return C7738NOR7870TDM.this.m9.a(d2 <= -145.0d ? 0.0d : Math.pow(10.0d, d2 / 20.0d), 2);
        }

        public void h(int i2, int i3, double d2) {
            double d3 = (((double) i3) * 6.283185307179586d) / 48000.0d;
            this.f15786c = d3;
            this.f15787d = Math.sin(d3);
            this.f15788e = Math.cos(this.f15786c);
            this.f15789f = this.f15787d / (d2 * 2.0d);
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
            return C7738NOR7870TDM.this.m9.a(dPow, 2);
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

    public C7738NOR7870TDM(n nVar) {
        super(36, 3);
        this.I0 = false;
        this.J0 = "C7738TDM";
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
        this.f15743a1 = 48;
        this.f15744b1 = 49;
        this.f15745c1 = 50;
        this.f15746d1 = 51;
        this.f15747e1 = 52;
        this.f15748f1 = 53;
        this.f15749g1 = 54;
        this.f15750h1 = 55;
        this.f15751i1 = 56;
        this.f15752j1 = 57;
        this.f15753k1 = 0;
        this.f15754l1 = 1;
        this.f15755m1 = 2;
        this.f15756n1 = 3;
        this.f15757o1 = 4;
        this.f15758p1 = 5;
        this.f15759q1 = 6;
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
        this.v2 = 339;
        this.w2 = 340;
        this.x2 = 341;
        this.y2 = 343;
        this.z2 = 346;
        this.A2 = 347;
        this.B2 = 349;
        this.C2 = 352;
        this.D2 = 353;
        this.E2 = 354;
        this.F2 = 355;
        this.G2 = 356;
        this.H2 = 357;
        this.I2 = 359;
        this.J2 = 362;
        this.K2 = 363;
        this.L2 = 365;
        this.M2 = 368;
        this.N2 = 373;
        this.O2 = 378;
        this.P2 = 383;
        this.Q2 = 388;
        this.R2 = 393;
        this.S2 = 398;
        this.T2 = 403;
        this.U2 = 408;
        this.V2 = 409;
        this.W2 = Downloads.Impl.STATUS_LENGTH_REQUIRED;
        this.X2 = 414;
        this.Y2 = 415;
        this.Z2 = 417;
        this.a3 = 420;
        this.b3 = 421;
        this.c3 = 423;
        this.d3 = 426;
        this.e3 = 427;
        this.f3 = 429;
        this.g3 = 432;
        this.h3 = 433;
        this.i3 = 435;
        this.j3 = 438;
        this.k3 = 443;
        this.l3 = 448;
        this.m3 = 453;
        this.n3 = 458;
        this.o3 = 463;
        this.p3 = 468;
        this.q3 = 473;
        this.r3 = 478;
        this.s3 = 479;
        this.t3 = 481;
        this.u3 = 484;
        this.v3 = 485;
        this.w3 = 487;
        this.x3 = Downloads.Impl.STATUS_CANCELED;
        this.y3 = Downloads.Impl.STATUS_UNKNOWN_ERROR;
        this.z3 = Downloads.Impl.STATUS_UNHANDLED_REDIRECT;
        this.A3 = Downloads.Impl.STATUS_HTTP_EXCEPTION;
        this.B3 = Downloads.Impl.STATUS_TOO_MANY_REDIRECTS;
        this.C3 = 499;
        this.D3 = 502;
        this.E3 = 507;
        this.F3 = 512;
        this.G3 = 517;
        this.H3 = 522;
        this.I3 = 527;
        this.J3 = BluetoothClass.Device.PHONE_ISDN;
        this.K3 = 537;
        this.L3 = 542;
        this.M3 = 547;
        this.N3 = 548;
        this.O3 = 549;
        this.P3 = 550;
        this.Q3 = 551;
        this.R3 = 552;
        this.S3 = 553;
        this.T3 = 554;
        this.U3 = 555;
        this.V3 = 556;
        this.W3 = 306;
        this.X3 = 0;
        this.Y3 = 26;
        this.Z3 = 53;
        this.a4 = 54;
        this.b4 = 68;
        this.c4 = 69;
        this.d4 = 70;
        this.e4 = 72;
        this.f4 = 86;
        this.g4 = 87;
        this.h4 = 88;
        this.i4 = 102;
        this.j4 = 103;
        this.k4 = 104;
        this.l4 = 106;
        this.m4 = 130;
        this.n4 = 154;
        this.o4 = 180;
        this.p4 = 181;
        this.q4 = 182;
        this.r4 = 203;
        this.s4 = 204;
        this.t4 = 205;
        this.u4 = 206;
        this.v4 = 305;
        this.w4 = 0;
        this.x4 = 1;
        this.y4 = 2;
        this.z4 = 3;
        this.A4 = 307;
        this.B4 = 312;
        this.C4 = 313;
        this.D4 = 318;
        this.E4 = 323;
        this.F4 = 328;
        this.G4 = 333;
        this.H4 = 338;
        this.I4 = 343;
        this.J4 = 348;
        this.K4 = 353;
        this.L4 = 354;
        this.M4 = 356;
        this.N4 = 359;
        this.O4 = MediaProperties.HEIGHT_360;
        this.P4 = 361;
        this.Q4 = 363;
        this.R4 = 366;
        this.S4 = 367;
        this.T4 = 368;
        this.U4 = 370;
        this.V4 = 372;
        this.W4 = 373;
        this.X4 = 374;
        this.Y4 = 375;
        this.Z4 = 376;
        this.a5 = 377;
        this.b5 = 378;
        this.c5 = 379;
        this.d5 = 381;
        this.e5 = 4;
        this.f5 = 5;
        this.g5 = 6;
        this.h5 = 7;
        this.i5 = 384;
        this.j5 = 389;
        this.k5 = 390;
        this.l5 = 395;
        this.m5 = 400;
        this.n5 = UrlQuerySanitizer.IllegalCharacterValueSanitizer.URL_AND_SPACE_LEGAL;
        this.o5 = 410;
        this.p5 = 415;
        this.q5 = 420;
        this.r5 = 425;
        this.s5 = 430;
        this.t5 = 431;
        this.u5 = 432;
        this.v5 = 433;
        this.w5 = 434;
        this.x5 = 436;
        this.y5 = 439;
        this.z5 = 440;
        this.A5 = 441;
        this.B5 = 442;
        this.C5 = 443;
        this.D5 = 444;
        this.E5 = 446;
        this.F5 = 449;
        this.G5 = 450;
        this.H5 = 451;
        this.I5 = 453;
        this.J5 = 456;
        this.K5 = 8;
        this.L5 = 9;
        this.M5 = 457;
        this.N5 = 462;
        this.O5 = 467;
        this.P5 = 472;
        this.Q5 = 477;
        this.R5 = 482;
        this.S5 = 487;
        this.T5 = Downloads.Impl.STATUS_FILE_ERROR;
        this.U5 = Downloads.Impl.STATUS_TOO_MANY_REDIRECTS;
        this.V5 = Downloads.Impl.STATUS_BLOCKED;
        this.W5 = 500;
        this.X5 = 503;
        this.Y5 = 10;
        this.Z5 = 11;
        this.a6 = 504;
        this.b6 = 509;
        this.c6 = 514;
        this.d6 = 519;
        this.e6 = BluetoothClass.Device.PHONE_SMART;
        this.f6 = 529;
        this.g6 = 534;
        this.h6 = 539;
        this.i6 = 544;
        this.j6 = 545;
        this.k6 = 547;
        this.l6 = 550;
        this.m6 = 551;
        this.n6 = 552;
        this.o6 = 553;
        this.p6 = 554;
        this.q6 = 555;
        this.r6 = 48000;
        this.s6 = 0;
        this.t6 = 1;
        this.u6 = 0;
        this.v6 = 1;
        this.w6 = 2;
        this.x6 = 3;
        this.y6 = 4;
        this.z6 = 5;
        this.A6 = 6;
        this.B6 = 7;
        this.C6 = 8;
        this.D6 = 9;
        this.E6 = 10;
        this.F6 = 11;
        this.G6 = 12;
        this.H6 = 13;
        this.I6 = 14;
        this.J6 = 15;
        this.K6 = 16;
        this.L6 = 17;
        this.M6 = 18;
        this.N6 = 19;
        this.O6 = 20;
        this.P6 = 21;
        this.Q6 = -144.0d;
        this.R6 = 12.0d;
        this.S6 = -145.0d;
        this.T6 = 0;
        this.U6 = 1;
        this.V6 = -40.0d;
        this.W6 = 0.0d;
        this.X6 = new int[]{0, 15, 1, 135, 2, 3, 3, 144, 4, 39, 5, 144, 6, 39, 7, 147, 8, 19, 9, 20, 10, 9, 11, 144, 12, 39, 13, 16, 14, 39, 15, 16, 16, 39, 17, 16, 18, 4, 19, 8, 20, 0, 21, 50, 22, 48, 23, 51, 24, 51, 25, 51, 26, 2, 27, 4, 28, 0, 29, 50, 30, 51, 31, 0, 32, 0, 33, 51, 34, 0, 35, 0, 36, 31, 37, 0, 38, 0, 39, 21, 40, 15, 41, 19, 42, 20, 43, 1, 44, 26, 45, 32, 46, 33, 47, 20, 48, 30, 49, 17, 50, 18, 51, 0, 52, 0, 53, 0, 54, 0, 55, 2, 56, 20, 57, 7, 58, 9, 59, 0, 60, 0, 61, 0, 62, 0, 63, 0, 64, 0, 65, 15, 66, 0, 67, 0, 68, 0, 69, 0, 70, 0, 71, 0, 72, 0, 73, 33, 74, 50, 75, 184, 76, 0, 77, 0, 78, 0, 79, 50, 80, 162, 81, 34, 82, 0, 83, 0, 84, 0, 85, 48, 86, 0, 87, 34, 88, 63, 89, 0, 90, 0, 91, 0, 92, 0, 93, 0, 94, 0, 95, 48, 96, 48, 97, 48, 98, 48, 99, 48, 100, 0, 101, 0, 102, 1, 103, 0, 104, 24, 105, 24, 106, 24, 107, 24, 108, 0, 109, 0, 110, 0, 111, 0, 112, 0, 113, 0, 114, 0, 115, 0, 116, 0, 117, 0, 118, 0, 119, 0, 120, 0, 121, 0, 122, 0, 123, 0, 124, 0, 125, 0, 126, 0, 127, 4, 128, 2, 129, 0, 130, 0, 131, 62, 132, i.a.Theme_actionModeFindDrawable, 133, 31, 134, 0, 135, 0, 144, 0, 145, 0, 146, 0, 147, 0, 148, 0, 149, 0};
        this.Y6 = null;
        this.Z6 = null;
        this.a7 = new int[]{0, 2, 63, 0, 2, 63, 0, 4, 127, 0, 4, 127, 0, 6, 191, 0, 6, 191, 0, 8, 255, 0, 8, 255, 0, 11, 63, 0, 11, 63, 0, 13, 127, 0, 13, 127};
        this.b7 = new int[]{0, 1, i.a.Theme_actionModeWebSearchDrawable, 0, 1, i.a.Theme_actionModeWebSearchDrawable, 0, 1, i.a.Theme_actionModeWebSearchDrawable, 0, 1, i.a.Theme_actionModeWebSearchDrawable, 0, 1, i.a.Theme_actionModeWebSearchDrawable, 0, 1, i.a.Theme_actionModeWebSearchDrawable, 0, 1, i.a.Theme_actionModeWebSearchDrawable, 0, 3, 231, 0, 3, 231, 0, 3, 231, 0, 3, 231, 0, 3, 231, 0, 3, 231, 0, 3, 231};
        this.c7 = new int[]{20, 24, 29, 36, 45, 53, 65, 80, 100, 120, 140, 170, 210, 260, 320, 390, 470, 570, 700, 850, 1000, 1300, 1600, 1900, 2300, 2800, 3400, 4100, 5000, 6100, 7500, 9000, 11000, 14000, 17000, Window.PROGRESS_SECONDARY_START};
        this.d7 = 120;
        this.e7 = 70;
        this.f7 = new int[]{-1450, -600, -520, -460, -410, -370, -330, -300, -280, -270, -260, -250, -240, -230, -220, -210, AudioService.STREAM_REMOTE_MUSIC, -190, -180, -170, -160, -150, -140, -130, -120, -110, -100, -90, -80, -70, -60, -50, -40, -30, -20, -10, 0};
        this.g7 = new int[]{-1450, -480, -420, -370, -330, -300, -270, -250, -230, -220, -210, AudioService.STREAM_REMOTE_MUSIC, -190, -180, -170, -160, -150, -140, -130, -120, -110, -100, -90, -80, -70, -60, -50, -40, -30, -20, -10, 0, 10, 20, 30, 40, 50};
        this.h7 = new int[]{65, 75, 85, 95, 105, 115, 125, 135, 145, 155, 165, 175, 185, 195, 205, 215, 225, 235, 240, i.a.Theme_preferenceFragmentStyle, 250, 255, 260, 265, i.a.Theme_findOnPagePreviousDrawable, 275, BluetoothClass.Device.COMPUTER_WEARABLE, 285, 290, 295, 300, 305, 310, 315, 320, 325};
        this.i7 = 0;
        this.j7 = new int[]{0, 0, 0, 0, 0, 0, 0, 0, 0, -3, -6, -9, -12, -15, -18, -21, -145};
        this.k7 = new int[]{-145, -21, -18, -15, -12, -10, -8, -6, -4, -2, 0};
        this.l7 = new int[]{-10, -9, -8, -7, -6, -5, -4, -3, -2, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
        this.m7 = new int[]{20, 68, 86, 108, 134, 172, 214, 260};
        this.n7 = new double[]{0.0d, 2.0d, 4.0d, 5.5d, 6.5d, 7.5d, 8.0d, 8.5d, 9.0d, 9.5d, 10.0d};
        this.o7 = new int[]{100, 150, 200, 250, 300, MediaProperties.HEIGHT_360, 420, 500, CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR, MediaProperties.HEIGHT_720, 850, 1000, 1200, 1400, 1600, BluetoothClass.Device.WEARABLE_PAGER, 2100, 2500, ConnectivityManager.CONNECTIVITY_CHANGE_DELAY_DEFAULT, 3500, 4000};
        this.p7 = new int[]{-145, -80, -48, -32, -25, -21, -18, -16, -14, -12, -10, -9, -8, -7, -6, -5, -4, -3, -2, -1, 0};
        this.q7 = 1.0d;
        this.r7 = new int[]{20, 10, 32, 24, 10, 32, 29, 10, 32, 36, 10, 32, 44, 10, 32, 54, 10, 32, 66, 10, 32, 81, 10, 32, 100, 10, 32, 120, 10, 32, 140, 10, 32, 170, 10, 32, 210, 10, 32, 260, 10, 32, 320, 10, 32, 390, 10, 32, 470, 10, 32, 570, 10, 32, 700, 10, 32, 850, 10, 32, 1000, 10, 32, 1260, 10, 32, 1540, 10, 32, 1900, 10, 32, 2300, 10, 32, 2800, 10, 32, 3400, 10, 32, 4100, 10, 32, 5000, 10, 32, 6100, 10, 32, 7500, 10, 32, 9000, 10, 32, 11000, 10, 32, 14000, 10, 32, 17000, 10, 32, Window.PROGRESS_SECONDARY_START, 10, 32};
        int[] iArr = {20, 10, 32, 24, 10, 32, 29, 10, 32, 36, 10, 32, 44, 10, 32, 54, 10, 32, 66, 10, 32, 81, 10, 32, 100, 10, 32, 120, 10, 32, 140, 10, 32, 170, 10, 32, 210, 10, 32, 260, 10, 32, 320, 10, 32, 390, 10, 32, 470, 10, 32, 570, 10, 32, 700, 10, 32, 850, 10, 32, 1000, 10, 32, 1260, 10, 32, 1540, 10, 32, 1900, 10, 32, 2300, 10, 32, 2800, 10, 32, 3400, 10, 32, 4100, 10, 32, 5000, 10, 32, 6100, 10, 32, 7500, 10, 32, 9000, 10, 32, 11000, 10, 32, 14000, 10, 32, 17000, 10, 32, Window.PROGRESS_SECONDARY_START, 10, 32};
        this.s7 = iArr;
        int[] iArr2 = {20, 14, 32, 24, 14, 32, 29, 14, 32, 36, 14, 32, 44, 14, 32, 54, 14, 32, 66, 14, 32, 81, 13, 32, 100, 13, 32, 120, 12, 32, 140, 11, 32, 170, 11, 32, 210, 10, 32, 260, 9, 32, 320, 9, 32, 390, 8, 32, 470, 7, 32, 570, 7, 32, 700, 7, 32, 850, 7, 32, 1000, 7, 32, 1260, 8, 32, 1540, 9, 32, 1900, 11, 32, 2300, 9, 32, 2800, 11, 32, 3400, 12, 32, 4100, 12, 32, 5000, 13, 32, 6100, 13, 32, 7500, 14, 32, 9000, 14, 32, 11000, 14, 32, 14000, 14, 32, 17000, 14, 32, Window.PROGRESS_SECONDARY_START, 14, 32};
        this.t7 = iArr2;
        int[] iArr3 = {20, 6, 32, 24, 6, 32, 29, 6, 32, 36, 6, 32, 44, 6, 32, 54, 6, 32, 66, 6, 32, 81, 6, 32, 100, 7, 32, 120, 8, 32, 140, 9, 32, 170, 9, 32, 210, 10, 32, 260, 11, 32, 320, 11, 32, 390, 12, 32, 470, 12, 32, 570, 12, 32, 700, 12, 32, 850, 12, 32, 1000, 11, 32, 1260, 11, 32, 1540, 11, 32, 1900, 12, 32, 2300, 12, 32, 2800, 12, 32, 3400, 13, 32, 4100, 11, 32, 5000, 10, 32, 6100, 10, 32, 7500, 10, 32, 9000, 10, 32, 11000, 10, 32, 14000, 10, 32, 17000, 10, 32, Window.PROGRESS_SECONDARY_START, 10, 32};
        this.u7 = iArr3;
        int[] iArr4 = {20, 14, 32, 24, 14, 32, 29, 14, 32, 36, 14, 32, 44, 14, 32, 54, 14, 32, 66, 14, 32, 81, 14, 32, 100, 14, 32, 120, 13, 32, 140, 13, 32, 170, 12, 32, 210, 11, 32, 260, 11, 32, 320, 10, 32, 390, 9, 32, 470, 9, 32, 570, 11, 32, 700, 11, 32, 850, 11, 32, 1000, 11, 32, 1260, 10, 32, 1540, 9, 32, 1900, 9, 32, 2300, 9, 32, 2800, 8, 32, 3400, 7, 32, 4100, 7, 32, 5000, 7, 32, 6100, 7, 32, 7500, 7, 32, 9000, 6, 32, 11000, 6, 32, 14000, 6, 32, 17000, 6, 32, Window.PROGRESS_SECONDARY_START, 6, 32};
        this.v7 = iArr4;
        int[] iArr5 = {20, 11, 32, 24, 11, 32, 29, 11, 32, 36, 11, 32, 44, 12, 32, 54, 12, 32, 66, 12, 32, 81, 12, 32, 100, 13, 32, 120, 14, 32, 140, 14, 32, 170, 14, 32, 210, 14, 32, 260, 14, 32, 320, 14, 32, 390, 14, 32, 470, 14, 32, 570, 14, 32, 700, 14, 32, 850, 14, 32, 1000, 14, 32, 1260, 14, 32, 1540, 13, 32, 1900, 13, 32, 2300, 12, 32, 2800, 12, 32, 3400, 12, 32, 4100, 11, 32, 5000, 11, 32, 6100, 12, 32, 7500, 11, 32, 9000, 11, 32, 11000, 10, 32, 14000, 10, 32, 17000, 11, 32, Window.PROGRESS_SECONDARY_START, 11, 32};
        this.w7 = iArr5;
        int[] iArr6 = {20, 14, 32, 24, 14, 32, 29, 14, 32, 36, 14, 32, 44, 14, 32, 54, 14, 32, 66, 14, 32, 81, 14, 32, 100, 14, 32, 120, 14, 32, 140, 13, 32, 170, 13, 32, 210, 13, 32, 260, 13, 32, 320, 13, 32, 390, 13, 32, 470, 14, 32, 570, 14, 32, 700, 13, 32, 850, 13, 32, 1000, 13, 32, 1260, 12, 32, 1540, 11, 32, 1900, 11, 32, 2300, 11, 32, 2800, 11, 32, 3400, 11, 32, 4100, 11, 32, 5000, 10, 32, 6100, 10, 32, 7500, 10, 32, 9000, 9, 32, 11000, 9, 32, 14000, 9, 32, 17000, 9, 32, Window.PROGRESS_SECONDARY_START, 9, 32};
        this.x7 = iArr6;
        int[] iArr7 = {20, 13, 32, 24, 13, 32, 29, 13, 32, 36, 13, 32, 44, 12, 32, 54, 12, 32, 66, 11, 32, 81, 11, 32, 100, 10, 32, 120, 8, 32, 140, 7, 32, 170, 7, 32, 210, 6, 32, 260, 7, 32, 320, 8, 32, 390, 9, 32, 470, 10, 32, 570, 10, 32, 700, 10, 32, 850, 10, 32, 1000, 10, 32, 1260, 10, 32, 1540, 10, 32, 1900, 11, 32, 2300, 11, 32, 2800, 11, 32, 3400, 11, 32, 4100, 11, 32, 5000, 11, 32, 6100, 12, 32, 7500, 13, 32, 9000, 13, 32, 11000, 14, 32, 14000, 14, 32, 17000, 14, 32, Window.PROGRESS_SECONDARY_START, 14, 32};
        this.y7 = iArr7;
        int[] iArr8 = {20, 10, 32, 24, 10, 32, 29, 10, 32, 36, 10, 32, 44, 10, 32, 54, 10, 32, 66, 11, 32, 81, 12, 32, 100, 12, 32, 120, 12, 32, 140, 13, 32, 170, 13, 32, 210, 13, 32, 260, 13, 32, 320, 14, 32, 390, 14, 32, 470, 14, 32, 570, 14, 32, 700, 14, 32, 850, 14, 32, 1000, 14, 32, 1260, 14, 32, 1540, 14, 32, 1900, 14, 32, 2300, 14, 32, 2800, 14, 32, 3400, 14, 32, 4100, 14, 32, 5000, 14, 32, 6100, 14, 32, 7500, 13, 32, 9000, 13, 32, 11000, 13, 32, 14000, 13, 32, 17000, 13, 32, Window.PROGRESS_SECONDARY_START, 13, 32};
        this.z7 = iArr8;
        this.A7 = null;
        this.B7 = 32;
        this.C7 = 200;
        this.D7 = 250;
        this.E7 = 20;
        this.F7 = null;
        this.G7 = true;
        this.H7 = false;
        this.I7 = new int[]{8, 8, 8, 8, 8, 8};
        this.J7 = new int[]{-30, 2, 9};
        this.K7 = new int[4];
        this.L7 = new int[]{25, 12, 12, 0, 0, 0};
        this.M7 = new int[]{0, 0};
        this.N7 = new int[]{0, 0};
        this.O7 = new int[]{20, 20, 20, 10, 12};
        this.P7 = new int[]{50, 50};
        this.Q7 = 0;
        this.R7 = 1;
        this.S7 = 0;
        this.T7 = 9;
        this.U7 = 9;
        this.V7 = new int[]{-145, -49, -24, -14, -9, -8, -7, -6, -5, -4, -3};
        this.W7 = new int[]{-145, -61, -36, -26, -21, -20, -19, -18, -17, -16, -15};
        this.X7 = new int[]{5, 8, 11, 15, 20, 25, 30, 35, 40, 45, 50};
        this.Y7 = new int[]{0, 0, 5, 10, 15, 25, 35};
        this.Z7 = new int[]{10, 10, 10, 10, 10, 10, 10};
        this.a8 = new int[]{0, 0, 0, 0, 0, 0, 0};
        this.b8 = new int[]{0, 0, 0, 0, 0, 0, 0};
        this.c8 = new int[]{504, BluetoothClass.Device.PHONE_SMART, 390, 410, 313, 333, 457, 477};
        this.d8 = 0;
        this.e8 = 1;
        this.f8 = 2;
        this.g8 = 3;
        this.h8 = 1;
        this.i8 = new int[]{21, 6, 8, 12, 16, 20};
        this.j8 = new int[]{21, 5, 7, 11, 15, 19};
        this.k8 = new int[]{150, 0, 50, 0};
        this.l8 = new int[]{20, 0, 200, 0};
        this.m8 = new int[]{20, 0, 200, 0};
        this.n8 = new int[]{20, 0, 250, 0};
        this.o8 = new int[]{150, 0, 50, 0, 20, 0, 200, 0, 20, 0, 200, 0, 20, 0, 250, 0};
        this.p8 = true;
        this.q8 = 0;
        this.r8 = 1;
        this.s8 = 0;
        this.t8 = 1;
        this.u8 = 2;
        this.v8 = new int[]{40, 40, 40, 40, 40, 1, 1, 1, 40, 40, 40, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0};
        this.w8 = new int[]{40, 40};
        this.x8 = new int[]{40, 40, 40, 1, 1, 1};
        this.y8 = new int[]{40, 40, 40, 1, 1, 1};
        this.z8 = new int[]{1, 1, 1, 1, 0, 0, 0};
        this.A8 = new int[]{0, 1, 1, 1, 0, 0, 0};
        this.B8 = 0;
        this.C8 = 0;
        this.D8 = false;
        this.E8 = false;
        this.F8 = false;
        this.G8 = new a();
        this.H8 = new Handler();
        this.I8 = new b();
        this.J8 = true;
        this.K8 = true;
        this.L8 = new double[]{-145.0d, -60.0d, -50.0d, -46.0d, -43.0d, -40.0d, -37.0d, -34.0d, -31.0d, -28.0d, -25.0d};
        this.M8 = new int[]{443, 433, MediaProperties.HEIGHT_360, 353, 544, Downloads.Impl.STATUS_TOO_MANY_REDIRECTS};
        this.N8 = 0;
        this.O8 = 100;
        this.P8 = 50;
        this.Q8 = 0;
        this.R8 = 1;
        this.S8 = 2;
        this.T8 = 3;
        this.U8 = 4;
        this.V8 = 5;
        this.W8 = 6;
        this.X8 = 7;
        this.Y8 = 8;
        this.Z8 = 9;
        this.a9 = 10;
        this.b9 = 11;
        this.c9 = 12;
        this.d9 = 13;
        this.e9 = 14;
        this.f9 = 15;
        this.g9 = 16;
        this.h9 = 17;
        this.i9 = 18;
        this.j9 = 19;
        this.k9 = 20;
        this.l9 = new int[]{20, 24, 29, 36, 45, 53, 65, 80, 100, 120, 140, 170, 210, 260, 320, 390, 470, 570, 700, 850, 1000, 1300, 1600, 1900, 2300, 2800, 3400, 4100, 5000, 6100, 7500, 9000, 11000, 14000, 17000, Window.PROGRESS_SECONDARY_START};
        this.m9 = new l();
        this.n9 = 0;
        this.o9 = 1;
        this.p9 = 2;
        this.q9 = 0;
        this.r9 = 1;
        this.s9 = 2;
        this.t9 = 3;
        this.u9 = 4;
        this.v9 = 5;
        this.w9 = 6;
        this.x9 = 7;
        this.y9 = 0;
        this.z9 = 1;
        synchronized (this.f15047c0) {
            Z0(0, this.r7);
            Z0(1, iArr);
            Z0(2, iArr2);
            Z0(3, iArr3);
            Z0(4, iArr4);
            Z0(5, iArr5);
            Z0(6, iArr6);
            Z0(7, iArr7);
            Z0(8, iArr8);
            x(this.f7);
            this.F7 = (AudioManager) App.c().getSystemService(Context.AUDIO_SERVICE);
            this.A7 = nVar;
        }
    }

    @Override // module.sound.AudioDevice
    public void A1(int i2, boolean z2) {
        if (i2 < 0 || i2 >= AudioDevice.G0.length) {
            return;
        }
        B1(i2, z2);
        if (z2 || i2 != this.f15054g) {
            if (i2 != this.f15054g) {
                this.f15054g = i2;
            }
            if (this.f15052f) {
                t2();
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
            b2(i4, i3);
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
        D1(i5, this.m7[i3], i4);
        if (i3 == 0 || i4 == 0) {
            c2(1, i5 != 307 ? 389 : 312, 0);
        } else {
            if (i3 <= 0 || i4 <= 0) {
                return;
            }
            c2(1, i5 != 307 ? 389 : 312, 1);
        }
    }

    public void B2(int i2, int i3) {
        int i4 = i2;
        if (i4 > 100) {
            i4 = 50;
        }
        int i5 = i3 <= 100 ? i3 : 50;
        int[] iArr = this.P7;
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
        v2(true);
        j1(69632, i14);
        j1(73728, i15);
        j1(135168, i16);
        j1(139264, i17);
        v2(false);
        H0(AudioDevice.STORE.SURR_FIELD, this.P7);
        y0.h.s0(70, i4, i5);
    }

    @Override // module.sound.AudioDevice
    public void C0(int i2, int i3) {
        boolean z2;
        int i4;
        int i5;
        int iMax = Math.max(0, Math.min(i3, this.m7.length));
        int i6 = -1;
        if (i2 == 65536) {
            i6 = 384;
            int[] iArr = this.M7;
            z2 = iArr[0] != iMax;
            i5 = iArr[0];
            iArr[0] = iMax;
            i4 = iArr[1];
        } else if (i2 == 131072) {
            int[] iArr2 = this.N7;
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
            D1(i6, this.m7[iMax], i4);
            if ((i5 > 0 && iMax == 0) || i4 == 0) {
                c2(1, i6 != 307 ? 389 : 312, 0);
            } else if (i5 == 0 && iMax > 0) {
                c2(1, i6 != 307 ? 389 : 312, 1);
            }
            if (z2) {
                super.C0(i2, iMax);
                if (this.N8 != 0) {
                    if ((i2 != 65536 || this.M7[0] == 0) && (i2 != 131072 || this.N7[0] == 0)) {
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
            d2(i2 / 10.0f);
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
                            B2(iArr[0], iArr[1]);
                        }
                        break;
                    case 71:
                        if (s0.h(iArr, 0)) {
                            C2(iArr[0]);
                        }
                        break;
                    default:
                        switch (i2) {
                            case 83:
                                if (s0.h(iArr, 0)) {
                                    n2(iArr[0]);
                                }
                                break;
                            case 84:
                                if (s0.h(iArr, 1)) {
                                    o2(iArr[0], iArr[1]);
                                }
                                break;
                            case 85:
                                if (s0.h(iArr, 0)) {
                                    x2(iArr[0]);
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
            int[] iArr = this.M7;
            z2 = iArr[1] != iMax;
            i5 = iArr[0];
            int i7 = iArr[1];
            iArr[1] = iMax;
            i4 = i7;
        } else if (i2 == 131072) {
            int[] iArr2 = this.N7;
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
            D1(i6, this.m7[i5], iMax);
            if (z2) {
                if ((i4 > 0 && iMax == 0) || i5 == 0) {
                    c2(1, i6 != 307 ? 389 : 312, 0);
                } else if (i4 == 0 && iMax > 0) {
                    c2(1, i6 != 307 ? 389 : 312, 1);
                }
                super.D0(i2, iMax);
                if (this.N8 != 0) {
                    if ((i2 != 65536 || this.M7[1] == 0) && (i2 != 131072 || this.N7[1] == 0)) {
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
        if (i2 >= 0 || i2 < this.O7.length) {
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
                            int[] iArr3 = this.w8;
                            if (iArr3[0] != i4) {
                                iArr3[0] = i4;
                                y0.h.s0(68, i2, i4);
                                H0(AudioDevice.STORE.CSAUTO_SRS, this.w8);
                            }
                            double dQ2 = q2(i4);
                            f2(1, 128, 53, new int[]{cVar.a(dQ2)});
                            a.f.p().t(LogType.AUDIO, String.format(" MixCenter2Rear-> index: %4d， value: %4d，gain: %2.3f", Integer.valueOf(i2), Integer.valueOf(i4), Double.valueOf(dQ2)));
                            break;
                        case 1:
                            if (i4 > 100) {
                                i4 = 50;
                            }
                            int[] iArr4 = this.w8;
                            if (iArr4[1] != i4) {
                                iArr4[1] = i4;
                                y0.h.s0(68, i2, i4);
                                H0(AudioDevice.STORE.CSAUTO_SRS, this.w8);
                            }
                            double dQ3 = q2(i4);
                            f2(1, 128, 54, new int[]{cVar.a(dQ3)});
                            a.f.p().t(LogType.AUDIO, String.format(" MixFront2Rear-> index: %4d， value: %4d，gain: %2.3f", Integer.valueOf(i2), Integer.valueOf(i4), Double.valueOf(dQ3)));
                            break;
                        case 2:
                            if (i4 > 100) {
                                i4 = 50;
                            }
                            int[] iArr5 = this.x8;
                            if (iArr5[0] != i4) {
                                iArr5[0] = i4;
                                y0.h.s0(68, i2, i4);
                                H0(AudioDevice.STORE.CSAUTO_FOC, this.x8);
                            }
                            double dQ4 = q2(i4);
                            f2(1, 128, 69, new int[]{cVar.a(dQ4)});
                            a.f.p().t(LogType.AUDIO, String.format(" FocusCenterLevel-> index: %4d， value: %4d，gain: %2.3f", Integer.valueOf(i2), Integer.valueOf(i4), Double.valueOf(dQ4)));
                            break;
                        case 3:
                            if (i4 > 100) {
                                i4 = 50;
                            }
                            int[] iArr6 = this.x8;
                            if (iArr6[1] != i4) {
                                iArr6[1] = i4;
                                y0.h.s0(68, i2, i4);
                                H0(AudioDevice.STORE.CSAUTO_FOC, this.x8);
                            }
                            double dQ5 = q2(i4);
                            f2(1, 128, 87, new int[]{cVar.a(dQ5)});
                            a.f.p().t(LogType.AUDIO, String.format(" FocusFrontlevel-> index: %4d， value: %4d，gain: %2.3f", Integer.valueOf(i2), Integer.valueOf(i4), Double.valueOf(dQ5)));
                            break;
                        case 4:
                            if (i4 > 100) {
                                i4 = 50;
                            }
                            int[] iArr7 = this.x8;
                            if (iArr7[2] != i4) {
                                iArr7[2] = i4;
                                y0.h.s0(68, i2, i4);
                                H0(AudioDevice.STORE.CSAUTO_FOC, this.x8);
                            }
                            double dQ6 = q2(i4);
                            f2(1, 128, 103, new int[]{cVar.a(dQ6)});
                            a.f.p().t(LogType.AUDIO, String.format(" FocusRearlevel-> index: %4d， value: %4d，gain: %2.3f", Integer.valueOf(i2), Integer.valueOf(i4), Double.valueOf(dQ6)));
                            break;
                        case 8:
                            if (i4 > 100) {
                                i4 = 50;
                            }
                            int[] iArr8 = this.y8;
                            if (iArr8[0] != i4) {
                                iArr8[0] = i4;
                                y0.h.s0(68, i2, i4);
                                H0(AudioDevice.STORE.CSAUTO_TRUBASS, this.y8);
                            }
                            double dQ7 = q2(i4);
                            f2(1, 128, 180, new int[]{cVar.a(dQ7)});
                            a.f.p().t(LogType.AUDIO, String.format(" TruBassRearControl-> index: %4d， value: %4d，gain: %2.3f", Integer.valueOf(i2), Integer.valueOf(i4), Double.valueOf(dQ7)));
                            break;
                        case 9:
                            if (i4 > 100) {
                                i4 = 50;
                            }
                            int[] iArr9 = this.y8;
                            if (iArr9[1] != i4) {
                                iArr9[1] = i4;
                                y0.h.s0(68, i2, i4);
                                H0(AudioDevice.STORE.CSAUTO_TRUBASS, this.y8);
                            }
                            double dQ8 = q2(i4);
                            f2(1, 128, 181, new int[]{cVar.a(dQ8)});
                            a.f.p().t(LogType.AUDIO, String.format(" TruBassFrontControl-> index: %4d， value: %4d，gain: %2.3f", Integer.valueOf(i2), Integer.valueOf(i4), Double.valueOf(dQ8)));
                            break;
                        case 10:
                            if (i4 > 100) {
                                i4 = 50;
                            }
                            int[] iArr10 = this.y8;
                            if (iArr10[2] != i4) {
                                iArr10[2] = i4;
                                y0.h.s0(68, i2, i4);
                                H0(AudioDevice.STORE.CSAUTO_TRUBASS, this.y8);
                            }
                            double dQ9 = q2(i4);
                            f2(1, 128, 182, new int[]{cVar.a(dQ9)});
                            a.f.p().t(LogType.AUDIO, String.format(" TruBassSubwooferControl-> index: %4d， value: %4d，gain: %2.3f", Integer.valueOf(i2), Integer.valueOf(i4), Double.valueOf(dQ9)));
                            break;
                        case 14:
                            int[] iArr11 = this.z8;
                            if (iArr11[0] != i4) {
                                iArr11[0] = i4;
                                y0.h.s0(68, i2, i4);
                                AudioDevice.STORE store = AudioDevice.STORE.CSAUTO_OTHERS;
                                H0(store, this.z8);
                                this.f15080t.e(store.ordinal());
                            }
                            l2(this.f15074q);
                            j2(i4);
                            break;
                        case 15:
                            int[] iArr12 = this.z8;
                            if (iArr12[1] != i4) {
                                iArr12[1] = i4;
                                y0.h.s0(68, i2, i4);
                                AudioDevice.STORE store2 = AudioDevice.STORE.CSAUTO_OTHERS;
                                H0(store2, this.z8);
                                this.f15080t.e(store2.ordinal());
                            }
                            v2(true);
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
                            v2(false);
                            break;
                        case 17:
                            int[] iArr13 = this.z8;
                            if (iArr13[3] != i4) {
                                iArr13[3] = i4;
                                y0.h.s0(68, i2, i4);
                                H0(AudioDevice.STORE.CSAUTO_OTHERS, this.z8);
                            }
                            v2(true);
                            if (i4 == 0) {
                                f2(1, 128, 72, new int[]{cVar.c(0)});
                                a.f.p().t(LogType.AUDIO, String.format(" Phantom OFF  模式---", new Object[0]));
                            } else {
                                f2(1, 128, 72, new int[]{cVar.c(1)});
                                a.f.p().t(LogType.AUDIO, String.format(" Phantom ON  模式---", new Object[0]));
                            }
                            v2(false);
                            break;
                        case 18:
                            if (i4 >= 0 && i4 <= 7) {
                                int[] iArr14 = this.z8;
                                if (iArr14[4] != i4) {
                                    iArr14[4] = i4;
                                    y0.h.s0(68, i2, i4);
                                    H0(AudioDevice.STORE.CSAUTO_OTHERS, this.z8);
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
                                int[] iArr15 = this.z8;
                                if (iArr15[5] != i4) {
                                    iArr15[5] = i4;
                                    y0.h.s0(68, i2, i4);
                                    H0(AudioDevice.STORE.CSAUTO_OTHERS, this.z8);
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
                                int[] iArr16 = this.z8;
                                if (iArr16[6] != i4) {
                                    iArr16[6] = i4;
                                    y0.h.s0(68, i2, i4);
                                    H0(AudioDevice.STORE.CSAUTO_OTHERS, this.z8);
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

    @Override // module.sound.AudioDevice
    public void F() {
        CHANNEL channel = CHANNEL.IN1;
        L0(0, channel.f15766a);
        L0(1, CHANNEL.IN2.f15766a);
        CHANNEL channel2 = CHANNEL.IN4;
        L0(2, channel2.f15766a);
        L0(3, channel2.f15766a);
        CHANNEL channel3 = CHANNEL.IN3;
        L0(4, channel3.f15766a);
        CHANNEL channel4 = CHANNEL.IN5;
        L0(5, channel4.f15766a);
        L0(6, channel4.f15766a);
        L0(7, channel.f15766a);
        L0(8, channel.f15766a);
        L0(9, channel.f15766a);
        L0(10, channel.f15766a);
        L0(11, channel3.f15766a);
        L0(12, channel3.f15766a);
        L0(13, channel3.f15766a);
        L0(14, channel.f15766a);
        L0(15, channel.f15766a);
        L0(16, channel.f15766a);
    }

    public void F1(int i2) {
        int i3;
        j jVar = new j();
        synchronized (this) {
            if (i2 == CHANNEL.IN4.f15766a) {
                f2(0, 128, 0, new int[]{jVar.a(1)});
            } else {
                f2(0, 128, 0, new int[]{jVar.a(0)});
            }
        }
        byte bU1 = (byte) (((byte) U1(102)) & 252);
        if (i2 == CHANNEL.IN1.f15766a) {
            i3 = bU1 | 3;
        } else if (i2 == CHANNEL.IN2.f15766a) {
            i3 = bU1 | 1;
        } else if (i2 == CHANNEL.IN3.f15766a) {
            i3 = bU1 | 2;
        } else {
            int i4 = CHANNEL.IN5.f15766a;
            i3 = bU1 | 3;
        }
        h2(102, (byte) i3);
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
            C2(0);
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
            int[] iArr = this.O7;
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
            H0(store, this.O7);
            this.H7 = false;
            v2(true);
            if (!this.H7) {
                int[] iArr2 = this.p7;
                int[] iArr3 = this.O7;
                Z1(0, 0.0d, iArr2[iArr3[0]], iArr2[iArr3[1]], iArr2[iArr3[2]], iArr3[3] / 10.0f, this.o7[iArr3[4]]);
            }
            int i4 = !this.H7 ? 1 : 0;
            int[] iArr4 = this.p7;
            int[] iArr5 = this.O7;
            Z1(i4, 0.0d, iArr4[iArr5[i3]], iArr4[iArr5[1]], iArr4[iArr5[2]], iArr5[3] / 10.0f, this.o7[iArr5[4]]);
            v2(i3);
            boolean z2 = this.H7;
            G0(AudioDevice.STORE.SURRON, z2 ? 1 : 0);
            y0.h.s0(32, z2 ? 1 : 0);
            return;
        }
        if (i2 == 11) {
            n2(1);
            while (true) {
                int[] iArr6 = this.o8;
                if (i3 >= iArr6.length) {
                    return;
                }
                o2(i3, iArr6[i3]);
                i3++;
            }
        } else if (i2 == 8) {
            this.f15080t.v(AudioDevice.STORE.CSAUTO_SRS.ordinal());
            this.f15080t.v(AudioDevice.STORE.CSAUTO_FOC.ordinal());
            this.f15080t.v(AudioDevice.STORE.CSAUTO_TRUBASS.ordinal());
            this.f15080t.v(AudioDevice.STORE.CSAUTO_OTHERS.ordinal());
            u2(true);
            int i5 = 0;
            while (true) {
                int[] iArr7 = this.v8;
                if (i5 >= iArr7.length) {
                    u2(false);
                    return;
                }
                if (i5 == 14) {
                    E1(i5, SystemProperties.getBoolean("sys.lsec.dts_default_close", false) ? 0 : this.v8[i5]);
                } else {
                    E1(i5, iArr7[i5]);
                }
                i5++;
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
                int[] iArr8 = this.Z7;
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
                int[] iArr9 = this.a8;
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
                int[] iArr10 = this.b8;
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
        int i3 = u0.b.D;
        if (j0(i3) == 1) {
            O1(1, this.n7[i2] - 10.0d);
            return;
        }
        if (i3 == 1) {
            O1(0, this.n7[i2] - 4.5d);
        } else if (i3 == 2 || i3 == 3) {
            O1(1, this.n7[i2] - 6.0d);
        } else {
            O1(0, this.n7[i2] - 9.0d);
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
            double dP2 = (this.z8[0] == 1 ? p2(d3) : d3) * 1.5d;
            int i5 = dP2 == 0.0d ? 21 : 2;
            if (i3 == 1) {
                f2(0, 137, this.h7[i2], fVar.a(1, i5, i4, d2, dP2, 1));
            } else {
                f2(0, 132, this.h7[i2], fVar.a(0, i5, i4, d2, dP2, 1));
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
        if (i6 < this.l7.length) {
            k2(i2, iArr[i4], iArr[i5], i6);
        }
        super.L(i2, i3);
    }

    public void L1() {
        this.Y6 = s0.A(App.c(), R.raw.akm7738_pram_table1_7870nort, 16);
        this.Z6 = s0.A(App.c(), R.raw.akm7738_cram_table1_7870nort, 16);
        this.A7.d(C9, new int[]{184, 0, 0}, this.Y6);
        this.A7.d(C9, new int[]{180, 0, 0}, this.Z6);
        this.A7.d(C9, new int[]{178, 0, 0}, this.b7);
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
        k2(i2, iArr[i4], iArr[i4 + 2], iArr[i5]);
        super.M(i2, i3);
    }

    public void M1() {
        this.Y6 = s0.A(App.c(), R.raw.akm7738_pram_table2_7870nor, 16);
        this.Z6 = s0.A(App.c(), R.raw.akm7738_cram_table2_7870nor, 16);
        this.A7.d(C9, new int[]{185, 0, 0}, this.Y6);
        this.A7.d(C9, new int[]{181, 0, 0}, this.Z6);
        this.A7.d(C9, new int[]{179, 0, 0}, this.a7);
    }

    @Override // module.sound.AudioDevice
    public void N0() {
        e eVar = new e();
        this.f15045b0 = Math.max(0, Math.min(this.f15045b0, 10));
        Log.e("alex", "beepVolume: " + this.f15045b0);
        synchronized (this) {
            f2(1, 128, 378, new int[]{eVar.a(this.L8[this.f15045b0])});
        }
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0043  */
    public void N1() {
        int i2 = 0;
        while (true) {
            int[] iArr = this.X6;
            if (i2 >= iArr.length) {
                return;
            }
            int i3 = iArr[i2];
            int i4 = 48;
            if (i3 == 1) {
                i4 = iArr[i2 + 1] & (-129);
            } else if (i3 != 30) {
                if (i3 != 46) {
                    if (i3 != 58) {
                        if (i3 != 75) {
                            i4 = i3 != 133 ? iArr[i2 + 1] : iArr[i2 + 1] & (-32);
                        } else if (this.J8) {
                            i4 = 184;
                        }
                    } else if (this.J8) {
                        i4 = 9;
                    } else {
                        i4 = 0;
                    }
                } else if (this.J8) {
                    i4 = 33;
                } else {
                    i4 = 0;
                }
            } else if (this.J8) {
                i4 = 51;
            }
            h2(iArr[i2], i4);
            i2 += 2;
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
        if (i6 < this.l7.length) {
            k2(i2, iArr[i4], iArr[i5], i6);
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
                    f2(0, 128, 340, new int[]{eVar.a(d2)});
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
            try {
                if (d2 <= -145.0d) {
                    f2(1, 128, 442, new int[]{gVar.a(-145.0d, 0)});
                    f2(1, 128, 432, new int[]{gVar.a(-145.0d, 0)});
                    f2(0, 128, 352, new int[]{gVar.a(-145.0d, 0)});
                    f2(0, 128, 354, new int[]{gVar.a(-145.0d, 0)});
                    if (this.J8) {
                        f2(0, 128, 337, new int[]{gVar.a(-145.0d, 0)});
                        f2(0, 128, 339, new int[]{gVar.a(-145.0d, 0)});
                    }
                } else {
                    if (this.J8) {
                        if (y0.f.Q0 == 0 || j0(u0.b.D) == 0) {
                            f2(0, 128, 337, new int[]{gVar.a(0.0d, 0)});
                            f2(0, 128, 339, new int[]{gVar.a(0.0d, 0)});
                        } else {
                            f2(0, 128, 337, new int[]{gVar.a(-145.0d, 0)});
                            f2(0, 128, 339, new int[]{gVar.a(-145.0d, 0)});
                        }
                    }
                    f2(1, 128, 442, new int[]{gVar.a(0.0d, 0)});
                    f2(1, 128, 432, new int[]{gVar.a(0.0d, 0)});
                    f2(0, 128, 352, new int[]{gVar.a(0.0d, 0)});
                    f2(0, 128, 354, new int[]{gVar.a(0.0d, 0)});
                }
                f2(0, 128, 346, new int[]{eVar.a(d2)});
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // module.sound.AudioDevice
    public void R0(boolean z2) {
        super.R0(z2);
        if (z2) {
            u0.b.V3 = z2;
        }
        if (z2 || !this.D8) {
            return;
        }
        this.D8 = false;
        synchronized (this) {
            h2(110, 0);
            R1(0, this.j7[this.I7[0]]);
            R1(1, this.j7[this.I7[1]]);
            R1(2, this.j7[this.I7[2]]);
            R1(3, this.j7[this.I7[3]]);
            o(y0.f.V0);
        }
        y0.h.X(16, false);
        this.S7 = 0;
    }

    public void R1(int i2, int i3) {
        e eVar = new e();
        if (i2 >= 0 && i2 <= 3) {
            synchronized (this) {
                f2(1, 128, this.M8[i2], new int[]{eVar.a(i3)});
            }
        } else if (i2 == 5) {
            synchronized (this) {
                f2(1, 128, Downloads.Impl.STATUS_TOO_MANY_REDIRECTS, new int[]{eVar.a(this.k7[i3])});
            }
        }
    }

    public int[] S1(int i2, int i3, int i4) {
        int[] iArr = new int[i4];
        return this.A7.e(i4, C9, false, i2, s0.c(i3, 1), s0.c(i3, 0));
    }

    public int[] T1(int i2, int i3, int i4, int i5) {
        int i6 = i5 * 3;
        int[] iArrE = new int[i6];
        int[] iArr = new int[i5];
        if (i2 != 0) {
            iArrE = this.A7.e(i6, C9, false, i3, s0.c(i4, 1), s0.c(i4, 0));
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
            r1(bVar, i2, 69632, this.I7[0]);
            r1(bVar, i2, 73728, this.I7[1]);
            r1(bVar, i2, 135168, this.I7[2]);
            r1(bVar, i2, 139264, this.I7[3]);
            r1(bVar, i2, 65536, this.I7[4]);
        } else if (i2 == 26) {
            r1(bVar, i2, this.f15092z);
        } else if (i2 == 27) {
            r1(bVar, i2, 0, this.D7);
            r1(bVar, i2, 256, this.E7);
        } else if (i2 == 55) {
            r1(bVar, i2, this.G7 ? 1 : 0);
        } else if (i2 != 56) {
            switch (i2) {
                case 29:
                    r1(bVar, i2, 65536, this.M7[1]);
                    r1(bVar, i2, 131072, this.N7[1]);
                    break;
                case 30:
                    r1(bVar, i2, 65536, this.M7[0]);
                    r1(bVar, i2, 131072, this.N7[0]);
                    break;
                case 31:
                    r1(bVar, i2, 65552, this.K7[0]);
                    r1(bVar, i2, 65568, this.K7[1]);
                    r1(bVar, i2, WifiStateMachine.CMD_STATIC_IP_FAILURE, this.K7[2]);
                    r1(bVar, i2, 131104, this.K7[3]);
                    break;
                case 32:
                    r1(bVar, i2, this.H7 ? 1 : 0);
                    break;
                case 33:
                    r1(bVar, i2, this.N8);
                    break;
                case 34:
                    r1(bVar, i2, 69632, this.L7[0]);
                    r1(bVar, i2, 73728, this.L7[1]);
                    r1(bVar, i2, 135168, this.L7[2]);
                    r1(bVar, i2, 139264, this.L7[3]);
                    r1(bVar, i2, 65536, this.L7[4]);
                    r1(bVar, i2, 131072, this.L7[5]);
                    break;
                default:
                    switch (i2) {
                        case 61:
                            r1(bVar, i2, this.B7);
                            break;
                        case 62:
                            r1(bVar, i2, this.J7);
                            break;
                        case 63:
                            int[] iArr4 = this.O7;
                            if (iArr4 != null && iArr4.length > 0) {
                                int i6 = 0;
                                while (true) {
                                    int[] iArr5 = this.O7;
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
                                    int[] iArr7 = this.w8;
                                    System.arraycopy(iArr7, 0, iArr6, 0, iArr7.length);
                                    int[] iArr8 = this.x8;
                                    System.arraycopy(iArr8, 0, iArr6, 2, iArr8.length);
                                    int[] iArr9 = this.y8;
                                    System.arraycopy(iArr9, 0, iArr6, 8, iArr9.length);
                                    int[] iArr10 = this.z8;
                                    System.arraycopy(iArr10, 0, iArr6, 14, iArr10.length);
                                    for (int i7 = 0; i7 < 21; i7++) {
                                        r1(bVar, i2, i7, iArr6[i7]);
                                    }
                                    break;
                                case 69:
                                    int i8 = 0;
                                    int i9 = 0;
                                    while (true) {
                                        int[] iArr11 = this.Z7;
                                        if (i8 >= iArr11.length) {
                                            int i10 = 0;
                                            while (true) {
                                                int[] iArr12 = this.a8;
                                                if (i10 >= iArr12.length) {
                                                    int i11 = 0;
                                                    while (true) {
                                                        int[] iArr13 = this.b8;
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
                                    int[] iArr14 = this.P7;
                                    r1(bVar, i2, iArr14[0], iArr14[1]);
                                    break;
                                default:
                                    switch (i2) {
                                        case 83:
                                            r1(bVar, i2, this.h8);
                                            break;
                                        case 84:
                                            int i12 = 0;
                                            while (true) {
                                                int[] iArr15 = this.k8;
                                                if (i12 >= iArr15.length) {
                                                    int i13 = 0;
                                                    while (true) {
                                                        int[] iArr16 = this.k8;
                                                        if (i13 >= iArr16.length) {
                                                            int i14 = 0;
                                                            while (true) {
                                                                int[] iArr17 = this.k8;
                                                                if (i14 >= iArr17.length) {
                                                                    int i15 = 0;
                                                                    while (true) {
                                                                        int[] iArr18 = this.k8;
                                                                        if (i15 < iArr18.length) {
                                                                            r1(bVar, i2, (iArr18.length * 3) + i15, this.n8[i15]);
                                                                            i15++;
                                                                        }
                                                                    }
                                                                } else {
                                                                    r1(bVar, i2, (iArr17.length * 2) + i14, this.m8[i14]);
                                                                    i14++;
                                                                }
                                                            }
                                                        } else {
                                                            r1(bVar, i2, iArr16.length + i13, this.l8[i13]);
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
                                            r1(bVar, i2, this.K8 ? 1 : 0);
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
            r1(bVar, i2, 0, this.B8);
            r1(bVar, i2, 16, this.C8);
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
        this.E8 = false;
        this.F8 = true;
        ToolsJni.cmd_251_Normal_Io_Set(0, 0);
        a.i.a0(140L);
        ToolsJni.cmd_251_Normal_Io_Set(0, 1);
        a.i.a0(20L);
        K1();
        this.E8 = true;
        w0(this.f15062k);
        l2(this.f15074q);
        l(this.f15052f ? 1 : 0);
        j(null);
        a(u0.b.D);
        A1(y0.f.C0, true);
        a1(65536, this.I7[4]);
        o(this.f15092z);
        e1(256, this.E7);
        e1(0, this.D7);
        A2(69632, this.L7[0]);
        A2(73728, this.L7[1]);
        A2(135168, this.L7[2]);
        A2(139264, this.L7[3]);
        int[] iArr = this.M7;
        B0(65536, iArr[0], iArr[1]);
        int[] iArr2 = this.N7;
        B0(131072, iArr2[0], iArr2[1]);
        int i2 = !this.H7 ? 1 : 0;
        int[] iArr3 = this.p7;
        int[] iArr4 = this.O7;
        Z1(i2, 0.0d, iArr3[iArr4[0]], iArr3[iArr4[1]], iArr3[iArr4[2]], iArr4[3] / 10.0f, this.o7[iArr4[4]]);
        n2(1);
        int i3 = 0;
        while (true) {
            int[] iArr5 = this.k8;
            if (i3 >= iArr5.length) {
                break;
            }
            o2(i3, iArr5[i3]);
            i3++;
        }
        int i4 = 0;
        while (true) {
            int[] iArr6 = this.k8;
            if (i4 >= iArr6.length) {
                break;
            }
            o2(iArr6.length + i4, this.l8[i4]);
            i4++;
        }
        int i5 = 0;
        while (true) {
            int[] iArr7 = this.k8;
            if (i5 >= iArr7.length) {
                break;
            }
            o2((iArr7.length * 2) + i5, this.m8[i5]);
            i5++;
        }
        int i6 = 0;
        while (true) {
            int[] iArr8 = this.k8;
            if (i6 >= iArr8.length) {
                break;
            }
            o2((iArr8.length * 3) + i6, this.n8[i6]);
            i6++;
        }
        k1(this.N8);
        E1(0, this.w8[0]);
        E1(1, this.w8[1]);
        E1(2, this.x8[0]);
        E1(5, 1);
        E1(3, this.x8[1]);
        E1(6, 1);
        E1(4, this.x8[2]);
        E1(7, 1);
        E1(18, this.z8[4]);
        E1(19, this.z8[5]);
        E1(20, this.z8[6]);
        E1(8, this.y8[0]);
        E1(9, this.y8[1]);
        E1(10, this.y8[2]);
        E1(11, 1);
        E1(12, 1);
        E1(13, 1);
        E1(17, this.z8[3]);
        E1(16, this.z8[2]);
        E1(14, this.z8[0]);
        E1(15, this.z8[1]);
        w2();
        e eVar = new e();
        new j();
        synchronized (this) {
            f2(1, 128, 443, new int[]{eVar.a(0.0d)});
            f2(1, 128, 433, new int[]{eVar.a(0.0d)});
            f2(1, 128, MediaProperties.HEIGHT_360, new int[]{eVar.a(0.0d)});
            f2(1, 128, 353, new int[]{eVar.a(0.0d)});
            f2(1, 128, 544, new int[]{eVar.a(0.0d)});
            f2(1, 128, Downloads.Impl.STATUS_TOO_MANY_REDIRECTS, new int[]{eVar.a(0.0d)});
        }
        r2();
        N0();
        this.F8 = false;
        g gVar = new g();
        synchronized (this) {
            f2(0, 128, 353, new int[]{gVar.a(0.0d, 0)});
            f2(0, 128, 355, new int[]{gVar.a(0.0d, 0)});
            f2(0, 128, 330, new int[]{eVar.a(0.0d)});
            if (this.J8) {
                f2(0, 128, 336, new int[]{gVar.a(0.0d, 0)});
                f2(0, 128, 338, new int[]{gVar.a(0.0d, 0)});
                f2(0, 128, 337, new int[]{gVar.a(-145.0d, 0)});
                f2(0, 128, 339, new int[]{gVar.a(-145.0d, 0)});
            } else {
                f2(0, 128, 336, new int[]{gVar.a(-145.0d, 0)});
                f2(0, 128, 338, new int[]{gVar.a(-145.0d, 0)});
                f2(0, 128, 337, new int[]{gVar.a(0.0d, 0)});
                f2(0, 128, 339, new int[]{gVar.a(0.0d, 0)});
            }
        }
        Log.e("alex", "tdmPlayConfig:" + this.J8);
        if (SystemClock.elapsedRealtime() > 300000) {
            AudioSystem.setParameters("accState=0");
            s0.C(100L);
            AudioSystem.setParameters("accState=1");
        }
    }

    public void W1(int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        new j();
        k kVar = new k();
        int[] iArr = this.Z7;
        int length = i2 % iArr.length;
        if (i2 < iArr.length) {
            if (iArr[length] != i3) {
                int iMax = Math.max(0, Math.min(i3, 10));
                this.Z7[length] = iMax;
                y0.h.s0(69, i2, iMax);
                H0(AudioDevice.STORE.DLY_MIXER_LVL, this.Z7);
            }
        } else if (i2 < iArr.length * 2) {
            int[] iArr2 = this.a8;
            if (iArr2[length] != i3) {
                iArr2[length] = i3;
                y0.h.s0(69, i2, i3);
                H0(AudioDevice.STORE.DLY_MIXER_PHASE, this.a8);
            }
        } else if (i2 < iArr.length * 3) {
            int[] iArr3 = this.b8;
            if (iArr3[length] != i3) {
                iArr3[length] = i3;
                y0.h.s0(69, i2, i3);
                H0(AudioDevice.STORE.DLY_MIXER_TAP, this.b8);
            }
        }
        synchronized (this) {
            int[] iArr4 = this.Z7;
            if (i2 < iArr4.length * 2) {
                if (length == 0) {
                    i9 = this.V7[iArr4[length]];
                    i8 = 58;
                    i7 = 52;
                } else {
                    i7 = (length + 52) - 1;
                    i8 = (length + 58) - 1;
                    i9 = this.W7[iArr4[length]];
                }
                if (i2 == iArr4.length) {
                    v2(true);
                }
                double d2 = i9;
                f2(0, 128, i7, new int[]{kVar.a(d2, this.a8[length])});
                f2(0, 128, i8, new int[]{kVar.a(d2, this.a8[length])});
                if (i2 == this.Z7.length) {
                    v2(false);
                }
            } else if (i2 < iArr4.length * 3) {
                if (length == 0) {
                    i5 = 8;
                    i6 = this.X7[this.b8[0]];
                    i4 = 1;
                } else {
                    i4 = (length + 1) - 1;
                    i5 = (length + 8) - 1;
                    i6 = this.b8[length] + this.Y7[length];
                }
                g2(0, 144, i4, new int[]{499 - i6});
                g2(0, 144, i5, new int[]{999 - i6});
            }
        }
    }

    public void X1(int i2, int i3, int i4, int i5, int i6) {
        new j();
        k kVar = new k();
        if (i2 >= this.Z7.length) {
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

    public int Y1(int i2) {
        h hVar = new h();
        synchronized (this) {
            f2(0, 128, 556, new int[]{((i2 + 547) << 8) & 16776960});
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
            i5 = CHANNEL.IN1.f15766a;
        }
        boolean z6 = i5 == CHANNEL.IN1.f15766a || i5 == CHANNEL.IN4.f15766a;
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
                    d0.e(AudioManager.class.getName(), this.F7, "setVoiceSwitch2iis", new Class[]{cls}, Boolean.valueOf(z5));
                    d0.e(AudioManager.class.getName(), this.F7, "setAudioSwitch2iis", new Class[]{cls}, Boolean.valueOf(z5));
                } else {
                    String name2 = AudioManager.class.getName();
                    AudioManager audioManager = this.F7;
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
                d0.e(AudioManager.class.getName(), this.F7, "setVoiceSwitch2iis", new Class[]{cls}, Boolean.valueOf(z5));
                d0.e(AudioManager.class.getName(), this.F7, "setAudioSwitch2iis", new Class[]{cls}, Boolean.valueOf(z5));
            } else {
                String name3 = AudioManager.class.getName();
                AudioManager audioManager2 = this.F7;
                Class cls3 = Integer.TYPE;
                d0.e(name3, audioManager2, "setWiredDeviceConnectionState", new Class[]{cls3, cls3, String.class, String.class}, 8, Integer.valueOf(!z5), ProxyProperties.LOCAL_EXCL_LIST, ProxyProperties.LOCAL_EXCL_LIST);
            }
            z8 = z4;
        }
        J1(z8);
        F1(i5);
        j2(i3 != 2 ? this.z8[0] : 0);
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
        if (m2(i4, i5)) {
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
        if (this.G7 != z2) {
            return;
        }
        boolean z3 = !z2;
        this.G7 = z3;
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
                if (this.D8) {
                    this.D8 = false;
                    synchronized (this) {
                        h2(110, 0);
                        R1(0, this.j7[this.I7[0]]);
                        R1(1, this.j7[this.I7[1]]);
                        R1(2, this.j7[this.I7[2]]);
                        R1(3, this.j7[this.I7[3]]);
                        o(y0.f.V0);
                    }
                    y0.h.X(16, false);
                }
                this.S7 = 0;
            } else {
                int i4 = this.S7;
                if (i4 < 7) {
                    this.S7 = i4 + 1;
                }
                if (this.S7 == 6) {
                    this.D8 = true;
                    synchronized (this) {
                        int[] iArr2 = this.j7;
                        R1(0, iArr2[iArr2.length - 1]);
                        int[] iArr3 = this.j7;
                        R1(1, iArr3[iArr3.length - 1]);
                        int[] iArr4 = this.j7;
                        R1(2, iArr4[iArr4.length - 1]);
                        int[] iArr5 = this.j7;
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
        v2(true);
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
        v2(false);
    }

    public void d2(double d2) {
        e eVar = new e();
        synchronized (this) {
            f2(0, 128, 8, new int[]{eVar.a(d2)});
        }
    }

    public int e2(int i2, int i3, int[] iArr) {
        return this.A7.d(C9, new int[]{i2, s0.c(i3, 1), s0.c(i3, 0)}, iArr);
    }

    @Override // module.sound.AudioDevice
    public void f1(boolean z2) {
        super.f1(z2);
    }

    public synchronized int f2(int i2, int i3, int i4, int[] iArr) {
        if (!this.E8) {
            return 0;
        }
        int[] iArr2 = new int[iArr.length * 3];
        for (int i5 = 0; i5 < iArr.length; i5++) {
            int i6 = i5 * 3;
            iArr2[i6 + 0] = (iArr[i5] >> 16) & 255;
            iArr2[i6 + 1] = (iArr[i5] >> 8) & 255;
            iArr2[i6 + 2] = iArr[i5] & 255;
        }
        this.A7.d(C9, new int[]{i3, (i4 >> 8) & 255, i4 & 255}, iArr2);
        return i2 == 0 ? this.A7.d(C9, new int[]{164}, 0, 0) : this.A7.d(C9, new int[]{165}, 0, 0);
    }

    public synchronized int g2(int i2, int i3, int i4, int[] iArr) {
        if (!this.E8) {
            return 0;
        }
        int[] iArr2 = new int[iArr.length * 3];
        for (int i5 = 0; i5 < iArr.length; i5++) {
            int i6 = i5 * 3;
            iArr2[i6 + 0] = (iArr[i5] >> 16) & 255;
            iArr2[i6 + 1] = (iArr[i5] >> 8) & 255;
            iArr2[i6 + 2] = iArr[i5] & 255;
        }
        this.A7.d(C9, new int[]{i3, (i4 >> 8) & 255, i4 & 255}, iArr2);
        return i2 == 0 ? this.A7.d(C9, new int[]{162}, 0, 0) : this.A7.d(C9, new int[]{163}, 0, 0);
    }

    public int h2(int i2, int i3) {
        return e2(192, i2, new int[]{i3});
    }

    @Override // module.sound.AudioDevice
    public void i1(int i2, int i3) {
    }

    public boolean i2(int[] iArr, int i2) {
        int[] iArrS2;
        return i2 == 0 || (iArrS2 = s2(i2)) == null || !Arrays.equals(iArr, iArrS2);
    }

    @Override // module.sound.AudioDevice, y0.e
    public void j(int[] iArr) {
        if (iArr != null) {
            Log.e("ak7738", "  field2Ic: " + b0.e(iArr, 0, iArr.length));
        }
        if (iArr != null) {
            Log.e("ak7738", " field2Ic1------ loaded: " + this.f15050e + "  speakerLinkage: " + this.G7);
        }
        if (!this.f15050e || this.D8) {
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
            i3 = CHANNEL.IN1.f15766a;
        }
        return i3 == CHANNEL.IN1.f15766a ? 1 : 0;
    }

    @Override // module.sound.AudioDevice
    public void j1(int i2, int i3) {
        boolean z2 = false;
        if (i3 > 100 || i3 < 0) {
            i3 = 0;
        }
        switch (i2) {
            case 65536:
                int[] iArr = this.L7;
                z2 = i3 != iArr[4];
                iArr[4] = i3;
                break;
            case 69632:
                int[] iArr2 = this.L7;
                boolean z3 = i3 != iArr2[0];
                iArr2[0] = i3;
                z2 = z3;
                break;
            case 73728:
                int[] iArr3 = this.L7;
                z2 = i3 != iArr3[1];
                iArr3[1] = i3;
                break;
            case 131072:
                int[] iArr4 = this.L7;
                z2 = i3 != iArr4[5];
                iArr4[5] = i3;
                break;
            case 135168:
                int[] iArr5 = this.L7;
                z2 = i3 != iArr5[2];
                iArr5[2] = i3;
                break;
            case 139264:
                int[] iArr6 = this.L7;
                z2 = i3 != iArr6[3];
                iArr6[3] = i3;
                break;
            case 1073741824:
                int[] iArr7 = this.L7;
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
            H0(AudioDevice.STORE.SURRLEVEL, this.L7);
            super.j1(i2, i3);
        }
    }

    public final void j2(int i2) {
        j jVar = new j();
        c cVar = new c();
        v2(true);
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
        v2(false);
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
            X1(0, this.a8[0], this.V7[this.Z7[0]], this.X7[this.b8[0]], 0);
            X1(2, 0, this.V7[4], 0, 0);
            X1(3, 0, this.V7[0], 0, 0);
            X1(4, 0, this.V7[0], 0, 0);
            X1(5, 0, this.V7[0], 0, 0);
            X1(6, 0, this.V7[0], 0, 0);
        } else if (i3 == 2) {
            c2(0, 64, 1);
            a.f.p().t(LogType.AUDIO, String.format("进入混响  2--- ", new Object[0]));
            X1(1, this.a8[1], this.W7[this.Z7[1]], this.Y7[1] + this.b8[1], 0);
            X1(2, this.a8[2], this.W7[this.Z7[2]], this.Y7[2] + this.b8[2], 0);
            X1(3, this.a8[3], this.W7[this.Z7[3]], this.b8[3] + this.Y7[3], 0);
            X1(4, this.a8[4], this.W7[this.Z7[4]], this.Y7[4] + this.b8[4], 0);
            X1(5, this.a8[5], this.W7[this.Z7[5]], this.b8[5] + this.Y7[5], 0);
            X1(6, this.a8[6], this.W7[this.Z7[6]], this.b8[6] + this.Y7[6], 0);
        }
        if (this.N8 == i3) {
            return;
        }
        this.N8 = i3;
        super.k1(i3);
        int i4 = this.N8;
        if (i4 == 1 || i4 == 2) {
            y2();
        }
    }

    public void k2(int i2, int... iArr) {
        if (i2 < 0 || i2 >= this.f15060j || iArr.length != this.f15072p) {
            return;
        }
        int iMin = Math.min(this.l7.length - 1, iArr[2]);
        if (i2 < 17) {
            I1(i2, 1, iArr[0], iArr[1] / 10.0f, this.l7[iMin]);
        } else {
            I1(i2, 0, iArr[0], iArr[1] / 10.0f, this.l7[iMin]);
        }
    }

    @Override // module.sound.AudioDevice, y0.e
    public void l(int i2) {
        this.f15052f = i2 == 1;
        super.l(i2);
        H1(this.f15052f ? 1 : 0);
    }

    @Override // module.sound.AudioDevice
    public void l1(boolean z2) {
        if (this.H7 == z2) {
            return;
        }
        this.H7 = z2;
        a2(z2 ? 1 : 0);
        super.l1(z2);
    }

    public void l2(int[] iArr) {
        int length = iArr.length / this.f15072p;
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = this.f15072p;
            k2(i2, iArr[i2 * i3], iArr[(i2 * i3) + 2], iArr[(i3 * i2) + 1]);
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
        this.H7 = Y(AudioDevice.STORE.SURRON, 0) == 1;
        this.L7 = Z(AudioDevice.STORE.SURRLEVEL, this.L7);
        this.N8 = Y(AudioDevice.STORE.SURRMOED, this.N8);
        this.D7 = Y(AudioDevice.STORE.SBWLFREQ, this.D7);
        this.E7 = Y(AudioDevice.STORE.SBWHFREQ, this.E7);
        this.B7 = Y(AudioDevice.STORE.SUBWOOF_QVAL, 32);
        this.O7 = Z(AudioDevice.STORE.STEREO_PAEAM, this.O7);
        this.I7 = Z(AudioDevice.STORE.SPEAKER_GAINS, this.I7);
        this.J7 = Z(AudioDevice.STORE.NOISE_GATE, this.J7);
        this.M7[0] = Y(AudioDevice.STORE.P2BFFREQ, 0);
        this.M7[1] = Y(AudioDevice.STORE.P2BFGAIN, 0);
        this.N7[0] = Y(AudioDevice.STORE.P2BRFREQ, 0);
        this.N7[1] = Y(AudioDevice.STORE.P2BRGAIN, 0);
        this.K7[0] = Y(AudioDevice.STORE.HPFFA, 20);
        this.K7[1] = Y(AudioDevice.STORE.HPFFB, 200);
        this.K7[2] = Y(AudioDevice.STORE.HPFRA, 20);
        this.K7[3] = Y(AudioDevice.STORE.HPFRB, 200);
        this.P7 = Z(AudioDevice.STORE.SURR_FIELD, this.P7);
        this.w8 = Z(AudioDevice.STORE.CSAUTO_SRS, this.w8);
        this.x8 = Z(AudioDevice.STORE.CSAUTO_FOC, this.x8);
        this.y8 = Z(AudioDevice.STORE.CSAUTO_TRUBASS, this.y8);
        AudioDevice.STORE store = AudioDevice.STORE.CSAUTO_OTHERS;
        this.z8 = Z(store, this.z8);
        if (SystemProperties.getBoolean("sys.lsec.dts_default_close", false)) {
            this.z8 = Z(store, this.A8);
        } else {
            this.z8 = Z(store, this.z8);
        }
        this.Z7 = Z(AudioDevice.STORE.DLY_MIXER_LVL, this.Z7);
        this.a8 = Z(AudioDevice.STORE.DLY_MIXER_PHASE, this.a8);
        this.b8 = Z(AudioDevice.STORE.DLY_MIXER_TAP, this.b8);
        this.k8 = Z(AudioDevice.STORE.FILTER_CEN, this.k8);
        this.l8 = Z(AudioDevice.STORE.FILTER_FRT, this.l8);
        this.m8 = Z(AudioDevice.STORE.FILTER_REAR, this.m8);
        this.n8 = Z(AudioDevice.STORE.FILTER_SUB, this.n8);
        this.K8 = Y(AudioDevice.STORE.OPTICAL_DIRECT, s0.m("sys.lsec.opticalDirectDef", 1)) == 1;
        this.J8 = SystemProperties.getInt("sys.lsec.tdm", 2) == 3;
    }

    public boolean m2(int i2, int i3) {
        boolean z2 = false;
        if (i2 >= 0) {
            int[] iArr = this.I7;
            if (i2 < iArr.length) {
                int i4 = 16 - i3;
                if (iArr[i2] != i4) {
                    iArr[i2] = i4;
                    h0 h0Var = this.f15080t;
                    AudioDevice.STORE store = AudioDevice.STORE.SPEAKER_GAINS;
                    h0Var.r(store.ordinal(), this.I7);
                    this.f15080t.e(store.ordinal());
                    z2 = true;
                }
                R1(i2, this.j7[this.I7[i2]]);
            }
        }
        return z2;
    }

    public void n2(int i2) {
        int iA = o0.a(i2, 0, 3);
        if (this.h8 != iA) {
            this.h8 = iA;
        }
        y0.h.s0(83, this.h8);
    }

    @Override // module.sound.AudioDevice, y0.e
    public void o(int i2) {
        R1(5, i2);
        super.o(i2);
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
    public void o2(int i2, int i3) {
        int iA;
        byte b2;
        int i4;
        int i5;
        byte b3;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        byte b4;
        f fVar = new f();
        if (i2 < 0 || i2 >= 16) {
            return;
        }
        int i12 = i2 % 4;
        int i13 = i2 / 2;
        int i14 = i13 % 2;
        int i15 = 4;
        if (i2 % 2 == 0) {
            int i16 = i12 + 1;
            if (i2 < 4) {
                iA = i14 == 0 ? o0.a(i3, 20, 500) : o0.a(i3, 30, 200);
                int[] iArr = this.k8;
                if (iArr[i12] != iA) {
                    iArr[i12] = iA;
                    b2 = 1;
                } else {
                    b2 = -1;
                }
                i4 = (i14 == 0 ? 1 : 100) * iA;
                i5 = i14 == 0 ? this.i8[iArr[i16]] : this.j8[iArr[i16]];
            } else {
                if (i2 >= 8) {
                    if (i2 < 12) {
                        iA = i14 == 0 ? o0.a(i3, 20, 250) : o0.a(i3, 30, 200);
                        int[] iArr2 = this.m8;
                        if (iArr2[i12] != iA) {
                            iArr2[i12] = iA;
                            b2 = 1;
                        } else {
                            b2 = -1;
                        }
                        i4 = (i14 == 0 ? 1 : 100) * iA;
                        i5 = i14 == 0 ? this.i8[iArr2[i16]] : this.j8[iArr2[i16]];
                    } else {
                        int iA2 = i14 == 0 ? o0.a(i3, 20, 200) : o0.a(i3, 20, 250);
                        int[] iArr3 = this.n8;
                        if (iArr3[i12] != iA2) {
                            iArr3[i12] = iA2;
                            b4 = 1;
                        } else {
                            b4 = -1;
                        }
                        i6 = iA2;
                        i7 = i14 == 0 ? this.i8[iArr3[i16]] : this.j8[iArr3[i16]];
                        b3 = b4;
                        i8 = i6;
                    }
                    i9 = this.c8[i13];
                    synchronized (this) {
                        i10 = 0;
                        while (i10 < i15) {
                            int i17 = i10;
                            int i18 = i15;
                            f2(1, 132, i9 + (i17 * 5), fVar.d(0, i7, i10, i6, 0.70711d, 10.0d, 1));
                            i10 = i17 + 1;
                            i15 = i18;
                        }
                        i11 = i15;
                    }
                    y0.h.s0(84, i2, i8);
                    if (b3 > 0) {
                        if (i2 < i11) {
                            H0(AudioDevice.STORE.FILTER_CEN, this.k8);
                            return;
                        }
                        if (i2 < 8) {
                            H0(AudioDevice.STORE.FILTER_FRT, this.l8);
                        } else if (i2 < 12) {
                            H0(AudioDevice.STORE.FILTER_REAR, this.m8);
                        } else {
                            H0(AudioDevice.STORE.FILTER_SUB, this.n8);
                        }
                    }
                }
                iA = i14 == 0 ? o0.a(i3, 20, 250) : o0.a(i3, 30, 200);
                int[] iArr4 = this.l8;
                if (iArr4[i12] != iA) {
                    iArr4[i12] = iA;
                    b2 = 1;
                } else {
                    b2 = -1;
                }
                i4 = (i14 == 0 ? 1 : 100) * iA;
                i5 = i14 == 0 ? this.i8[iArr4[i16]] : this.j8[iArr4[i16]];
            }
        } else {
            iA = o0.a(i3, 0, 5);
            int i19 = i12 - 1;
            if (i2 < 4) {
                int[] iArr5 = this.k8;
                if (iArr5[i12] != iA) {
                    iArr5[i12] = iA;
                    b2 = 1;
                } else {
                    b2 = -1;
                }
                i4 = (i14 == 0 ? 1 : 100) * iArr5[i19];
                i5 = i14 == 0 ? this.i8[iArr5[i12]] : this.j8[iArr5[i12]];
            } else if (i2 < 8) {
                int[] iArr6 = this.l8;
                if (iArr6[i12] != iA) {
                    iArr6[i12] = iA;
                    b2 = 1;
                } else {
                    b2 = -1;
                }
                i4 = (i14 == 0 ? 1 : 100) * iArr6[i19];
                i5 = i14 == 0 ? this.i8[iArr6[i12]] : this.j8[iArr6[i12]];
            } else if (i2 < 12) {
                int[] iArr7 = this.m8;
                if (iArr7[i12] != iA) {
                    iArr7[i12] = iA;
                    b2 = 1;
                } else {
                    b2 = -1;
                }
                i4 = (i14 == 0 ? 1 : 100) * iArr7[i19];
                i5 = i14 == 0 ? this.i8[iArr7[i12]] : this.j8[iArr7[i12]];
            } else {
                int[] iArr8 = this.n8;
                if (iArr8[i12] != iA) {
                    iArr8[i12] = iA;
                    b2 = 1;
                } else {
                    b2 = -1;
                }
                i4 = iArr8[i19];
                i5 = i14 == 0 ? this.i8[iArr8[i12]] : this.j8[iArr8[i12]];
            }
        }
        i7 = i5;
        i6 = i4;
        b3 = b2;
        i8 = iA;
        i9 = this.c8[i13];
        synchronized (this) {
            i10 = 0;
            while (i10 < i15) {
                int i110 = i10;
                int i111 = i15;
                f2(1, 132, i9 + (i110 * 5), fVar.d(0, i7, i10, i6, 0.70711d, 10.0d, 1));
                i10 = i110 + 1;
                i15 = i111;
            }
            i11 = i15;
            y0.h.s0(84, i2, i8);
            if (b3 > 0) {
                if (i2 < i11) {
                    H0(AudioDevice.STORE.FILTER_CEN, this.k8);
                    return;
                }
                if (i2 < 8) {
                    H0(AudioDevice.STORE.FILTER_FRT, this.l8);
                } else if (i2 < 12) {
                    H0(AudioDevice.STORE.FILTER_REAR, this.m8);
                } else {
                    H0(AudioDevice.STORE.FILTER_SUB, this.n8);
                }
            }
        }
    }

    @Override // module.sound.AudioDevice
    public int p0() {
        int[] iArr = this.f7;
        return iArr[iArr.length - 1];
    }

    public final double p2(double d2) {
        return Math.max(-10.0d, Math.min(d2 >= 0.0d ? (0.8d - (0.02d * d2)) * d2 : d2 * ((0.02d * d2) + 0.8d), Math.min(10.0d, d2)));
    }

    @Override // module.sound.AudioDevice
    public int q0() {
        return -1090;
    }

    public double q2(int i2) {
        return ((double) i2) / 100.0d;
    }

    @Override // module.sound.AudioDevice
    public void r0(int i2) {
        int iMax = Math.max(0, Math.min(i2, this.g7.length - 1));
        this.f15056h = iMax;
        Q1(1, x1(iMax, this.g7) / 10, 0);
    }

    public final void r2() {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        e eVar = new e();
        int iA = o0.a(SystemProperties.getInt("persist.dspmic.gain", 26), -30, 36);
        synchronized (this) {
            int i10 = 12;
            if (iA > 24) {
                i3 = iA - 24;
                i4 = 12;
                i2 = 12;
            } else if (iA > 12) {
                i4 = iA - 12;
                i2 = 12;
                i3 = 0;
            } else {
                i2 = iA;
                i3 = 0;
                i4 = 0;
            }
            f2(0, 128, 426, new int[]{eVar.a(i3)});
            f2(0, 128, 420, new int[]{eVar.a(i4)});
            f2(0, 128, 356, new int[]{eVar.a(i2)});
            int iA2 = o0.a(SystemProperties.getInt("persist.dspmic.gainR", 26), -30, 36);
            if (iA2 > 24) {
                i6 = iA2 - 24;
                i7 = 12;
                i5 = 12;
            } else if (iA2 > 12) {
                i7 = iA2 - 12;
                i5 = 12;
                i6 = 0;
            } else {
                i5 = iA2;
                i6 = 0;
                i7 = 0;
            }
            f2(0, 128, 414, new int[]{eVar.a(i6)});
            f2(0, 128, 408, new int[]{eVar.a(i7)});
            f2(0, 128, 362, new int[]{eVar.a(i5)});
            int iA3 = o0.a(SystemProperties.getInt("persist.dspref.gain", 16), 0, 32);
            if (iA3 > 24) {
                i9 = iA3 - 24;
                i8 = 12;
            } else if (iA3 > 12) {
                i8 = 12;
                i10 = iA3 - 12;
                i9 = 0;
            } else {
                i8 = iA3;
                i9 = 0;
                i10 = 0;
            }
            double d2 = i9;
            f2(0, 128, 484, new int[]{eVar.a(d2)});
            f2(0, 128, Downloads.Impl.STATUS_HTTP_EXCEPTION, new int[]{eVar.a(d2)});
            double d3 = i10;
            f2(0, 128, 478, new int[]{eVar.a(d3)});
            f2(0, 128, Downloads.Impl.STATUS_CANCELED, new int[]{eVar.a(d3)});
            f2(0, 128, 432, new int[]{eVar.a(i8)});
        }
    }

    @Override // module.sound.AudioDevice
    public boolean s0() {
        if (this.J8) {
            return super.s0() || (y0.f.Q0 != 0 && y0.f.T0 == 0);
        }
        return super.s0();
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
            f2(0, 132, 14, fVar.a(0, 4, 320, 0.70711d, A9[this.f15054g], 1));
            f2(0, 132, 19, fVar.a(0, 3, 2000, 0.70711d, B9[this.f15054g], 2));
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
                this.F8 = true;
            } else {
                this.F8 = false;
                v2(false);
            }
        }
    }

    @Override // module.sound.AudioDevice
    public void v0(boolean z2) {
        super.v0(z2);
        if (this.f15050e) {
            Log.e("spectrum", " =====>>   5  mute:" + z2);
            if (z2) {
                int[] iArr = this.j7;
                R1(0, iArr[iArr.length - 1]);
                int[] iArr2 = this.j7;
                R1(1, iArr2[iArr2.length - 1]);
                int[] iArr3 = this.j7;
                R1(2, iArr3[iArr3.length - 1]);
                int[] iArr4 = this.j7;
                R1(3, iArr4[iArr4.length - 1]);
                R1(5, 0);
            } else if (!this.D8) {
                j(null);
                o(y0.f.V0);
            }
            if (!z2) {
                w2();
            } else {
                synchronized (this) {
                    h2(65, 0);
                }
            }
        }
    }

    public void v2(boolean z2) {
        if (this.f15050e && !this.F8) {
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
    public void w0(int i2) {
        int[] iArrS2 = s2(i2);
        if (i2(this.f15074q, i2)) {
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
            l2(iArrS2);
            y0.h.H(iArr, iArr2, iArr3, this.f15060j, this);
        }
    }

    public final void w2() {
        synchronized (this) {
            if (this.K8) {
                h2(40, 15);
                h2(65, 15);
            } else {
                h2(40, 20);
                h2(65, 20);
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

    public final void x2(int i2) {
        this.K8 = i2 == 1;
        w2();
        G0(AudioDevice.STORE.OPTICAL_DIRECT, i2);
        y0.h.s0(85, i2);
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

    public void y2() {
        if (this.M7[0] != 0) {
            C0(65536, 0);
        }
        if (this.N7[0] != 0) {
            C0(131072, 0);
        }
        if (this.M7[1] != 0) {
            D0(65536, 0);
        }
        if (this.N7[1] != 0) {
            D0(131072, 0);
        }
    }

    public void z2(int i2, int i3) {
        if (i2 >= 0 || i2 < this.O7.length) {
            int iMax = Math.max(0, Math.min(i3, this.p7.length));
            if (i2 == 0 || i2 == 1 || i2 == 2 || i2 == 3 || i2 == 4) {
                int[] iArr = this.O7;
                if (iArr[i2] != iMax) {
                    iArr[i2] = iMax;
                    y0.h.s0(63, i2, iMax);
                    H0(AudioDevice.STORE.STEREO_PAEAM, this.O7);
                }
                int i4 = !this.H7 ? 1 : 0;
                int[] iArr2 = this.p7;
                int[] iArr3 = this.O7;
                Z1(i4, 0.0d, iArr2[iArr3[0]], iArr2[iArr3[1]], iArr2[iArr3[2]], iArr3[3] / 10.0f, this.o7[iArr3[4]]);
            }
        }
    }
}
