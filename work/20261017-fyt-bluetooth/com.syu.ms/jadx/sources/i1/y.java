package i1;

import android.util.Log;
import o1.s0;

/* JADX INFO: loaded from: classes2.dex */
public class y extends i1.a<a> {

    public class a extends e {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final int[] f2860h = {170};

        public a() {
        }

        @Override // i1.e
        public boolean a(int i2) {
            int i3 = this.f2617b[0] & 255;
            for (int i4 = 0; i4 < this.f2619d.intValue() - 1; i4++) {
                i3 += this.f2618c[i4] & 255;
            }
            return i3 == s0.x(this.f2618c[this.f2619d.intValue() - 1], i2);
        }

        @Override // i1.e
        public boolean c(int i2) {
            return this.f2619d != null;
        }

        @Override // i1.e
        public int[] f() {
            return this.f2860h;
        }

        @Override // i1.e
        public boolean j() {
            this.f2619d = 9;
            return super.j();
        }
    }

    public y(int i2, int i3) {
        super(i2, i3);
        a aVar = new a();
        this.f2721a = aVar;
        aVar.h();
    }

    @Override // i1.s
    public void l(int[] iArr) {
        Log.e("Device", "onHandle ===== " + o1.b0.e(iArr, 0, iArr.length));
        int i2 = iArr[1];
        int i3 = iArr[2];
        int i4 = iArr[5];
        int i5 = 15;
        int i6 = (i4 & 1) == 1 ? (i2 >> 4) & 15 : 15;
        int i7 = (i4 & 2) != 0 ? i2 & 15 : 15;
        int i8 = (i4 & 4) != 0 ? (i3 >> 4) & 15 : 15;
        int i9 = (i4 & 8) != 0 ? i3 & 15 : 15;
        Log.e("Device", String.format("r1 : %d, r2 : %d, r3 : %d, r4 : %d", Integer.valueOf(i6), Integer.valueOf(i7), Integer.valueOf(i8), Integer.valueOf(i9)));
        if (i6 < 0 || i6 > 9) {
            i6 = 15;
        }
        u0.d.R2(i6);
        if (i7 < 0 || i7 > 9) {
            i7 = 15;
        }
        u0.d.S2(i7);
        if (i8 < 0 || i8 > 9) {
            i8 = 15;
        }
        u0.d.T2(i8);
        if (i9 >= 0 && i9 <= 9) {
            i5 = i9;
        }
        u0.d.U2(i5);
    }
}
