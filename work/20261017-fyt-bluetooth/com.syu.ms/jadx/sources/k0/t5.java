package k0;

/* JADX INFO: loaded from: classes2.dex */
public class t5 extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f10551b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f10552c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f10553d = {new int[]{1, 0}, new int[]{2, 9}, new int[]{3, 34}, new int[]{4, 35}, new int[]{7, 29}, new int[]{16, 13}, new int[]{17, 13}, new int[]{18, 39}, new int[]{19, 39}, new int[]{20, 7}, new int[]{21, 8}, new int[]{22, 12}, new int[]{23, 3}, new int[]{24, 4}, new int[]{33, 18}, new int[]{48, 18}, new int[]{49, 26}, new int[]{51, 18}, new int[]{65, 6}, new int[]{66, 11}, new int[]{67, 40}, new int[]{68, 41}, new int[]{69, 42}, new int[]{70, 43}, new int[]{71, 44}, new int[]{72, 45}, new int[]{73, 21}, new int[]{74, 38}, new int[]{76, 1}};

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
        byte b2 = bArr[i2];
        if (b2 != 2) {
            if (b2 != 50) {
                if (b2 == 54 && nt.a() && nt.a()) {
                    int i4 = bArr[i2 + 2] & 255;
                    u0.d.A3((i4 & 128) != 0 ? 1000 - ((i4 & 127) * 10) : ((i4 & 127) * 10) + 1000);
                    return;
                }
                return;
            }
            if (nt.a()) {
                u0.d.R2(a3(bArr[i2 + 2] & 255));
                u0.d.S2(a3(bArr[i2 + 3] & 255));
                u0.d.T2(a3(bArr[i2 + 4] & 255));
                u0.d.U2(a3(bArr[i2 + 5] & 255));
                return;
            }
            return;
        }
        if (nt.a()) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f10552c = b3 & 255;
            int i5 = 0;
            while (true) {
                iArr = this.f10553d;
                if (i5 >= iArr.length) {
                    break;
                }
                int i6 = this.f10552c;
                if (i6 == iArr[i5][0]) {
                    if (i6 == 0) {
                        break;
                    }
                    this.f10551b = i5;
                    break;
                }
                i5++;
            }
            if ((b4 & 255) != 0) {
                if (i5 < iArr.length) {
                    l0.b0.l0(iArr[i5][1], 0);
                }
            } else if (i5 <= iArr.length) {
                l0.b0.l0(iArr[this.f10551b][1], 1);
            }
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

    public final int a3(int i2) {
        return (i2 * 10) / 5;
    }
}
