package k0;

/* JADX INFO: loaded from: classes2.dex */
public class b2 extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Runnable f3507b = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b2.a3();
        }
    }

    public static void a3() {
        int[] iArr = new int[15];
        int i2 = 0;
        for (int i3 = 0; i3 < 15; i3++) {
            iArr[i3] = 0;
        }
        iArr[0] = 13;
        iArr[1] = 210;
        switch (u0.b.D) {
            case 0:
                iArr[2] = 9;
                break;
            case 1:
                int i4 = w0.d.f17796h;
                if (i4 - 65536 == 0) {
                    iArr[2] = 1;
                } else if (1 == i4 - 65536) {
                    iArr[2] = 2;
                } else if (2 == i4 - 65536) {
                    iArr[2] = 3;
                } else if (i4 + 0 == 0) {
                    iArr[2] = 4;
                } else if (1 == i4 - 0) {
                    iArr[2] = 5;
                }
                break;
            case 2:
                iArr[2] = 10;
                break;
            case 3:
                iArr[2] = 10;
                break;
            case 4:
                int i5 = o0.e.H;
                if (i5 == 1) {
                    iArr[2] = 7;
                } else if (i5 == 2) {
                    iArr[2] = 14;
                } else if (i5 == 3) {
                    iArr[2] = 13;
                }
                break;
            case 5:
                iArr[2] = 12;
                break;
            case 6:
                iArr[2] = 8;
                break;
            case 7:
                iArr[2] = 11;
                break;
            case 8:
            case 10:
                iArr[2] = 13;
                break;
        }
        if (u0.b.f17347o == 1) {
            iArr[2] = 16;
        }
        int[] iArr2 = new int[16];
        iArr2[0] = 227;
        while (i2 < 15) {
            int i6 = i2 + 1;
            iArr2[i6] = (byte) iArr[i2];
            i2 = i6;
        }
        z.k.s(iArr2);
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        if (nt.a()) {
            qt.z(this.f3507b);
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        if (bArr[i2 + 1] == 114 && nt.a()) {
            if ((bArr[i2 + 2] & 255 & 32) == 32) {
                u0.d.C2(1);
            } else {
                u0.d.C2(0);
            }
            u0.d.R2(b3(bArr[i2 + 8] & 255));
            u0.d.S2(b3(bArr[i2 + 9] & 255));
            u0.d.T2(b3(bArr[i2 + 10] & 255));
            u0.d.U2(b3(bArr[i2 + 11] & 255));
        }
    }

    @Override // k0.lt
    public void W2() {
        if (nt.a()) {
            qt.q0(this.f3507b);
        }
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
    }

    public int b3(int i2) {
        return i2 / 20;
    }
}
