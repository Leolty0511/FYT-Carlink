package k0;

/* JADX INFO: loaded from: classes2.dex */
public class vc extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f11316b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f11317c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f11318d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 67}, new int[]{4, 68}, new int[]{7, 2}, new int[]{14, 34}, new int[]{15, 35}, new int[]{16, 32}, new int[]{17, 33}, new int[]{18, 16}, new int[]{32, 49}, new int[]{33, 40}, new int[]{34, 41}, new int[]{35, 42}, new int[]{36, 43}, new int[]{37, 44}, new int[]{38, 45}, new int[]{39, 46}, new int[]{40, 47}, new int[]{41, 48}, new int[]{42, 50}, new int[]{43, 51}, new int[]{51, 1}, new int[]{52, 24}, new int[]{53, 22}, new int[]{54, 53}, new int[]{55, 5}, new int[]{56, 38}, new int[]{57, 18}, new int[]{61, 56}, new int[]{63, 25}, new int[]{72, 29}, new int[]{73, 32}, new int[]{74, 33}, new int[]{75, 34}, new int[]{76, 35}, new int[]{82, 18}, new int[]{83, 26}, new int[]{84, 11}, new int[]{86, 39}, new int[]{87, 58}, new int[]{89, 58}, new int[]{90, 12}, new int[]{91, 25}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f11319e = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = u0.b.f17366w;
            if (i2 == 0) {
                z.k.s(227, 198, 2, 162, 0);
            } else {
                if (i2 != 1) {
                    return;
                }
                z.k.s(227, 198, 2, 162, 2);
            }
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        u0.c.f17399z.a(this.f11319e, 1);
        u0.c.f17386m.a(l0.c0.f13020n, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 != 32) {
            if (b2 == 33 && nt.a()) {
                byte b3 = bArr[i2 + 7];
                int i4 = b3 & 255;
                u0.d.A3((i4 != 128 ? b3 & 128 : 0) != 0 ? 1000 - ((((~i4) + 1) & 255) * 10) : (i4 * 10) + 1000);
                return;
            }
            return;
        }
        if (nt.a()) {
            byte b4 = bArr[i2 + 2];
            byte b5 = bArr[i2 + 3];
            int i5 = b4 & 255;
            if (i5 == 240) {
                l0.b0.s0(b5 & 255);
                return;
            }
            if (i5 == 241) {
                l0.b0.r0(b5 & 255);
                return;
            }
            this.f11317c = i5;
            int i6 = 0;
            while (true) {
                iArr = this.f11318d;
                if (i6 >= iArr.length) {
                    break;
                }
                int i7 = this.f11317c;
                if (i7 == iArr[i6][0]) {
                    if (i7 == 0) {
                        break;
                    }
                    this.f11316b = i6;
                    break;
                }
                i6++;
            }
            if ((b5 & 255) != 0) {
                if (i6 < iArr.length) {
                    l0.b0.l0(iArr[i6][1], 0);
                }
            } else if (i6 <= iArr.length) {
                l0.b0.l0(iArr[this.f11316b][1], 1);
            }
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17399z.d(this.f11319e);
        u0.c.f17386m.d(l0.c0.f13020n);
        l0.b0.p0(l0.c0.f13021o);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
    }
}
