package k0;

/* JADX INFO: loaded from: classes2.dex */
public class a6 extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f3175b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3176c = 255;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f3177d = {new int[]{6, 2}, new int[]{13, 18}, new int[]{25, 67}, new int[]{26, 68}, new int[]{27, 3}, new int[]{28, 4}, new int[]{55, 12}, new int[]{56, 33}, new int[]{57, 32}, new int[]{58, 18}, new int[]{59, 26}, new int[]{66, 27}, new int[]{67, 28}, new int[]{68, 25}, new int[]{69, 53}, new int[]{70, 21}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f3178e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f3179f = new a();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f3180g = new b();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a6 a6Var = a6.this;
            int i2 = a6Var.f3178e;
            if (i2 != 0) {
                a6Var.f3178e = i2 - 1;
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a6.this.V2();
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        if (nt.a()) {
            qt.y(this.f3179f);
            l0.g.i();
            l0.b0.a(this.f3180g);
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        if (bArr[i2 + 1] == -96 && nt.a()) {
            int i4 = i2 + 4;
            if (this.f3176c != (bArr[i4] & 255) || this.f3178e == 0) {
                this.f3176c = bArr[i4] & 255;
                int i5 = 0;
                while (true) {
                    iArr = this.f3177d;
                    if (i5 >= iArr.length) {
                        break;
                    }
                    int i6 = this.f3176c;
                    if (i6 == iArr[i5][0]) {
                        if (i6 == 0) {
                            break;
                        }
                        this.f3175b = i5;
                        break;
                    }
                    i5++;
                }
                if (this.f3176c != 0) {
                    if (i5 < iArr.length) {
                        this.f3178e = 1;
                        l0.b0.l0(iArr[i5][1], 0);
                        l0.b0.l0(this.f3177d[this.f3175b][1], 1);
                        return;
                    }
                    return;
                }
                int i7 = this.f3175b;
                if (i7 < iArr.length && i7 != 255) {
                    l0.b0.l0(iArr[i7][1], 1);
                }
                this.f3175b = 255;
            }
        }
    }

    @Override // k0.lt
    public void V2() {
        if (l0.g.g() >= 6) {
            if (l0.g.h(0) != 170) {
                int i2 = l0.g.f13041c + 1;
                l0.g.f13041c = i2;
                l0.g.f13041c = i2 % l0.g.f13043e;
                return;
            }
            byte b2 = 0;
            byte bH = 0;
            while (b2 < 5) {
                bH = b2 == 0 ? l0.g.h(b2) : (byte) (bH ^ l0.g.h(b2));
                b2 = (byte) (b2 + 1);
            }
            if (bH != l0.g.h(b2)) {
                int i3 = l0.g.f13041c + 1;
                l0.g.f13041c = i3;
                l0.g.f13041c = i3 % l0.g.f13043e;
                return;
            }
            int i4 = 0;
            while (i4 < 4) {
                i4++;
                l0.g.f13045g[i4] = l0.g.h(i4);
            }
            l0.g.f13045g[0] = 2;
            l0.g.f13041c = (l0.g.f13041c + (i4 + 2)) % l0.g.f13043e;
            U2(l0.g.f13045g, 0, i4 + 1);
        }
    }

    @Override // k0.lt
    public void W2() {
        if (nt.a()) {
            qt.p0(this.f3179f);
            l0.b0.o0(this.f3180g);
        }
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
    }
}
