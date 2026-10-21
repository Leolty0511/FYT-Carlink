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
import app.App;
import base.Configure;
import chip.Chip;
import com.syu.jni.ToolsJni;
import com.syu.ms.R;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.Arrays;
import k0.nt;
import n0.c4;
import n0.j4;
import o1.d0;
import o1.h0;
import o1.n;
import o1.o0;
import o1.s0;

/* JADX INFO: loaded from: classes2.dex */
public class C7604_NAVI_DIR extends AudioDevice {
    public static int H4 = 20;
    public static double[] I4 = {0.0d, 10.0d, 10.0d, 10.0d, 10.0d, 10.0d, 10.0d, 9.5d, 9.0d, 8.5d, 8.0d, 7.5d, 7.0d, 6.5d, 6.0d, 5.5d, 5.0d, 4.5d, 4.0d, 3.5d, 3.0d, 2.5d, 2.0d, 1.5d, 1.0d, 0.5d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d};
    public static double[] J4 = {0.0d, 7.0d, 7.0d, 7.0d, 7.0d, 7.0d, 7.0d, 6.8d, 6.5d, 6.2d, 5.9d, 5.6d, 5.2d, 4.8d, 4.4d, 4.0d, 3.6d, 3.2d, 2.8d, 2.4d, 2.0d, 1.6d, 1.2d, 0.8d, 0.5d, 0.3d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d};
    public static int K4 = 28;
    public static double[] L4 = null;
    public final int A1;
    public final int A2;
    public int[] A3;
    public Handler A4;
    public final int B1;
    public final int B2;
    public int[] B3;
    public Runnable B4;
    public final int C1;
    public final int C2;
    public int[] C3;
    public double C4;
    public final int D1;
    public final int D2;
    public final int D3;
    public Runnable D4;
    public final int E1;
    public final int E2;
    public final int E3;
    public Runnable E4;
    public final int F1;
    public final int F2;
    public int[] F3;
    public int[] F4;
    public final int G1;
    public final int G2;
    public int[] G3;
    public l G4;
    public final int H1;
    public final int H2;
    public int[] H3;
    public final boolean I0;
    public final int I1;
    public final int I2;
    public final int I3;
    public final String J0;
    public final int J1;
    public final int J2;
    public int[] J3;
    public final int K0;
    public final int K1;
    public final int K2;
    public int[] K3;
    public final int L0;
    public final int L1;
    public final int L2;
    public int[] L3;
    public final int M0;
    public final int M1;
    public final int M2;
    public double[] M3;
    public final int N0;
    public final int N1;
    public final int N2;
    public final int[] N3;
    public final int O0;
    public final int O1;
    public final int O2;
    public double[] O3;
    public final int P0;
    public final int P1;
    public final int P2;
    public int[] P3;
    public final int Q0;
    public final int Q1;
    public final int Q2;
    public int[] Q3;
    public final int R0;
    public final int R1;
    public final int R2;
    public double R3;
    public final int S0;
    public final int S1;
    public final int S2;
    public int[] S3;
    public final int T0;
    public final int T1;
    public final int T2;
    public final int[] T3;
    public final int U0;
    public final int U1;
    public final int U2;
    public final int[] U3;
    public final int V0;
    public final int V1;
    public final int V2;
    public final int[] V3;
    public final int W0;
    public final int W1;
    public final int W2;
    public final int[] W3;
    public final int X0;
    public final int X1;
    public final int X2;
    public final int[] X3;
    public final int Y0;
    public final int Y1;
    public final int Y2;
    public final int[] Y3;
    public final int Z0;
    public final int Z1;
    public final int Z2;
    public final int[] Z3;

    /* JADX INFO: renamed from: a1, reason: collision with root package name */
    public final int f15494a1;
    public final int a2;
    public final int a3;
    public final int[] a4;

    /* JADX INFO: renamed from: b1, reason: collision with root package name */
    public final int f15495b1;
    public final int b2;
    public final int b3;
    public int[] b4;

    /* JADX INFO: renamed from: c1, reason: collision with root package name */
    public final int f15496c1;
    public final int c2;
    public final int c3;
    public final int[] c4;

    /* JADX INFO: renamed from: d1, reason: collision with root package name */
    public final int f15497d1;
    public final int d2;
    public final int d3;
    public final int[] d4;

    /* JADX INFO: renamed from: e1, reason: collision with root package name */
    public final int f15498e1;
    public final int e2;
    public final int e3;
    public final int[] e4;

    /* JADX INFO: renamed from: f1, reason: collision with root package name */
    public final int f15499f1;
    public final int f2;
    public final int f3;
    public final int[] f4;

    /* JADX INFO: renamed from: g1, reason: collision with root package name */
    public final int f15500g1;
    public final int g2;
    public final int g3;
    public final int[] g4;

    /* JADX INFO: renamed from: h1, reason: collision with root package name */
    public final int f15501h1;
    public final int h2;
    public final int h3;
    public final int[] h4;

    /* JADX INFO: renamed from: i1, reason: collision with root package name */
    public final int f15502i1;
    public final int i2;
    public final int i3;
    public final int[] i4;

    /* JADX INFO: renamed from: j1, reason: collision with root package name */
    public final int f15503j1;
    public final int j2;
    public final int j3;
    public final int[] j4;

    /* JADX INFO: renamed from: k1, reason: collision with root package name */
    public final int f15504k1;
    public final int k2;
    public final int k3;
    public n k4;

    /* JADX INFO: renamed from: l1, reason: collision with root package name */
    public final int f15505l1;
    public final int l2;
    public final int l3;
    public int l4;

    /* JADX INFO: renamed from: m1, reason: collision with root package name */
    public final int f15506m1;
    public final int m2;
    public final int m3;
    public int m4;

    /* JADX INFO: renamed from: n1, reason: collision with root package name */
    public final int f15507n1;
    public final int n2;
    public final int n3;
    public AudioManager n4;

    /* JADX INFO: renamed from: o1, reason: collision with root package name */
    public final int f15508o1;
    public final int o2;
    public final int o3;
    public boolean o4;

    /* JADX INFO: renamed from: p1, reason: collision with root package name */
    public final int f15509p1;
    public final int p2;
    public final int p3;
    public boolean p4;

    /* JADX INFO: renamed from: q1, reason: collision with root package name */
    public final int f15510q1;
    public final int q2;
    public final int q3;
    public int[] q4;
    public final int r1;
    public final int r2;
    public final int r3;
    public int[] r4;
    public final int s1;
    public final int s2;
    public final int s3;
    public int[] s4;
    public final int t1;
    public final int t2;
    public final double t3;
    public int[] t4;
    public final int u1;
    public final int u2;
    public final double u3;
    public int[] u4;
    public final int v1;
    public final int v2;
    public final double v3;
    public int[] v4;
    public final int w1;
    public final int w2;
    public final int w3;
    public int[] w4;
    public final int x1;
    public final int x2;
    public final int x3;
    public boolean x4;
    public final int y1;
    public final int y2;
    public int y3;
    public boolean y4;
    public final int z1;
    public final int z2;
    public int[] z3;
    public Runnable z4;

    public enum CHANNEL {
        IN1(0),
        IN2(1),
        IN3(2),
        IN4(3);


        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f15516a;

        CHANNEL(int i2) {
            this.f15516a = i2;
        }
    }

