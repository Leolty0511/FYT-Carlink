package k0;

/* JADX INFO: loaded from: classes2.dex */
public class c1 extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f3884b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3885c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f3886d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{7, 2}, new int[]{14, 34}, new int[]{15, 35}, new int[]{16, 32}, new int[]{17, 33}, new int[]{18, 29}, new int[]{19, 12}, new int[]{32, 49}, new int[]{33, 40}, new int[]{34, 41}, new int[]{35, 42}, new int[]{36, 43}, new int[]{37, 44}, new int[]{38, 45}, new int[]{39, 46}, new int[]{40, 47}, new int[]{41, 48}, new int[]{42, 50}, new int[]{43, 51}, new int[]{52, 24}, new int[]{53, 22}, new int[]{54, 53}, new int[]{55, 9}, new int[]{56, 38}, new int[]{57, 18}, new int[]{61, 56}, new int[]{63, 0}, new int[]{72, 29}, new int[]{73, 32}, new int[]{74, 33}, new int[]{75, 34}, new int[]{76, 35}, new int[]{82, 18}, new int[]{83, 26}, new int[]{84, 11}, new int[]{87, 58}, new int[]{89, 2}, new int[]{90, 12}, new int[]{91, 58}, new int[]{240, 7}, new int[]{i.a.Theme_actionModeShareDrawable, 8}};

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
        if (b2 != 1) {
            if (b2 != 4) {
                if (b2 == 17 && nt.a()) {
                    byte b3 = bArr[i2 + 2];
                    u0.d.A3((b3 != 128 ? b3 & 128 : 0) != 0 ? 1000 - ((((~(b3 & 255)) + 1) & 255) * 10) : ((b3 & 255) * 10) + 1000);
                    return;
                }
                return;
            }
            if (nt.a()) {
                u0.d.R2(l0.c0.I1(bArr[i2 + 2]) & 255);
                u0.d.S2(l0.c0.B1(bArr[i2 + 3]) & 255);
                u0.d.T2(l0.c0.B1(bArr[i2 + 4]) & 255);
                u0.d.U2(l0.c0.I1(bArr[i2 + 5]) & 255);
                return;
            }
            return;
        }
        if (nt.a()) {
            byte b4 = bArr[i2 + 2];
            byte b5 = bArr[i2 + 3];
            this.f3885c = b4 & 255;
            int i4 = 0;
            while (true) {
                iArr = this.f3886d;
                if (i4 >= iArr.length) {
                    break;
                }
                int i5 = this.f3885c;
                if (i5 == iArr[i4][0]) {
                    if (i5 == 0) {
                        break;
                    }
                    this.f3884b = i4;
                    break;
                }
                i4++;
            }
            if ((b5 & 255) != 0) {
                if (i4 < iArr.length) {
                    l0.b0.l0(iArr[i4][1], 0);
                }
            } else {
                int i6 = this.f3884b;
                if (i6 < iArr.length && i6 != 255) {
                    l0.b0.l0(iArr[i6][1], 1);
                }
                this.f3884b = 255;
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
}
