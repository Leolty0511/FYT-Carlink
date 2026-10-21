package k0;

/* JADX INFO: loaded from: classes2.dex */
public class d6 extends lt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static int f4349c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Runnable f4350b = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d6.this.V2();
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
            l0.b0.a(this.f4350b);
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        byte b2 = bArr[i2 + 3];
        if (b2 != -13) {
            if (b2 == -12 && nt.a()) {
                if ((bArr[i2 + 5] & 16) != 0) {
                    f4349c = 1;
                    return;
                } else {
                    f4349c = 0;
                    return;
                }
            }
            return;
        }
        if (nt.a()) {
            int i4 = i2 + 4;
            if ((bArr[i4] & 255) == 122 || f4349c == 0) {
                return;
            }
            int i5 = (bArr[i4] & 128) != 0 ? 1000 - ((bArr[i4] & 127) * 10) : ((bArr[i4] & 127) * 10) + 1000;
            if (i5 > 600) {
                u0.d.A3(i5);
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
            byte[] bArr = l0.g.f13045g;
            byte b3 = bArr[1];
            U2(bArr, 0, i4 + 1);
        }
    }

    @Override // k0.lt
    public void W2() {
        if (nt.a()) {
            l0.b0.o0(this.f4350b);
        }
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
    }
}
