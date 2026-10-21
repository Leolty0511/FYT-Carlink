package i1;

import android.util.Log;

/* JADX INFO: loaded from: classes2.dex */
public class l extends i1.a<a> {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f2663k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f2664l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int[][] f2665m;

    public class a extends e {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final int[] f2666h = {46};

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
            return this.f2666h;
        }

        @Override // i1.e
        public boolean j() {
            return true;
        }
    }

    public l(int i2, int i3) {
        super(i2, i3);
        this.f2664l = 0;
        this.f2665m = new int[][]{new int[]{16, 21}, new int[]{30, 18}, new int[]{31, 1}, new int[]{35, 12}, new int[]{38, 2}, new int[]{64, 7}, new int[]{65, 8}, new int[]{66, 3}, new int[]{67, 4}, new int[]{68, -1}, new int[]{69, 79}, new int[]{70, 9}, new int[]{71, 6}, new int[]{73, 4}, new int[]{75, 5}, new int[]{77, 29}, new int[]{78, -1}};
        a aVar = new a();
        this.f2721a = aVar;
        aVar.h();
    }

    @Override // i1.s
    public void l(int[] iArr) {
        int[][] iArr2;
        Log.d("Device", String.format("22  pannel data[0]:%2X ", Integer.valueOf(iArr[0])) + String.format(" data[1]:%2X ", Integer.valueOf(iArr[1])) + String.format("data[2]:%2X", Integer.valueOf(iArr[2])));
        int i2 = iArr[0];
        if (i2 != 2) {
            if (i2 != 18) {
                return;
            }
            Log.d("Device", String.format("touch state =%2X ", Integer.valueOf(iArr[1] & 255)) + String.format(" x1=%2X ", Integer.valueOf(((iArr[2] & 255) << 8) | (iArr[3] & 255))) + String.format(" y1=%2X", Integer.valueOf(((iArr[4] & 255) << 8) | (iArr[5] & 255))) + String.format(" x2=%2X", Integer.valueOf(((iArr[6] & 255) << 8) | (iArr[7] & 255))) + String.format(" y2=%2X", Integer.valueOf((iArr[9] & 255) | ((iArr[8] & 255) << 8))));
            return;
        }
        int i3 = iArr[1];
        int i4 = iArr[2];
        this.f2664l = i3 & 255;
        int i5 = 0;
        while (true) {
            iArr2 = this.f2665m;
            if (i5 >= iArr2.length) {
                break;
            }
            int i6 = this.f2664l;
            if (i6 == iArr2[i5][0]) {
                if (i6 == 0) {
                    break;
                }
                this.f2663k = i5;
                break;
            }
            i5++;
        }
        if ((i4 & 255) != 0) {
            if (i5 < iArr2.length) {
                l0.b0.l0(iArr2[i5][1], 0);
            }
        } else if (i5 <= iArr2.length) {
            l0.b0.l0(iArr2[this.f2663k][1], 1);
        }
    }
}
