package k0;

/* JADX INFO: loaded from: classes2.dex */
public class p0 extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f9034b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f9035c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f9036d = {new int[]{1, 8}, new int[]{2, 3}, new int[]{3, 2}, new int[]{4, 4}, new int[]{5, 7}, new int[]{6, 1}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[][] f9037e = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 2}, new int[]{4, 3}, new int[]{5, 4}, new int[]{6, 1}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public byte f9038f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f9039g = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            p0 p0Var = p0.this;
            byte b2 = (byte) (p0Var.f9038f + 1);
            p0Var.f9038f = b2;
            if (b2 > 5) {
                l0.b0.o0(p0Var.f9039g);
                p0.this.f9038f = (byte) 0;
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
        mtVar.f8311f = 0;
        mtVar.f8312g = 1;
        mtVar.f8320o = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2;
        byte b3 = bArr[i2 + 1];
        if (b3 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b3 == 114 && nt.a()) {
            this.f9035c = bArr[i2 + 4] & 255;
            int i4 = 0;
            while (true) {
                iArr = this.f9036d;
                if (i4 >= iArr.length) {
                    break;
                }
                int i5 = this.f9035c;
                if (i5 == iArr[i4][0]) {
                    if (i5 == 0) {
                        break;
                    }
                    this.f9034b = i4;
                    break;
                }
                i4++;
            }
            if (this.f9035c != 0) {
                if (i4 >= iArr.length || (b2 = this.f9038f) != 0) {
                    return;
                }
                this.f9038f = (byte) (b2 + 1);
                if (nt.f8633a == 43) {
                    l0.b0.l0(iArr[i4][1], 0);
                } else {
                    l0.b0.l0(this.f9037e[i4][1], 0);
                }
                l0.b0.a(this.f9039g);
                return;
            }
            int i6 = this.f9034b;
            if (i6 < iArr.length && i6 != 255) {
                if (nt.f8633a == 43) {
                    l0.b0.l0(iArr[i6][1], 1);
                } else {
                    l0.b0.l0(this.f9037e[i6][1], 1);
                }
                l0.b0.o0(this.f9039g);
                this.f9038f = (byte) 0;
            }
            this.f9034b = 255;
        }
    }

    @Override // k0.lt
    public void W2() {
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
    }
}
