package k0;

/* JADX INFO: loaded from: classes2.dex */
public class o5 extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f8729b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f8730c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f8731d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{5, 18}, new int[]{7, -1}, new int[]{8, 4}, new int[]{9, 3}, new int[]{24, 12}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public byte f8732e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f8733f = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            o5 o5Var = o5.this;
            byte b2 = (byte) (o5Var.f8732e + 1);
            o5Var.f8732e = b2;
            if (b2 > 5) {
                l0.b0.o0(o5Var.f8733f);
                o5.this.f8732e = (byte) 0;
            }
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2;
        if (bArr[i2 + 1] == 17 && nt.a()) {
            this.f8730c = bArr[i2 + 4] & 255;
            int i4 = 0;
            while (true) {
                iArr = this.f8731d;
                if (i4 >= iArr.length) {
                    break;
                }
                int i5 = this.f8730c;
                if (i5 == iArr[i4][0]) {
                    if (i5 == 0) {
                        break;
                    }
                    this.f8729b = i4;
                    break;
                }
                i4++;
            }
            if (this.f8730c != 0) {
                if (i4 >= iArr.length || (b2 = this.f8732e) != 0) {
                    return;
                }
                this.f8732e = (byte) (b2 + 1);
                l0.b0.l0(iArr[i4][1], 0);
                l0.b0.a(this.f8733f);
                return;
            }
            int i6 = this.f8729b;
            if (i6 < iArr.length && i6 != 255) {
                l0.b0.l0(iArr[i6][1], 1);
                l0.b0.o0(this.f8733f);
                this.f8732e = (byte) 0;
            }
            this.f8729b = 255;
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
