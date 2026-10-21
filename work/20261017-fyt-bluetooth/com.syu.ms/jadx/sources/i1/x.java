package i1;

import android.os.FileObserver;
import android.os.Handler;
import android.util.Log;
import java.util.Arrays;
import o1.s0;

/* JADX INFO: loaded from: classes2.dex */
public class x extends i1.a<c> {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final boolean f2844k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f2845l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f2846m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f2847n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f2848o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Integer f2849p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Integer f2850q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Integer f2851r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public Integer f2852s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public Runnable f2853t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final Runnable f2854u;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            x xVar;
            Handler handler;
            x.this.y(195, 0, 0, 0, 0);
            if (u0.b.f17306a0 != 1 || (handler = (xVar = x.this).f2545i) == null) {
                return;
            }
            handler.removeCallbacks(xVar.f2853t);
            x xVar2 = x.this;
            xVar2.f2545i.postDelayed(xVar2.f2853t, 500L);
        }
    }

    public class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f2856a = -1;

        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            x xVar;
            Handler handler;
            x xVar2 = x.this;
            xVar2.f2545i.removeCallbacks(xVar2.f2853t);
            int i2 = u0.b.f17306a0;
            if (i2 == 1 && this.f2856a != i2 && (handler = (xVar = x.this).f2545i) != null) {
                xVar.f2852s = null;
                xVar.f2851r = null;
                xVar.f2850q = null;
                xVar.f2849p = null;
                handler.post(xVar.f2853t);
            }
            this.f2856a = u0.b.f17306a0;
        }
    }

    public class c extends e {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int[] f2858h = {85};

        public c() {
        }

        @Override // i1.e
        public boolean a(int i2) {
            int i3 = 0;
            for (int i4 = 0; i4 < this.f2619d.intValue(); i4++) {
                i3 += this.f2618c[i4] & 255;
            }
            return (((65280 & i3) >> ((i3 & 255) + 8)) & 255) == (i2 & 255);
        }

        @Override // i1.e
        public boolean c(int i2) {
            return this.f2619d != null;
        }

        @Override // i1.e
        public int[] f() {
            return this.f2858h;
        }

        @Override // i1.e
        public boolean j() {
            this.f2619d = 5;
            return super.j();
        }
    }

    public x(int i2, int i3) {
        super(i2, i3);
        this.f2844k = true;
        this.f2845l = 0;
        this.f2846m = 5;
        this.f2847n = 1;
        this.f2848o = 1;
        this.f2849p = null;
        this.f2850q = null;
        this.f2851r = null;
        this.f2852s = null;
        this.f2853t = new a();
        b bVar = new b();
        this.f2854u = bVar;
        v();
        c cVar = new c();
        this.f2721a = cVar;
        cVar.h();
        u0.c.f17386m.a(bVar, 1);
    }

    /* JADX WARN: Code duplicated, block: B:12:0x003b  */
    @Override // i1.s
    public boolean j(int i2, int[] iArr, float[] fArr, String[] strArr) {
        boolean z2;
        Handler handler;
        Log.e("Device", "==============  PluginWLLeds handleCmd cmdCode: " + i2 + "ints :  " + Arrays.toString(iArr));
        if (i2 != 0 || !s0.h(iArr, 1)) {
            return super.j(i2, iArr, fArr, strArr);
        }
        int i3 = iArr[0];
        if (i3 == 0) {
            int i4 = (iArr[1] < 0 || iArr[1] > 3) ? 0 : iArr[1];
            if (i4 != this.f2845l) {
                this.f2845l = i4;
                r(i2, 0, i4);
                z2 = true;
            } else {
                z2 = false;
            }
        } else if (i3 == 1) {
            int i5 = (iArr[1] < 0 || iArr[1] > 5) ? 0 : iArr[1];
            if (i5 != this.f2846m) {
                this.f2846m = i5;
                r(i2, 1, i5);
                z2 = true;
            } else {
                z2 = false;
            }
        } else if (i3 != 2) {
            if (i3 == 3) {
                int i6 = iArr[1] == 1 ? 1 : 0;
                if (i6 != this.f2848o) {
                    this.f2848o = i6;
                    r(i2, 3, i6);
                    z2 = true;
                }
            }
            z2 = false;
        } else {
            int i7 = (iArr[1] < 0 || iArr[1] > 63) ? 0 : iArr[1];
            if (i7 != this.f2847n) {
                this.f2847n = i7;
                r(i2, 2, i7);
                z2 = true;
            } else {
                z2 = false;
            }
        }
        if (z2 && u0.b.f17306a0 == 1 && (handler = this.f2545i) != null) {
            handler.removeCallbacks(this.f2853t);
            y(131, this.f2845l, this.f2846m, this.f2847n, this.f2848o);
            this.f2545i.postDelayed(this.f2853t, 100L);
        }
        return true;
    }

    @Override // i1.s
    public boolean k() {
        return true;
    }

    @Override // i1.s
    public void l(int[] iArr) {
        Log.e("Device", "==============  PluginWLLeds onHandle data: " + o1.b0.e(iArr, 0, iArr.length));
        if (iArr.length > 0) {
            for (int i2 : iArr) {
                if (this.f2849p == null) {
                    this.f2849p = Integer.valueOf(i2 & 255);
                } else if (this.f2850q == null) {
                    this.f2850q = Integer.valueOf(i2 & 255);
                } else if (this.f2851r == null) {
                    this.f2851r = Integer.valueOf(i2 & 255);
                } else if (this.f2852s == null) {
                    this.f2852s = Integer.valueOf(i2 & 255);
                } else if (w(i2)) {
                    Log.e("Device", String.format("DATA: %02X, %02X, %02X, %02X", this.f2849p, this.f2850q, this.f2851r, this.f2852s));
                    x();
                    this.f2852s = null;
                    this.f2851r = null;
                    this.f2850q = null;
                    this.f2849p = null;
                } else {
                    this.f2849p = this.f2850q;
                    this.f2850q = this.f2851r;
                    this.f2851r = this.f2852s;
                    this.f2852s = Integer.valueOf(i2 & 255);
                }
            }
        }
    }

    @Override // i1.s
    public boolean p(y.b bVar, int i2, int i3) {
        boolean z2 = true;
        if (i2 != 0) {
            z2 = false;
        } else {
            o1.x.v(bVar, i2, 0, this.f2845l);
            o1.x.v(bVar, i2, 1, this.f2846m);
            o1.x.v(bVar, i2, 2, this.f2847n);
            o1.x.v(bVar, i2, 3, this.f2848o);
        }
        return z2 ? z2 : super.p(bVar, i2, i3);
    }

    public final boolean w(int i2) {
        int[] iArr = {this.f2849p.intValue(), this.f2850q.intValue(), this.f2851r.intValue(), this.f2852s.intValue(), 195};
        int i3 = 0;
        for (int i4 = 0; i4 < 5; i4++) {
            i3 += iArr[i4];
            if ((i3 & FileObserver.ALL_EVENTS) > 255) {
                i3 = (i3 + 1) & 255;
            }
        }
        return ((~(i3 & 255)) & 255) == (i2 & 255);
    }

    public final void x() {
        if (this.f2845l != this.f2849p.intValue()) {
            int iIntValue = this.f2849p.intValue();
            this.f2845l = iIntValue;
            r(0, 0, iIntValue);
        }
        if (this.f2846m != this.f2850q.intValue()) {
            int iIntValue2 = this.f2850q.intValue();
            this.f2846m = iIntValue2;
            r(0, 1, iIntValue2);
        }
        if (this.f2847n != this.f2851r.intValue()) {
            int iIntValue3 = this.f2851r.intValue();
            this.f2847n = iIntValue3;
            r(0, 2, iIntValue3);
        }
        if (this.f2848o != (this.f2852s.intValue() & 1)) {
            int iIntValue4 = this.f2852s.intValue() & 1;
            this.f2848o = iIntValue4;
            r(0, 3, iIntValue4);
        }
    }

    public void y(int... iArr) {
        int length = iArr == null ? 0 : iArr.length;
        if (length == 0) {
            return;
        }
        int i2 = length + 2;
        int[] iArr2 = new int[i2];
        iArr2[0] = 85;
        int i3 = 0;
        int i4 = 0;
        while (i3 < length) {
            i4 += iArr[i3];
            int i5 = i3 + 1;
            iArr2[i5] = iArr[i3];
            i3 = i5;
        }
        iArr2[length + 1] = (((i4 >> 0) & 255) + (i4 & 255)) & 255;
        Log.e("Device", "==============  PluginWLLeds write serial:" + o1.b0.e(iArr2, 0, i2));
        b0 b0Var = this.f2544h;
        if (b0Var != null) {
            b0Var.f(iArr2);
        }
    }
}
