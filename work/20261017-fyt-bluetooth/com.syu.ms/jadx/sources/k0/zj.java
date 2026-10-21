package k0;

import android.os.SystemProperties;
import android.text.Spanned;

/* JADX INFO: loaded from: classes2.dex */
public class zj extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f12825b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f12828e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f12826c = 255;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f12827d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{11, 2}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f12829f = 255;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f12830g = {new int[]{2, 3}, new int[]{3, 4}, new int[]{6, 6}, new int[]{9, 12}, new int[]{43, 9}, new int[]{44, 2}, new int[]{47, 9}, new int[]{69, 7}, new int[]{70, 8}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public byte f12831h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f12832i = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            zj zjVar = zj.this;
            byte b2 = (byte) (zjVar.f12831h + 1);
            zjVar.f12831h = b2;
            if (b2 > 5) {
                l0.b0.o0(zjVar.f12832i);
                zj.this.f12831h = (byte) 0;
            }
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8320o = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2;
        int[][] iArr2;
        int i4;
        byte b3;
        int i5;
        int i6;
        int i7;
        byte b4 = bArr[i2 + 1];
        if (b4 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b4 == 17) {
            this.f12826c = bArr[i2 + 4] & 255;
            int i8 = 0;
            while (true) {
                iArr = this.f12827d;
                if (i8 >= iArr.length) {
                    break;
                }
                int i9 = this.f12826c;
                if (i9 == iArr[i8][0]) {
                    if (i9 == 0) {
                        break;
                    }
                    this.f12825b = i8;
                    break;
                }
                i8++;
            }
            if (this.f12826c != 0) {
                if (i8 >= iArr.length || (b2 = this.f12831h) != 0) {
                    return;
                }
                this.f12831h = (byte) (b2 + 1);
                l0.b0.l0(iArr[i8][1], 0);
                l0.b0.a(this.f12832i);
                return;
            }
            int i10 = this.f12825b;
            if (i10 < iArr.length && i10 != 255) {
                l0.b0.l0(iArr[i10][1], 1);
                l0.b0.o0(this.f12832i);
                this.f12831h = (byte) 0;
            }
            this.f12825b = 255;
            return;
        }
        if (b4 == 26) {
            byte b5 = bArr[i2 + 3];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b5 >> 6) & 1);
                qt.y0(2, (b5 >> 7) & 1);
            } else {
                qt.y0(1, (b5 >> 7) & 1);
                qt.y0(2, (b5 >> 6) & 1);
            }
            qt.y0(3, (b5 >> 5) & 1);
            qt.y0(4, (b5 >> 4) & 1);
            qt.y0(5, (b5 >> 3) & 1);
            qt.i(bArr[i2 + 9], bArr[i2 + 8], true, 540);
            return;
        }
        if (b4 == 30) {
            qt.y0(99, ((bArr[i2 + 5] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
            qt.y0(100, ((bArr[i2 + 8] << 8) & 65280) | (bArr[i2 + 9] & 255));
            qt.y0(101, (bArr[i2 + 11] & 255) | ((bArr[i2 + 10] << 8) & 65280));
            return;
        }
        if (b4 == 33) {
            this.f12829f = bArr[i2 + 2] & 255;
            int i11 = 0;
            while (true) {
                iArr2 = this.f12830g;
                if (i11 >= iArr2.length) {
                    break;
                }
                int i12 = this.f12829f;
                if (i12 == iArr2[i11][0]) {
                    if (i12 == 0) {
                        break;
                    }
                    this.f12828e = i11;
                    break;
                }
                i11++;
            }
            if (this.f12829f != 0) {
                if (i11 >= iArr2.length || (b3 = this.f12831h) != 0) {
                    return;
                }
                this.f12831h = (byte) (b3 + 1);
                l0.b0.l0(iArr2[i11][1], 0);
                l0.b0.a(this.f12832i);
                return;
            }
            if (this.f12825b < iArr2.length && (i4 = this.f12828e) != 255) {
                l0.b0.l0(iArr2[i4][1], 1);
                l0.b0.o0(this.f12832i);
                this.f12831h = (byte) 0;
            }
            this.f12828e = 255;
            return;
        }
        if (b4 != 49) {
            if (b4 != 120) {
                return;
            }
            qt.y0(98, (bArr[i2 + 9] >> 0) & 1);
            return;
        }
        int i13 = i2 + 2;
        qt.y0(10, (bArr[i13] >> 6) & 1);
        qt.y0(11, (bArr[i13] >> 0) & 1);
        qt.y0(12, (bArr[i2 + 3] >> 4) & 1);
        qt.y0(65, (bArr[i2 + 4] >> 4) & 1);
        int i14 = i2 + 6;
        qt.y0(77, bArr[i14] & 255);
        int i15 = bArr[i14] & 255;
        if (i15 == 3) {
            i5 = 0;
            i6 = 0;
            i7 = 1;
        } else if (i15 != 12) {
            if (i15 == 5) {
                i5 = 0;
                i6 = 1;
            } else if (i15 != 6) {
                i5 = 0;
                i6 = 0;
            } else {
                i5 = 0;
                i7 = 0;
                i6 = 1;
            }
            i7 = i6;
        } else {
            i6 = 0;
            i5 = 1;
            i7 = 1;
        }
        qt.y0(18, i5);
        qt.y0(19, i6);
        qt.y0(20, i7);
        qt.y0(21, bArr[i2 + 7] & 255);
        qt.y0(27, bArr[i2 + 8] & 255);
    }

    @Override // k0.lt
    public void W2() {
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 102) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 != 0) {
            return;
        }
        z.k.s(227, 2, 110, iArr[0], iArr[1]);
    }
}
