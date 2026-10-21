package i1;

import android.graphics.Color;
import android.os.Handler;
import android.util.Log;
import java.util.Arrays;
import o1.s0;

/* JADX INFO: loaded from: classes2.dex */
public class c0 extends i1.a<c> {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final boolean f2589k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f2590l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f2591m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f2592n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f2593o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f2594p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f2595q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Runnable f2596r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final Runnable f2597s;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            c0 c0Var = c0.this;
            if (c0Var.f2590l != 1) {
                c0Var.w(2, 0, 0);
                return;
            }
            c0Var.w(2, 66, 66);
            c0 c0Var2 = c0.this;
            int i2 = c0Var2.f2591m;
            c0Var2.w(3, i2, i2);
            c0 c0Var3 = c0.this;
            int i3 = c0Var3.f2592n;
            c0Var3.w(2, i3, i3);
            int iC = s0.c(c0.this.f2593o, 2);
            int iC2 = s0.c(c0.this.f2593o, 1);
            int iC3 = s0.c(c0.this.f2593o, 0);
            c0.this.w(4, iC, iC2, iC3, iC, iC2, iC3);
            c0 c0Var4 = c0.this;
            c0Var4.w(5, c0Var4.f2595q, c0Var4.f2594p);
        }
    }

    public class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f2599a = -1;

        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            c0 c0Var;
            Handler handler;
            c0 c0Var2 = c0.this;
            c0Var2.f2545i.removeCallbacks(c0Var2.f2596r);
            int i2 = u0.b.f17306a0;
            if (i2 == 1 && this.f2599a != i2 && (handler = (c0Var = c0.this).f2545i) != null) {
                handler.postDelayed(c0Var.f2596r, 1000L);
            }
            this.f2599a = u0.b.f17306a0;
        }
    }

    public class c extends e {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int[] f2601h = {85};

        public c() {
        }

        @Override // i1.e
        public boolean a(int i2) {
            int iIntValue = this.f2619d.intValue() & 255;
            for (int i3 = 0; i3 < this.f2619d.intValue(); i3++) {
                iIntValue += this.f2618c[i3] & 255;
            }
            return (i2 & 255) == ((255 - iIntValue) & 255);
        }

        @Override // i1.e
        public boolean c(int i2) {
            Integer numValueOf = Integer.valueOf(i2);
            this.f2619d = numValueOf;
            return numValueOf != null;
        }

        @Override // i1.e
        public int[] f() {
            return this.f2601h;
        }
    }

    public c0(int i2, int i3) {
        super(i2, i3);
        this.f2589k = true;
        this.f2590l = 1;
        this.f2591m = 0;
        this.f2592n = 50;
        this.f2593o = -1;
        this.f2594p = 50;
        this.f2595q = 0;
        this.f2596r = new a();
        b bVar = new b();
        this.f2597s = bVar;
        v();
        c cVar = new c();
        this.f2721a = cVar;
        cVar.h();
        u0.c.f17386m.a(bVar, 1);
        this.f2590l = m1.c.c(217, 1);
        this.f2591m = m1.c.c(218, 0);
        this.f2592n = m1.c.c(219, 50);
        this.f2593o = m1.c.c(220, Color.GREEN);
        this.f2595q = m1.c.c(222, 0);
        this.f2594p = m1.c.c(221, 50);
    }

    @Override // i1.s
    public boolean j(int i2, int[] iArr, float[] fArr, String[] strArr) {
        int i3;
        Log.e("Device", "==============  SnnavLed handleCmd cmdCode: " + i2 + " ints :  " + Arrays.toString(iArr));
        Log.e("Device", "==============  SnnavLed  powerOn : " + this.f2590l + " mode:" + this.f2591m + " color:" + String.format("%08X", Integer.valueOf(this.f2593o)) + " speed :" + this.f2594p + " speedEnable: " + this.f2595q);
        if (i2 != 0 || !s0.h(iArr, 1)) {
            return super.j(i2, iArr, fArr, strArr);
        }
        int i4 = iArr[0];
        if (i4 == 0) {
            int i5 = iArr[1] == 1 ? iArr[1] : 0;
            if (i5 != this.f2590l) {
                this.f2590l = i5;
                if (i5 == 1) {
                    w(2, 66, 66);
                } else {
                    w(2, 0, 0);
                }
                m1.c.e(217, this.f2590l);
                r(i2, 0, this.f2590l);
            }
        } else if (i4 != 1) {
            int i6 = 50;
            if (i4 != 2) {
                if (i4 != 3) {
                    if (i4 == 4 && this.f2590l == 1 && s0.h(iArr, 2)) {
                        int i7 = iArr[1] == 1 ? iArr[1] : 0;
                        if (iArr[2] >= 0 && iArr[2] <= 100) {
                            i6 = iArr[1];
                        }
                        if (i6 != this.f2594p || i7 != this.f2595q) {
                            this.f2594p = i6;
                            this.f2595q = i7;
                            w(5, i7, i6);
                            m1.c.e(221, this.f2594p);
                            m1.c.e(222, this.f2595q);
                            r(i2, 4, i7);
                        }
                    }
                } else if (this.f2590l == 1 && (i3 = iArr[1]) != this.f2593o) {
                    this.f2593o = i3;
                    int iRed = Color.red(i3);
                    int iGreen = Color.green(this.f2593o);
                    int iBlue = Color.blue(this.f2593o);
                    w(4, iRed, iGreen, iBlue, iRed, iGreen, iBlue);
                    m1.c.e(220, this.f2593o);
                    r(i2, 3, this.f2593o);
                }
            } else if (this.f2590l == 1) {
                if (iArr[1] >= 0 && iArr[1] <= 100) {
                    i6 = iArr[1];
                }
                if (i6 != this.f2592n) {
                    this.f2592n = i6;
                    w(2, i6, i6);
                    m1.c.e(219, this.f2592n);
                    r(i2, 2, this.f2592n);
                }
            }
        } else if (this.f2590l == 1) {
            int i8 = (iArr[1] < 0 || iArr[1] > 5) ? 0 : iArr[1];
            if (i8 != this.f2591m) {
                this.f2591m = i8;
                w(3, i8, i8);
                m1.c.e(218, this.f2591m);
                r(i2, 1, this.f2591m);
            }
        }
        return true;
    }

    @Override // i1.s
    public void l(int[] iArr) {
        Log.e("Device", "==============  SnnavLed onHandle data: " + o1.b0.e(iArr, 0, iArr.length));
    }

    @Override // i1.s
    public boolean p(y.b bVar, int i2, int i3) {
        boolean z2 = true;
        if (i2 != 0) {
            z2 = false;
        } else {
            o1.x.v(bVar, i2, 0, this.f2590l);
            o1.x.v(bVar, i2, 1, this.f2591m);
            o1.x.v(bVar, i2, 2, this.f2592n);
            o1.x.v(bVar, i2, 3, this.f2593o);
            o1.x.v(bVar, i2, 4, this.f2595q, this.f2594p);
        }
        return z2 ? z2 : super.p(bVar, i2, i3);
    }

    public void w(int... iArr) {
        int length = iArr == null ? 0 : iArr.length;
        if (length == 0) {
            return;
        }
        int i2 = length + 4;
        int[] iArr2 = new int[i2];
        iArr2[0] = 85;
        iArr2[1] = length;
        int i3 = iArr2[1] & 255;
        for (int i4 = 0; i4 < length; i4++) {
            i3 += iArr[i4] & 255;
            iArr2[i4 + 2] = iArr[i4];
        }
        iArr2[length + 2] = (255 - (i3 & 255)) & 255;
        iArr2[length + 3] = 170;
        Log.e("Device", "==============  PluginWLLeds write serial:" + o1.b0.e(iArr2, 0, i2));
        b0 b0Var = this.f2544h;
        if (b0Var != null) {
            b0Var.f(iArr2);
            s0.C(20L);
            this.f2544h.f(iArr2);
        }
    }
}
