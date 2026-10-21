package i1;

import android.util.Log;

/* JADX INFO: loaded from: classes2.dex */
public class c extends s<a> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f2586h;

    public class a extends e {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final int[] f2587h = {46};

        public a() {
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
            return this.f2587h;
        }

        @Override // i1.e
        public boolean j() {
            return true;
        }
    }

    public c(int i2, int i3) {
        super(i2, i3);
        this.f2586h = 18;
        a aVar = new a();
        this.f2721a = aVar;
        aVar.h();
    }

    @Override // i1.s
    public s<a>.a i(int i2) {
        return null;
    }

    @Override // i1.s
    public boolean j(int i2, int[] iArr, float[] fArr, String[] strArr) {
        Log.e("Device", String.format("Device receicerId: %2X, cmdid: %d", this.f2722b, this.f2723c) + " SEND DATA:" + o1.b0.e(iArr, 0, iArr.length));
        if (i2 != 18 || iArr.length <= 1) {
            return false;
        }
        int i3 = iArr[1];
        if (i3 == 11) {
            iArr[1] = 15;
        } else if (i3 == 12) {
            iArr[1] = 16;
        }
        v(153, 2, iArr[1], 255);
        return true;
    }

    @Override // i1.s
    public void l(int[] iArr) {
    }

    public void v(int... iArr) {
        int length = iArr.length + 2 + 1;
        int[] iArr2 = new int[length];
        iArr2[0] = this.f2723c.intValue();
        iArr2[1] = 46;
        for (int i2 = 0; i2 < iArr.length; i2++) {
            iArr2[2 + i2] = iArr[i2] & 255;
        }
        int i3 = length - 1;
        iArr2[i3] = 0;
        for (int i4 = 0; i4 < iArr.length; i4++) {
            iArr2[i3] = iArr2[i3] + (iArr2[2 + i4] & 255);
        }
        iArr2[i3] = (iArr2[i3] & 255) ^ 255;
        Log.e("Device", String.format("Device receicerId: %2X, cmdid: %2X", this.f2722b, this.f2723c) + " SEND DATA:" + o1.b0.e(iArr2, 0, length));
        for (int i5 = 0; i5 < 3; i5++) {
            z.k.s(iArr2);
        }
    }
}