    public class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int[] f15517a = new int[9];

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f15518b;

        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = 0;
            while (true) {
                this.f15518b = i2;
                int i3 = this.f15518b;
                if (i3 >= 9) {
                    return;
                }
                this.f15517a[i3] = C7604_NAVI_DIR.this.a2(i3);
                i2 = this.f15518b + 1;
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C7604_NAVI_DIR.this.A4.postDelayed(this, TimedRemoteCaller.DEFAULT_CALL_TIMEOUT_MILLIS);
        }
    }

    public class c implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public h f15521a;

        public c() {
            this.f15521a = C7604_NAVI_DIR.this.new h();
        }

        @Override // java.lang.Runnable
        public void run() {
            if (nt.W != 0) {
                C7604_NAVI_DIR c7604_navi_dir = C7604_NAVI_DIR.this;
                c7604_navi_dir.h2(1, 128, 433, new int[]{this.f15521a.a(c7604_navi_dir.C4, 0)});
            } else {
                C7604_NAVI_DIR c7604_navi_dir2 = C7604_NAVI_DIR.this;
                c7604_navi_dir2.h2(1, 128, 442, new int[]{this.f15521a.a(c7604_navi_dir2.C4, 0)});
            }
            Log.e("alex", "postProcessMixOpen ok ------------");
        }
    }

    public class d implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public h f15523a;

        public d() {
            this.f15523a = C7604_NAVI_DIR.this.new h();
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (this) {
                if (nt.W != 0) {
                    C7604_NAVI_DIR.this.h2(1, 128, 15, new int[]{this.f15523a.a(-145.0d, 0)});
                    C7604_NAVI_DIR.this.h2(1, 128, 16, new int[]{this.f15523a.a(0.0d, 0)});
                } else {
                    C7604_NAVI_DIR.this.h2(1, 128, 13, new int[]{this.f15523a.a(0.0d, 0)});
                    C7604_NAVI_DIR.this.h2(1, 128, 14, new int[]{this.f15523a.a(-145.0d, 0)});
                }
            }
            Log.e("alex", "postProcessMixClose ok ------------");
        }
    }

    public class e {
        public e() {
        }

        public int a(int i2, int i3, int i4) {
            return ((i2 + i3) - i4) << 8;
        }
    }

    public class f {
        public f() {
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
            return C7604_NAVI_DIR.this.G4.a(dPow, 2);
        }
    }

    public class g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public double f15527a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public double f15528b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public double f15529c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public double f15530d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public double f15531e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public double f15532f;

        public g() {
        }

        /* JADX WARN: Code duplicated, block: B:17:0x0187  */
        /* JADX WARN: Code duplicated, block: B:19:0x01c0  */
        public int[] a(int i2, int i3, int i4, double d2, double d3, int i5) {
            g gVar;
            double d4;
            double d5;
            double d6;
            double d7;
            double d8;
            double d9;
            double d10;
            double d11;
            b(i3, i4, d2, d3);
            double d12 = 0.0d;
            if (i3 != 0) {
                if (i3 == 1) {
                    gVar = this;
                    d4 = 2.0d;
                    double d13 = gVar.f15530d;
                    d5 = d13 + 1.0d;
                    double d14 = gVar.f15529c;
                    d6 = ((1.0d - d14) / 2.0d) / d5;
                    d7 = (1.0d - d14) / d5;
                    d8 = (-(1.0d - d13)) / d5;
                    d9 = (d14 * 2.0d) / d5;
                    d10 = 1.0d - d14;
                } else if (i3 == 2) {
                    gVar = this;
                    double d15 = gVar.f15530d;
                    double d16 = gVar.f15531e;
                    double d17 = (d15 / d16) + 1.0d;
                    double d18 = (1.0d - (d15 * d16)) / d17;
                    double d19 = gVar.f15529c;
                    double d20 = (d19 * (-2.0d)) / d17;
                    d9 = (d19 * 2.0d) / d17;
                    double d21 = ((d15 * d16) + 1.0d) / d17;
                    d8 = (-(1.0d - (d15 / d16))) / d17;
                    d7 = d20;
                    d11 = d21;
                    d12 = d18;
                } else if (i3 == 3) {
                    gVar = this;
                    double dSqrt = Math.sqrt(gVar.f15531e / d2);
                    gVar.f15532f = dSqrt;
                    double d22 = gVar.f15531e;
                    double d23 = gVar.f15529c;
                    double d24 = gVar.f15528b;
                    double d25 = ((d22 + 1.0d) - ((d22 - 1.0d) * d23)) + (dSqrt * d24);
                    double d26 = ((((d22 + 1.0d) + ((d22 - 1.0d) * d23)) - (dSqrt * d24)) * d22) / d25;
                    double d27 = (((-2.0d) * d22) * ((d22 - 1.0d) + ((d22 + 1.0d) * d23))) / d25;
                    double d28 = (-(((d22 + 1.0d) - ((d22 - 1.0d) * d23)) - (dSqrt * d24))) / d25;
                    double d29 = (-(((d22 - 1.0d) - ((d22 + 1.0d) * d23)) * 2.0d)) / d25;
                    d11 = (d22 * (((d22 + 1.0d) + ((d22 - 1.0d) * d23)) + (dSqrt * d24))) / d25;
                    d8 = d28;
                    d7 = d27;
                    d9 = d29;
                    d12 = d26;
                } else if (i3 != 4) {
                    d8 = 0.0d;
                    d9 = 0.0d;
                    d11 = 0.0d;
                    gVar = this;
                    d7 = 0.0d;
                } else {
                    double dSqrt2 = Math.sqrt(this.f15531e / d2);
                    this.f15532f = dSqrt2;
                    double d30 = this.f15531e;
                    double d31 = this.f15529c;
                    double d32 = this.f15528b;
                    double d33 = d30 + 1.0d + ((d30 - 1.0d) * d31) + (dSqrt2 * d32);
                    double d34 = ((((d30 + 1.0d) - ((d30 - 1.0d) * d31)) - (dSqrt2 * d32)) * d30) / d33;
                    double d35 = ((2.0d * d30) * ((d30 - 1.0d) - ((d30 + 1.0d) * d31))) / d33;
                    double d36 = (-(((d30 + 1.0d) + ((d30 - 1.0d) * d31)) - (dSqrt2 * d32))) / d33;
                    double d37 = (-(((d30 - 1.0d) + ((d30 + 1.0d) * d31)) * (-2.0d))) / d33;
                    double d38 = (d30 * (((d30 + 1.0d) - ((d30 - 1.0d) * d31)) + (dSqrt2 * d32))) / d33;
                    gVar = this;
                    d8 = d36;
                    d7 = d35;
                    d9 = d37;
                    d11 = d38;
                    d12 = d34;
                }
                return i2 == 0 ? new int[]{C7604_NAVI_DIR.this.G4.a(d12, i5), C7604_NAVI_DIR.this.G4.a(d7, i5), C7604_NAVI_DIR.this.G4.a(d8, i5), C7604_NAVI_DIR.this.G4.a(d9, i5), C7604_NAVI_DIR.this.G4.a(d11, i5)} : new int[]{C7604_NAVI_DIR.this.G4.b(d12, i5), C7604_NAVI_DIR.this.G4.c(d12, i5), C7604_NAVI_DIR.this.G4.b(d7, i5), C7604_NAVI_DIR.this.G4.c(d7, i5), C7604_NAVI_DIR.this.G4.b(d8, i5), C7604_NAVI_DIR.this.G4.c(d8, i5), C7604_NAVI_DIR.this.G4.b(d9, i5), C7604_NAVI_DIR.this.G4.c(d9, i5), C7604_NAVI_DIR.this.G4.b(d11, i5), C7604_NAVI_DIR.this.G4.c(d11, i5)};
            }
            gVar = this;
            d4 = 2.0d;
            double d39 = gVar.f15530d;
            d5 = d39 + 1.0d;
            double d40 = gVar.f15529c;
            d6 = ((d40 + 1.0d) / 2.0d) / d5;
            d7 = (-(d40 + 1.0d)) / d5;
            d8 = (-(1.0d - d39)) / d5;
            d9 = (d40 * 2.0d) / d5;
            d10 = d40 + 1.0d;
            d11 = (d10 / d4) / d5;
            d12 = d6;
            if (i2 == 0) {
            }
        }

        public void b(int i2, int i3, double d2, double d3) {
            double d4 = (((double) i3) * 6.283185307179586d) / 48000.0d;
            this.f15527a = d4;
            this.f15528b = Math.sin(d4);
            this.f15529c = Math.cos(this.f15527a);
            this.f15530d = this.f15528b / (d2 * 2.0d);
            if (i2 == 2 || i2 == 3 || i2 == 4) {
                this.f15531e = Math.pow(10.0d, d3 / 40.0d);
            } else {
                this.f15531e = Math.sqrt(Math.pow(10.0d, d3 / 20.0d));
            }
        }
    }

    public class h {
        public h() {
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
            return C7604_NAVI_DIR.this.G4.a(dPow, 2);
        }
    }

    public class i {
        public i() {
        }

        public int a(int i2) {
            if (i2 == 0) {
                return -145;
            }
            return (int) (Math.log10(((double) i2) / Math.pow(2.0d, 23.0d)) * 20.0d);
        }
    }

    public class j {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final double f15536a = 0.0d;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final double f15537b = -145.0d;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public double f15538c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public double f15539d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public double f15540e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public double f15541f;

        public j() {
        }

        public int[] a(int i2, int i3, double d2, int i4) {
            double d3;
            double d4;
            double d5;
            double d6;
            h(i2, i3, d2);
            double d7 = 0.0d;
            if (i2 == 0) {
                double d8 = this.f15541f;
                double d9 = d8 + 1.0d;
                double d10 = this.f15540e;
                double d11 = ((d10 + 1.0d) / 2.0d) / d9;
                d3 = (-(d10 + 1.0d)) / d9;
                double d12 = (-(1.0d - d8)) / d9;
                double d13 = (d10 * 2.0d) / d9;
                d4 = ((d10 + 1.0d) / 2.0d) / d9;
                d5 = d13;
                d6 = d12;
                d7 = d11;
            } else if (i2 != 1) {
                d3 = 0.0d;
                d6 = 0.0d;
                d5 = 0.0d;
                d4 = 0.0d;
            } else {
                double d14 = this.f15541f;
                double d15 = d14 + 1.0d;
                double d16 = this.f15540e;
                double d17 = ((1.0d - d16) / 2.0d) / d15;
                double d18 = (1.0d - d16) / d15;
                double d19 = (d16 * 2.0d) / d15;
                d6 = (-(1.0d - d14)) / d15;
                d4 = ((1.0d - d16) / 2.0d) / d15;
                d7 = d17;
                d3 = d18;
                d5 = d19;
            }
            return new int[]{C7604_NAVI_DIR.this.G4.a(d7, i4), C7604_NAVI_DIR.this.G4.a(d3, i4), C7604_NAVI_DIR.this.G4.a(d6, i4), C7604_NAVI_DIR.this.G4.a(d5, i4), C7604_NAVI_DIR.this.G4.a(d4, i4)};
        }

        public int b(double d2) {
            return C7604_NAVI_DIR.this.G4.a(d2 <= -145.0d ? 0.0d : Math.pow(10.0d, d2 / 20.0d), 2);
        }

        public int c(double d2) {
            return C7604_NAVI_DIR.this.G4.a(d2 <= -145.0d ? 0.0d : Math.pow(10.0d, d2 / 20.0d), 2);
        }

        public int d(double d2) {
            return C7604_NAVI_DIR.this.G4.a(d2 <= -145.0d ? 0.0d : Math.pow(10.0d, d2 / 20.0d), 2);
        }

        public int e(double d2) {
            return C7604_NAVI_DIR.this.G4.a(d2, 1);
        }

        public int f(double d2) {
            return C7604_NAVI_DIR.this.G4.a(1.0d - d2, 1);
        }

        public int g(double d2) {
            return C7604_NAVI_DIR.this.G4.a(d2 <= -145.0d ? 0.0d : Math.pow(10.0d, d2 / 20.0d), 2);
        }

        public void h(int i2, int i3, double d2) {
            double d3 = (((double) i3) * 6.283185307179586d) / 48000.0d;
            this.f15538c = d3;
            this.f15539d = Math.sin(d3);
            this.f15540e = Math.cos(this.f15538c);
            this.f15541f = this.f15539d / (d2 * 2.0d);
        }
    }

    public class k {
        public k() {
        }

        public int a(int i2) {
            return (i2 == 0 ? 1 : 2) * 16;
        }

        public int b(int i2) {
            return (i2 == 0 ? 1 : 2) * 16;
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

    public C7604_NAVI_DIR(n nVar) {
        super(36, 3);
        this.I0 = false;
        this.J0 = "C7604_L";
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
        this.X0 = 19;
        this.Y0 = 21;
        this.Z0 = 24;
        this.f15494a1 = 34;
        this.f15495b1 = 39;
        this.f15496c1 = 40;
        this.f15497d1 = 41;
        this.f15498e1 = 42;
        this.f15499f1 = 52;
        this.f15500g1 = 53;
        this.f15501h1 = 63;
        this.f15502i1 = 64;
        this.f15503j1 = 65;
        this.f15504k1 = 66;
        this.f15505l1 = 67;
        this.f15506m1 = 68;
        this.f15507n1 = 70;
        this.f15508o1 = 73;
        this.f15509p1 = 83;
        this.f15510q1 = 93;
        this.r1 = 103;
        this.s1 = 113;
        this.t1 = 123;
        this.u1 = 133;
        this.v1 = 143;
        this.w1 = 153;
        this.x1 = 163;
        this.y1 = 173;
        this.z1 = 183;
        this.A1 = 193;
        this.B1 = 203;
        this.C1 = 213;
        this.D1 = 223;
        this.E1 = 233;
        this.F1 = i.a.Theme_actionModeWebSearchDrawable;
        this.G1 = 248;
        this.H1 = i.a.Theme_dialogTitleDecorLayout;
        this.I1 = 258;
        this.J1 = 263;
        this.K1 = 268;
        this.L1 = 273;
        this.M1 = 278;
        this.N1 = 283;
        this.O1 = MediaProperties.HEIGHT_288;
        this.P1 = 293;
        this.Q1 = 298;
        this.R1 = 303;
        this.S1 = 308;
        this.T1 = 313;
        this.U1 = 318;
        this.V1 = 323;
        this.W1 = 328;
        this.X1 = 333;
        this.Y1 = 338;
        this.Z1 = 348;
        this.a2 = 353;
        this.b2 = 358;
        this.c2 = 359;
        this.d2 = MediaProperties.HEIGHT_360;
        this.e2 = 361;
        this.f2 = 362;
        this.g2 = 372;
        this.h2 = 377;
        this.i2 = 382;
        this.j2 = 383;
        this.k2 = 385;
        this.l2 = 388;
        this.m2 = 389;
        this.n2 = 391;
        this.o2 = 394;
        this.p2 = 395;
        this.q2 = 397;
        this.r2 = 399;
        this.s2 = 400;
        this.t2 = 401;
        this.u2 = 402;
        this.v2 = 403;
        this.w2 = UrlQuerySanitizer.IllegalCharacterValueSanitizer.URL_LEGAL;
        this.x2 = UrlQuerySanitizer.IllegalCharacterValueSanitizer.URL_AND_SPACE_LEGAL;
        this.y2 = Downloads.Impl.STATUS_NOT_ACCEPTABLE;
        this.z2 = 407;
        this.A2 = 408;
        this.B2 = 409;
        this.C2 = 419;
        this.D2 = 424;
        this.E2 = 429;
        this.F2 = 430;
        this.G2 = 431;
        this.H2 = 432;
        this.I2 = 433;
        this.J2 = 434;
        this.K2 = 435;
        this.L2 = 437;
        this.M2 = 440;
        this.N2 = 441;
        this.O2 = 442;
        this.P2 = 443;
        this.Q2 = 444;
        this.R2 = 446;
        this.S2 = 449;
        this.T2 = 454;
        this.U2 = 459;
        this.V2 = 464;
        this.W2 = 469;
        this.X2 = 474;
        this.Y2 = 479;
        this.Z2 = 484;
        this.a3 = Downloads.Impl.STATUS_CANNOT_RESUME;
        this.b3 = Downloads.Impl.STATUS_UNHANDLED_HTTP_CODE;
        this.c3 = Downloads.Impl.STATUS_HTTP_DATA_ERROR;
        this.d3 = Downloads.Impl.STATUS_HTTP_EXCEPTION;
        this.e3 = Downloads.Impl.STATUS_TOO_MANY_REDIRECTS;
        this.f3 = Downloads.Impl.STATUS_BLOCKED;
        this.g3 = 499;
        this.h3 = 500;
        this.i3 = 501;
        this.j3 = 502;
        this.k3 = 503;
        this.l3 = 48000;
        this.m3 = 0;
        this.n3 = 1;
        this.o3 = 0;
        this.p3 = 1;
        this.q3 = 2;
        this.r3 = 3;
        this.s3 = 4;
        this.t3 = -144.0d;
        this.u3 = 12.0d;
        this.v3 = -145.0d;
        this.w3 = 0;
        this.x3 = 1;
        this.y3 = 6;
        this.z3 = null;
        this.A3 = null;
        this.B3 = null;
        this.C3 = new int[]{20, 24, 29, 36, 45, 53, 65, 80, 100, 120, 140, 170, 210, 260, 320, 390, 470, 570, 700, 850, 1000, 1300, 1600, 1900, 2300, 2800, 3400, 4100, 5000, 6100, 7500, 9000, 11000, 14000, 17000, Window.PROGRESS_SECONDARY_START};
        this.D3 = 120;
        this.E3 = 70;
        this.F3 = new int[]{-1450, -600, -520, -460, -410, -370, -330, -300, -280, -270, -260, -250, -240, -230, -220, -210, AudioService.STREAM_REMOTE_MUSIC, -190, -180, -170, -160, -150, -140, -130, -120, -110, -100, -90, -80, -70, -60, -50, -40, -30, -20, -10, 0};
        this.G3 = new int[]{-1450, -480, -420, -370, -330, -300, -270, -250, -230, -220, -210, AudioService.STREAM_REMOTE_MUSIC, -190, -180, -170, -160, -150, -140, -130, -120, -110, -100, -90, -80, -70, -60, -50, -40, -30, -20, -10, 0, 10, 20, 30, 40, 50};
        this.H3 = new int[]{73, 83, 93, 103, 113, 123, 133, 143, 153, 163, 173, 183, 193, 203, 213, 223, 233, i.a.Theme_actionModeWebSearchDrawable, 248, i.a.Theme_dialogTitleDecorLayout, 258, 263, 268, 273, 278, 283, MediaProperties.HEIGHT_288, 293, 298, 303, 308, 313, 318, 323, 328, 333};
        this.I3 = 0;
        this.J3 = new int[]{0, 0, 0, 0, 0, 0, 0, 0, 0, -3, -6, -9, -12, -15, -18, -21, -145};
        this.K3 = new int[]{255, 66, 60, 54, 48, 44, 40, 36, 32, 28, 24};
        this.L3 = new int[]{-10, -9, -8, -7, -6, -5, -4, -3, -2, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
        this.M3 = new double[]{0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.7d, 0.7d, 0.62d, 0.62d, 0.58d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d};
        this.N3 = new int[]{20, 68, 86, 108, 134, 172, 214, 260};
        this.O3 = new double[]{0.0d, 2.0d, 3.5d, 5.0d, 6.0d, 7.0d, 8.0d, 8.5d, 9.0d, 9.5d, 10.0d};
        this.P3 = new int[]{100, 150, 200, 250, 300, MediaProperties.HEIGHT_360, 420, 500, CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR, MediaProperties.HEIGHT_720, 850, 1000, 1200, 1400, 1600, BluetoothClass.Device.WEARABLE_PAGER, 2100, 2500, ConnectivityManager.CONNECTIVITY_CHANGE_DELAY_DEFAULT, 3500, 4000};
        this.Q3 = new int[]{-145, -80, -48, -32, -25, -21, -18, -16, -14, -12, -10, -9, -8, -7, -6, -5, -4, -3, -2, -1, 0};
        this.R3 = 1.0d;
        this.S3 = new int[]{20, 10, 40, 24, 10, 40, 29, 10, 40, 36, 10, 40, 45, 10, 40, 53, 10, 40, 65, 10, 40, 80, 10, 40, 100, 10, 40, 120, 10, 40, 140, 10, 40, 170, 10, 40, 210, 10, 40, 260, 10, 40, 320, 10, 40, 390, 10, 40, 470, 10, 40, 570, 10, 40, 700, 10, 40, 850, 10, 40, 1000, 10, 40, 1300, 10, 40, 1600, 10, 40, 1900, 10, 40, 2300, 10, 40, 2800, 10, 40, 3400, 10, 40, 4100, 10, 40, 5000, 10, 40, 6100, 10, 40, 7500, 10, 40, 9000, 10, 40, 11000, 10, 40, 14000, 10, 40, 17000, 10, 40, Window.PROGRESS_SECONDARY_START, 10, 40};
        int[] iArr = {20, 10, 40, 24, 10, 40, 29, 10, 40, 36, 10, 40, 45, 10, 40, 53, 10, 40, 65, 10, 40, 80, 10, 40, 100, 10, 40, 120, 10, 40, 140, 10, 40, 170, 10, 40, 210, 10, 40, 260, 10, 40, 320, 10, 40, 390, 10, 40, 470, 10, 40, 570, 10, 40, 700, 10, 40, 850, 10, 40, 1000, 10, 40, 1300, 10, 40, 1600, 10, 40, 1900, 10, 40, 2300, 10, 40, 2800, 10, 40, 3400, 10, 40, 4100, 10, 40, 5000, 10, 40, 6100, 10, 40, 7500, 10, 40, 9000, 10, 40, 11000, 10, 40, 14000, 10, 40, 17000, 10, 40, Window.PROGRESS_SECONDARY_START, 10, 40};
        this.T3 = iArr;
        int[] iArr2 = {20, 16, 40, 24, 16, 40, 29, 16, 40, 36, 16, 40, 45, 16, 40, 53, 16, 40, 65, 16, 40, 80, 15, 40, 100, 14, 40, 120, 13, 40, 140, 12, 40, 170, 12, 40, 210, 11, 40, 260, 9, 40, 320, 8, 40, 390, 7, 40, 470, 6, 40, 570, 6, 40, 700, 6, 40, 850, 6, 40, 1000, 6, 40, 1300, 7, 40, 1600, 7, 40, 1900, 8, 40, 2300, 9, 40, 2800, 11, 40, 3400, 12, 40, 4100, 13, 40, 5000, 14, 40, 6100, 15, 40, 7500, 16, 40, 9000, 16, 40, 11000, 16, 40, 14000, 16, 40, 17000, 16, 40, Window.PROGRESS_SECONDARY_START, 16, 40};
        this.U3 = iArr2;
        int[] iArr3 = {20, 4, 40, 24, 4, 40, 29, 4, 40, 36, 4, 40, 45, 4, 40, 53, 4, 40, 65, 4, 40, 80, 4, 40, 100, 5, 40, 120, 7, 40, 140, 8, 40, 170, 9, 40, 210, 10, 40, 260, 11, 40, 320, 12, 40, 390, 13, 40, 470, 14, 40, 570, 13, 40, 700, 13, 40, 850, 12, 40, 1000, 12, 40, 1300, 12, 40, 1600, 12, 40, 1900, 12, 40, 2300, 13, 40, 2800, 13, 40, 3400, 14, 40, 4100, 12, 40, 5000, 10, 40, 6100, 10, 40, 7500, 10, 40, 9000, 10, 40, 11000, 10, 40, 14000, 10, 40, 17000, 10, 40, Window.PROGRESS_SECONDARY_START, 10, 40};
        this.V3 = iArr3;
        int[] iArr4 = {20, 16, 40, 24, 16, 40, 29, 16, 40, 36, 16, 40, 45, 16, 40, 53, 16, 40, 65, 16, 40, 80, 16, 40, 100, 16, 40, 120, 15, 40, 140, 14, 40, 170, 13, 40, 210, 12, 40, 260, 11, 40, 320, 10, 40, 390, 9, 40, 470, 8, 40, 570, 9, 40, 700, 11, 40, 850, 12, 40, 1000, 11, 40, 1300, 10, 40, 1600, 10, 40, 1900, 9, 40, 2300, 8, 40, 2800, 7, 40, 3400, 6, 40, 4100, 6, 40, 5000, 6, 40, 6100, 5, 40, 7500, 5, 40, 9000, 4, 40, 11000, 4, 40, 14000, 4, 40, 17000, 4, 40, Window.PROGRESS_SECONDARY_START, 4, 40};
        this.W3 = iArr4;
        int[] iArr5 = {20, 16, 40, 24, 16, 40, 29, 16, 40, 36, 16, 40, 45, 15, 40, 53, 15, 40, 65, 14, 40, 80, 14, 40, 100, 10, 40, 120, 9, 40, 140, 8, 40, 170, 7, 40, 210, 6, 40, 260, 9, 40, 320, 11, 40, 390, 12, 40, 470, 13, 40, 570, 14, 40, 700, 14, 40, 850, 14, 40, 1000, 14, 40, 1300, 13, 40, 1600, 12, 40, 1900, 10, 40, 2300, 8, 40, 2800, 6, 40, 3400, 7, 40, 4100, 9, 40, 5000, 11, 40, 6100, 13, 40, 7500, 16, 40, 9000, 15, 40, 11000, 14, 40, 14000, 14, 40, 17000, 14, 40, Window.PROGRESS_SECONDARY_START, 14, 40};
        this.X3 = iArr5;
        int[] iArr6 = {20, 16, 40, 24, 16, 40, 29, 16, 40, 36, 16, 40, 45, 16, 40, 53, 16, 40, 65, 16, 40, 80, 16, 40, 100, 16, 40, 120, 16, 40, 140, 15, 40, 170, 15, 40, 210, 14, 40, 260, 14, 40, 320, 14, 40, 390, 14, 40, 470, 15, 40, 570, 16, 40, 700, 16, 40, 850, 15, 40, 1000, 14, 40, 1300, 13, 40, 1600, 13, 40, 1900, 12, 40, 2300, 12, 40, 2800, 12, 40, 3400, 11, 40, 4100, 11, 40, 5000, 10, 40, 6100, 10, 40, 7500, 10, 40, 9000, 9, 40, 11000, 8, 40, 14000, 8, 40, 17000, 8, 40, Window.PROGRESS_SECONDARY_START, 8, 40};
        this.Y3 = iArr6;
        int[] iArr7 = {20, 14, 40, 24, 14, 40, 29, 14, 40, 36, 14, 40, 45, 13, 40, 53, 12, 40, 65, 12, 40, 80, 12, 40, 100, 10, 40, 120, 8, 40, 140, 6, 40, 170, 5, 40, 210, 4, 40, 260, 6, 40, 320, 7, 40, 390, 8, 40, 470, 9, 40, 570, 10, 40, 700, 10, 40, 850, 10, 40, 1000, 10, 40, 1300, 10, 40, 1600, 10, 40, 1900, 10, 40, 2300, 11, 40, 2800, 12, 40, 3400, 12, 40, 4100, 12, 40, 5000, 12, 40, 6100, 13, 40, 7500, 14, 40, 9000, 15, 40, 11000, 16, 40, 14000, 16, 40, 17000, 16, 40, Window.PROGRESS_SECONDARY_START, 16, 40};
        this.Z3 = iArr7;
        int[] iArr8 = {20, 10, 40, 24, 10, 40, 29, 10, 40, 36, 10, 40, 45, 10, 40, 53, 10, 40, 65, 11, 40, 80, 12, 40, 100, 13, 40, 120, 14, 40, 140, 14, 40, 170, 14, 40, 210, 15, 40, 260, 15, 40, 320, 16, 40, 390, 16, 40, 470, 16, 40, 570, 16, 40, 700, 16, 40, 850, 16, 40, 1000, 16, 40, 1300, 16, 40, 1600, 16, 40, 1900, 16, 40, 2300, 16, 40, 2800, 16, 40, 3400, 16, 40, 4100, 16, 40, 5000, 16, 40, 6100, 16, 40, 7500, 15, 40, 9000, 15, 40, 11000, 14, 40, 14000, 14, 40, 17000, 14, 40, Window.PROGRESS_SECONDARY_START, 14, 40};
        this.a4 = iArr8;
        this.b4 = new int[]{20, 10, 40, 24, 10, 40, 29, 10, 40, 36, 10, 40, 44, 10, 40, 54, 10, 40, 66, 10, 40, 81, 10, 40, 100, 10, 40, 120, 10, 40, 140, 10, 40, 170, 10, 40, 210, 10, 40, 260, 10, 40, 320, 10, 40, 390, 10, 40, 470, 10, 40, 570, 10, 40, 700, 10, 40, 850, 10, 40, 1000, 10, 40, 1260, 10, 40, 1540, 10, 40, 1900, 10, 40, 2300, 10, 40, 2800, 10, 40, 3400, 10, 40, 4100, 10, 40, 5000, 10, 40, 6100, 10, 40, 7500, 10, 40, 9000, 10, 40, 11000, 10, 40, 14000, 10, 40, 17000, 10, 40, Window.PROGRESS_SECONDARY_START, 10, 40};
        int[] iArr9 = {20, 10, 40, 24, 10, 40, 29, 10, 40, 36, 10, 40, 44, 10, 40, 54, 10, 40, 66, 10, 40, 81, 10, 40, 100, 10, 40, 120, 10, 40, 140, 10, 40, 170, 10, 40, 210, 10, 40, 260, 10, 40, 320, 10, 40, 390, 10, 40, 470, 10, 40, 570, 10, 40, 700, 10, 40, 850, 10, 40, 1000, 10, 40, 1260, 10, 40, 1540, 10, 40, 1900, 10, 40, 2300, 10, 40, 2800, 10, 40, 3400, 10, 40, 4100, 10, 40, 5000, 10, 40, 6100, 10, 40, 7500, 10, 40, 9000, 10, 40, 11000, 10, 40, 14000, 10, 40, 17000, 10, 40, Window.PROGRESS_SECONDARY_START, 10, 40};
        this.c4 = iArr9;
        int[] iArr10 = {20, 14, 40, 24, 14, 40, 29, 14, 40, 36, 14, 40, 44, 14, 40, 54, 14, 40, 66, 14, 40, 81, 13, 40, 100, 13, 40, 120, 12, 40, 140, 11, 40, 170, 11, 40, 210, 10, 40, 260, 9, 40, 320, 9, 40, 390, 8, 40, 470, 7, 40, 570, 7, 40, 700, 7, 40, 850, 7, 40, 1000, 7, 40, 1260, 8, 40, 1540, 9, 40, 1900, 11, 40, 2300, 9, 40, 2800, 11, 40, 3400, 12, 40, 4100, 12, 40, 5000, 13, 40, 6100, 13, 40, 7500, 14, 40, 9000, 14, 40, 11000, 14, 40, 14000, 14, 40, 17000, 14, 40, Window.PROGRESS_SECONDARY_START, 14, 40};
        this.d4 = iArr10;
        int[] iArr11 = {20, 6, 40, 24, 6, 40, 29, 6, 40, 36, 6, 40, 44, 6, 40, 54, 6, 40, 66, 6, 40, 81, 6, 40, 100, 7, 40, 120, 8, 40, 140, 9, 40, 170, 9, 40, 210, 10, 40, 260, 11, 40, 320, 11, 40, 390, 12, 40, 470, 12, 40, 570, 12, 40, 700, 12, 40, 850, 12, 40, 1000, 11, 40, 1260, 11, 40, 1540, 11, 40, 1900, 12, 40, 2300, 12, 40, 2800, 12, 40, 3400, 13, 40, 4100, 11, 40, 5000, 10, 40, 6100, 10, 40, 7500, 10, 40, 9000, 10, 40, 11000, 10, 40, 14000, 10, 40, 17000, 10, 40, Window.PROGRESS_SECONDARY_START, 10, 40};
        this.e4 = iArr11;
        int[] iArr12 = {20, 14, 40, 24, 14, 40, 29, 14, 40, 36, 14, 40, 44, 14, 40, 54, 14, 40, 66, 14, 40, 81, 14, 40, 100, 14, 40, 120, 13, 40, 140, 13, 40, 170, 12, 40, 210, 11, 40, 260, 11, 40, 320, 10, 40, 390, 9, 40, 470, 9, 40, 570, 11, 40, 700, 11, 40, 850, 11, 40, 1000, 11, 40, 1260, 10, 40, 1540, 9, 40, 1900, 9, 40, 2300, 9, 40, 2800, 8, 40, 3400, 7, 40, 4100, 7, 40, 5000, 7, 40, 6100, 7, 40, 7500, 7, 40, 9000, 6, 40, 11000, 6, 40, 14000, 6, 40, 17000, 6, 40, Window.PROGRESS_SECONDARY_START, 6, 40};
        this.f4 = iArr12;
        int[] iArr13 = {20, 11, 40, 24, 11, 40, 29, 11, 40, 36, 11, 40, 44, 12, 40, 54, 12, 40, 66, 12, 40, 81, 12, 40, 100, 13, 40, 120, 14, 40, 140, 14, 40, 170, 14, 40, 210, 14, 40, 260, 14, 40, 320, 14, 40, 390, 14, 40, 470, 14, 40, 570, 14, 40, 700, 14, 40, 850, 14, 40, 1000, 14, 40, 1260, 14, 40, 1540, 13, 40, 1900, 13, 40, 2300, 12, 40, 2800, 12, 40, 3400, 12, 40, 4100, 11, 40, 5000, 11, 40, 6100, 12, 40, 7500, 11, 40, 9000, 11, 40, 11000, 10, 40, 14000, 10, 40, 17000, 11, 40, Window.PROGRESS_SECONDARY_START, 11, 40};
        this.g4 = iArr13;
        int[] iArr14 = {20, 14, 40, 24, 14, 40, 29, 14, 40, 36, 14, 40, 44, 14, 40, 54, 14, 40, 66, 14, 40, 81, 14, 40, 100, 14, 40, 120, 14, 40, 140, 13, 40, 170, 13, 40, 210, 13, 40, 260, 13, 40, 320, 13, 40, 390, 13, 40, 470, 14, 40, 570, 14, 40, 700, 13, 40, 850, 13, 40, 1000, 13, 40, 1260, 12, 40, 1540, 11, 40, 1900, 11, 40, 2300, 11, 40, 2800, 11, 40, 3400, 11, 40, 4100, 11, 40, 5000, 10, 40, 6100, 10, 40, 7500, 10, 40, 9000, 9, 40, 11000, 9, 40, 14000, 9, 40, 17000, 9, 40, Window.PROGRESS_SECONDARY_START, 9, 40};
        this.h4 = iArr14;
        int[] iArr15 = {20, 13, 40, 24, 13, 40, 29, 13, 40, 36, 13, 40, 44, 12, 40, 54, 12, 40, 66, 11, 40, 81, 11, 40, 100, 10, 40, 120, 8, 40, 140, 7, 40, 170, 7, 40, 210, 6, 40, 260, 7, 40, 320, 8, 40, 390, 9, 40, 470, 10, 40, 570, 10, 40, 700, 10, 40, 850, 10, 40, 1000, 10, 40, 1260, 10, 40, 1540, 10, 40, 1900, 11, 40, 2300, 11, 40, 2800, 11, 40, 3400, 11, 40, 4100, 11, 40, 5000, 11, 40, 6100, 12, 40, 7500, 13, 40, 9000, 13, 40, 11000, 14, 40, 14000, 14, 40, 17000, 14, 40, Window.PROGRESS_SECONDARY_START, 14, 40};
        this.i4 = iArr15;
        int[] iArr16 = {20, 10, 40, 24, 10, 40, 29, 10, 40, 36, 10, 40, 44, 10, 40, 54, 10, 40, 66, 11, 40, 81, 12, 40, 100, 12, 40, 120, 12, 40, 140, 13, 40, 170, 13, 40, 210, 13, 40, 260, 13, 40, 320, 14, 40, 390, 14, 40, 470, 14, 40, 570, 14, 40, 700, 14, 40, 850, 14, 40, 1000, 14, 40, 1260, 14, 40, 1540, 14, 40, 1900, 14, 40, 2300, 14, 40, 2800, 14, 40, 3400, 14, 40, 4100, 14, 40, 5000, 14, 40, 6100, 14, 40, 7500, 13, 40, 9000, 13, 40, 11000, 13, 40, 14000, 13, 40, 17000, 13, 40, Window.PROGRESS_SECONDARY_START, 13, 40};
        this.j4 = iArr16;
        this.k4 = null;
        this.l4 = 40;
        this.m4 = 200;
        this.n4 = null;
        this.o4 = true;
        this.p4 = false;
        this.q4 = new int[]{8, 8, 8, 8, 8, 8};
        this.r4 = new int[]{-30, 2, 9};
        this.s4 = new int[4];
        this.t4 = new int[]{25, 12, 12, 0};
        this.u4 = new int[]{0, 0};
        this.v4 = new int[]{0, 0};
        this.w4 = new int[]{0, 17, 17, 10, 4};
        this.x4 = false;
        this.y4 = false;
        this.z4 = new a();
        this.A4 = new Handler();
        this.B4 = new b();
        this.C4 = 0.0d;
        this.D4 = new c();
        this.E4 = new d();
        this.F4 = new int[]{443, 434, 388, 382};
        this.G4 = new l();
        synchronized (this.f15047c0) {
            boolean zL = s0.l("sys.lsec.eqby", false);
            this.y4 = zL;
            Z0(0, zL ? this.b4 : this.S3);
            Z0(1, this.y4 ? iArr9 : iArr);
            Z0(2, this.y4 ? iArr10 : iArr2);
            Z0(3, this.y4 ? iArr11 : iArr3);
            Z0(4, this.y4 ? iArr12 : iArr4);
            Z0(5, this.y4 ? iArr13 : iArr5);
            Z0(6, this.y4 ? iArr14 : iArr6);
            Z0(7, this.y4 ? iArr15 : iArr7);
            Z0(8, this.y4 ? iArr16 : iArr8);
            x(this.F3);
            this.n4 = (AudioManager) App.c().getSystemService(Context.AUDIO_SERVICE);
            this.k4 = nVar;
        }
    }

    @Override // module.sound.AudioDevice
    public void A1(int i2, boolean z2) {
        if (i2 < 0 || i2 >= AudioDevice.G0.length) {
            return;
        }
        Log.e("C7604_L", "=========================volume : " + i2 + " force:" + z2);
        B1(i2, z2);
        if (z2 || i2 != this.f15054g) {
            if (i2 != this.f15054g) {
                this.f15054g = i2;
            }
            if (this.f15052f) {
                r2();
            }
        }
    }

    @Override // module.sound.AudioDevice
    public void B0(int i2, int i3, int i4) {
        int i5;
        if (i2 == 65536) {
            i5 = 409;
        } else {
            i5 = i2 == 131072 ? 362 : -1;
        }
        D1(i5, this.N3[i3], i4);
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0040  */
    /* JADX WARN: Code duplicated, block: B:21:0x004a  */
    /* JADX WARN: Code duplicated, block: B:23:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:24:? A[RETURN, SYNTHETIC] */
    @Override // module.sound.AudioDevice
    public void C0(int i2, int i3) {
        int i4;
        boolean z2;
        int i5;
        boolean z3 = false;
        int iMax = Math.max(0, Math.min(i3, this.N3.length));
        int i6 = -1;
        if (i2 != 65536) {
            if (i2 == 131072) {
                i6 = 362;
                int[] iArr = this.v4;
                z2 = iArr[0] != iMax;
                int i7 = iArr[0];
                iArr[0] = iMax;
                i5 = iArr[1];
            } else {
                iMax = -1;
                i4 = -1;
            }
            if (i6 > 0) {
                D1(i6, this.N3[iMax], i4);
                if (z3) {
                    super.C0(i2, iMax);
                }
            }
        }
        i6 = 409;
        int[] iArr2 = this.u4;
        z2 = iArr2[0] != iMax;
        int i8 = iArr2[0];
        iArr2[0] = iMax;
        i5 = iArr2[1];
        i4 = i5;
        z3 = z2;
        if (i6 > 0) {
            D1(i6, this.N3[iMax], i4);
            if (z3) {
                super.C0(i2, iMax);
            }
        }
    }

    @Override // module.sound.AudioDevice
    public void C1(int i2) {
        if (this.Q != i2 || this.R) {
            this.R = false;
            this.Q = i2;
            Log.e("C7604_L", "=========================writeVolume : " + i2);
            f2((double) (((float) i2) / 10.0f));
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
                    u2(iArr[0], iArr[1]);
                }
                break;
        }
    }

    /* JADX WARN: Code duplicated, block: B:19:0x003f  */
    /* JADX WARN: Code duplicated, block: B:21:0x0049  */
    /* JADX WARN: Code duplicated, block: B:23:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:24:? A[RETURN, SYNTHETIC] */
    @Override // module.sound.AudioDevice
    public void D0(int i2, int i3) {
        int i4;
        boolean z2;
        int i5;
        boolean z3 = false;
        int iMax = Math.max(0, Math.min(i3, 12));
        int i6 = -1;
        if (i2 != 65536) {
            if (i2 == 131072) {
                i6 = 362;
                int[] iArr = this.v4;
                z2 = iArr[1] != iMax;
                int i7 = iArr[1];
                iArr[1] = iMax;
                i5 = iArr[0];
            } else {
                iMax = -1;
                i4 = -1;
            }
            if (i6 > 0) {
                D1(i6, this.N3[i4], iMax);
                if (z3) {
                    super.D0(i2, iMax);
                }
            }
        }
        i6 = 409;
        int[] iArr2 = this.u4;
        z2 = iArr2[1] != iMax;
        i5 = iArr2[0];
        int i8 = iArr2[1];
        iArr2[1] = iMax;
        i4 = i5;
        z3 = z2;
        if (i6 > 0) {
            D1(i6, this.N3[i4], iMax);
            if (z3) {
                super.D0(i2, iMax);
            }
        }
    }

    public void D1(int i2, int i3, double d2) {
        g gVar = new g();
        synchronized (this) {
            h2(1, 137, i2, gVar.a(1, 4, i3, 1.0d, d2, 1));
        }
    }

    public void E1(int i2, int i3, double d2) {
        int i4;
        g gVar = new g();
        if (i2 == 0) {
            i4 = 348;
        } else if (i2 != 1) {
            return;
        } else {
            i4 = 353;
        }
        int i5 = i4;
        int[] iArrA = gVar.a(0, i2, i3, d2, 0.0d, 1);
        synchronized (this) {
            h2(1, 132, i5, iArrA);
        }
    }

    @Override // module.sound.AudioDevice
    public void F() {
        CHANNEL channel = CHANNEL.IN1;
        L0(0, channel.f15516a);
        L0(1, CHANNEL.IN2.f15516a);
        L0(2, channel.f15516a);
        L0(3, channel.f15516a);
        CHANNEL channel2 = CHANNEL.IN3;
        L0(4, channel2.f15516a);
        L0(5, channel2.f15516a);
        L0(6, channel2.f15516a);
        L0(7, channel.f15516a);
        L0(8, channel.f15516a);
        L0(9, channel.f15516a);
        L0(10, channel.f15516a);
        L0(11, channel2.f15516a);
        L0(12, channel2.f15516a);
        L0(13, channel2.f15516a);
        L0(14, channel.f15516a);
        L0(15, channel.f15516a);
        L0(16, channel.f15516a);
    }

    public void F1(int i2) {
        k kVar = new k();
        synchronized (this) {
            if (i2 == CHANNEL.IN4.f15516a) {
                h2(1, 128, 6, new int[]{kVar.a(1)});
            } else {
                h2(1, 128, 6, new int[]{kVar.a(0)});
            }
        }
        int i3 = 8;
        if (i2 != CHANNEL.IN1.f15516a) {
            if (i2 == CHANNEL.IN2.f15516a) {
                i3 = 12;
            } else if (i2 == CHANNEL.IN3.f15516a) {
                i3 = 2;
            }
        }
        i2(141, i3);
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
                this.o4 = true;
                j(new int[]{8, 8});
                this.o4 = false;
                break;
            case 3:
                this.f15080t.v(AudioDevice.STORE.SURRLEVEL.ordinal());
                if (nt.W == 0) {
                    j1(69632, 25);
                    j1(73728, 12);
                    j1(135168, 12);
                    j1(139264, 0);
                } else {
                    j1(73728, 25);
                    j1(69632, 12);
                    j1(139264, 12);
                    j1(135168, 0);
                }
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
                g0(65552, H4);
                g0(65568, 200);
                g0(WifiStateMachine.CMD_STATIC_IP_FAILURE, H4);
                g0(131104, 200);
                break;
            case 6:
                this.f15080t.v(AudioDevice.STORE.STEREO_PAEAM.ordinal());
                l1(false);
                u2(0, 0);
                u2(1, 17);
                u2(2, 17);
                u2(3, 10);
                u2(4, 4);
                break;
        }
    }

    public void G1(int i2) {
        int i3 = u0.b.D;
        int iA = o0.a(i2, 0, 10);
        if (!g.f.n(13)) {
            if (j0(u0.b.D) != 1) {
                Q1(0, (this.O3[iA] - 5.0d) + ((double) this.P[i3]));
                return;
            } else {
                Q1(1, this.O3[iA] - 10.0d);
                return;
            }
        }
        if (j0(u0.b.D) == 1) {
            Q1(1, this.O3[iA] - 10.0d);
            return;
        }
        if (i3 == 1) {
            Q1(0, this.O3[iA] - 0.5d);
        } else if (i3 == 2 || i3 == 3) {
            Q1(1, this.O3[iA] - 10.0d);
        } else {
            Q1(0, this.O3[iA] - 4.5d);
        }
    }

    public void H1(int i2) {
        if (i2 != 0) {
            R1(1);
        } else {
            R1(0);
        }
    }

    public void I1(double d2) {
        f fVar = new f();
        synchronized (this) {
            h2(1, 128, 67, new int[]{fVar.a(d2)});
        }
    }

    public void J1(int i2, int i3, int i4, double d2, double d3) {
        double d4;
        double d5;
        g gVar = new g();
        synchronized (this) {
            if (this.y4) {
                double d6 = d3 * 1.5d;
                if (d6 <= 0.0d) {
                    d5 = this.M3[i2];
                } else if (d6 <= 1.5d) {
                    d5 = this.M3[i2] / 2.0d;
                } else {
                    d4 = d6;
                }
                d4 = d5 + d6;
            } else {
                d4 = d3;
            }
            double dMax = Math.max(-15.0d, Math.min(d4, 15.0d));
            if (i3 == 1) {
                h2(1, 137, this.H3[i2], gVar.a(1, 2, i4, d2, dMax, 1));
            } else {
                h2(1, 132, this.H3[i2], gVar.a(0, 2, i4, d2, dMax, 1));
            }
        }
    }

    public void K1(int i2, int i3, double d2) {
        int i4;
        int i5;
        g gVar = new g();
        if (i3 <= 20) {
            i5 = 2;
            i4 = 20;
        } else {
            i4 = i3;
            i5 = 0;
        }
        synchronized (this) {
            h2(1, 132, i2, gVar.a(0, i5, i4, d2, 0.0d, 1));
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
        if (i6 < this.L3.length) {
            m2(i2, iArr[i4], iArr[i5], i6);
        }
        super.L(i2, i3);
    }

    public void L1(boolean z2) {
        k kVar = new k();
        synchronized (this) {
            try {
                if (z2) {
                    h2(1, 128, 17, new int[]{kVar.a(1)});
                } else {
                    h2(1, 128, 17, new int[]{kVar.a(0)});
                }
            } catch (Throwable th) {
                throw th;
            }
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
        m2(i2, iArr[i4], iArr[i4 + 2], iArr[i5]);
        super.M(i2, i3);
    }

    public void M1() {
        Z1(0, 0, 0, 0);
        a.i.a0(10L);
        P1();
        a.i.a0(10L);
        Z1(1, 0, 0, 0);
        a.i.a0(10L);
        O1();
        N1();
        a.i.a0(10L);
        Z1(1, 1, 1, 1);
        a.i.a0(100L);
    }

    public int N1() {
        this.k4.d(K4, new int[]{180, 0, 0}, this.B3);
        return 1;
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
        if (i6 < this.L3.length) {
            m2(i2, iArr[i4], iArr[i5], i6);
        }
        super.O(i2, i3);
    }

    public int O1() {
        this.k4.d(K4, new int[]{184, 0, 0}, this.A3);
        return 1;
    }

    public void P1() {
        int i2;
        int i3 = 0;
        while (true) {
            int[] iArr = this.z3;
            if (i3 >= iArr.length) {
                return;
            }
            int i4 = iArr[i3];
            if (i4 == 2) {
                i2 = iArr[i3 + 1] & (-129);
            } else if (i4 == 44) {
                i2 = g.e.a() == 12 ? 80 : this.z3[i3 + 1];
            } else if (i4 != 46) {
                i2 = i4 != 163 ? iArr[i3 + 1] : iArr[i3 + 1] & (-8);
            } else {
                i2 = g.e.a() != 12 ? this.z3[i3 + 1] : 2;
            }
            i2(this.z3[i3], i2);
            i3 += 2;
        }
    }

    public void Q1(int i2, double d2) {
        f fVar = new f();
        if (i2 == 0) {
            int i3 = (int) (48.0d - (d2 * 2.0d));
            i2(139, i3);
            i2(140, i3);
        } else {
            int i4 = u0.b.D;
            int i5 = (i4 == 2 || i4 == 3) ? 0 : 7;
            synchronized (this) {
                h2(1, 128, i5, new int[]{fVar.a(d2)});
            }
        }
    }

    @Override // module.sound.AudioDevice
    public void R0(boolean z2) {
        super.R0(z2);
        if (z2) {
            u0.b.V3 = z2;
        }
        if (z2 || !this.x4) {
            return;
        }
        this.x4 = false;
        synchronized (this) {
            i2(137, 0);
            V1(0, this.J3[this.q4[0]]);
            V1(1, this.J3[this.q4[1]]);
            V1(2, this.J3[this.q4[2]]);
            V1(3, this.J3[this.q4[3]]);
        }
        y0.h.X(16, false);
        this.y3 = 0;
    }

    public void R1(int i2) {
        k kVar = new k();
        synchronized (this) {
            try {
                if (i2 != 0) {
                    r2();
                    h2(1, 128, 39, new int[]{kVar.a(0)});
                } else {
                    h2(1, 128, 39, new int[]{kVar.a(1)});
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void S1(int i2, int i3, double d2) {
        int i4;
        int i5;
        g gVar = new g();
        if (i3 >= 20000) {
            i5 = 2;
            i4 = 20000;
        } else {
            i4 = i3;
            i5 = 1;
        }
        synchronized (this) {
            h2(1, 132, i2, gVar.a(0, i5, i4, d2, 0.0d, 1));
        }
    }

    public void T1(int i2, double d2, int i3) {
        new k();
        new f();
        h hVar = new h();
        this.C4 = d2;
        o1.k.a().removeCallbacks(this.E4);
        o1.k.a().removeCallbacks(this.D4);
        synchronized (this) {
            if (nt.W != 0) {
                if (y0.f.Q0 != 0 && y0.f.T0 == 0) {
                    h2(1, 128, 15, new int[]{hVar.a(0.0d, 0)});
                    h2(1, 128, 16, new int[]{hVar.a(-145.0d, 0)});
                    h2(1, 128, 429, new int[]{hVar.a(-145.0d, 0)});
                    h2(1, 128, 430, new int[]{hVar.a(0.0d, 0)});
                    h2(1, 128, 442, new int[]{hVar.a(-145.0d, 0)});
                    o1.k.a().postDelayed(this.D4, 600L);
                    Log.e("alex", "mix1");
                } else if (y0.f.T0 == 0) {
                    h2(1, 128, 429, new int[]{hVar.a(-145.0d, 0)});
                    h2(1, 128, 430, new int[]{hVar.a(0.0d, 0)});
                    if (d2 > -145.0d) {
                        h2(1, 128, 15, new int[]{hVar.a(-145.0d, 0)});
                        h2(1, 128, 16, new int[]{hVar.a(0.0d, 0)});
                        h2(1, 128, 442, new int[]{hVar.a(d2, 0)});
                        h2(1, 128, 433, new int[]{hVar.a(d2, 0)});
                        Log.e("alex", "mix3--1");
                    } else {
                        o1.k.a().postDelayed(this.E4, 1000L);
                        h2(1, 128, 442, new int[]{hVar.a(-145.0d, 0)});
                        h2(1, 128, 433, new int[]{hVar.a(-145.0d, 0)});
                        Log.e("alex", "mix3--2");
                    }
                } else if (d2 > -145.0d) {
                    h2(1, 128, 429, new int[]{hVar.a(0.0d, 0)});
                    h2(1, 128, 430, new int[]{hVar.a(-145.0d, 0)});
                    h2(1, 128, 15, new int[]{hVar.a(0.0d, 0)});
                    h2(1, 128, 16, new int[]{hVar.a(-145.0d, 0)});
                    h2(1, 128, 442, new int[]{hVar.a(d2, 0)});
                    h2(1, 128, 433, new int[]{hVar.a(d2, 0)});
                    Log.e("alex", "mix2--1");
                } else {
                    h2(1, 128, 429, new int[]{hVar.a(0.0d, 0)});
                    h2(1, 128, 430, new int[]{hVar.a(-145.0d, 0)});
                    h2(1, 128, 15, new int[]{hVar.a(0.0d, 0)});
                    h2(1, 128, 16, new int[]{hVar.a(-145.0d, 0)});
                    h2(1, 128, 442, new int[]{hVar.a(-145.0d, 0)});
                    h2(1, 128, 433, new int[]{hVar.a(-145.0d, 0)});
                    Log.e("alex", "mix2--2");
                }
            } else if (y0.f.Q0 != 0 && y0.f.T0 == 0) {
                h2(1, 128, 13, new int[]{hVar.a(-145.0d, 0)});
                h2(1, 128, 14, new int[]{hVar.a(0.0d, 0)});
                h2(1, 128, 429, new int[]{hVar.a(0.0d, 0)});
                h2(1, 128, 430, new int[]{hVar.a(-145.0d, 0)});
                h2(1, 128, 433, new int[]{hVar.a(-145.0d, 0)});
                o1.k.a().postDelayed(this.D4, 600L);
                Log.e("alex", "mix1");
            } else if (y0.f.T0 == 0) {
                h2(1, 128, 429, new int[]{hVar.a(0.0d, 0)});
                h2(1, 128, 430, new int[]{hVar.a(-145.0d, 0)});
                if (d2 > -145.0d) {
                    h2(1, 128, 13, new int[]{hVar.a(0.0d, 0)});
                    h2(1, 128, 14, new int[]{hVar.a(-145.0d, 0)});
                    h2(1, 128, 442, new int[]{hVar.a(d2, 0)});
                    h2(1, 128, 433, new int[]{hVar.a(d2, 0)});
                    Log.e("alex", "mix3--1");
                } else {
                    o1.k.a().postDelayed(this.E4, 1000L);
                    h2(1, 128, 442, new int[]{hVar.a(-145.0d, 0)});
                    h2(1, 128, 433, new int[]{hVar.a(-145.0d, 0)});
                    Log.e("alex", "mix3--2");
                }
            } else if (d2 > -145.0d) {
                h2(1, 128, 429, new int[]{hVar.a(-145.0d, 0)});
                h2(1, 128, 430, new int[]{hVar.a(0.0d, 0)});
                h2(1, 128, 13, new int[]{hVar.a(-145.0d, 0)});
                h2(1, 128, 14, new int[]{hVar.a(0.0d, 0)});
                h2(1, 128, 442, new int[]{hVar.a(d2, 0)});
                h2(1, 128, 433, new int[]{hVar.a(d2, 0)});
                Log.e("alex", "mix2--1");
            } else {
                h2(1, 128, 429, new int[]{hVar.a(0.0d, 0)});
                h2(1, 128, 430, new int[]{hVar.a(-145.0d, 0)});
                h2(1, 128, 13, new int[]{hVar.a(-145.0d, 0)});
                h2(1, 128, 14, new int[]{hVar.a(0.0d, 0)});
                h2(1, 128, 442, new int[]{hVar.a(-145.0d, 0)});
                h2(1, 128, 433, new int[]{hVar.a(-145.0d, 0)});
                Log.e("alex", "mix2--2");
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:59:0x01f0  */
    /* JADX WARN: Code duplicated, block: B:65:? A[RETURN, SYNTHETIC] */
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
        } else if (i2 == 34) {
            r1(bVar, i2, 69632, this.t4[0]);
            r1(bVar, i2, 73728, this.t4[1]);
            r1(bVar, i2, 135168, this.t4[2]);
            r1(bVar, i2, 139264, this.t4[3]);
        } else if (i2 == 53) {
            r1(bVar, i2, 69632, this.q4[0]);
            r1(bVar, i2, 73728, this.q4[1]);
            r1(bVar, i2, 135168, this.q4[2]);
            r1(bVar, i2, 139264, this.q4[3]);
            r1(bVar, i2, 65536, this.q4[4]);
        } else if (i2 == 55) {
            r1(bVar, i2, this.o4 ? 1 : 0);
        } else if (i2 == 26) {
            r1(bVar, i2, this.f15092z);
        } else {
            if (i2 != 27) {
                switch (i2) {
                    case 29:
                        r1(bVar, i2, 65536, this.u4[1]);
                        r1(bVar, i2, 131072, this.v4[1]);
                        break;
                    case 30:
                        r1(bVar, i2, 65536, this.u4[0]);
                        r1(bVar, i2, 131072, this.v4[0]);
                        break;
                    case 31:
                        r1(bVar, i2, 65552, this.s4[0]);
                        r1(bVar, i2, 65568, this.s4[1]);
                        r1(bVar, i2, WifiStateMachine.CMD_STATIC_IP_FAILURE, this.s4[2]);
                        r1(bVar, i2, 131104, this.s4[3]);
                        break;
                    case 32:
                        r1(bVar, i2, this.p4 ? 1 : 0);
                        break;
                    default:
                        switch (i2) {
                            case 61:
                                r1(bVar, i2, this.l4);
                                break;
                            case 62:
                                r1(bVar, i2, this.r4);
                                break;
                            case 63:
                                int[] iArr4 = this.w4;
                                if (iArr4 != null && iArr4.length > 0) {
                                    int i6 = 0;
                                    while (true) {
                                        int[] iArr5 = this.w4;
                                        if (i6 < iArr5.length) {
                                            r1(bVar, i2, i6, iArr5[i6]);
                                            i6++;
                                        }
                                    }
                                }
                                break;
                        }
                        break;
                }
                if (z2) {
                    return z2;
                }
                return super.U(i2, bVar);
            }
            r1(bVar, i2, 0, this.m4);
        }
        z2 = true;
        if (z2) {
            return z2;
        }
        return super.U(i2, bVar);
    }

    public void U1(int i2, double d2, int i3, int i4) {
    }

    public void V1(int i2, int i3) {
        f fVar = new f();
        if (i2 >= 0 && i2 <= 3) {
            synchronized (this) {
                h2(1, 128, this.F4[i2], new int[]{fVar.a(i3)});
            }
        } else if (i2 == 5) {
            i2(i2 + 131, i3);
        }
    }

    @Override // module.sound.AudioDevice
    public void W0() throws Throwable {
        super.W0();
        Log.e("alex", getClass().getSimpleName() + "  setup by alex");
        int iL2 = l2();
        if (this.z3 == null) {
            if (!s0.l("sys.lsec.dual_mic", false)) {
                this.z3 = s0.A(App.c(), iL2 == 0 ? R.raw.c7604_reg_table_256fs : R.raw.c7604_reg_table, 16);
            } else if (s0.l("sys.lsec.clk_master", false)) {
                this.z3 = s0.A(App.c(), iL2 == 0 ? R.raw.c7604_reg_table_dualmic_dspmaster_256fs : R.raw.c7604_reg_table_dualmic_dspmaster, 16);
            } else {
                this.z3 = s0.A(App.c(), iL2 == 0 ? R.raw.c7604_reg_table_dualmic_256fs : R.raw.c7604_reg_table_dualmic, 16);
            }
        }
        if (this.A3 == null) {
            this.A3 = s0.A(App.c(), R.raw.c7604_navidir_param_table, 16);
        }
        if (this.B3 == null) {
            this.B3 = s0.A(App.c(), R.raw.c7604_navidir_cram_table, 16);
        }
        ToolsJni.cmd_251_Normal_Io_Set(0, 0);
        a.i.a0(20L);
        ToolsJni.cmd_251_Normal_Io_Set(0, 1);
        a.i.a0(20L);
        byte b2 = 0;
        do {
            if (b2 < 0) {
                try {
                    Thread.sleep(520L);
                } catch (InterruptedException e2) {
                    e2.printStackTrace();
                }
            }
            b2 = Y1(192) == 4 ? (byte) 1 : (byte) -1;
        } while (b2 < 0);
        M1();
        I1(-0.0d);
        w0(this.f15062k);
        n2(this.f15074q);
        l(this.f15052f ? 1 : 0);
        j(null);
        a(u0.b.D);
        A1(y0.f.C0, true);
        o(this.f15092z);
        e1(0, this.m4);
        v2(69632, this.t4[0]);
        v2(73728, this.t4[1]);
        v2(135168, this.t4[2]);
        v2(139264, this.t4[3]);
        int[] iArr = this.r4;
        U1(1, iArr[0], iArr[1], iArr[2]);
        g0(65552, this.s4[0]);
        g0(65568, this.s4[1]);
        g0(WifiStateMachine.CMD_STATIC_IP_FAILURE, this.s4[2]);
        g0(131104, this.s4[3]);
        int[] iArr2 = this.u4;
        B0(65536, iArr2[0], iArr2[1]);
        int[] iArr3 = this.v4;
        B0(131072, iArr3[0], iArr3[1]);
        int i2 = !this.p4 ? 1 : 0;
        int[] iArr4 = this.Q3;
        int[] iArr5 = this.w4;
        b2(i2, 0.0d, iArr4[iArr5[0]], iArr4[iArr5[1]], iArr4[iArr5[2]], iArr5[3] / 10.0f, this.P3[iArr5[4]]);
        E1(0, 200, 0.70711d);
        E1(1, 5000, 0.70711d);
        s2();
    }

    public int[] W1(int i2, int i3, int i4) {
        int[] iArr = new int[i4];
        return this.k4.e(i4, K4, false, i2, s0.c(i3, 1), s0.c(i3, 0));
    }

    public int[] X1(int i2, int i3, int i4, int i5) {
        int i6 = i5 * 3;
        int[] iArrE = new int[i6];
        int[] iArr = new int[i5];
        if (i2 != 0) {
            iArrE = this.k4.e(i6, K4, false, i3, s0.c(i4, 1), s0.c(i4, 0));
        }
        for (int i7 = 0; i7 < i5; i7++) {
            int i8 = i7 * 3;
            iArr[i7] = ((iArrE[i8 + 0] << 16) & Spanned.SPAN_PRIORITY) + ((iArrE[i8 + 1] << 8) & 65280) + (iArrE[i8 + 2] & 255);
        }
        return iArr;
    }

    public int Y1(int i2) {
        return W1(64, i2, 1)[0] & 255;
    }

    public void Z1(int i2, int i3, int i4, int i5) {
        byte bY1 = (byte) Y1(2);
        byte bY2 = (byte) Y1(163);
        i2(2, (byte) (i2 != 0 ? bY1 | (-128) : bY1 & 127));
        byte b2 = (byte) (i3 != 0 ? bY2 | 2 : bY2 & (-3));
        byte b3 = (byte) (i4 != 0 ? b2 | 4 : b2 & (-5));
        i2(163, (byte) (i5 != 0 ? b3 | 1 : b3 & (-2)));
    }

    /* JADX WARN: Code duplicated, block: B:43:0x0080  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // y0.e
    public void a(int i2) {
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        boolean z7;
        boolean z8;
        g.g gVar;
        int i3 = h0.c.G == 1 ? 2 : i2;
        int i4 = u0.b.E;
        if (i4 >= 0) {
            i3 = i4;
        }
        this.f15064l = i3;
        int i5 = this.f15048d.get(i3) & 15;
        if (i5 < 0) {
            i5 = CHANNEL.IN1.f15516a;
        }
        boolean z9 = i5 == CHANNEL.IN1.f15516a;
        c4 c4Var = j4.f16466d;
        if (c4Var == null || !c4Var.l3()) {
            z2 = false;
            z3 = z9;
        } else {
            z2 = true;
            z3 = false;
        }
        if (!z2 && i3 == 1 && (gVar = g.e.f2254a) != null && ((Chip) gVar).M()) {
            z2 = true;
            z3 = false;
        }
        if (g.f.n(10) && s0.m("sys.carlink.type", 0) == 3 && !z2) {
            if (i3 == 15 && u0.i.l3().r3()) {
                this.f15088x = true;
                z4 = true;
                z5 = false;
            } else {
                z4 = false;
                z5 = z3;
            }
        } else if (!z2 && this.f15088x && z3) {
            this.f15088x = false;
            z4 = true;
            z5 = z3;
        } else {
            z4 = false;
            z5 = z3;
        }
        if (z4) {
            String name = AudioManager.class.getName();
            Class cls = Boolean.TYPE;
            if (d0.c(name, "setVoiceSwitch2iis", cls) != null) {
                d0.e(AudioManager.class.getName(), this.n4, "setVoiceSwitch2iis", new Class[]{cls}, Boolean.valueOf(z5));
                d0.e(AudioManager.class.getName(), this.n4, "setAudioSwitch2iis", new Class[]{cls}, Boolean.valueOf(z5));
                z8 = z5;
            } else {
                String name2 = AudioManager.class.getName();
                AudioManager audioManager = this.n4;
                Class cls2 = Integer.TYPE;
                d0.e(name2, audioManager, "setWiredDeviceConnectionState", new Class[]{cls2, cls2, String.class, String.class}, 8, Integer.valueOf(!z5 ? 1 : 0), ProxyProperties.LOCAL_EXCL_LIST, ProxyProperties.LOCAL_EXCL_LIST);
                z8 = z5;
            }
        } else if (this.f15086w) {
            if (i3 == 2) {
                z6 = false;
                z7 = 0;
            } else if (z5) {
                z6 = z5 ? 1 : 0;
                z7 = z5;
            } else {
                boolean z10 = z5 ? 1 : 0;
                z7 = !z2;
                z6 = z10 ? 1 : 0;
            }
            String name3 = AudioManager.class.getName();
            Class cls3 = Boolean.TYPE;
            if (d0.c(name3, "setVoiceSwitch2iis", cls3) != null) {
                d0.e(AudioManager.class.getName(), this.n4, "setVoiceSwitch2iis", new Class[]{cls3}, Boolean.valueOf(z7));
                d0.e(AudioManager.class.getName(), this.n4, "setAudioSwitch2iis", new Class[]{cls3}, Boolean.valueOf(z7));
            } else {
                String name4 = AudioManager.class.getName();
                AudioManager audioManager2 = this.n4;
                Class cls4 = Integer.TYPE;
                d0.e(name4, audioManager2, "setWiredDeviceConnectionState", new Class[]{cls4, cls4, String.class, String.class}, 8, Integer.valueOf(!z7), ProxyProperties.LOCAL_EXCL_LIST, ProxyProperties.LOCAL_EXCL_LIST);
            }
            z8 = z6;
        }
        z8 = z5;
        L1(z8);
        F1(i5);
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
        Log.e("C7604_L", "speakerGain index: " + i2 + " gain: " + i3 + " value: " + i5);
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

    public int a2(int i2) {
        i iVar = new i();
        synchronized (this) {
            h2(1, 128, 503, new int[]{((i2 + Downloads.Impl.STATUS_UNHANDLED_HTTP_CODE) << 8) & 16776960});
        }
        return iVar.a(X1(1, 118, 0, 1)[0]);
    }

    @Override // module.sound.AudioDevice
    public void b1(boolean z2) {
        if (this.o4 != z2) {
            return;
        }
        boolean z3 = !z2;
        this.o4 = z3;
        if (z3) {
            j(null);
        }
        super.b1(z2);
    }

    public void b2(int i2, double d2, double d3, double d4, double d5, double d6, int i3) {
        Log.e("C7604_L", " StEn Coef--> passflag : " + i2 + " igain : " + d2 + " tgain : " + d3 + " lgain : " + d4 + " hgain : " + d5 + " mgain : " + d6 + " FC : " + i3);
        Log.e("AK7604", " StEn Coef--> passflag : " + i2 + " igain : " + d2 + " tgain : " + d3 + " lgain : " + d4 + " hgain : " + d5 + " mgain : " + d6 + " FC : " + i3);
        k kVar = new k();
        j jVar = new j();
        synchronized (this) {
            try {
                if (i2 != 0) {
                    h2(1, 128, 66, new int[]{kVar.a(1)});
                } else {
                    h2(1, 128, 66, new int[]{kVar.a(0)});
                    h2(1, 128, 40, new int[]{jVar.c(d2)});
                    h2(1, 128, 41, new int[]{jVar.g(d3)});
                    h2(1, 128, 52, new int[]{jVar.d(d4)});
                    h2(1, 128, 65, new int[]{jVar.b(d5)});
                    h2(1, 128, 64, new int[]{jVar.e(d6)});
                    h2(1, 128, 63, new int[]{jVar.f(d6)});
                    int[] iArrA = jVar.a(1, i3, 0.70711d, 1);
                    h2(1, 132, 42, iArrA);
                    h2(1, 132, 47, iArrA);
                    int[] iArrA2 = jVar.a(0, i3, 0.70711d, 1);
                    h2(1, 132, 53, iArrA2);
                    h2(1, 132, 58, iArrA2);
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
        h hVar = new h();
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
                if (this.x4) {
                    this.x4 = false;
                    synchronized (this) {
                        i2(137, 0);
                        V1(0, this.J3[this.q4[0]]);
                        V1(1, this.J3[this.q4[1]]);
                        V1(2, this.J3[this.q4[2]]);
                        V1(3, this.J3[this.q4[3]]);
                        h2(1, 128, 441, new int[]{hVar.a(0.0d, 0)});
                        h2(1, 128, 432, new int[]{hVar.a(0.0d, 0)});
                    }
                    y0.h.X(16, false);
                }
                this.y3 = 0;
            } else {
                int i4 = this.y3;
                if (i4 < 7) {
                    this.y3 = i4 + 1;
                }
                if (this.y3 == 6) {
                    this.x4 = true;
                    synchronized (this) {
                        int[] iArr2 = this.J3;
                        V1(0, iArr2[iArr2.length - 1]);
                        int[] iArr3 = this.J3;
                        V1(1, iArr3[iArr3.length - 1]);
                        int[] iArr4 = this.J3;
                        V1(2, iArr4[iArr4.length - 1]);
                        int[] iArr5 = this.J3;
                        V1(3, iArr5[iArr5.length - 1]);
                        i2(137, 112);
                        h2(1, 128, 441, new int[]{hVar.a(-145.0d, 0)});
                        h2(1, 128, 432, new int[]{hVar.a(-145.0d, 0)});
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

    public void c2(int i2, double d2, double d3) {
        g gVar = new g();
        synchronized (this) {
            h2(1, 137, 338, gVar.a(1, 1, i2, 0.70711d, 0.0d, 1));
        }
    }

    public void d2(int i2) {
        k kVar = new k();
        synchronized (this) {
            try {
                if (i2 != 0) {
                    h2(1, 128, 66, new int[]{kVar.b(0)});
                } else {
                    h2(1, 128, 66, new int[]{kVar.b(1)});
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // module.sound.AudioDevice
    public void e1(int i2, int i3) {
        boolean z2;
        if (i2 != 0 || this.m4 == i3) {
            z2 = false;
        } else {
            z2 = true;
            this.m4 = i3;
        }
        c2(this.m4, this.l4 / 10.0f, this.f15092z);
        if (z2) {
            super.e1(i2, i3);
        }
    }

    public void e2(int i2, int i3) {
        int i4 = (i3 * 384) / 100;
        e eVar = new e();
        synchronized (this) {
            try {
                if (i2 == 0) {
                    h2(1, 128, Downloads.Impl.STATUS_NOT_ACCEPTABLE, new int[]{eVar.a(0, 576, i4)});
                } else if (i2 == 1) {
                    h2(1, 128, 408, new int[]{eVar.a(0, 576, i4)});
                } else if (i2 == 2) {
                    h2(1, 128, 359, new int[]{eVar.a(0, 576, i4)});
                } else if (i2 == 3) {
                    h2(1, 128, 361, new int[]{eVar.a(0, 576, i4)});
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

    public void f2(double d2) {
        f fVar = new f();
        synchronized (this) {
            h2(1, 128, 18, new int[]{fVar.a(d2)});
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
                int[] iArr = this.s4;
                z2 = iArr[0] != i3;
                i5 = 424;
                iArr[0] = i3;
                i4 = i5;
                break;
            case 65568:
                int[] iArr2 = this.s4;
                boolean z3 = iArr2[1] != i3;
                i5 = 419;
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
                int[] iArr3 = this.s4;
                z2 = iArr3[2] != i3;
                i4 = 377;
                iArr3[2] = i3;
                break;
            case 131104:
                int[] iArr4 = this.s4;
                z2 = iArr4[3] != i3;
                i4 = 372;
                iArr4[3] = i3;
                break;
            default:
                i4 = -1;
                z2 = false;
                break;
        }
        if (i4 > 0) {
            q2(i4, i3);
            if (z2) {
                super.g0(i2, i3);
            }
        }
    }

    public int g2(int i2, int i3, int[] iArr) {
        return this.k4.d(K4, new int[]{i2, s0.c(i3, 1), s0.c(i3, 0)}, iArr);
    }

    public synchronized int h2(int i2, int i3, int i4, int[] iArr) {
        int[] iArr2 = new int[iArr.length * 3];
        if (i2 == 0) {
            return 0;
        }
        for (int i5 = 0; i5 < iArr.length; i5++) {
            int i6 = i5 * 3;
            iArr2[i6 + 0] = (iArr[i5] >> 16) & 255;
            iArr2[i6 + 1] = (iArr[i5] >> 8) & 255;
            iArr2[i6 + 2] = iArr[i5] & 255;
        }
        this.k4.d(K4, new int[]{i3, (i4 >> 8) & 255, i4 & 255}, iArr2);
        this.k4.d(K4, new int[]{164}, 0, 0);
        return 1;
    }

    @Override // module.sound.AudioDevice
    public void i1(int i2, int i3) {
    }

    public int i2(int i2, int i3) {
        return g2(192, i2, new int[]{i3});
    }

    @Override // module.sound.AudioDevice, y0.e
    public void j(int[] iArr) {
        if (this.f15050e && this.o4 && !this.x4) {
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
    }

    @Override // module.sound.AudioDevice
    public int j0(int i2) {
        int i3 = this.f15048d.get(i2);
        if (i3 < 0) {
            i3 = CHANNEL.IN1.f15516a;
        }
        return i3 == CHANNEL.IN1.f15516a ? 1 : 0;
    }

    @Override // module.sound.AudioDevice
    public void j1(int i2, int i3) {
        boolean z2 = false;
        if (i3 > 100 || i3 < 0) {
            i3 = 0;
        }
        switch (i2) {
            case 69632:
                int[] iArr = this.t4;
                boolean z3 = i3 != iArr[0];
                iArr[0] = i3;
                z2 = z3;
                break;
            case 73728:
                int[] iArr2 = this.t4;
                z2 = i3 != iArr2[1];
                iArr2[1] = i3;
                break;
            case 135168:
                int[] iArr3 = this.t4;
                z2 = i3 != iArr3[2];
                iArr3[2] = i3;
                break;
            case 139264:
                int[] iArr4 = this.t4;
                z2 = i3 != iArr4[3];
                iArr4[3] = i3;
                break;
            case 1073741824:
                int[] iArr5 = this.t4;
                z2 = (i3 == iArr5[0] && i3 == iArr5[1] && i3 == iArr5[2] && i3 == iArr5[3]) ? false : true;
                j1(69632, i3);
                j1(73728, i3);
                j1(135168, i3);
                j1(139264, i3);
                break;
        }
        v2(i2, i3);
        if (z2) {
            H0(AudioDevice.STORE.SURRLEVEL, this.t4);
            super.j1(i2, i3);
        }
    }

    public boolean k2(int[] iArr, int i2) {
        int[] iArrP2;
        return i2 == 0 || (iArrP2 = p2(i2)) == null || !Arrays.equals(iArr, iArrP2);
    }

    @Override // module.sound.AudioDevice, y0.e
    public void l(int i2) {
        this.f15052f = i2 == 1;
        super.l(i2);
        H1(this.f15052f ? 1 : 0);
    }

    @Override // module.sound.AudioDevice
    public void l1(boolean z2) {
        if (this.p4 == z2) {
            return;
        }
        this.p4 = z2;
        d2(z2 ? 1 : 0);
        super.l1(z2);
    }

    public final int l2() throws Throwable {
        if (!g.f.n(13)) {
            return 1;
        }
        int iM = s0.m("persist.lsec.txz_micsw", -1);
        Log.e("alex", "persist.lsec.txz_micsw: " + iM);
        if (iM != -1) {
            return 1;
        }
        q1.a.f("sys/lsec_iom/lsec_txz_mic/inout", Context.INPUT_SERVICE);
        return t2();
    }

    @Override // y0.e
    public void m(int i2, int i3) {
        int i4;
        if (i2 < 0 || i2 >= 48 || (i4 = u0.b.D) < 0 || i4 >= 20 || y0.f.f18090z0[i4] != i2) {
            return;
        }
        G1(i3);
    }

    @Override // module.sound.AudioDevice
    public void m0() {
        super.m0();
        this.p4 = Y(AudioDevice.STORE.SURRON, 0) == 1;
        this.t4 = Z(AudioDevice.STORE.SURRLEVEL, this.t4);
        this.m4 = Y(AudioDevice.STORE.SBWLFREQ, 200);
        this.l4 = Y(AudioDevice.STORE.SUBWOOF_QVAL, 40);
        this.w4 = Z(AudioDevice.STORE.STEREO_PAEAM, this.w4);
        this.q4 = Z(AudioDevice.STORE.SPEAKER_GAINS, this.q4);
        this.r4 = Z(AudioDevice.STORE.NOISE_GATE, this.r4);
        this.u4[0] = Y(AudioDevice.STORE.P2BFFREQ, 0);
        this.u4[1] = Y(AudioDevice.STORE.P2BFGAIN, 0);
        this.v4[0] = Y(AudioDevice.STORE.P2BRFREQ, 0);
        this.v4[1] = Y(AudioDevice.STORE.P2BRGAIN, 0);
        this.s4[0] = Y(AudioDevice.STORE.HPFFA, H4);
        this.s4[1] = Y(AudioDevice.STORE.HPFFB, 200);
        this.s4[2] = Y(AudioDevice.STORE.HPFRA, H4);
        this.s4[3] = Y(AudioDevice.STORE.HPFRB, 200);
    }

    public void m2(int i2, int... iArr) {
        if (i2 < 0 || i2 >= this.f15060j || iArr.length != this.f15072p) {
            return;
        }
        int iMin = Math.min(this.L3.length - 1, iArr[2]);
        if (i2 < 17) {
            J1(i2, 1, iArr[0], iArr[1] / 10.0f, this.L3[iMin]);
        } else {
            J1(i2, 0, iArr[0], iArr[1] / 10.0f, this.L3[iMin]);
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
        V1(5, this.K3[this.D ? 0 : i2]);
        super.o(i2);
    }

    public boolean o2(int i2, int i3) {
        boolean z2 = false;
        if (i2 >= 0) {
            int[] iArr = this.q4;
            if (i2 < iArr.length) {
                int i4 = 16 - i3;
                if (iArr[i2] != i4) {
                    iArr[i2] = i4;
                    h0 h0Var = this.f15080t;
                    AudioDevice.STORE store = AudioDevice.STORE.SPEAKER_GAINS;
                    h0Var.r(store.ordinal(), this.q4);
                    this.f15080t.e(store.ordinal());
                    z2 = true;
                }
                Log.e("C7604_L", "fieldToSpeaker index: " + i2 + " gain: " + i3);
                V1(i2, this.J3[this.q4[i2]]);
            }
        }
        return z2;
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
        return -700;
    }

    public void q2(int i2, int i3) {
        int i4 = (i2 == 419 || i2 == 372) ? 100 : 1;
        if (i2 == 424 || i2 == 377) {
            K1(i2, i3 * i4, 0.70711d);
        } else {
            S1(i2, i3 * i4, 0.70711d);
        }
    }

    @Override // module.sound.AudioDevice
    public void r0(int i2) {
        int iMax = Math.max(0, Math.min(i2, this.G3.length - 1));
        this.f15056h = iMax;
        T1(1, x1(iMax, this.G3) / 10, 0);
    }

    public final void r2() {
        synchronized (this) {
            g gVar = new g();
            h2(1, 137, 24, gVar.a(1, 4, 320, 0.70711d, I4[this.f15054g], 1));
            h2(1, 132, 34, gVar.a(0, 3, 2000, 0.70711d, J4[this.f15054g], 2));
        }
    }

    @Override // module.sound.AudioDevice
    public boolean s0() {
        return super.s0() || (y0.f.Q0 != 0 && y0.f.T0 == 0);
    }

    public final void s2() {
        h hVar = new h();
        synchronized (this) {
            h2(1, 128, 13, new int[]{hVar.a(0.0d, 0)});
            h2(1, 128, 14, new int[]{hVar.a(-145.0d, 0)});
            h2(1, 128, 15, new int[]{hVar.a(-145.0d, 0)});
            h2(1, 128, 16, new int[]{hVar.a(0.0d, 0)});
        }
        r0(this.f15056h);
    }

    public final int t2() {
        String str;
        String str2 = ProxyProperties.LOCAL_EXCL_LIST;
        try {
            str = new String(Files.readAllBytes(Paths.get("/sys/lsec_iom/lsec_txz_mic/value", new String[0])));
            try {
                Log.e("alex", "Value: " + str.trim());
            } catch (IOException e2) {
                e = e2;
                str2 = str;
                Log.e("alex", "Error reading file: " + e.getMessage());
                e.printStackTrace();
                str = str2;
            }
        } catch (IOException e3) {
            e = e3;
        }
        int i2 = -1;
        try {
            i2 = Integer.parseInt(str);
            Log.e("alex", "arm_det : " + i2);
            return i2;
        } catch (NumberFormatException unused) {
            System.out.println("转换失败，输入的不是有效的整数！");
            Log.e("alex", "转换失败，输入的不是有效的整数！");
            return i2;
        }
    }

    @Override // module.sound.AudioDevice
    public int u1() {
        return super.u1();
    }

    public void u2(int i2, int i3) {
        if (i2 >= 0 || i2 < this.w4.length) {
            int iMax = Math.max(0, Math.min(i3, this.Q3.length));
            if (i2 == 0 || i2 == 1 || i2 == 2 || i2 == 3 || i2 == 4) {
                int[] iArr = this.w4;
                if (iArr[i2] != iMax) {
                    iArr[i2] = iMax;
                    y0.h.s0(63, i2, iMax);
                    H0(AudioDevice.STORE.STEREO_PAEAM, this.w4);
                }
                int i4 = !this.p4 ? 1 : 0;
                int[] iArr2 = this.Q3;
                int[] iArr3 = this.w4;
                b2(i4, 0.0d, iArr2[iArr3[0]], iArr2[iArr3[1]], iArr2[iArr3[2]], iArr3[3] / 10.0f, this.P3[iArr3[4]]);
            }
        }
    }

    @Override // module.sound.AudioDevice
    public void v0(boolean z2) {
        super.v0(z2);
        h hVar = new h();
        synchronized (this) {
            try {
                if (z2) {
                    int[] iArr = this.J3;
                    V1(0, iArr[iArr.length - 1]);
                    int[] iArr2 = this.J3;
                    V1(1, iArr2[iArr2.length - 1]);
                    int[] iArr3 = this.J3;
                    V1(2, iArr3[iArr3.length - 1]);
                    int[] iArr4 = this.J3;
                    V1(3, iArr4[iArr4.length - 1]);
                    h2(1, 128, 441, new int[]{hVar.a(-145.0d, 0)});
                    h2(1, 128, 432, new int[]{hVar.a(-145.0d, 0)});
                } else if (!this.x4) {
                    j(null);
                    h2(1, 128, 441, new int[]{hVar.a(0.0d, 0)});
                    h2(1, 128, 432, new int[]{hVar.a(0.0d, 0)});
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void v2(int i2, int i3) {
        int i4;
        switch (i2) {
            case 69632:
                i4 = 0;
                break;
            case 73728:
                i4 = 1;
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
            e2(i4, i3);
        }
    }

    @Override // module.sound.AudioDevice
    public void w0(int i2) {
        int[] iArrP2 = p2(i2);
        if (k2(this.f15074q, i2)) {
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
            n2(iArrP2);
            y0.h.H(iArr, iArr2, iArr3, this.f15060j, this);
        }
    }

    @Override // module.sound.AudioDevice
    public int x0(int i2) {
        int[] iArr = this.f15068n;
        if (iArr != null) {
            int i3 = this.f15072p;
            if (i2 * i3 <= iArr.length) {
                return iArr[(i2 * i3) + 1];
            }
        }
        return 0;
    }

    @Override // module.sound.AudioDevice
    public void z0() {
        s2();
    }
}
