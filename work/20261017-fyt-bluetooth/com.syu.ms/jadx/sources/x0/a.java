package x0;

import a.f;
import android.annotation.SuppressLint;
import android.content.IntentFilter;
import android.drm.DrmManagerClient;
import android.net.ProxyProperties;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import java.lang.reflect.Array;
import java.math.BigDecimal;
import java.text.DecimalFormat;
import java.util.Arrays;
import o1.h;
import o1.h0;
import o1.n;
import o1.s0;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class a extends x0.d {
    public static int I0;
    public static int J0;
    public static int K0;
    public static int[] L0 = {40, 100, i.a.Theme_findOnPagePreviousDrawable, 540};
    public float[] A;
    public float A0;
    public float[] B;
    public final float[] B0;
    public float[] C;
    public final float C0;
    public float[] D;
    public final float[] D0;
    public float[] E;

    @SuppressLint({"NewApi"})
    public int E0;
    public int[] F;
    public float[] F0;
    public int[] G;
    public int[] G0;
    public int H;
    public float H0;
    public int I;
    public int J;
    public int K;
    public int L;
    public int M;
    public int N;
    public Runnable O;
    public Runnable P;
    public Runnable Q;
    public Handler R;
    public Runnable S;
    public int[] T;
    public float[] U;
    public float[] V;
    public float[] W;
    public int X;
    public final int Y;
    public float[] Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public int[] f17823a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public float[] f17824b0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f17825c;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public float[][] f17826c0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f17827d;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public float f17828d0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public DecimalFormat f17829e;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public int f17830e0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public n f17831f;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public int f17832f0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public String f17833g;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public int[] f17834g0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f17835h;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public float[] f17836h0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f17837i;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public float[] f17838i0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Looper f17839j;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public float[][] f17840j0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Handler f17841k;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public float[][] f17842k0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f17843l;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public float[] f17844l0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int f17845m;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public float[][] f17846m0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f17847n;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public int[] f17848n0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public float[][] f17849o;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public int[] f17850o0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public float[][] f17851p;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public float[][] f17852p0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public BigDecimal[] f17853q;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public int[] f17854q0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int[] f17855r;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public float[] f17856r0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int[] f17857s;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public float[] f17858s0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public float[] f17859t;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    public int f17860t0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public float[] f17861u;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    public float f17862u0;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public float[] f17863v;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    public float f17864v0;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public float[] f17865w;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    public float f17866w0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public float[] f17867x;

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    public float f17868x0;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public float[] f17869y;

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    public float f17870y0;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public float[][] f17871z;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    public float f17872z0;

    /* JADX INFO: renamed from: x0.a$a, reason: collision with other inner class name */
    public class RunnableC0125a implements Runnable {
        public RunnableC0125a() {
        }

        /* JADX WARN: Code duplicated, block: B:7:0x003a A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:8:0x003c  */
        @Override // java.lang.Runnable
        public void run() {
            a.this.f17841k.removeCallbacks(this);
            a aVar = a.this;
            aVar.f17841k.removeCallbacks(aVar.Q);
            a aVar2 = a.this;
            aVar2.R.removeCallbacks(aVar2.S);
            a aVar3 = a.this;
            aVar3.f17860t0 = 0;
            aVar3.f17837i = aVar3.n();
            a aVar4 = a.this;
            boolean z2 = aVar4.f17837i;
            if (!z2) {
                int i2 = aVar4.H;
                aVar4.H = i2 - 1;
                if (i2 > 0) {
                    aVar4.f17841k.postDelayed(this, 600L);
                } else if (z2) {
                    aVar4.f17841k.postDelayed(aVar4.Q, 200L);
                    a aVar5 = a.this;
                    aVar5.R.postDelayed(aVar5.S, 250L);
                }
            } else if (z2) {
                aVar4.f17841k.postDelayed(aVar4.Q, 200L);
                a aVar6 = a.this;
                aVar6.R.postDelayed(aVar6.S, 250L);
            }
            h.f16866b.a(a.this.P, 0);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = u0.b.X1 - a.I0;
            a.K0 = i2;
            if (i2 > 0) {
                int i3 = u0.b.X1;
                if (i3 >= 10) {
                    if (i3 < 20) {
                        if (a.K0 >= 5) {
                            a.J0 = 25;
                        }
                    } else if (i3 < 40) {
                        if (a.K0 >= 6) {
                            a.J0 = 25;
                        }
                    } else if (i3 < 70) {
                        if (a.K0 >= 7) {
                            a.J0 = 25;
                        }
                    } else if (i3 < 100) {
                        if (a.K0 >= 8) {
                            a.J0 = 25;
                        }
                    } else if (a.K0 >= 5) {
                        a.J0 = 25;
                    }
                }
            } else if (i2 < 0) {
                int i4 = u0.b.X1;
                if (i4 >= 6) {
                    if (i4 < 20) {
                        if (a.K0 <= -5) {
                            a.J0 = 25;
                        }
                    } else if (i4 < 40) {
                        if (a.K0 <= -6) {
                            a.J0 = 25;
                        }
                    } else if (i4 < 70) {
                        if (a.K0 <= -7) {
                            a.J0 = 25;
                        }
                    } else if (i4 < 100) {
                        if (a.K0 <= -8) {
                            a.J0 = 25;
                        }
                    } else if (a.K0 <= -8) {
                        a.J0 = 25;
                    }
                }
            } else {
                a.J0 = 0;
            }
            a.I0 = u0.b.X1;
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a.this.q();
            a aVar = a.this;
            if (aVar.f17837i) {
                aVar.f17841k.postDelayed(aVar.Q, aVar.I);
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a aVar = a.this;
            int i2 = aVar.J;
            if (i2 > 0) {
                aVar.J = i2 - 1;
            }
            int i3 = aVar.K;
            if (i3 > 0) {
                aVar.K = i3 - 1;
            }
            int i4 = aVar.L;
            if (i4 > 0) {
                aVar.L = i4 - 1;
            }
            int i5 = a.J0;
            if (i5 > 0) {
                a.J0 = i5 - 1;
            }
            if (a.J0 > 0 && a.K0 >= 1) {
                aVar.F[2] = -1;
            } else if (a.J0 <= 0 || a.K0 > -1) {
                aVar.F[2] = 0;
            } else {
                aVar.F[2] = 1;
            }
            aVar.M++;
            aVar.R.postDelayed(aVar.S, 40L);
        }
    }

    public a(String str, int i2) {
        super(1);
        this.f17825c = false;
        this.f17827d = "Gyro";
        this.f17829e = new DecimalFormat("#0.00");
        this.f17831f = null;
        this.f17833g = ProxyProperties.LOCAL_EXCL_LIST;
        this.f17835h = 107;
        this.f17837i = false;
        this.f17839j = null;
        this.f17841k = null;
        this.f17843l = false;
        this.f17845m = 15;
        this.f17847n = 15;
        this.f17849o = (float[][]) Array.newInstance((Class<?>) float.class, 3, 15);
        this.f17851p = (float[][]) Array.newInstance((Class<?>) float.class, 3, 15);
        this.f17853q = new BigDecimal[3];
        this.f17855r = new int[]{0, 0, 0};
        this.f17857s = new int[]{0, 0, 0};
        this.f17859t = new float[]{0.0f, 0.0f, 0.0f};
        this.f17861u = new float[]{0.0f, 0.0f, 0.0f};
        this.f17863v = new float[]{0.0f, 0.0f, 0.0f};
        this.f17865w = new float[]{0.0f, 0.0f, 0.0f};
        this.f17867x = new float[5];
        this.f17869y = new float[5];
        this.f17871z = (float[][]) Array.newInstance((Class<?>) float.class, 3, 3);
        this.A = new float[5];
        this.B = new float[5];
        this.C = new float[3];
        this.D = new float[3];
        this.E = new float[3];
        this.F = new int[]{0, 0, 0, 0};
        this.G = new int[4];
        this.H = 10;
        this.I = 40;
        this.J = 0;
        this.K = 0;
        this.L = 0;
        this.M = 0;
        this.N = 1;
        this.O = new RunnableC0125a();
        this.P = new b();
        this.Q = new c();
        this.R = new Handler();
        this.S = new d();
        this.T = new int[3];
        this.U = new float[6];
        this.V = new float[6];
        this.W = new float[6];
        this.X = 0;
        this.Y = 1;
        this.Z = new float[3];
        this.f17823a0 = new int[]{0, 0, 0};
        this.f17824b0 = new float[3];
        this.f17826c0 = (float[][]) Array.newInstance((Class<?>) float.class, 3, 1);
        this.f17828d0 = 0.8f;
        this.f17830e0 = 0;
        this.f17832f0 = 0;
        this.f17834g0 = new int[3];
        this.f17836h0 = new float[3];
        this.f17838i0 = new float[3];
        this.f17840j0 = (float[][]) Array.newInstance((Class<?>) float.class, 3, 5);
        this.f17842k0 = (float[][]) Array.newInstance((Class<?>) float.class, 3, 3);
        this.f17844l0 = new float[3];
        this.f17846m0 = (float[][]) Array.newInstance((Class<?>) float.class, 3, 4);
        this.f17848n0 = new int[3];
        this.f17850o0 = new int[3];
        this.f17852p0 = (float[][]) Array.newInstance((Class<?>) float.class, 3, 3);
        this.f17854q0 = new int[]{13, -73, 70};
        this.f17856r0 = new float[3];
        this.f17858s0 = new float[3];
        this.f17860t0 = 0;
        this.f17862u0 = 1.0f;
        this.f17864v0 = 0.0f;
        this.f17866w0 = 0.0f;
        this.f17868x0 = 0.0f;
        this.f17870y0 = 0.0f;
        this.f17872z0 = 0.0f;
        this.A0 = 0.0f;
        this.B0 = new float[4];
        this.C0 = 0.001f;
        this.D0 = null;
        this.E0 = 0;
        this.F0 = null;
        this.G0 = new int[3];
        this.H0 = -10000.0f;
        this.f17831f = new n();
        this.f17833g = str;
    }

    @Override // x0.d
    public void a(boolean z2) {
        this.f17843l = z2;
        this.f17847n = 15;
    }

    @Override // x0.d
    @SuppressLint({"NewApi"})
    public void b() {
        this.f17837i = false;
        this.f17841k.removeCallbacks(this.Q);
        this.f17841k.removeCallbacks(this.Q);
        this.R.removeCallbacks(this.S);
        h.f16866b.d(this.P);
        Looper looper = this.f17839j;
        if (looper != null) {
            if (Build.VERSION.SDK_INT >= 18) {
                looper.quitSafely();
            } else {
                looper.quit();
            }
            this.f17839j = null;
            this.f17841k = null;
        }
    }

    @Override // x0.d
    public boolean c(int i2, y.b bVar) {
        boolean z2 = false;
        try {
            if (i2 == 1) {
                bVar.H0(i2, null, this.Z, null);
            } else if (i2 == 2) {
                bVar.H0(i2, null, this.f17861u, null);
            } else {
                if (i2 != 3) {
                    if (i2 == 10) {
                        bVar.H0(i2, new int[]{this.N}, null, null);
                    }
                    return z2;
                }
                bVar.H0(i2, null, this.f17824b0, null);
            }
            z2 = true;
            return z2;
        } catch (RemoteException e2) {
            e2.printStackTrace();
            return true;
        }
    }

    @Override // x0.d
    public boolean f(int i2, int[] iArr, float[] fArr, String[] strArr) {
        Log.e("Gyro", "-------- handleCmd cmdid: " + i2 + " ints: " + Arrays.toString(iArr));
        if (i2 == 0) {
            a(true);
            return true;
        }
        if (i2 == 4) {
            if (!s0.h(iArr, 0)) {
                return true;
            }
            int i3 = iArr[0];
            this.I = i3;
            if (i3 >= 40) {
                return true;
            }
            this.I = 40;
            return true;
        }
        if (i2 != 10) {
            return false;
        }
        if (!s0.h(iArr, 0) || iArr[0] == this.N) {
            return true;
        }
        this.N = iArr[0] == 1 ? 1 : -1;
        x0.c.X2().a3(i2, this.N);
        this.f17894b.q(3, this.N);
        this.f17894b.e(3);
        return true;
    }

    @Override // x0.d
    public void i(h0 h0Var) {
        super.i(h0Var);
        this.N = h0Var.h(3, this.N);
        int i2 = 0;
        x0.c.X2().a3(10, this.N);
        this.f17823a0 = e(0, this.f17823a0);
        this.f17855r = e(1, this.f17855r);
        for (int i3 = 0; i3 < this.f17861u.length; i3++) {
            this.f17859t[i3] = this.f17855r[i3] / 100.0f;
        }
        this.f17857s = e(2, this.f17857s);
        while (true) {
            float[] fArr = this.f17865w;
            if (i2 >= fArr.length) {
                return;
            }
            fArr[i2] = this.f17857s[i2] / 10000.0f;
            i2++;
        }
    }

    @Override // x0.d
    public void j() {
        this.f17831f.f(this.f17833g);
        this.H = 10;
        if (this.f17839j == null) {
            HandlerThread handlerThread = new HandlerThread("Gyro-thread");
            handlerThread.setPriority(5);
            handlerThread.start();
            Looper looper = handlerThread.getLooper();
            this.f17839j = looper;
            this.f17841k = new Handler(looper);
        }
        this.f17841k.post(this.O);
    }

    public float l(float[] fArr) {
        int length = fArr == null ? 0 : fArr.length;
        float f2 = 0.0f;
        if (length <= 0) {
            return 0.0f;
        }
        for (float f3 : fArr) {
            f2 += f3;
        }
        return f2 / length;
    }

    public float m(float f2) {
        return (f2 / 256.0f) + 25.0f;
    }

    public boolean n() {
        this.X = s(15);
        if (u(18, s(18) | 1) < 0) {
            return false;
        }
        int i2 = 20;
        while (true) {
            int i3 = i2 - 1;
            if (i2 <= 0 || (s(18) & 1) == 0) {
                break;
            }
            s0.C(5L);
            i2 = i3;
        }
        return u(18, s(18) & 191) >= 0 && u(16, (s(16) & 15) | 16) >= 0 && u(17, (15 & s(17)) | 16) >= 0 && u(16, s(16) & i.a.Theme_actionModeWebSearchDrawable) >= 0 && u(17, (s(17) & i.a.Theme_actionModeShareDrawable) | 2) >= 0;
    }

    public float o(float f2) {
        return f2 * 4.375f;
    }

    public float p(float f2) {
        return (f2 * 61.0f) / 1000.0f;
    }

    /* JADX WARN: Code duplicated, block: B:174:0x0577  */
    /* JADX WARN: Code duplicated, block: B:176:0x057c  */
    /* JADX WARN: Code duplicated, block: B:177:0x062c  */
    /* JADX WARN: Code duplicated, block: B:179:0x0632  */
    /* JADX WARN: Code duplicated, block: B:180:0x06e1  */
    /* JADX WARN: Code duplicated, block: B:181:0x0793  */
    /* JADX WARN: Code duplicated, block: B:183:0x0798  */
    /* JADX WARN: Code duplicated, block: B:185:0x079e  */
    /* JADX WARN: Code duplicated, block: B:186:0x0850  */
    /* JADX WARN: Code duplicated, block: B:188:0x0856  */
    /* JADX WARN: Code duplicated, block: B:189:0x0905  */
    /* JADX WARN: Code duplicated, block: B:190:0x09b7  */
    /* JADX WARN: Code duplicated, block: B:192:0x09bd  */
    /* JADX WARN: Code duplicated, block: B:193:0x0a6f  */
    /* JADX WARN: Code duplicated, block: B:195:0x0a74  */
    /* JADX WARN: Code duplicated, block: B:196:0x0b23  */
    /* JADX WARN: Code duplicated, block: B:220:0x0cb7  */
    /* JADX WARN: Code duplicated, block: B:223:0x0cc2  */
    /* JADX WARN: Code duplicated, block: B:226:0x0cdf  */
    /* JADX WARN: Code duplicated, block: B:230:0x0cfe A[LOOP:18: B:228:0x0cf9->B:230:0x0cfe, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:233:0x0d1f  */
    /* JADX WARN: Code duplicated, block: B:260:? A[RETURN, SYNTHETIC] */
    public void q() {
        int i2;
        int i3;
        int i4;
        int i5;
        int length;
        float[] fArr;
        char c2;
        char c3;
        char c4;
        float[] fArr2;
        float[][] fArr3;
        float[] fArr4;
        float[][] fArr5;
        int i6;
        char c5;
        int i7;
        int i8;
        int i9;
        int i10;
        int[] iArr;
        float[][] fArr6;
        float[][] fArr7;
        if (this.f17837i) {
            int iS = s(30);
            if ((iS & 3) != 0) {
                this.f17860t0 = 0;
            } else {
                this.f17860t0++;
            }
            if (this.f17860t0 >= 50) {
                this.f17841k.removeCallbacks(this.Q);
                this.f17837i = false;
                this.f17841k.postDelayed(this.O, 100L);
            }
            if ((iS & 1) != 0) {
                int[] iArrR = r(6, 40);
                int[] iArr2 = new int[3];
                for (int i11 = 0; i11 < this.T.length; i11++) {
                    int i12 = i11 * 2;
                    this.T[i11] = Math.max(DrmManagerClient.ERROR_UNKNOWN, Math.min(Math.round(p(t(s0.x(iArrR[i12 + 1], iArrR[i12])))), 2000));
                    float[] fArr8 = this.f17858s0;
                    int[] iArr3 = this.T;
                    fArr8[i11] = iArr3[i11] / 1000.0f;
                    float fMax = Math.max(DrmManagerClient.ERROR_UNKNOWN, Math.min(iArr3[i11] - this.f17823a0[i11], 2000)) / 100.0f;
                    iArr2[i11] = this.T[i11];
                    float[] fArr9 = this.Z;
                    float f2 = this.f17828d0;
                    fArr9[i11] = (fArr9[i11] * f2) + ((1.0f - f2) * fMax);
                    this.f17826c0[i11][this.f17830e0] = fMax - fArr9[i11];
                }
                this.f17824b0[0] = l(this.f17826c0[0]);
                this.f17824b0[1] = l(this.f17826c0[1]);
                this.f17824b0[2] = l(this.f17826c0[2]);
                int[] iArr4 = this.T;
                float degrees = (float) Math.toDegrees(Math.atan(((double) (iArr4[0] / 1000.0f)) / Math.sqrt(Math.pow(iArr4[1] / 1000.0f, 2.0d) + Math.pow(this.T[2] / 1000.0f, 2.0d))));
                int[] iArr5 = this.T;
                float degrees2 = (float) Math.toDegrees(Math.atan(((double) (iArr5[1] / 1000.0f)) / Math.sqrt(Math.pow(iArr5[2] / 1000.0f, 2.0d) + Math.pow(this.T[0] / 1000.0f, 2.0d))));
                int[] iArr6 = this.T;
                float degrees3 = (float) Math.toDegrees(Math.atan(((double) (iArr6[2] / 1000.0f)) / Math.sqrt(Math.pow(iArr6[0] / 1000.0f, 2.0d) + Math.pow(this.T[1] / 1000.0f, 2.0d))));
                int[] iArr7 = this.T;
                if (iArr7[1] <= 0) {
                    c2 = 0;
                    this.E[0] = degrees;
                } else if (degrees > 0.0f) {
                    c2 = 0;
                    this.E[0] = 180.0f - degrees;
                } else {
                    c2 = 0;
                    this.E[0] = (-180.0f) - degrees;
                }
                float[] fArr10 = this.E;
                if (fArr10[c2] < 0.0f) {
                    fArr10[c2] = fArr10[c2] + 360.0f;
                }
                if (iArr7[2] >= 0) {
                    c3 = 1;
                    fArr10[1] = degrees2;
                } else if (degrees2 > 0.0f) {
                    c3 = 1;
                    fArr10[1] = 180.0f - degrees2;
                } else {
                    c3 = 1;
                    fArr10[1] = (-180.0f) - degrees2;
                }
                if (fArr10[c3] < 0.0f) {
                    fArr10[c3] = fArr10[c3] + 360.0f;
                }
                if (iArr7[c3] <= 0) {
                    c4 = 2;
                    fArr10[2] = degrees3;
                } else if (degrees3 > 0.0f) {
                    c4 = 2;
                    fArr10[2] = 180.0f - degrees3;
                } else {
                    c4 = 2;
                    fArr10[2] = (-180.0f) - degrees3;
                }
                if (fArr10[c4] < 0.0f) {
                    fArr10[c4] = fArr10[c4] + 360.0f;
                }
                float[] fArr11 = new float[3];
                int i13 = 0;
                for (int i14 = 3; i13 < i14; i14 = 3) {
                    fArr11[i13] = this.E[i13] - this.f17865w[i13];
                    if (fArr11[i13] < 0.0f) {
                        fArr11[i13] = fArr11[i13] + 360.0f;
                    }
                    if (fArr11[i13] > 360.0f) {
                        fArr11[i13] = 360.0f;
                    }
                    if (fArr11[i13] > 180.0f) {
                        fArr11[i13] = fArr11[i13] - 360.0f;
                    }
                    i13++;
                }
                float f3 = fArr11[0];
                float f4 = fArr11[1];
                float f5 = fArr11[2];
                float[] fArr12 = this.f17863v;
                fArr12[0] = fArr11[0];
                fArr12[1] = fArr11[1];
                fArr12[2] = fArr11[2];
                int i15 = 0;
                while (true) {
                    fArr2 = this.f17869y;
                    if (i15 >= fArr2.length - 1) {
                        break;
                    }
                    int i16 = i15 + 1;
                    fArr2[i15] = fArr2[i16];
                    i15 = i16;
                }
                fArr2[fArr2.length - 1] = this.f17863v[2];
                int i17 = 0;
                while (true) {
                    float[] fArr13 = this.f17869y;
                    if (i17 >= fArr13.length) {
                        break;
                    }
                    this.f17867x[i17] = fArr13[i17];
                    i17++;
                }
                int i18 = 0;
                while (true) {
                    float[] fArr14 = this.f17867x;
                    if (i18 >= fArr14.length) {
                        break;
                    }
                    for (int length2 = fArr14.length - 1; length2 > i18; length2--) {
                        float[] fArr15 = this.f17867x;
                        int i19 = length2 - 1;
                        if (fArr15[length2] < fArr15[i19]) {
                            float f6 = fArr15[i19];
                            fArr15[i19] = fArr15[length2];
                            fArr15[length2] = f6;
                        }
                    }
                    i18++;
                }
                int i20 = 0;
                while (true) {
                    fArr3 = this.f17871z;
                    if (i20 >= fArr3[2].length) {
                        break;
                    }
                    int i21 = i20 + 1;
                    fArr3[2][i20] = this.f17867x[i21];
                    i20 = i21;
                }
                this.C[2] = l(fArr3[2]);
                float[] fArr16 = this.C;
                if (fArr16[2] > 2.0d) {
                    this.F[0] = 1;
                } else if (fArr16[2] < -2.0d) {
                    this.F[0] = -1;
                } else {
                    this.F[0] = 0;
                }
                int i22 = 0;
                while (true) {
                    fArr4 = this.B;
                    if (i22 >= fArr4.length - 1) {
                        break;
                    }
                    int i23 = i22 + 1;
                    fArr4[i22] = fArr4[i23];
                    i22 = i23;
                }
                fArr4[fArr4.length - 1] = this.f17863v[0];
                int i24 = 0;
                while (true) {
                    float[] fArr17 = this.B;
                    if (i24 >= fArr17.length) {
                        break;
                    }
                    this.A[i24] = fArr17[i24];
                    i24++;
                }
                int i25 = 0;
                while (true) {
                    float[] fArr18 = this.A;
                    if (i25 >= fArr18.length) {
                        break;
                    }
                    for (int length3 = fArr18.length - 1; length3 > i25; length3--) {
                        float[] fArr19 = this.A;
                        int i26 = length3 - 1;
                        if (fArr19[length3] < fArr19[i26]) {
                            float f7 = fArr19[i26];
                            fArr19[i26] = fArr19[length3];
                            fArr19[length3] = f7;
                        }
                    }
                    i25++;
                }
                int i27 = 0;
                while (true) {
                    fArr5 = this.f17871z;
                    if (i27 >= fArr5[2].length) {
                        break;
                    }
                    int i28 = i27 + 1;
                    fArr5[0][i27] = this.A[i28];
                    i27 = i28;
                }
                this.C[0] = l(fArr5[0]);
                if (this.f17843l) {
                    int i29 = this.f17847n - 1;
                    this.f17847n = i29;
                    if (i29 >= 0) {
                        float[][] fArr20 = this.f17849o;
                        float[] fArr21 = fArr20[0];
                        float[] fArr22 = this.f17861u;
                        fArr21[i29] = fArr22[0];
                        fArr20[1][i29] = fArr22[1];
                        fArr20[2][i29] = fArr22[2];
                        float[][] fArr23 = this.f17851p;
                        float[] fArr24 = fArr23[0];
                        float[] fArr25 = this.E;
                        fArr24[i29] = fArr25[0];
                        fArr23[1][i29] = fArr25[1];
                        fArr23[2][i29] = fArr25[2];
                        i6 = 1;
                    } else {
                        this.f17843l = false;
                        int[] iArr8 = this.f17823a0;
                        iArr8[0] = iArr2[0] - 0;
                        iArr8[1] = iArr2[1] - 0;
                        iArr8[2] = iArr2[2] + IntentFilter.SYSTEM_LOW_PRIORITY;
                        this.f17894b.r(0, iArr8);
                        this.f17894b.e(0);
                        int i30 = 0;
                        while (true) {
                            float[] fArr26 = this.f17865w;
                            if (i30 >= fArr26.length) {
                                break;
                            }
                            fArr26[i30] = l(this.f17851p[i30]);
                            this.f17857s[i30] = (int) (this.f17865w[i30] * 10000.0f);
                            i30++;
                        }
                        this.f17894b.r(2, this.f17857s);
                        this.f17894b.e(2);
                        for (int i31 = 0; i31 < this.f17861u.length; i31++) {
                            this.f17859t[i31] = l(this.f17849o[i31]);
                            this.f17855r[i31] = (int) (this.f17859t[i31] * 100.0f);
                        }
                        i6 = 1;
                        this.f17894b.r(1, this.f17855r);
                        this.f17894b.e(1);
                    }
                } else {
                    i6 = 1;
                }
                int i32 = this.f17830e0 + i6;
                this.f17830e0 = i32;
                if (i32 >= i6) {
                    this.f17830e0 = 0;
                }
                this.f17834g0 = iArr2;
                int i33 = 0;
                while (true) {
                    float[] fArr27 = this.f17836h0;
                    if (i33 >= fArr27.length) {
                        break;
                    }
                    fArr27[i33] = new BigDecimal(this.Z[i33]).setScale(3, 4).floatValue();
                    this.f17838i0[i33] = new BigDecimal(this.f17824b0[i33]).setScale(2, 4).floatValue();
                    int i34 = 0;
                    while (true) {
                        fArr6 = this.f17840j0;
                        if (i34 >= fArr6[i33].length - 1) {
                            break;
                        }
                        int i35 = i34 + 1;
                        fArr6[i33][i34] = fArr6[i33][i35];
                        i34 = i35;
                    }
                    fArr6[i33][i34] = this.f17838i0[i33] * 100.0f;
                    int i36 = 0;
                    while (true) {
                        fArr7 = this.f17842k0;
                        if (i36 < fArr7[i33].length - 1) {
                            int i37 = i36 + 1;
                            fArr7[i33][i36] = fArr7[i33][i37];
                            i36 = i37;
                        }
                    }
                    fArr7[i33][i36] = this.f17838i0[i33] * 100.0f;
                    i33++;
                }
                float[][] fArr28 = this.f17842k0;
                float f8 = fArr28[1][2] > 0.0f ? fArr28[1][2] + 0.0f : 0.0f - fArr28[1][2];
                float f9 = fArr28[1][1] > 0.0f ? f8 + fArr28[1][1] : f8 - fArr28[1][1];
                float[][] fArr29 = this.f17852p0;
                fArr29[0][0] = fArr29[0][1];
                fArr29[0][1] = fArr29[0][2];
                fArr29[0][2] = f9;
                float f10 = fArr29[0][1];
                int[] iArr9 = L0;
                if (f10 <= iArr9[3] || fArr29[0][2] <= iArr9[3]) {
                    if (fArr29[0][1] <= iArr9[2] || fArr29[0][2] <= iArr9[2]) {
                        if (fArr29[0][1] > iArr9[1]) {
                            c5 = 2;
                            if (fArr29[0][2] > iArr9[1]) {
                                i7 = 3;
                                this.F[3] = 2;
                                i8 = 1;
                            }
                        } else {
                            c5 = 2;
                        }
                        if (fArr29[0][1] <= iArr9[0] || fArr29[0][c5] <= iArr9[0]) {
                            i7 = 3;
                            i8 = 1;
                            this.F[3] = 0;
                        } else {
                            i7 = 3;
                            i8 = 1;
                            this.F[3] = 1;
                        }
                    } else {
                        i7 = 3;
                        this.F[3] = 3;
                    }
                    x0.c.X2().H0(i8, null, this.f17836h0, null);
                    x0.c.X2().H0(i7, null, this.f17838i0, null);
                    float[][] fArr30 = this.f17852p0;
                    i9 = (int) fArr30[i8][2];
                    i10 = (int) fArr30[0][2];
                    iArr = this.F;
                    if (iArr[i8] == -1) {
                        if (iArr[2] == -1) {
                            n1.b bVarP = f.p();
                            LogType logType = LogType.SENSOR;
                            float[] fArr31 = this.V;
                            bVarP.t(logType, String.format("上下坡角度: %3.2f,  %4.2f,  %4.2f, 结果：%4d，%4d，%4d，%4d  左转  ,加速中！！！tim:%3d,%3d,%3d,转角：%3.2f,ACCSUM:%4d,%4d,spd:%3d,%3d,T:%3.2f", Float.valueOf(this.f17863v[2]), Float.valueOf(this.C[2]), Float.valueOf(this.C[0]), Integer.valueOf(this.F[0]), Integer.valueOf(this.F[1]), Integer.valueOf(this.F[2]), Integer.valueOf(this.F[3]), Integer.valueOf(this.K), Integer.valueOf(this.J), Integer.valueOf(this.L), Float.valueOf(fArr31[fArr31.length - 1]), Integer.valueOf(i9), Integer.valueOf(i10), Integer.valueOf(u0.b.X1), Integer.valueOf(K0), Float.valueOf(this.H0)));
                        } else if (iArr[2] == 1) {
                            n1.b bVarP2 = f.p();
                            LogType logType2 = LogType.SENSOR;
                            float[] fArr32 = this.V;
                            bVarP2.t(logType2, String.format("上下坡角度: %3.2f,  %4.2f,  %4.2f, 结果：%4d，%4d，%4d，%4d  左转  ,减速中！！！tim:%3d,%3d,%3d,转角：%3.2f,ACCSUM:%4d,%4d,spd:%3d,%3d,T:%3.2f", Float.valueOf(this.f17863v[2]), Float.valueOf(this.C[2]), Float.valueOf(this.C[0]), Integer.valueOf(this.F[0]), Integer.valueOf(this.F[1]), Integer.valueOf(this.F[2]), Integer.valueOf(this.F[3]), Integer.valueOf(this.K), Integer.valueOf(this.J), Integer.valueOf(this.L), Float.valueOf(fArr32[fArr32.length - 1]), Integer.valueOf(i9), Integer.valueOf(i10), Integer.valueOf(u0.b.X1), Integer.valueOf(K0), Float.valueOf(this.H0)));
                        } else {
                            n1.b bVarP3 = f.p();
                            LogType logType3 = LogType.SENSOR;
                            float[] fArr33 = this.V;
                            bVarP3.t(logType3, String.format("上下坡角度: %3.2f,  %4.2f,  %4.2f, 结果：%4d，%4d，%4d，%4d  左转  ,---------tim:%3d,%3d,%3d,转角：%3.2f,ACCSUM:%4d,%4d,spd:%3d,%3d,T:%3.2f", Float.valueOf(this.f17863v[2]), Float.valueOf(this.C[2]), Float.valueOf(this.C[0]), Integer.valueOf(this.F[0]), Integer.valueOf(this.F[1]), Integer.valueOf(this.F[2]), Integer.valueOf(this.F[3]), Integer.valueOf(this.K), Integer.valueOf(this.J), Integer.valueOf(this.L), Float.valueOf(fArr33[fArr33.length - 1]), Integer.valueOf(i9), Integer.valueOf(i10), Integer.valueOf(u0.b.X1), Integer.valueOf(K0), Float.valueOf(this.H0)));
                        }
                    } else if (iArr[1] == 1) {
                        if (iArr[2] == -1) {
                            n1.b bVarP4 = f.p();
                            LogType logType4 = LogType.SENSOR;
                            float[] fArr34 = this.V;
                            bVarP4.t(logType4, String.format("上下坡角度: %3.2f,  %4.2f,  %4.2f, 结果：%4d，%4d，%4d，%4d  右转  ,加速中！！！tim:%3d,%3d,%3d,转角：%3.2f,ACCSUM:%4d,%4d,spd:%3d,%3d,T:%3.2f", Float.valueOf(this.f17863v[2]), Float.valueOf(this.C[2]), Float.valueOf(this.C[0]), Integer.valueOf(this.F[0]), Integer.valueOf(this.F[1]), Integer.valueOf(this.F[2]), Integer.valueOf(this.F[3]), Integer.valueOf(this.K), Integer.valueOf(this.J), Integer.valueOf(this.L), Float.valueOf(fArr34[fArr34.length - 1]), Integer.valueOf(i9), Integer.valueOf(i10), Integer.valueOf(u0.b.X1), Integer.valueOf(K0), Float.valueOf(this.H0)));
                        } else if (iArr[2] == 1) {
                            n1.b bVarP5 = f.p();
                            LogType logType5 = LogType.SENSOR;
                            float[] fArr35 = this.V;
                            bVarP5.t(logType5, String.format("上下坡角度: %3.2f,  %4.2f,  %4.2f, 结果：%4d，%4d，%4d，%4d  右转  ,减速中！！！tim:%3d,%3d,%3d,转角：%3.2f,ACCSUM:%4d,%4d,spd:%3d,%3d,T:%3.2f", Float.valueOf(this.f17863v[2]), Float.valueOf(this.C[2]), Float.valueOf(this.C[0]), Integer.valueOf(this.F[0]), Integer.valueOf(this.F[1]), Integer.valueOf(this.F[2]), Integer.valueOf(this.F[3]), Integer.valueOf(this.K), Integer.valueOf(this.J), Integer.valueOf(this.L), Float.valueOf(fArr35[fArr35.length - 1]), Integer.valueOf(i9), Integer.valueOf(i10), Integer.valueOf(u0.b.X1), Integer.valueOf(K0), Float.valueOf(this.H0)));
                        } else {
                            n1.b bVarP6 = f.p();
                            LogType logType6 = LogType.SENSOR;
                            float[] fArr36 = this.V;
                            bVarP6.t(logType6, String.format("上下坡角度: %3.2f,  %4.2f,  %4.2f, 结果：%4d，%4d，%4d，%4d  右转  ,--------tim:%3d,%3d,%3d,转角：%3.2f,ACCSUM:%4d,%4d,spd:%3d,%3d,T:%3.2f", Float.valueOf(this.f17863v[2]), Float.valueOf(this.C[2]), Float.valueOf(this.C[0]), Integer.valueOf(this.F[0]), Integer.valueOf(this.F[1]), Integer.valueOf(this.F[2]), Integer.valueOf(this.F[3]), Integer.valueOf(this.K), Integer.valueOf(this.J), Integer.valueOf(this.L), Float.valueOf(fArr36[fArr36.length - 1]), Integer.valueOf(i9), Integer.valueOf(i10), Integer.valueOf(u0.b.X1), Integer.valueOf(K0), Float.valueOf(this.H0)));
                        }
                    } else if (iArr[2] == -1) {
                        n1.b bVarP7 = f.p();
                        LogType logType7 = LogType.SENSOR;
                        float[] fArr37 = this.V;
                        bVarP7.t(logType7, String.format("上下坡角度: %3.2f,  %4.2f,  %4.2f, 结果：%4d，%4d，%4d，%4d -----,加速中！！！tim:%3d,%3d,%3d,转角：%3.2f,ACCSUM:%4d,%4d,spd:%3d,%3d,T:%3.2f", Float.valueOf(this.f17863v[2]), Float.valueOf(this.C[2]), Float.valueOf(this.C[0]), Integer.valueOf(this.F[0]), Integer.valueOf(this.F[1]), Integer.valueOf(this.F[2]), Integer.valueOf(this.F[3]), Integer.valueOf(this.K), Integer.valueOf(this.J), Integer.valueOf(this.L), Float.valueOf(fArr37[fArr37.length - 1]), Integer.valueOf(i9), Integer.valueOf(i10), Integer.valueOf(u0.b.X1), Integer.valueOf(K0), Float.valueOf(this.H0)));
                    } else if (iArr[2] == 1) {
                        n1.b bVarP8 = f.p();
                        LogType logType8 = LogType.SENSOR;
                        float[] fArr38 = this.V;
                        bVarP8.t(logType8, String.format("上下坡角度: %3.2f,  %4.2f,  %4.2f, 结果：%4d，%4d，%4d，%4d -----,减速中！！！tim:%3d,%3d,%3d,转角：%3.2f,ACCSUM:%4d,%4d,spd:%3d,%3d,T:%3.2f", Float.valueOf(this.f17863v[2]), Float.valueOf(this.C[2]), Float.valueOf(this.C[0]), Integer.valueOf(this.F[0]), Integer.valueOf(this.F[1]), Integer.valueOf(this.F[2]), Integer.valueOf(this.F[3]), Integer.valueOf(this.K), Integer.valueOf(this.J), Integer.valueOf(this.L), Float.valueOf(fArr38[fArr38.length - 1]), Integer.valueOf(i9), Integer.valueOf(i10), Integer.valueOf(u0.b.X1), Integer.valueOf(K0), Float.valueOf(this.H0)));
                    } else {
                        n1.b bVarP9 = f.p();
                        LogType logType9 = LogType.SENSOR;
                        float[] fArr39 = this.V;
                        bVarP9.t(logType9, String.format("上下坡角度: %3.2f,  %4.2f,  %4.2f, 结果：%4d，%4d，%4d，%4d------,--------tim:%3d,%3d,%3d,转角：%3.2f,ACCSUM:%4d,%4d,spd:%3d,%3d,T:%3.2f", Float.valueOf(this.f17863v[2]), Float.valueOf(this.C[2]), Float.valueOf(this.C[0]), Integer.valueOf(this.F[0]), Integer.valueOf(this.F[1]), Integer.valueOf(this.F[2]), Integer.valueOf(this.F[3]), Integer.valueOf(this.K), Integer.valueOf(this.J), Integer.valueOf(this.L), Float.valueOf(fArr39[fArr39.length - 1]), Integer.valueOf(i9), Integer.valueOf(i10), Integer.valueOf(u0.b.X1), Integer.valueOf(K0), Float.valueOf(this.H0)));
                    }
                } else {
                    this.F[3] = 4;
                    i7 = 3;
                }
                i8 = 1;
                x0.c.X2().H0(i8, null, this.f17836h0, null);
                x0.c.X2().H0(i7, null, this.f17838i0, null);
                float[][] fArr310 = this.f17852p0;
                i9 = (int) fArr310[i8][2];
                i10 = (int) fArr310[0][2];
                iArr = this.F;
                if (iArr[i8] == -1) {
                    if (iArr[2] == -1) {
                        n1.b bVarP10 = f.p();
                        LogType logType10 = LogType.SENSOR;
                        float[] fArr311 = this.V;
                        bVarP10.t(logType10, String.format("上下坡角度: %3.2f,  %4.2f,  %4.2f, 结果：%4d，%4d，%4d，%4d  左转  ,加速中！！！tim:%3d,%3d,%3d,转角：%3.2f,ACCSUM:%4d,%4d,spd:%3d,%3d,T:%3.2f", Float.valueOf(this.f17863v[2]), Float.valueOf(this.C[2]), Float.valueOf(this.C[0]), Integer.valueOf(this.F[0]), Integer.valueOf(this.F[1]), Integer.valueOf(this.F[2]), Integer.valueOf(this.F[3]), Integer.valueOf(this.K), Integer.valueOf(this.J), Integer.valueOf(this.L), Float.valueOf(fArr311[fArr311.length - 1]), Integer.valueOf(i9), Integer.valueOf(i10), Integer.valueOf(u0.b.X1), Integer.valueOf(K0), Float.valueOf(this.H0)));
                    } else if (iArr[2] == 1) {
                        n1.b bVarP11 = f.p();
                        LogType logType11 = LogType.SENSOR;
                        float[] fArr312 = this.V;
                        bVarP11.t(logType11, String.format("上下坡角度: %3.2f,  %4.2f,  %4.2f, 结果：%4d，%4d，%4d，%4d  左转  ,减速中！！！tim:%3d,%3d,%3d,转角：%3.2f,ACCSUM:%4d,%4d,spd:%3d,%3d,T:%3.2f", Float.valueOf(this.f17863v[2]), Float.valueOf(this.C[2]), Float.valueOf(this.C[0]), Integer.valueOf(this.F[0]), Integer.valueOf(this.F[1]), Integer.valueOf(this.F[2]), Integer.valueOf(this.F[3]), Integer.valueOf(this.K), Integer.valueOf(this.J), Integer.valueOf(this.L), Float.valueOf(fArr312[fArr312.length - 1]), Integer.valueOf(i9), Integer.valueOf(i10), Integer.valueOf(u0.b.X1), Integer.valueOf(K0), Float.valueOf(this.H0)));
                    } else {
                        n1.b bVarP12 = f.p();
                        LogType logType12 = LogType.SENSOR;
                        float[] fArr313 = this.V;
                        bVarP12.t(logType12, String.format("上下坡角度: %3.2f,  %4.2f,  %4.2f, 结果：%4d，%4d，%4d，%4d  左转  ,---------tim:%3d,%3d,%3d,转角：%3.2f,ACCSUM:%4d,%4d,spd:%3d,%3d,T:%3.2f", Float.valueOf(this.f17863v[2]), Float.valueOf(this.C[2]), Float.valueOf(this.C[0]), Integer.valueOf(this.F[0]), Integer.valueOf(this.F[1]), Integer.valueOf(this.F[2]), Integer.valueOf(this.F[3]), Integer.valueOf(this.K), Integer.valueOf(this.J), Integer.valueOf(this.L), Float.valueOf(fArr313[fArr313.length - 1]), Integer.valueOf(i9), Integer.valueOf(i10), Integer.valueOf(u0.b.X1), Integer.valueOf(K0), Float.valueOf(this.H0)));
                    }
                } else if (iArr[1] == 1) {
                    if (iArr[2] == -1) {
                        n1.b bVarP13 = f.p();
                        LogType logType13 = LogType.SENSOR;
                        float[] fArr314 = this.V;
                        bVarP13.t(logType13, String.format("上下坡角度: %3.2f,  %4.2f,  %4.2f, 结果：%4d，%4d，%4d，%4d  右转  ,加速中！！！tim:%3d,%3d,%3d,转角：%3.2f,ACCSUM:%4d,%4d,spd:%3d,%3d,T:%3.2f", Float.valueOf(this.f17863v[2]), Float.valueOf(this.C[2]), Float.valueOf(this.C[0]), Integer.valueOf(this.F[0]), Integer.valueOf(this.F[1]), Integer.valueOf(this.F[2]), Integer.valueOf(this.F[3]), Integer.valueOf(this.K), Integer.valueOf(this.J), Integer.valueOf(this.L), Float.valueOf(fArr314[fArr314.length - 1]), Integer.valueOf(i9), Integer.valueOf(i10), Integer.valueOf(u0.b.X1), Integer.valueOf(K0), Float.valueOf(this.H0)));
                    } else if (iArr[2] == 1) {
                        n1.b bVarP14 = f.p();
                        LogType logType14 = LogType.SENSOR;
                        float[] fArr315 = this.V;
                        bVarP14.t(logType14, String.format("上下坡角度: %3.2f,  %4.2f,  %4.2f, 结果：%4d，%4d，%4d，%4d  右转  ,减速中！！！tim:%3d,%3d,%3d,转角：%3.2f,ACCSUM:%4d,%4d,spd:%3d,%3d,T:%3.2f", Float.valueOf(this.f17863v[2]), Float.valueOf(this.C[2]), Float.valueOf(this.C[0]), Integer.valueOf(this.F[0]), Integer.valueOf(this.F[1]), Integer.valueOf(this.F[2]), Integer.valueOf(this.F[3]), Integer.valueOf(this.K), Integer.valueOf(this.J), Integer.valueOf(this.L), Float.valueOf(fArr315[fArr315.length - 1]), Integer.valueOf(i9), Integer.valueOf(i10), Integer.valueOf(u0.b.X1), Integer.valueOf(K0), Float.valueOf(this.H0)));
                    } else {
                        n1.b bVarP15 = f.p();
                        LogType logType15 = LogType.SENSOR;
                        float[] fArr316 = this.V;
                        bVarP15.t(logType15, String.format("上下坡角度: %3.2f,  %4.2f,  %4.2f, 结果：%4d，%4d，%4d，%4d  右转  ,--------tim:%3d,%3d,%3d,转角：%3.2f,ACCSUM:%4d,%4d,spd:%3d,%3d,T:%3.2f", Float.valueOf(this.f17863v[2]), Float.valueOf(this.C[2]), Float.valueOf(this.C[0]), Integer.valueOf(this.F[0]), Integer.valueOf(this.F[1]), Integer.valueOf(this.F[2]), Integer.valueOf(this.F[3]), Integer.valueOf(this.K), Integer.valueOf(this.J), Integer.valueOf(this.L), Float.valueOf(fArr316[fArr316.length - 1]), Integer.valueOf(i9), Integer.valueOf(i10), Integer.valueOf(u0.b.X1), Integer.valueOf(K0), Float.valueOf(this.H0)));
                    }
                } else if (iArr[2] == -1) {
                    n1.b bVarP16 = f.p();
                    LogType logType16 = LogType.SENSOR;
                    float[] fArr317 = this.V;
                    bVarP16.t(logType16, String.format("上下坡角度: %3.2f,  %4.2f,  %4.2f, 结果：%4d，%4d，%4d，%4d -----,加速中！！！tim:%3d,%3d,%3d,转角：%3.2f,ACCSUM:%4d,%4d,spd:%3d,%3d,T:%3.2f", Float.valueOf(this.f17863v[2]), Float.valueOf(this.C[2]), Float.valueOf(this.C[0]), Integer.valueOf(this.F[0]), Integer.valueOf(this.F[1]), Integer.valueOf(this.F[2]), Integer.valueOf(this.F[3]), Integer.valueOf(this.K), Integer.valueOf(this.J), Integer.valueOf(this.L), Float.valueOf(fArr317[fArr317.length - 1]), Integer.valueOf(i9), Integer.valueOf(i10), Integer.valueOf(u0.b.X1), Integer.valueOf(K0), Float.valueOf(this.H0)));
                } else if (iArr[2] == 1) {
                    n1.b bVarP17 = f.p();
                    LogType logType17 = LogType.SENSOR;
                    float[] fArr318 = this.V;
                    bVarP17.t(logType17, String.format("上下坡角度: %3.2f,  %4.2f,  %4.2f, 结果：%4d，%4d，%4d，%4d -----,减速中！！！tim:%3d,%3d,%3d,转角：%3.2f,ACCSUM:%4d,%4d,spd:%3d,%3d,T:%3.2f", Float.valueOf(this.f17863v[2]), Float.valueOf(this.C[2]), Float.valueOf(this.C[0]), Integer.valueOf(this.F[0]), Integer.valueOf(this.F[1]), Integer.valueOf(this.F[2]), Integer.valueOf(this.F[3]), Integer.valueOf(this.K), Integer.valueOf(this.J), Integer.valueOf(this.L), Float.valueOf(fArr318[fArr318.length - 1]), Integer.valueOf(i9), Integer.valueOf(i10), Integer.valueOf(u0.b.X1), Integer.valueOf(K0), Float.valueOf(this.H0)));
                } else {
                    n1.b bVarP18 = f.p();
                    LogType logType18 = LogType.SENSOR;
                    float[] fArr319 = this.V;
                    bVarP18.t(logType18, String.format("上下坡角度: %3.2f,  %4.2f,  %4.2f, 结果：%4d，%4d，%4d，%4d------,--------tim:%3d,%3d,%3d,转角：%3.2f,ACCSUM:%4d,%4d,spd:%3d,%3d,T:%3.2f", Float.valueOf(this.f17863v[2]), Float.valueOf(this.C[2]), Float.valueOf(this.C[0]), Integer.valueOf(this.F[0]), Integer.valueOf(this.F[1]), Integer.valueOf(this.F[2]), Integer.valueOf(this.F[3]), Integer.valueOf(this.K), Integer.valueOf(this.J), Integer.valueOf(this.L), Float.valueOf(fArr319[fArr319.length - 1]), Integer.valueOf(i9), Integer.valueOf(i10), Integer.valueOf(u0.b.X1), Integer.valueOf(K0), Float.valueOf(this.H0)));
                }
            }
            if ((iS & 2) != 0) {
                int[] iArrR2 = r(6, 34);
                int i38 = 3;
                float[] fArr40 = new float[3];
                int i39 = 0;
                while (i39 < i38) {
                    int i40 = i39 * 2;
                    fArr40[i39] = o(t(s0.x(iArrR2[i40 + 1], iArrR2[i40])));
                    i39++;
                    i38 = 3;
                }
                float[] fArr41 = new float[i38];
                fArr41[0] = fArr40[0] * 0.001f;
                fArr41[1] = fArr40[1] * 0.001f;
                fArr41[2] = fArr40[2] * 0.001f;
                float[] fArr42 = this.f17861u;
                float f11 = fArr41[0];
                int i41 = this.N;
                fArr42[0] = f11 * i41;
                fArr42[1] = fArr41[1] * i41;
                fArr42[2] = fArr41[2] * i41;
                float[] fArr43 = this.V;
                float f12 = fArr42[0];
                float[] fArr44 = this.f17859t;
                fArr43[0] = f12 - fArr44[0];
                i3 = 1;
                fArr43[fArr43.length - 1] = fArr42[1] - fArr44[1];
                if (fArr43[fArr43.length - 1] > 5.0f) {
                    this.F[1] = 1;
                } else if (fArr43[fArr43.length - 1] < -5.0f) {
                    this.F[1] = -1;
                } else {
                    i2 = 0;
                    this.F[1] = 0;
                }
                i4 = 4;
                i2 = 0;
                if ((iS & i4) != 0 || this.M < 25) {
                    i5 = i2;
                } else {
                    this.M = i2;
                    int[] iArr10 = new int[i3];
                    iArr10[i2] = 32;
                    int[] iArrR3 = r(2, iArr10);
                    float fM = m(t(s0.x(iArrR3[i3], iArrR3[i2])));
                    if (fM != this.H0) {
                        this.H0 = fM;
                        x0.c cVarX2 = x0.c.X2();
                        float[] fArr45 = new float[i3];
                        i5 = 0;
                        fArr45[0] = this.H0;
                        cVarX2.H0(8, null, fArr45, null);
                    } else {
                        i5 = 0;
                    }
                }
                if (!Arrays.equals(this.G, this.F)) {
                    int[] iArr11 = this.F;
                    this.G = Arrays.copyOf(iArr11, iArr11.length);
                    x0.c.X2().a3(5, this.G);
                }
                if (!Arrays.equals(this.D, this.C)) {
                    float[] fArr46 = this.C;
                    this.D = Arrays.copyOf(fArr46, fArr46.length);
                    x0.c.X2().H0(9, null, this.D, null);
                }
                length = this.V.length;
                fArr = new float[length];
                while (i5 < this.V.length) {
                    fArr[i5] = new BigDecimal(this.V[i5]).setScale(2, 4).floatValue();
                    i5++;
                }
                if (Arrays.equals(fArr, this.W)) {
                }
                this.W = Arrays.copyOf(fArr, length);
                x0.c.X2().H0(6, null, this.W, null);
            }
            i2 = 0;
            i3 = 1;
            i4 = 4;
            if ((iS & i4) != 0) {
                i5 = i2;
            } else {
                i5 = i2;
            }
            if (!Arrays.equals(this.G, this.F)) {
                int[] iArr12 = this.F;
                this.G = Arrays.copyOf(iArr12, iArr12.length);
                x0.c.X2().a3(5, this.G);
            }
            if (!Arrays.equals(this.D, this.C)) {
                float[] fArr47 = this.C;
                this.D = Arrays.copyOf(fArr47, fArr47.length);
                x0.c.X2().H0(9, null, this.D, null);
            }
            length = this.V.length;
            fArr = new float[length];
            while (i5 < this.V.length) {
                fArr[i5] = new BigDecimal(this.V[i5]).setScale(2, 4).floatValue();
                i5++;
            }
            if (Arrays.equals(fArr, this.W)) {
                this.W = Arrays.copyOf(fArr, length);
                x0.c.X2().H0(6, null, this.W, null);
            }
        }
    }

    public int[] r(int i2, int... iArr) {
        return this.f17831f.e(i2, this.f17835h, false, iArr);
    }

    public int s(int i2) {
        return r(1, i2)[0];
    }

    public int t(int i2) {
        int i3 = (32768 & i2) != 0 ? -1 : 1;
        int i4 = i3 == -1 ? i3 * ((~((i2 & 32767) - 1)) & 32767) : i2;
        String.format("%04X", Integer.valueOf(i2));
        return i4;
    }

    public int u(int i2, int... iArr) {
        n nVar = this.f17831f;
        if (nVar != null) {
            return nVar.d(this.f17835h, new int[]{i2}, iArr);
        }
        return -1;
    }
}
