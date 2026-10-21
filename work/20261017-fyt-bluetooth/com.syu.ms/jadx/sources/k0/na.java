package k0;

import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class na extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f8411b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f8412c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f8413d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{7, 2}, new int[]{14, 34}, new int[]{15, 35}, new int[]{16, 32}, new int[]{17, 33}, new int[]{18, 29}, new int[]{20, 2}, new int[]{240, 7}, new int[]{i.a.Theme_actionModeShareDrawable, 8}, new int[]{52, 21}, new int[]{51, 1}, new int[]{63, 0}, new int[]{84, 11}, new int[]{87, 1}, new int[]{90, 12}, new int[]{91, 25}, new int[]{86, 39}};

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
        if (b2 == 53) {
            qt.i(bArr[i2 + 2], bArr[i2 + 3], true, 12600);
        }
        switch (b2) {
            case 32:
                if (nt.a()) {
                    byte b3 = bArr[i2 + 2];
                    byte b4 = bArr[i2 + 3];
                    this.f8412c = b3 & 255;
                    int i4 = 0;
                    while (true) {
                        iArr = this.f8413d;
                        if (i4 < iArr.length) {
                            int i5 = this.f8412c;
                            if (i5 != iArr[i4][0]) {
                                i4++;
                            } else if (i5 != 0) {
                                this.f8411b = i4;
                            }
                        }
                    }
                    if ((b4 & 255) == 0) {
                        if (i4 <= iArr.length) {
                            l0.b0.l0(iArr[this.f8411b][1], 1);
                        }
                    } else if (i4 < iArr.length) {
                        l0.b0.l0(iArr[i4][1], 0);
                    }
                }
                break;
            case 33:
                if (nt.a() && nt.a()) {
                    byte b5 = bArr[i2 + 7];
                    u0.d.A3((b5 & 128) != 0 ? 1000 - (((~b5) + 1) * 10) : ((b5 & 255) * 10) + 1000);
                    break;
                }
                break;
            case 34:
                if (nt.a()) {
                    u0.d.R2(a3(bArr[i2 + 2] & 255));
                    u0.d.S2(a3(bArr[i2 + 3] & 255));
                    u0.d.T2(a3(bArr[i2 + 4] & 255));
                    u0.d.U2(a3(bArr[i2 + 5] & 255));
                }
                break;
            case 35:
                if (nt.a()) {
                    u0.d.D2(a3(bArr[i2 + 2] & 255));
                    u0.d.E2(a3(bArr[i2 + 3] & 255));
                    u0.d.F2(a3(bArr[i2 + 4] & 255));
                    u0.d.G2(a3(bArr[i2 + 5] & 255));
                }
                break;
            case 36:
                byte b6 = bArr[i2 + 2];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b6 >> 7) & 1);
                    qt.y0(2, (b6 >> 6) & 1);
                } else {
                    qt.y0(1, (b6 >> 6) & 1);
                    qt.y0(2, (b6 >> 7) & 1);
                }
                qt.y0(4, (b6 >> 5) & 1);
                qt.y0(3, (b6 >> 4) & 1);
                qt.y0(5, (b6 >> 3) & 1);
                break;
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
        if (i2 == 0) {
            return 15;
        }
        return (i2 * 10) / 30;
    }
}
