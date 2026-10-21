package i1;

import android.text.format.Time;
import android.util.Log;

/* JADX INFO: loaded from: classes2.dex */
public class k extends i1.a<c> {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f2653k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final Runnable f2654l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f2655m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f2656n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int[][] f2657o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f2658p;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = u0.b.f17366w;
            k kVar = k.this;
            if (kVar.f2653k != i2) {
                kVar.f2653k = i2;
                kVar.w(25, 1, i2);
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            new Time(Time.getCurrentTimezone()).setToNow();
            k.this.w(1, 2, 3, 4);
        }
    }

    public class c extends e {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final int[] f2661h = {46};

        public c() {
        }

        @Override // i1.e
        public boolean a(int i2) {
            int iIntValue = (this.f2620e.intValue() & 255) + (this.f2619d.intValue() & 255);
            for (int i3 = 0; i3 < this.f2619d.intValue(); i3++) {
                iIntValue += this.f2618c[i3] & 255;
            }
            return (i2 & 255) == ((iIntValue & 255) ^ 255);
        }

        @Override // i1.e
        public boolean c(int i2) {
            if (this.f2619d == null) {
                this.f2619d = Integer.valueOf(i2 & 255);
            }
            return this.f2619d != null;
        }

        @Override // i1.e
        public int[] f() {
            return this.f2661h;
        }

        @Override // i1.e
        public boolean j() {
            return true;
        }
    }

    public k(int i2, int i3) {
        super(i2, i3);
        this.f2653k = 255;
        a aVar = new a();
        this.f2654l = aVar;
        this.f2656n = 0;
        this.f2657o = new int[][]{new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 81}, new int[]{4, 80}, new int[]{5, 18}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 5}, new int[]{9, 0}, new int[]{10, 21}, new int[]{11, 13}, new int[]{12, 18}, new int[]{13, -1}, new int[]{14, -1}, new int[]{15, 5}, new int[]{16, 11}, new int[]{17, 1}, new int[]{18, 55}, new int[]{19, 6}, new int[]{20, 82}, new int[]{21, 36}, new int[]{22, 25}, new int[]{23, 38}, new int[]{24, 55}, new int[]{25, -1}};
        this.f2658p = new b();
        c cVar = new c();
        this.f2721a = cVar;
        cVar.h();
        u0.c.f17399z.a(aVar, 0);
        Log.d("LG", "PluginBBAKeyLZH");
    }

    @Override // i1.s
    public void l(int[] iArr) {
        int[][] iArr2;
        Log.d("Device", String.format("55  pannel data[0]:%2X ", Integer.valueOf(iArr[0])) + String.format(" data[1]:%2X ", Integer.valueOf(iArr[1])) + String.format("data[2]:%2X", Integer.valueOf(iArr[2])));
        if (iArr[0] != 33) {
            return;
        }
        int i2 = iArr[1];
        int i3 = iArr[2];
        this.f2656n = i2 & 255;
        int i4 = 0;
        while (true) {
            iArr2 = this.f2657o;
            if (i4 >= iArr2.length) {
                break;
            }
            int i5 = this.f2656n;
            if (i5 == iArr2[i4][0]) {
                if (i5 == 0) {
                    break;
                }
                this.f2655m = i4;
                break;
            }
            i4++;
        }
        if ((i3 & 255) != 0) {
            if (i4 < iArr2.length) {
                l0.b0.l0(iArr2[i4][1], 0);
            }
        } else if (i4 <= iArr2.length) {
            l0.b0.l0(iArr2[this.f2655m][1], 1);
        }
    }

    public void w(int... iArr) {
        int length = iArr == null ? 0 : iArr.length;
        if (length == 0) {
            return;
        }
        int[] iArr2 = new int[length + 2];
        iArr2[0] = 46;
        int i2 = 0;
        int i3 = 0;
        while (i2 < length) {
            i3 += iArr[i2];
            int i4 = i2 + 1;
            iArr2[i4] = iArr[i2];
            i2 = i4;
        }
        iArr2[length + 1] = i3 ^ 255;
        Log.e("Device", "PluginBBAKeyLZH write serial:" + o1.b0.e(iArr, 0, iArr.length));
        b0 b0Var = this.f2544h;
        if (b0Var != null) {
            b0Var.f(iArr2);
        }
    }
}
