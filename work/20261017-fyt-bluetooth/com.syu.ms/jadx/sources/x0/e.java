package x0;

import a.f;
import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Handler;
import android.os.RemoteException;
import android.util.Log;
import app.App;
import chip.Chip;
import java.lang.reflect.Array;
import java.util.Arrays;
import o1.h;
import o1.h0;
import o1.s0;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class e extends x0.d implements SensorEventListener {

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public static float[] f17895m0 = {0.8f, 2.2f, 6.0f, 13.0f};
    public float[][] A;
    public int B;
    public int C;
    public int D;
    public int E;
    public float[] F;
    public float[] G;
    public final int H;
    public float[] I;
    public float[][] J;
    public float[][] K;
    public float[][] L;
    public int M;
    public int N;
    public final Runnable O;
    public final Runnable P;
    public final int Q;
    public Runnable R;
    public Handler S;
    public Runnable T;
    public final int U;
    public final int V;
    public final int W;
    public float[] X;
    public float[] Y;
    public final float Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public float[] f17896a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public final double f17897b0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f17898c;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public int f17899c0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f17900d;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public int f17901d0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public SensorManager f17902e;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public final float f17903e0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public float[] f17904f;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public float f17905f0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public float[] f17906g;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public float[] f17907g0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public float[] f17908h;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public int f17909h0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float[] f17910i;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public final float f17911i0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public float[] f17912j;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public float[] f17913j0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public float[] f17914k;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public float[] f17915k0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public float[] f17916l;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public float[] f17917l0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int[] f17918m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int[] f17919n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final int f17920o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f17921p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public float[][] f17922q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public float[][] f17923r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public float[] f17924s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public float[] f17925t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public float[] f17926u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public float[] f17927v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final int f17928w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f17929x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public boolean f17930y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public float[][] f17931z;

    public class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f17932a = false;

        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Log.e("Gyro", "-------- initSensor DataMain.sAccOn : " + u0.b.f17306a0 + " DataMain.sScreenOn : " + u0.b.f17323g);
            boolean z2 = u0.b.f17306a0 == 1 && u0.b.f17323g == 1;
            if (z2 == this.f17932a) {
                return;
            }
            this.f17932a = z2;
            if (z2) {
                e eVar = e.this;
                eVar.S.postDelayed(eVar.P, 2000L);
                return;
            }
            try {
                e eVar2 = e.this;
                eVar2.S.removeCallbacks(eVar2.P);
                e eVar3 = e.this;
                eVar3.f17902e.unregisterListener(eVar3);
            } catch (Exception unused) {
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            e.this.S.removeCallbacks(this);
            e.this.r(4, 1, 9);
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            e eVar = e.this;
            int i2 = u0.b.X1;
            int i3 = i2 - eVar.D;
            eVar.C = i3;
            if (i3 > 0) {
                if (i2 >= 10) {
                    if (i2 < 20) {
                        if (i3 >= 5) {
                            eVar.E = 55;
                        }
                    } else if (i2 < 40) {
                        if (i3 >= 6) {
                            eVar.E = 55;
                        }
                    } else if (i2 < 70) {
                        if (i3 >= 7) {
                            eVar.E = 55;
                        }
                    } else if (i2 < 100) {
                        if (i3 >= 8) {
                            eVar.E = 55;
                        }
                    } else if (i3 >= 5) {
                        eVar.E = 55;
                    }
                }
            } else if (i3 >= 0) {
                eVar.E = 0;
            } else if (i2 >= 6) {
                if (i2 < 20) {
                    if (i3 <= -5) {
                        eVar.E = 55;
                    }
                } else if (i2 < 40) {
                    if (i3 <= -6) {
                        eVar.E = 55;
                    }
                } else if (i2 < 70) {
                    if (i3 <= -7) {
                        eVar.E = 55;
                    }
                } else if (i2 < 100) {
                    if (i3 <= -8) {
                        eVar.E = 55;
                    }
                } else if (i3 <= -8) {
                    eVar.E = 55;
                }
            }
            eVar.D = i2;
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            e eVar = e.this;
            int i2 = eVar.E;
            if (i2 > 0) {
                eVar.E = i2 - 1;
            }
            int i3 = eVar.E;
            if (i3 > 0 && eVar.C >= 1) {
                eVar.f17918m[2] = -1;
            } else if (i3 <= 0 || eVar.C > -1) {
                eVar.f17918m[2] = 0;
            } else {
                eVar.f17918m[2] = 1;
            }
            eVar.S.postDelayed(eVar.T, 40L);
        }
    }

    public e(int i2) {
        super(i2);
        this.f17898c = false;
        this.f17900d = "SGyro";
        this.f17902e = null;
        this.f17904f = new float[3];
        this.f17906g = new float[]{0.0f, 0.0f, 0.0f};
        this.f17908h = new float[3];
        this.f17910i = new float[3];
        this.f17912j = new float[3];
        this.f17914k = new float[]{0.0f, 0.0f, 0.0f};
        this.f17916l = new float[3];
        this.f17918m = new int[]{0, 0, 0, 0};
        this.f17919n = new int[4];
        this.f17920o = 3;
        this.f17921p = 0;
        this.f17922q = (float[][]) Array.newInstance((Class<?>) float.class, 3, 3);
        this.f17923r = (float[][]) Array.newInstance((Class<?>) float.class, 3, 3);
        this.f17924s = new float[3];
        this.f17925t = new float[]{0.0f, 0.0f, 0.0f};
        this.f17926u = new float[6];
        this.f17927v = new float[6];
        this.f17928w = 26;
        this.f17929x = false;
        this.f17930y = false;
        this.f17931z = null;
        this.A = null;
        this.B = 26;
        this.F = new float[3];
        this.G = new float[3];
        this.H = 8;
        this.I = new float[3];
        this.J = (float[][]) Array.newInstance((Class<?>) float.class, 3, 8);
        this.K = (float[][]) Array.newInstance((Class<?>) float.class, 3, 8);
        this.L = (float[][]) Array.newInstance((Class<?>) float.class, 3, 26);
        this.M = 8;
        this.N = 1;
        this.O = new a();
        this.P = new b();
        this.Q = 55;
        this.R = new c();
        this.S = new Handler();
        this.T = new d();
        this.U = 0;
        this.V = 1;
        this.W = 2;
        this.X = new float[]{0.0f, 0.0f, 0.0f};
        this.Y = new float[]{0.0f, 0.0f, 0.0f};
        this.Z = 1.0E-9f;
        this.f17896a0 = new float[]{0.0f, 0.0f, 0.0f};
        this.f17897b0 = 0.0768d;
        this.f17899c0 = 0;
        this.f17901d0 = 16;
        this.f17903e0 = 2.0f;
        this.f17905f0 = 0.0f;
        this.f17907g0 = new float[]{0.0f, 0.0f, 0.0f};
        this.f17909h0 = 0;
        this.f17911i0 = 0.27f;
        this.f17913j0 = new float[]{0.0f, 0.0f, 0.0f};
        this.f17915k0 = new float[]{0.0f, 0.0f, 0.0f};
        this.f17917l0 = new float[]{0.0f, 0.0f, 0.0f};
        this.f17902e = (SensorManager) App.c().getSystemService(Context.SENSOR_SERVICE);
    }

    @Override // x0.d
    public void a(boolean z2) {
        super.a(z2);
        t();
    }

    @Override // x0.d
    public void b() {
        this.S.removeCallbacks(this.T);
        h.f16866b.d(this.R);
        u0.c.f17386m.d(this.O);
        u0.c.f17378e.d(this.O);
    }

    @Override // x0.d
    public boolean c(int i2, y.b bVar) {
        boolean z2 = false;
        if (i2 == 10) {
            try {
                bVar.H0(i2, new int[]{this.N}, null, null);
                z2 = true;
            } catch (RemoteException e2) {
                e2.printStackTrace();
                return true;
            }
        }
        return z2;
    }

    @Override // x0.d
    public boolean f(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            a(true);
        } else {
            if (i2 != 10) {
                return false;
            }
            if (s0.h(iArr, 0) && iArr[0] != this.N) {
                this.N = iArr[0] == 1 ? 1 : -1;
                x0.c.X2().a3(i2, this.N);
                this.f17894b.q(3, this.N);
                this.f17894b.e(3);
            }
        }
        return true;
    }

    @Override // x0.d
    public void g(String str) {
        if (str.contains(Chip.UEventName.EV6202RESET.b()) && u0.b.f17306a0 == 1 && u0.b.f17323g == 1) {
            this.f17902e.unregisterListener(this);
            this.S.removeCallbacks(this.P);
            this.S.postDelayed(this.P, 200L);
        }
    }

    @Override // x0.d
    public void i(h0 h0Var) {
        super.i(h0Var);
        this.N = h0Var.h(3, this.N);
        x0.c.X2().a3(10, this.N);
        this.f17925t = d(1, new float[]{0.0f, 0.0f, 0.0f});
        this.f17910i = d(2, new float[]{0.0f, 0.0f, 0.0f});
        this.G = d(4, new float[]{0.0f, 0.0f, 0.0f});
        this.f17912j = d(4, new float[]{0.0f, 0.0f, 0.0f});
    }

    @Override // x0.d
    public void j() {
        u0.c.f17378e.a(this.O, 0);
        u0.c.f17386m.a(this.O, 1);
        this.S.postDelayed(this.T, 250L);
        h.f16866b.a(this.R, 0);
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

    public final void m(SensorEvent sensorEvent) {
        int i2 = this.M;
        if (i2 > 0) {
            this.M = i2 - 1;
        } else {
            this.M = 7;
        }
        int i3 = 0;
        while (true) {
            float[] fArr = this.f17924s;
            if (i3 >= fArr.length) {
                break;
            }
            fArr[i3] = 0.0f;
            float[] fArr2 = this.F;
            fArr2[i3] = sensorEvent.values[i3] - this.f17904f[i3];
            float[] fArr3 = this.I;
            fArr3[i3] = fArr2[i3] - this.G[i3];
            this.K[i3][this.M] = fArr3[i3];
            i3++;
        }
        if (this.M == 0) {
            int i4 = 0;
            while (true) {
                float[][] fArr4 = this.K;
                if (i4 >= fArr4.length) {
                    break;
                }
                System.arraycopy(fArr4[i4], 0, this.J[i4], 0, fArr4[i4].length);
                i4++;
            }
        }
        int i5 = 0;
        while (i5 < 2) {
            float[][] fArr5 = this.f17923r;
            float[] fArr6 = fArr5[0];
            float[][] fArr7 = this.f17922q;
            int i6 = i5 + 1;
            fArr6[i5] = fArr7[0][i6] - fArr7[0][i5];
            fArr5[1][i5] = fArr7[1][i6] - fArr7[1][i5];
            fArr5[2][i5] = fArr7[2][i6] - fArr7[2][i5];
            fArr7[0][i5] = fArr7[0][i6];
            fArr7[1][i5] = fArr7[1][i6];
            fArr7[2][i5] = fArr7[2][i6];
            i5 = i6;
        }
        float[][] fArr8 = this.f17923r;
        float[] fArr9 = fArr8[0];
        float[] fArr10 = sensorEvent.values;
        float f2 = fArr10[0];
        float[][] fArr11 = this.f17922q;
        fArr9[i5] = f2 - fArr11[0][i5];
        fArr8[1][i5] = fArr10[1] - fArr11[1][i5];
        fArr8[2][i5] = fArr10[2] - fArr11[2][i5];
        fArr11[0][i5] = fArr10[0];
        fArr11[1][i5] = fArr10[1];
        fArr11[2][i5] = fArr10[2];
        for (int i7 = 0; i7 < this.f17924s.length; i7++) {
            for (int i8 = 0; i8 < 3; i8++) {
                float[][] fArr12 = this.f17923r;
                if (fArr12[i7][i8] > 0.0f) {
                    float[] fArr13 = this.f17924s;
                    fArr13[i7] = fArr13[i7] + fArr12[i7][i8];
                } else {
                    float[] fArr14 = this.f17924s;
                    fArr14[i7] = fArr14[i7] - fArr12[i7][i8];
                }
            }
        }
        this.f17921p = 0;
        for (int i9 = 0; i9 < 3; i9++) {
            float[][] fArr15 = this.f17923r;
            if ((fArr15[1][i9] > 0.24d && fArr15[2][i9] < -0.24d) || (fArr15[1][i9] < -0.24d && fArr15[2][i9] > 0.24d)) {
                this.f17921p++;
            }
        }
        if (this.f17921p < 1) {
            this.f17918m[3] = 0;
            return;
        }
        float[] fArr16 = this.f17924s;
        float f3 = fArr16[1];
        float[] fArr17 = f17895m0;
        if (f3 > fArr17[3] || fArr16[2] > fArr17[3]) {
            this.f17918m[3] = 4;
            return;
        }
        if (fArr16[1] > fArr17[2] || fArr16[2] > fArr17[2]) {
            this.f17918m[3] = 3;
            return;
        }
        if (fArr16[1] > fArr17[1] || fArr16[2] > fArr17[1]) {
            this.f17918m[3] = 2;
        } else if (fArr16[1] > fArr17[0] || fArr16[2] > fArr17[0]) {
            this.f17918m[3] = 1;
        } else {
            this.f17918m[3] = 0;
        }
    }

    public final void n(SensorEvent sensorEvent) {
        float[] fArr = this.f17904f;
        float[] fArr2 = sensorEvent.values;
        fArr[0] = fArr2[0];
        fArr[1] = fArr2[1];
        fArr[2] = fArr2[2];
        float degrees = (float) Math.toDegrees(Math.atan(((double) (fArr[0] / 9.8f)) / Math.sqrt(Math.pow(fArr[1] / 9.8f, 2.0d) + Math.pow(this.f17904f[2] / 9.8f, 2.0d))));
        float[] fArr3 = this.f17904f;
        float degrees2 = (float) Math.toDegrees(Math.atan(((double) (fArr3[1] / 9.8f)) / Math.sqrt(Math.pow(fArr3[2] / 9.8f, 2.0d) + Math.pow(this.f17904f[0] / 9.8f, 2.0d))));
        float[] fArr4 = this.f17904f;
        float degrees3 = (float) Math.toDegrees(Math.atan(((double) (fArr4[2] / 9.8f)) / Math.sqrt(Math.pow(fArr4[0] / 9.8f, 2.0d) + Math.pow(this.f17904f[1] / 9.8f, 2.0d))));
        float[] fArr5 = this.f17904f;
        if (fArr5[0] > 0.0f || fArr5[1] > 0.0f || fArr5[2] < 0.0f || fArr5[1] <= 0.0f || (fArr5[2] > 0.0f && (Math.abs(degrees3) > Math.abs(degrees2) || Math.abs(degrees3) > Math.abs(degrees)))) {
            this.f17908h[0] = degrees;
        } else if (degrees > 0.0f) {
            this.f17908h[0] = 180.0f - degrees;
        } else {
            this.f17908h[0] = (-180.0f) - degrees;
        }
        float[] fArr6 = this.f17908h;
        if (fArr6[0] < 0.0f) {
            fArr6[0] = fArr6[0] + 360.0f;
        }
        float[] fArr7 = this.f17904f;
        if (fArr7[2] >= 0.0f) {
            fArr6[1] = degrees2;
        } else if (degrees2 > 0.0f) {
            fArr6[1] = 180.0f - degrees2;
        } else {
            fArr6[1] = (-180.0f) - degrees2;
        }
        if (fArr6[1] < 0.0f) {
            fArr6[1] = fArr6[1] + 360.0f;
        }
        if (fArr7[1] <= 0.0f) {
            fArr6[2] = degrees3;
        } else if (degrees3 > 0.0f) {
            fArr6[2] = 180.0f - degrees3;
        } else {
            fArr6[2] = (-180.0f) - degrees3;
        }
        if (fArr6[2] < 0.0f) {
            fArr6[2] = fArr6[2] + 360.0f;
        }
        float[] fArr8 = new float[3];
        for (int i2 = 0; i2 < this.f17914k.length; i2++) {
            fArr8[i2] = this.f17908h[i2] - this.f17910i[i2];
            if (fArr8[i2] < 0.0f) {
                fArr8[i2] = fArr8[i2] + 360.0f;
            }
            if (fArr8[i2] > 360.0f) {
                fArr8[i2] = 360.0f;
            }
            if (fArr8[i2] > 180.0f) {
                fArr8[i2] = fArr8[i2] - 360.0f;
            }
        }
        this.f17914k = Arrays.copyOf(fArr8, 3);
        if (Math.abs(this.f17912j[1]) < Math.abs(this.f17912j[2])) {
            float[] fArr9 = this.f17914k;
            float f2 = fArr9[1];
            fArr9[1] = fArr9[2];
            fArr9[2] = f2;
        }
        float[] fArr10 = this.f17914k;
        if (fArr10[2] > 2.0d) {
            this.f17918m[0] = 1;
        } else if (fArr10[2] < -2.0d) {
            this.f17918m[0] = -1;
        } else {
            this.f17918m[0] = 0;
        }
        if (u0.b.X1 != 0) {
            int[] iArr = this.f17918m;
            if (iArr[1] != 0 && fArr10[2] < 5.0d && fArr10[2] > -5.0d) {
                iArr[0] = 0;
            }
        }
        if (!Arrays.equals(this.f17919n, this.f17918m)) {
            int[] iArr2 = this.f17918m;
            this.f17919n = Arrays.copyOf(iArr2, iArr2.length);
            x0.c.X2().a3(5, this.f17919n);
        }
        if (!Arrays.equals(this.f17916l, this.f17914k)) {
            float[] fArr11 = this.f17914k;
            this.f17916l = Arrays.copyOf(fArr11, fArr11.length);
            x0.c.X2().H0(9, null, this.f17916l, null);
        }
        if (!Arrays.equals(this.f17926u, this.f17927v)) {
            float[] fArr12 = this.f17926u;
            this.f17927v = Arrays.copyOf(fArr12, fArr12.length);
            x0.c.X2().H0(6, null, this.f17927v, null);
        }
        f.p().t(LogType.SENSOR, String.format("PD:%4.2f,QX:%4.2f,gra：%4.2f，%4.2f，%4.2f,acc: %4.2f，%4.2f，%4.2f,spd:%3d,g: %4.2f，%4.2f，%4.2f,num: %d", Float.valueOf(this.f17914k[2]), Float.valueOf(this.f17914k[0]), Float.valueOf(this.f17904f[0]), Float.valueOf(this.f17904f[1]), Float.valueOf(this.f17904f[2]), Float.valueOf(this.f17906g[0]), Float.valueOf(this.f17906g[1]), Float.valueOf(this.f17906g[2]), Integer.valueOf(u0.b.X1), Float.valueOf(this.f17917l0[0]), Float.valueOf(this.f17917l0[1]), Float.valueOf(this.f17917l0[2]), Integer.valueOf(this.f17901d0)));
    }

    public void o(SensorEvent sensorEvent) {
        if (!this.f17929x) {
            return;
        }
        float f2 = this.f17905f0;
        int i2 = 0;
        if (f2 < 2.001f) {
            float[] fArr = this.f17907g0;
            float f3 = fArr[0];
            float[] fArr2 = sensorEvent.values;
            fArr[0] = f3 + fArr2[0];
            fArr[1] = fArr[1] + fArr2[1];
            fArr[2] = fArr[2] + fArr2[2];
            this.f17905f0 = f2 + this.X[2];
            this.f17909h0++;
            return;
        }
        this.f17929x = false;
        while (true) {
            float[] fArr3 = this.f17907g0;
            if (i2 >= fArr3.length) {
                this.f17894b.p(1, this.f17925t);
                this.f17894b.e(1);
                Log.e("cali", "angle_bak: " + Arrays.toString(this.f17925t) + " caliGyroCnt: " + this.f17909h0);
                return;
            }
            this.f17925t[i2] = fArr3[i2] / this.f17909h0;
            i2++;
        }
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i2) {
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent sensorEvent) {
        int type = sensorEvent.sensor.getType();
        this.S.removeCallbacks(this.P);
        if (type == 1) {
            s(0, sensorEvent);
            float[] fArr = sensorEvent.values;
            float[] fArr2 = this.f17906g;
            System.arraycopy(fArr, 0, fArr2, 0, fArr2.length);
            m(sensorEvent);
            return;
        }
        if (type == 4) {
            s(2, sensorEvent);
            p(sensorEvent);
            o(sensorEvent);
        } else {
            if (type != 9) {
                return;
            }
            s(1, sensorEvent);
            n(sensorEvent);
            q();
        }
    }

    public final void p(SensorEvent sensorEvent) {
        int i2 = 0;
        while (true) {
            float[] fArr = this.f17913j0;
            if (i2 >= fArr.length) {
                break;
            }
            fArr[i2] = ((float) Math.toDegrees(sensorEvent.values[i2] - this.f17925t[i2])) * this.X[2];
            float[] fArr2 = this.f17915k0;
            fArr2[i2] = fArr2[i2] + this.f17913j0[i2];
            i2++;
        }
        float[] fArr3 = this.f17896a0;
        fArr3[2] = fArr3[2] + this.X[2];
        if (fArr3[2] < 0.27f) {
            this.f17899c0++;
            return;
        }
        int i3 = this.f17899c0 + 1;
        this.f17899c0 = i3;
        this.f17901d0 = i3;
        fArr3[2] = 0.0f;
        this.f17899c0 = 0;
        int i4 = 0;
        while (true) {
            float[] fArr4 = this.f17917l0;
            if (i4 >= fArr4.length) {
                break;
            }
            float[] fArr5 = this.f17926u;
            float[] fArr6 = this.f17915k0;
            float f2 = fArr6[i4] * this.N;
            fArr4[i4] = f2;
            fArr5[i4] = f2;
            fArr6[i4] = 0.0f;
            i4++;
        }
        float[] fArr7 = this.f17926u;
        fArr7[fArr7.length - 1] = fArr7[1];
        if (fArr7[1] > 5.0f) {
            this.f17918m[1] = 1;
        } else if (fArr7[1] < -5.0f) {
            this.f17918m[1] = -1;
        } else {
            this.f17918m[1] = 0;
        }
    }

    public void q() {
        if (!this.f17930y) {
            return;
        }
        int i2 = this.B - 1;
        this.B = i2;
        if (i2 >= 0) {
            float[][] fArr = this.f17931z;
            float[] fArr2 = fArr[0];
            float[] fArr3 = this.f17908h;
            fArr2[i2] = fArr3[0];
            fArr[1][i2] = fArr3[1];
            fArr[2][i2] = fArr3[2];
            float[][] fArr4 = this.A;
            float[] fArr5 = fArr4[0];
            float[] fArr6 = this.F;
            fArr5[i2] = fArr6[0];
            fArr4[1][i2] = fArr6[1];
            fArr4[2][i2] = fArr6[2];
            float[][] fArr7 = this.L;
            float[] fArr8 = fArr7[0];
            float[] fArr9 = this.f17904f;
            fArr8[i2] = fArr9[0];
            fArr7[1][i2] = fArr9[1];
            fArr7[2][i2] = fArr9[2];
            return;
        }
        this.f17930y = false;
        float[][] fArr10 = (float[][]) Array.newInstance((Class<?>) float.class, 3, 13);
        int i3 = 0;
        while (true) {
            float[][] fArr11 = this.f17931z;
            if (i3 >= fArr11.length) {
                break;
            }
            Arrays.sort(fArr11[i3]);
            i3++;
        }
        int[] iArr = {0, 0, 0};
        int i4 = 0;
        while (true) {
            float[][] fArr12 = this.f17931z;
            if (i4 >= fArr12[0].length) {
                break;
            }
            if (fArr12[0][i4] > 180.0f) {
                iArr[0] = iArr[0] + 1;
            }
            if (fArr12[1][i4] > 180.0f) {
                iArr[1] = iArr[1] + 1;
            }
            if (fArr12[2][i4] > 180.0f) {
                iArr[2] = iArr[2] + 1;
            }
            i4++;
        }
        for (int i5 = 0; i5 < 3; i5++) {
            if (iArr[i5] > 13) {
                System.arraycopy(this.f17931z[i5], 13, fArr10[i5], 0, 13);
            } else {
                System.arraycopy(this.f17931z[i5], 0, fArr10[i5], 0, 13);
            }
        }
        int i6 = 0;
        while (true) {
            float[] fArr13 = this.f17910i;
            if (i6 >= fArr13.length) {
                this.f17894b.p(2, fArr13);
                this.f17894b.e(2);
                this.f17894b.p(4, this.G);
                this.f17894b.e(4);
                this.f17894b.p(4, this.f17912j);
                this.f17894b.e(4);
                return;
            }
            float[][] fArr14 = this.f17931z;
            if (fArr14[i6][fArr14[i6].length - 1] - fArr14[i6][0] > 10.0f) {
                fArr13[i6] = l(fArr10[i6]);
            } else {
                fArr13[i6] = l(fArr14[i6]);
            }
            this.G[i6] = l(this.A[i6]);
            this.f17912j[i6] = l(this.L[i6]);
            i6++;
        }
    }

    public void r(int... iArr) {
        if (u0.b.f17306a0 != 1 || u0.b.f17323g != 1 || iArr == null || iArr.length == 0) {
            return;
        }
        Log.e("Gyro", "-------- observeSensor---------: ");
        int length = iArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = iArr[i2];
            Sensor defaultSensor = this.f17902e.getDefaultSensor(i3);
            Log.e("Gyro", "-------- observeSensor---------: sensor: " + i3 + " target : " + defaultSensor);
            this.f17902e.registerListener(this, defaultSensor, i3 == 4 ? 1 : 2);
        }
    }

    public final void s(int i2, SensorEvent sensorEvent) {
        float[] fArr = this.X;
        if (i2 >= fArr.length) {
            return;
        }
        long j2 = sensorEvent.timestamp;
        float[] fArr2 = this.Y;
        fArr[i2] = (j2 - fArr2[i2]) * 1.0E-9f;
        fArr2[i2] = j2;
    }

    public void t() {
        float[] fArr = this.f17907g0;
        fArr[0] = 0.0f;
        fArr[1] = 0.0f;
        fArr[2] = 0.0f;
        this.f17909h0 = 0;
        this.f17905f0 = 0.0f;
        this.f17929x = true;
        this.f17931z = (float[][]) Array.newInstance((Class<?>) float.class, 3, 26);
        this.B = 26;
        this.f17930y = true;
        this.A = (float[][]) Array.newInstance((Class<?>) float.class, 3, 26);
    }
}
