package i1;

/* JADX INFO: loaded from: classes2.dex */
public class o extends i1.a<a> {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f2703k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f2704l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int[][] f2705m;

    public class a extends e {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final int[] f2706h = {46};

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
            return this.f2706h;
        }

        @Override // i1.e
        public boolean j() {
            return true;
        }
    }

    public o(int i2, int i3) {
        super(i2, i3);
        this.f2704l = 0;
        this.f2705m = new int[][]{new int[]{1, 25}, new int[]{2, 11}, new int[]{3, 5}, new int[]{4, 2}, new int[]{5, 21}, new int[]{6, 3}, new int[]{7, 4}, new int[]{8, 55}, new int[]{9, 12}, new int[]{10, 1}, new int[]{11, 38}, new int[]{12, 6}, new int[]{13, 76}, new int[]{14, 13}, new int[]{33, 40}, new int[]{34, 41}, new int[]{35, 42}, new int[]{36, 43}, new int[]{37, 44}, new int[]{38, 45}, new int[]{39, 39}, new int[]{40, 64}, new int[]{41, 18}, new int[]{42, 13}, new int[]{43, 25}, new int[]{44, 16}, new int[]{45, 66}, new int[]{46, 65}, new int[]{47, 63}};
        a aVar = new a();
        this.f2721a = aVar;
        aVar.h();
    }

    @Override // i1.s
    public void l(int[] iArr) {
        int[][] iArr2;
        if (iArr[0] != 80) {
            return;
        }
        int i2 = iArr[2];
        int i3 = iArr[3];
        this.f2704l = i2 & 255;
        int i4 = 0;
        while (true) {
            iArr2 = this.f2705m;
            if (i4 >= iArr2.length) {
                break;
            }
            int i5 = this.f2704l;
            if (i5 == iArr2[i4][0]) {
                if (i5 == 0) {
                    break;
                }
                this.f2703k = i4;
                break;
            }
            i4++;
        }
        switch (this.f2704l) {
            case 16:
                for (int i6 = 0; i6 < (i3 & 255); i6++) {
                    l0.b0.l0(7, 0);
                }
                l0.b0.l0(7, 1);
                break;
            case 17:
                for (int i7 = 0; i7 < (i3 & 255); i7++) {
                    l0.b0.l0(8, 0);
                }
                l0.b0.l0(8, 1);
                break;
            case 18:
                for (int i8 = 0; i8 < (i3 & 255); i8++) {
                    l0.b0.l0(31, 0);
                }
                l0.b0.l0(31, 1);
                break;
            case 19:
                for (int i9 = 0; i9 < (i3 & 255); i9++) {
                    l0.b0.l0(30, 0);
                }
                l0.b0.l0(30, 1);
                break;
            default:
                if ((i3 & 255) != 0) {
                    if (i4 < iArr2.length) {
                        l0.b0.l0(iArr2[i4][1], 0);
                    }
                } else if (i4 <= iArr2.length) {
                    l0.b0.l0(iArr2[this.f2703k][1], 1);
                }
                break;
        }
    }
}
