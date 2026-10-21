package k0;

/* JADX INFO: loaded from: classes2.dex */
public class q1 extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f9436b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f9437c = 255;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f9438d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, -1}, new int[]{5, 18}, new int[]{6, 26}, new int[]{7, -1}, new int[]{8, 28}, new int[]{9, 27}, new int[]{10, 2}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public byte f9439e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f9440f = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            q1 q1Var = q1.this;
            byte b2 = (byte) (q1Var.f9439e + 1);
            q1Var.f9439e = b2;
            if (b2 > 5) {
                l0.b0.o0(q1Var.f9440f);
                q1.this.f9439e = (byte) 0;
            }
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        z.k.s(227, 2, 36, 34, 9);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2;
        if (bArr[i2 + 1] == 114 && nt.a()) {
            this.f9437c = bArr[i2 + 4] & 255;
            int i4 = 0;
            while (true) {
                iArr = this.f9438d;
                if (i4 >= iArr.length) {
                    break;
                }
                int i5 = this.f9437c;
                if (i5 == iArr[i4][0]) {
                    if (i5 == 0) {
                        break;
                    }
                    this.f9436b = i4;
                    break;
                }
                i4++;
            }
            if (this.f9437c != 0) {
                if (i4 >= iArr.length || (b2 = this.f9439e) != 0) {
                    return;
                }
                this.f9439e = (byte) (b2 + 1);
                l0.b0.l0(iArr[i4][1], 0);
                l0.b0.a(this.f9440f);
                return;
            }
            int i6 = this.f9436b;
            if (i6 < iArr.length && i6 != 255) {
                l0.b0.l0(iArr[i6][1], 1);
                l0.b0.o0(this.f9440f);
                this.f9439e = (byte) 0;
            }
            this.f9436b = 255;
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
