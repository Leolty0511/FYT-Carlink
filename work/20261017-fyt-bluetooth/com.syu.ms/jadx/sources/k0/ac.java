package k0;

/* JADX INFO: loaded from: classes2.dex */
public class ac extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f3279b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3280c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f3281d = {new int[]{1, 2}, new int[]{2, 4}, new int[]{3, 3}, new int[]{4, 7}, new int[]{5, 8}, new int[]{6, 12}, new int[]{7, 18}, new int[]{8, 26}, new int[]{11, 0}, new int[]{12, 1}, new int[]{13, 5}, new int[]{14, 6}, new int[]{15, 2}, new int[]{16, 18}, new int[]{17, 26}, new int[]{18, 12}, new int[]{19, 24}, new int[]{20, 18}, new int[]{21, 38}, new int[]{22, 3}, new int[]{23, 4}, new int[]{24, 36}, new int[]{25, 74}, new int[]{26, 75}, new int[]{27, 25}, new int[]{28, 54}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f3282e = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.c0.k();
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        if (nt.a()) {
            w0.e.f17815a.a(this.f3282e, 1);
            w0.e.f17819e.a(this.f3282e, 1);
            u0.c.f17374a.a(this.f3282e, 1);
            u0.c.f17393t.a(this.f3282e, 1);
            u0.c.f17392s.a(this.f3282e, 1);
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        byte b2 = bArr[i2];
        if (b2 != 1) {
            if (b2 != 2) {
                if (b2 != 5) {
                    return;
                }
                int i5 = i2 + 2;
                if ((bArr[i5] & 255) >= 128) {
                    qt.m(bArr[i5], 0, 128, true, 50);
                    return;
                } else {
                    qt.i(bArr[i5], 0, false, 50);
                    return;
                }
            }
            byte b3 = bArr[i2 + 4];
            byte b4 = bArr[i2 + 5];
            if (nt.a()) {
                int i6 = (b4 & 255) | ((b3 << 8) & 65280);
                if ((b3 & 128) != 0) {
                    int i7 = i6 & 32767;
                    i4 = 1000 - (((i7 / 10) * 10) + (i7 % 10));
                } else {
                    i4 = ((i6 / 10) * 10) + (i6 % 10) + 1000;
                }
                u0.d.A3(i4);
                return;
            }
            return;
        }
        byte b5 = bArr[i2 + 2];
        byte b6 = bArr[i2 + 3];
        this.f3280c = b5 & 255;
        int i8 = 0;
        while (true) {
            iArr = this.f3281d;
            if (i8 >= iArr.length) {
                break;
            }
            int i9 = this.f3280c;
            if (i9 == iArr[i8][0]) {
                if (i9 == 0) {
                    break;
                }
                this.f3279b = i8;
                break;
            }
            i8++;
        }
        int i10 = b6 & 255;
        if (i10 == 1) {
            if (i8 < iArr.length) {
                l0.b0.l0(iArr[i8][1], 0);
            }
        } else if (i10 == 0) {
            int i11 = this.f3279b;
            if (i11 < iArr.length && i11 != 255) {
                l0.b0.l0(iArr[i11][1], 1);
            }
            this.f3279b = 255;
        }
    }

    @Override // k0.lt
    public void W2() {
        if (nt.a()) {
            w0.e.f17815a.d(this.f3282e);
            w0.e.f17819e.d(this.f3282e);
            u0.c.f17374a.d(this.f3282e);
            u0.c.f17393t.d(this.f3282e);
            u0.c.f17392s.d(this.f3282e);
        }
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
    }
}
