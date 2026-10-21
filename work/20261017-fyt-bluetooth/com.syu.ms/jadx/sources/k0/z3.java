package k0;

/* JADX INFO: loaded from: classes2.dex */
public class z3 extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f12683b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f12684c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f12685d = 255;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[][] f12686e = {new int[]{1, 8}, new int[]{2, 7}, new int[]{3, 12}, new int[]{4, 74}, new int[]{5, 39}, new int[]{6, 40}, new int[]{7, 41}, new int[]{8, 42}, new int[]{9, 43}, new int[]{10, 44}, new int[]{11, 45}, new int[]{12, 3}, new int[]{13, 4}, new int[]{14, 54}, new int[]{15, 64}, new int[]{16, 55}, new int[]{17, 25}, new int[]{18, 11}, new int[]{19, 65}, new int[]{20, 38}, new int[]{21, 1}, new int[]{22, 73}, new int[]{23, 66}, new int[]{24, 54}, new int[]{25, 75}, new int[]{26, 3}, new int[]{27, 4}, new int[]{28, 28}, new int[]{29, 27}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f12687f = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            z3.this.V2();
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        if (nt.a()) {
            l0.g.i();
            l0.b0.a(this.f12687f);
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        if (nt.a()) {
            byte b2 = bArr[i2 + 1];
            if (b2 != 1) {
                if (b2 != 2) {
                    return;
                }
                int i4 = i2 + 4;
                int i5 = ((bArr[i4] & 255) & 128) != 0 ? 1000 - ((bArr[i4] & 127) * 10) : ((bArr[i4] & 127) * 10) + 1000;
                if (i5 > 600) {
                    u0.d.A3(i5);
                    return;
                }
                return;
            }
            this.f12684c = bArr[i2 + 4] & 255;
            int i6 = 0;
            while (true) {
                iArr = this.f12686e;
                if (i6 >= iArr.length) {
                    break;
                }
                int i7 = this.f12684c;
                if (i7 == iArr[i6][0]) {
                    if (i7 == 0) {
                        break;
                    }
                    this.f12683b = i6;
                    break;
                }
                i6++;
            }
            int i8 = this.f12684c;
            if (i8 != 0) {
                if (i6 < iArr.length) {
                    l0.b0.l0(iArr[i6][1], 0);
                }
            } else if (i8 == 0) {
                int i9 = this.f12683b;
                if (i9 < iArr.length && i9 != 255) {
                    l0.b0.l0(iArr[i9][1], 1);
                }
                this.f12683b = 255;
            }
        }
    }

    @Override // k0.lt
    public void V2() {
        int iG = l0.g.g() & 255;
        if (iG >= 5) {
            if ((l0.g.h(0) & 255) != 170 || (l0.g.h(1) & 255) != 85) {
                int i2 = l0.g.f13041c + 1;
                l0.g.f13041c = i2;
                l0.g.f13041c = i2 % l0.g.f13043e;
                return;
            }
            int iH = l0.g.h(2) & 255;
            byte bH = l0.g.h(3);
            if (iH + 5 <= iG) {
                byte b2 = (byte) (iH + bH);
                byte b3 = 0;
                while (b3 < iH) {
                    int i3 = b3 + 2;
                    l0.g.f13045g[i3] = (byte) (l0.g.h(b3 + 4) & 255);
                    b2 = (byte) (b2 + l0.g.f13045g[i3]);
                    b3 = (byte) (b3 + 1);
                }
                byte[] bArr = l0.g.f13045g;
                bArr[0] = (byte) iH;
                bArr[1] = bH;
                if (((char) (b2 & 255)) == (l0.g.h(b3 + 4) & 255)) {
                    U2(l0.g.f13045g, 0, iH + 2);
                    l0.g.f13041c = ((l0.g.f13041c + iH) + 5) % l0.g.f13043e;
                } else {
                    int i4 = l0.g.f13041c + 1;
                    l0.g.f13041c = i4;
                    l0.g.f13041c = i4 % l0.g.f13043e;
                }
            }
        }
    }

    @Override // k0.lt
    public void W2() {
        if (nt.a()) {
            l0.b0.o0(this.f12687f);
        }
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
    }
}
