package i1;

import android.graphics.Color;
import android.net.ProxyProperties;
import android.os.Handler;
import android.util.Log;
import android.util.TimedRemoteCaller;
import java.nio.charset.Charset;
import java.util.Arrays;
import o1.s0;

/* JADX INFO: loaded from: classes2.dex */
public class a0 extends i1.a<c> {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final boolean f2548k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f2549l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int[] f2550m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int[] f2551n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int[] f2552o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f2553p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f2554q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f2555r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f2556s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f2557t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int[] f2558u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int[] f2559v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f2560w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public String f2561x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public Runnable f2562y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final Runnable f2563z;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17306a0 != 1) {
                return;
            }
            if (a0.this.f2544h.a()) {
                a0.this.f2545i.removeCallbacks(this);
                a0.this.f2545i.postAtTime(this, 500L);
                return;
            }
            a0.this.H(129, 1, 1);
            for (int i2 = 0; i2 <= 6; i2++) {
                s0.C(20L);
                a0.this.H(144, 2, 124, i2);
            }
            s0.C(20L);
            a0.this.H(144, 2, 124, 15);
            s0.C(20L);
            a0.this.H(144, 2, 124, 32);
            s0.C(20L);
            a0.this.H(144, 2, 124, 141);
            s0.C(20L);
            a0.this.H(144, 2, 124, 142);
            s0.C(20L);
            a0.this.H(144, 2, 124, 143);
        }
    }

    public class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f2565a = 0;

        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a0 a0Var = a0.this;
            a0Var.f2545i.removeCallbacks(a0Var.f2562y);
            int i2 = this.f2565a;
            int i3 = u0.b.f17306a0;
            if (i2 != i3) {
                this.f2565a = i3;
                if (i3 != 1) {
                    a0.this.H(129, 1, 0);
                    return;
                }
                a0 a0Var2 = a0.this;
                Handler handler = a0Var2.f2545i;
                if (handler != null) {
                    handler.postDelayed(a0Var2.f2562y, TimedRemoteCaller.DEFAULT_CALL_TIMEOUT_MILLIS);
                }
            }
        }
    }

    public class c extends e {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int[] f2567h = {46};

        public c() {
        }

        @Override // i1.e
        public boolean a(int i2) {
            int iIntValue = (this.f2620e.intValue() + this.f2619d.intValue()) & 255;
            for (int i3 = 0; i3 < this.f2619d.intValue(); i3++) {
                iIntValue += this.f2618c[i3];
            }
            return ((iIntValue ^ 255) & 255) == (i2 & 255);
        }

        @Override // i1.e
        public boolean c(int i2) {
            Integer numValueOf = Integer.valueOf(i2);
            this.f2619d = numValueOf;
            return numValueOf != null;
        }

        @Override // i1.e
        public int[] f() {
            return this.f2567h;
        }

        @Override // i1.e
        public boolean j() {
            return true;
        }
    }

    public a0(int i2, int i3) {
        super(i2, i3);
        this.f2548k = true;
        this.f2549l = -1;
        this.f2550m = new int[2];
        this.f2551n = new int[2];
        this.f2552o = new int[2];
        this.f2556s = -1;
        this.f2557t = 0;
        this.f2558u = new int[4];
        this.f2559v = new int[2];
        this.f2560w = 0;
        this.f2561x = ProxyProperties.LOCAL_EXCL_LIST;
        this.f2562y = new a();
        b bVar = new b();
        this.f2563z = bVar;
        v();
        c cVar = new c();
        this.f2721a = cVar;
        cVar.h();
        u0.c.f17386m.a(bVar, 1);
    }

    public void A(int i2, int i3, int i4, int i5) {
        int i6 = (i2 >> 4) & 7;
        if (i6 != this.f2553p) {
            this.f2553p = i6;
            r(0, 4, i6);
        }
        int i7 = i2 & 7;
        int i8 = i3 & 255;
        int[] iArr = this.f2552o;
        if (i7 != iArr[0] || i8 != iArr[1]) {
            iArr[0] = i7;
            iArr[1] = i8;
            r(0, 3, iArr[0], iArr[1]);
        }
        int i9 = i4 & 255;
        if (i9 != this.f2554q) {
            this.f2554q = i9;
            r(0, 5, i9);
        }
        int i10 = i5 & 255;
        if (i10 != this.f2555r) {
            this.f2555r = i10;
            r(0, 6, i10);
        }
    }

    public void B(int i2) {
        r(0, 13, i2);
    }

    public void C(int i2) {
        if (this.f2560w != i2) {
            this.f2560w = i2;
            r(0, 10, i2);
        }
    }

    public void D(int i2, int i3) {
        int[] iArr = this.f2559v;
        if (i2 == iArr[0] && i3 == iArr[1]) {
            return;
        }
        iArr[0] = i2;
        iArr[1] = i3;
        r(0, 9, iArr[0], iArr[1]);
    }

    public void E(int i2) {
        if (this.f2556s != i2) {
            this.f2556s = i2;
            r(0, 7, i2);
        }
    }

    public void F(byte[] bArr) {
        String str = new String(bArr, Charset.forName("ascii"));
        Log.e("Device", "==============  handleVersion version:" + str);
        if (s0.j(str, this.f2561x)) {
            return;
        }
        this.f2561x = str;
        q(0, str, 11);
    }

    public void G(int i2) {
        if (this.f2557t != i2) {
            this.f2557t = i2;
            r(0, 8, i2);
        }
    }

    public void H(int... iArr) {
        b0 b0Var = this.f2544h;
        if (b0Var != null) {
            synchronized (b0Var) {
                int length = iArr == null ? 0 : iArr.length;
                if (length == 0) {
                    return;
                }
                int i2 = length + 2;
                int[] iArr2 = new int[i2];
                iArr2[0] = 46;
                iArr2[1] = iArr[0];
                int i3 = 2;
                iArr2[2] = length - 2;
                int i4 = (iArr2[1] + iArr2[2]) & 255;
                while (i3 < length) {
                    i4 += iArr[i3] & 255;
                    int i5 = i3 + 1;
                    iArr2[i5] = iArr[i3];
                    i3 = i5;
                }
                iArr2[length + 1] = (i4 ^ 255) & 255;
                Log.e("Device", "==============  PluginWLLeds write serial:" + o1.b0.e(iArr2, 0, i2));
                this.f2544h.f(iArr2);
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // i1.s
    public boolean j(int i2, int[] iArr, float[] fArr, String[] strArr) {
        StringBuilder sb = new StringBuilder();
        sb.append("==============  RaiseLeds handleCmd cmdCode: ");
        sb.append(i2);
        sb.append(" ints: ");
        boolean z2 = false;
        sb.append(o1.b0.e(iArr, 0, iArr.length));
        Log.e("Device", sb.toString());
        if (i2 == 0 && s0.h(iArr, 0)) {
            switch (iArr[0]) {
                case 0:
                    if (s0.h(iArr, 1) && this.f2549l != iArr[1]) {
                        int i3 = (iArr[1] & 1) << 6;
                        int[] iArr2 = this.f2550m;
                        H(141, 0, 0, i3, iArr2[0], iArr2[1]);
                    }
                    z2 = true;
                    break;
                case 1:
                    if (s0.h(iArr, 2)) {
                        int i4 = this.f2549l << 6;
                        if (iArr[1] == 0) {
                            H(141, 0, 0, i4 | 15, iArr[2], iArr[2]);
                        } else if (iArr[1] == 1) {
                            H(141, 0, 0, i4 | 7, iArr[2], this.f2550m[1]);
                        } else if (iArr[1] == 2) {
                            H(141, 0, 0, i4 | 7, this.f2550m[0], iArr[2]);
                        }
                    }
                    z2 = true;
                    break;
                case 2:
                    if (s0.h(iArr, 2)) {
                        if (iArr[1] == 0) {
                            int iRed = Color.red(iArr[2]);
                            int iGreen = Color.green(iArr[2]);
                            int iBlue = Color.blue(iArr[2]);
                            H(141, 0, 1, 15, iRed, iGreen, iBlue, iRed, iGreen, iBlue);
                        } else if (iArr[1] == 1) {
                            H(141, 0, 1, 7, Color.red(iArr[2]), Color.green(iArr[2]), Color.blue(iArr[2]), Color.red(this.f2551n[1]), Color.green(this.f2551n[1]), Color.blue(this.f2551n[1]));
                        } else if (iArr[1] == 2) {
                            H(141, 0, 1, 7, Color.red(this.f2551n[0]), Color.green(this.f2551n[0]), Color.blue(this.f2551n[0]), Color.red(iArr[2]), Color.green(iArr[2]), Color.blue(iArr[2]));
                        }
                    }
                    z2 = true;
                    break;
                case 3:
                    if (s0.h(iArr, 2)) {
                        if (iArr[1] == 1) {
                            H(141, 0, 2, (this.f2553p << 4) | Math.max(0, Math.min(iArr[2], 7)), this.f2552o[1], this.f2554q, this.f2555r);
                        } else if (iArr[1] == 2) {
                            H(141, 0, 2, this.f2552o[0] | (this.f2553p << 4), Math.max(0, Math.min(iArr[2], 255)), this.f2554q, this.f2555r);
                        }
                    }
                    z2 = true;
                    break;
                case 4:
                    if (s0.h(iArr, 1)) {
                        int iMax = Math.max(0, Math.min(iArr[1], 7));
                        int[] iArr3 = this.f2552o;
                        H(141, 0, 2, (iMax << 4) | iArr3[0], iArr3[1], this.f2554q, this.f2555r);
                    }
                    z2 = true;
                    break;
                case 5:
                    if (s0.h(iArr, 1)) {
                        int iMax2 = Math.max(0, Math.min(iArr[1], 7));
                        int i5 = this.f2553p << 4;
                        int[] iArr4 = this.f2552o;
                        H(141, 0, 2, iArr4[0] | i5, iArr4[1], iMax2, this.f2555r);
                    }
                    z2 = true;
                    break;
                case 6:
                    if (s0.h(iArr, 1)) {
                        int iMax3 = Math.max(1, Math.min(iArr[1], 10));
                        int i6 = this.f2553p << 4;
                        int[] iArr5 = this.f2552o;
                        H(141, 0, 2, iArr5[0] | i6, iArr5[1], this.f2554q, iMax3);
                    }
                    z2 = true;
                    break;
                case 7:
                    if (s0.h(iArr, 2)) {
                        H(141, 0, 4, ((iArr[0] & 15) << 4) | (iArr[1] & 15));
                    }
                    z2 = true;
                    break;
                case 8:
                    if (s0.h(iArr, 1)) {
                        H(141, 0, 5, iArr[1]);
                    }
                    z2 = true;
                    break;
                case 9:
                case 10:
                    z2 = true;
                    break;
                case 12:
                    if (s0.h(iArr, 2)) {
                        int i7 = iArr[1];
                        if (i7 == 0) {
                            int[] iArr6 = this.f2558u;
                            H(141, 0, 6, iArr[2], iArr6[1], iArr6[2], iArr6[3]);
                        } else if (i7 == 1) {
                            int[] iArr7 = this.f2558u;
                            H(141, 0, 6, iArr7[0], iArr[2], iArr7[2], iArr7[3]);
                        } else if (i7 == 2) {
                            int[] iArr8 = this.f2558u;
                            H(141, 0, 6, iArr8[0], iArr8[1], iArr[2], iArr8[3]);
                        } else if (i7 == 3) {
                            int[] iArr9 = this.f2558u;
                            H(141, 0, 6, iArr9[0], iArr9[1], iArr9[2], iArr[2]);
                        }
                    }
                    z2 = true;
                    break;
                case 13:
                    if (s0.h(iArr, 1)) {
                        int i8 = -1;
                        int i9 = iArr[1];
                        if (i9 == 0) {
                            i8 = iArr[1];
                        } else if (i9 == 1 || i9 == 3) {
                            i8 = ((iArr[1] << 6) | 8) & 255;
                        }
                        H(141, 0, 3, i8);
                    }
                    z2 = true;
                    break;
            }
        }
        return z2 ? z2 : super.j(i2, iArr, fArr, strArr);
    }

    @Override // i1.s
    public void l(int[] iArr) {
        Log.e("Device", "==============  RaiseLeds onHandle data: " + o1.b0.e(iArr, 0, iArr.length));
        if ((iArr[0] & 255) == 124) {
            y(iArr);
        }
        synchronized (this.f2544h) {
            this.f2544h.f(255);
        }
    }

    @Override // i1.s
    public boolean p(y.b bVar, int i2, int i3) {
        boolean z2 = true;
        if (i2 != 0) {
            z2 = false;
        } else {
            o1.x.v(bVar, i2, 0, this.f2549l);
            int[] iArr = this.f2550m;
            o1.x.v(bVar, i2, 1, iArr[0], iArr[1]);
            int[] iArr2 = this.f2551n;
            o1.x.v(bVar, i2, 2, iArr2[0], iArr2[1]);
            int[] iArr3 = this.f2552o;
            o1.x.v(bVar, i2, 3, iArr3[0], iArr3[1]);
            o1.x.v(bVar, i2, 5, this.f2554q);
            o1.x.v(bVar, i2, 4, this.f2553p);
            int[] iArr4 = this.f2558u;
            o1.x.v(bVar, i2, 12, iArr4[0], iArr4[1], iArr4[2], iArr4[3]);
            o1.x.v(bVar, i2, 10, this.f2560w);
            int[] iArr5 = this.f2559v;
            o1.x.v(bVar, i2, 9, iArr5[0], iArr5[1]);
            o1.x.v(bVar, i2, 7, this.f2556s);
            o1.x.v(bVar, i2, 8, this.f2557t);
            o1.x.t(bVar, i2, 11, this.f2561x);
        }
        return z2 ? z2 : super.p(bVar, i2, i3);
    }

    public void w(int i2, int i3, int i4) {
        int i5 = (i2 >> 6) & 255;
        if (i5 != this.f2549l) {
            this.f2549l = i5;
            r(0, 0, i5);
        }
        int i6 = i3 & 255;
        int i7 = i4 & 255;
        int[] iArr = this.f2550m;
        if (i6 == iArr[0] && i7 == iArr[1]) {
            return;
        }
        iArr[0] = i6;
        iArr[1] = i7;
        r(0, 1, iArr[0], iArr[1]);
    }

    public void x(int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        int iRgb = Color.rgb(i3, i4, i5);
        int iRgb2 = Color.rgb(i6, i7, i8);
        int[] iArr = this.f2551n;
        if (iRgb == iArr[0] && iRgb2 == iArr[1]) {
            return;
        }
        iArr[0] = iRgb;
        iArr[1] = iRgb2;
        r(0, 2, iArr[0], iArr[1]);
    }

    public void y(int[] iArr) {
        int i2 = iArr[1] & 255;
        switch (i2) {
            case 0:
                if (s0.h(iArr, 4)) {
                    w(iArr[2], iArr[3], iArr[4]);
                }
                break;
            case 1:
                if (s0.h(iArr, 8)) {
                    x(iArr[2], iArr[3], iArr[4], iArr[5], iArr[6], iArr[7], iArr[8]);
                }
                break;
            case 2:
                if (s0.h(iArr, 5)) {
                    A(iArr[2], iArr[3], iArr[4], iArr[5]);
                }
                break;
            case 3:
                if (s0.h(iArr, 2)) {
                    B(iArr[2]);
                }
                break;
            case 4:
                if (s0.h(iArr, 2)) {
                    E(iArr[2]);
                }
                break;
            case 5:
                if (s0.h(iArr, 2)) {
                    G(iArr[2]);
                }
                break;
            case 6:
                if (s0.h(iArr, 5)) {
                    z(iArr[2], iArr[3], iArr[4], iArr[5]);
                }
                break;
            default:
                switch (i2) {
                    case 141:
                        if (s0.h(iArr, 3)) {
                            D(iArr[2], iArr[3]);
                        }
                        break;
                    case 142:
                        if (s0.h(iArr, 2)) {
                            C(iArr[2]);
                        }
                        break;
                    case 143:
                        if (s0.h(iArr, 2)) {
                            F(s0.r(Arrays.copyOfRange(iArr, 2, ((c) this.f2721a).f2619d.intValue())));
                        }
                        break;
                }
                break;
        }
    }

    public void z(int i2, int i3, int i4, int i5) {
        int[] iArr = {i2, i3, i4, i5};
        if (Arrays.equals(iArr, this.f2558u)) {
            return;
        }
        this.f2558u = iArr;
        r(0, 12, iArr[0], iArr[1], iArr[2], iArr[3]);
    }
}
