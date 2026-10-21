package k0;

/* JADX INFO: loaded from: classes2.dex */
public class el extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f4872b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f4873c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f4874d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{5, 18}, new int[]{6, 26}, new int[]{8, 3}, new int[]{9, 4}, new int[]{10, 2}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public byte f4875e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f4876f = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            el elVar = el.this;
            byte b2 = (byte) (elVar.f4875e + 1);
            elVar.f4875e = b2;
            if (b2 > 5) {
                l0.b0.o0(elVar.f4876f);
                el.this.f4875e = (byte) 0;
            }
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
        mtVar.f8311f = 1;
        mtVar.f8312g = 0;
        mtVar.f8320o = 0;
        this.f4875e = (byte) 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2;
        int[][] iArr2;
        byte b3;
        byte b4 = bArr[i2 + 1];
        if (b4 == -4) {
            if (bArr[i2 + 2] != 18) {
                return;
            }
            int i4 = bArr[i2 + 3] & 255;
            this.f4873c = i4;
            int i5 = 0;
            while (true) {
                iArr = this.f4874d;
                if (i5 >= iArr.length) {
                    break;
                }
                int i6 = this.f4873c;
                if (i6 == iArr[i5][0]) {
                    if (i6 == 0) {
                        break;
                    }
                    this.f4872b = i5;
                    break;
                }
                i5++;
            }
            if (i4 != 0) {
                if (i5 >= iArr.length || (b2 = this.f4875e) != 0) {
                    return;
                }
                this.f4875e = (byte) (b2 + 1);
                l0.b0.l0(iArr[i5][1], 0);
                l0.b0.a(this.f4876f);
                return;
            }
            int i7 = this.f4872b;
            if (i7 < iArr.length && i7 != 255) {
                l0.b0.l0(iArr[i7][1], 1);
                l0.b0.o0(this.f4876f);
                this.f4875e = (byte) 0;
            }
            this.f4872b = 255;
            return;
        }
        if (b4 == -3) {
            int i8 = bArr[i2 + 2] & 255;
            int i9 = bArr[i2 + 3] & 255;
            int i10 = bArr[i2 + 4] & 255;
            int i11 = bArr[i2 + 5] & 255;
            qt.y0(27, i8);
            qt.y0(12, (i9 >> 7) & 1);
            qt.y0(65, (i9 >> 6) & 1);
            qt.y0(16, (i9 >> 5) & 1);
            qt.y0(20, (i9 >> 4) & 1);
            qt.y0(19, (i9 >> 3) & 1);
            qt.y0(13, (i9 >> 2) & 1);
            qt.y0(11, (i9 >> 0) & 1);
            qt.y0(21, i10 & 255);
            qt.y0(56, i11 & 15);
            return;
        }
        if (b4 != 18) {
            return;
        }
        int i12 = bArr[i2 + 2] & 255;
        this.f4873c = i12;
        int i13 = 0;
        while (true) {
            iArr2 = this.f4874d;
            if (i13 >= iArr2.length) {
                break;
            }
            int i14 = this.f4873c;
            if (i14 == iArr2[i13][0]) {
                if (i14 == 0) {
                    break;
                }
                this.f4872b = i13;
                break;
            }
            i13++;
        }
        if (i12 != 0) {
            if (i13 >= iArr2.length || (b3 = this.f4875e) != 0) {
                return;
            }
            this.f4875e = (byte) (b3 + 1);
            l0.b0.l0(iArr2[i13][1], 0);
            l0.b0.a(this.f4876f);
            return;
        }
        int i15 = this.f4872b;
        if (i15 < iArr2.length && i15 != 255) {
            l0.b0.l0(iArr2[i15][1], 1);
            l0.b0.o0(this.f4876f);
            this.f4875e = (byte) 0;
        }
        this.f4872b = 255;
    }

    @Override // k0.lt
    public void W2() {
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 97) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
    }
}
