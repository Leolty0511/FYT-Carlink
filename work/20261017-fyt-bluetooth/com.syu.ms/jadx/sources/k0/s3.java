package k0;

/* JADX INFO: loaded from: classes2.dex */
public class s3 extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f10149b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f10150c = 255;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f10151d = {new int[]{1, 25}, new int[]{2, 5}, new int[]{3, 54}, new int[]{4, 1}, new int[]{5, 6}, new int[]{6, 38}, new int[]{7, 32}, new int[]{8, 33}, new int[]{9, 55}, new int[]{10, 3}, new int[]{11, 4}, new int[]{12, 28}, new int[]{13, 27}, new int[]{14, 12}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f10152e = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            s3.this.V2();
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
            l0.b0.a(this.f10152e);
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
                qt.o(bArr[i2 + 2], true, 35);
                return;
            }
            int i4 = i2 + 2;
            if (((bArr[i4] & 255) >= 129 && (bArr[i4] & 255) <= 133) || ((bArr[i4] & 255) >= 177 && (bArr[i4] & 255) <= 181)) {
                int i5 = ((bArr[i4] & 255) & 48) != 0 ? 176 : 128;
                int i6 = (bArr[i4] & 255) % i5;
                if (i5 == 176) {
                    for (int i7 = 0; i7 < i6; i7++) {
                        l0.b0.t(0);
                    }
                } else {
                    for (int i8 = 0; i8 < i6; i8++) {
                        u0.d.O1();
                    }
                }
            } else if (((bArr[i4] & 255) >= 145 && (bArr[i4] & 255) <= 149) || ((bArr[i4] & 255) >= 161 && (bArr[i4] & 255) <= 165)) {
                int i9 = ((bArr[i4] & 255) & 16) != 0 ? 144 : 160;
                int i10 = (bArr[i4] & 255) % i9;
                if (i9 == 160) {
                    for (int i11 = 0; i11 < i10; i11++) {
                        l0.b0.s(0);
                    }
                } else {
                    for (int i12 = 0; i12 < i10; i12++) {
                        u0.d.M1();
                    }
                }
            }
            this.f10150c = bArr[i4] & 255;
            int i13 = 0;
            while (true) {
                iArr = this.f10151d;
                if (i13 >= iArr.length) {
                    break;
                }
                int i14 = this.f10150c;
                if (i14 == iArr[i13][0]) {
                    if (i14 == 0) {
                        break;
                    }
                    this.f10149b = i13;
                    break;
                }
                i13++;
            }
            int i15 = this.f10150c;
            if (i15 != 0) {
                if (i13 < iArr.length) {
                    l0.b0.l0(iArr[i13][1], 0);
                }
            } else if (i15 == 0) {
                int i16 = this.f10149b;
                if (i16 < iArr.length && i16 != 255) {
                    l0.b0.l0(iArr[i16][1], 1);
                }
                this.f10149b = 255;
            }
        }
    }

    @Override // k0.lt
    public void V2() {
        int iG = l0.g.g() & 255;
        if (iG >= 4) {
            if ((l0.g.h(0) & 255) != 170) {
                int i2 = l0.g.f13041c + 1;
                l0.g.f13041c = i2;
                l0.g.f13041c = i2 % l0.g.f13043e;
                return;
            }
            char cH = (char) l0.g.h(1);
            char cH2 = l0.g.h(2);
            if (cH2 + 1 <= iG) {
                int i3 = cH + cH2;
                l0.g.f13046h = i3;
                char c2 = 0;
                while (c2 < cH2 - 1) {
                    l0.g.f13045g[c2] = l0.g.h(c2 + 3);
                    i3 = ~(i3 + l0.g.f13045g[c2]);
                    c2 = (char) (c2 + 1);
                }
                if ((i3 & 255) == (l0.g.h(c2 + 3) & 255)) {
                    U2(l0.g.f13045g, 0, cH2);
                    l0.g.f13041c = ((l0.g.f13041c + cH2) + 1) % l0.g.f13043e;
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
            l0.b0.o0(this.f10152e);
        }
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
    }
}
