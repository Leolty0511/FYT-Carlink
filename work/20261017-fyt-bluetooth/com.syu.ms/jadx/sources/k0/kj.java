package k0;

/* JADX INFO: loaded from: classes2.dex */
public class kj extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f7342b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f7343c = 255;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f7344d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[][] f7345e = {new int[]{1, 0}, new int[]{4, 55}, new int[]{6, 6}, new int[]{9, 12}, new int[]{16, 16}, new int[]{21, 34}, new int[]{22, 35}, new int[]{25, 3}, new int[]{26, 4}, new int[]{32, 1}, new int[]{36, 54}, new int[]{42, 29}, new int[]{43, 5}, new int[]{48, 18}, new int[]{51, 24}, new int[]{52, 18}, new int[]{53, 26}, new int[]{57, 25}, new int[]{59, 2}, new int[]{66, 38}, new int[]{75, 21}, new int[]{95, 13}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f7346f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f7347g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f7348h = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            kj kjVar = kj.this;
            kjVar.f7346f = 0;
            kjVar.f7347g = 0;
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        mtVar.f8306a = null;
        mtVar.f8310e = 0;
        mtVar.f8311f = 0;
        mtVar.f8312g = 0;
        mtVar.f8314i = 0;
        mtVar.f8320o = 0;
        u0.c.f17386m.a(this.f7348h, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        byte b2 = bArr[i2 + 1];
        if (b2 == 33) {
            this.f7343c = bArr[i2 + 2] & 255;
            byte b3 = bArr[i2 + 3];
            int i5 = 0;
            while (true) {
                iArr = this.f7345e;
                if (i5 >= iArr.length) {
                    break;
                }
                int i6 = this.f7343c;
                if (i6 == iArr[i5][0]) {
                    if (i6 == 0) {
                        break;
                    }
                    this.f7342b = i5;
                    break;
                }
                i5++;
            }
            if ((b3 & 255) != 0 && this.f7344d == 0) {
                if (i5 < iArr.length) {
                    l0.b0.l0(iArr[i5][1], 0);
                    this.f7344d = 1;
                    return;
                }
                return;
            }
            int i7 = this.f7342b;
            if (i7 < iArr.length && i7 != 255) {
                l0.b0.l0(iArr[i7][1], 1);
            }
            this.f7342b = 255;
            this.f7344d = 0;
            return;
        }
        if (b2 != 34) {
            return;
        }
        byte b4 = bArr[i2 + 2];
        byte b5 = bArr[i2 + 3];
        if (b4 != 1) {
            if (b4 == 2 && b5 != (i4 = this.f7347g)) {
                if (b5 > i4) {
                    for (int i8 = 0; i8 < b5 - this.f7347g; i8++) {
                        l0.b0.l0(31, 0);
                        l0.b0.l0(31, 1);
                    }
                } else if (b5 < i4) {
                    for (int i9 = 0; i9 < this.f7347g - b5; i9++) {
                        l0.b0.l0(30, 0);
                        l0.b0.l0(30, 1);
                    }
                }
                this.f7347g = b5;
                return;
            }
            return;
        }
        int i10 = this.f7346f;
        if (b5 != i10) {
            if (b5 > i10) {
                for (int i11 = 0; i11 < b5 - this.f7346f; i11++) {
                    l0.b0.l0(7, 0);
                    l0.b0.l0(7, 1);
                }
            } else if (b5 < i10) {
                for (int i12 = 0; i12 < this.f7346f - b5; i12++) {
                    l0.b0.l0(8, 0);
                    l0.b0.l0(8, 1);
                }
            }
            this.f7346f = b5;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f7348h);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
    }
}
