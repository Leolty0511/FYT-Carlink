package k0;

import android.os.Process;
import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class y6 extends lt {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static int f12378h;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f12379b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f12380c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f12381d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 18}, new int[]{6, 26}, new int[]{7, 2}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f12382e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public o1.g0 f12383f = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f12384g = 1;

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        int i2 = nt.f8637c;
        if (i2 == 2) {
            mt mtVar = this.f7886a;
            mtVar.f8306a = new String[]{"com.syu.canbus"};
            mtVar.f8310e = 1;
            mtVar.f8311f = 0;
            mtVar.f8312g = 0;
            return;
        }
        if (i2 != 3) {
            mt mtVar2 = this.f7886a;
            mtVar2.f8306a = null;
            mtVar2.f8310e = 1;
            mtVar2.f8311f = 0;
            mtVar2.f8312g = 0;
            return;
        }
        mt mtVar3 = this.f7886a;
        mtVar3.f8306a = null;
        mtVar3.f8310e = 1;
        mtVar3.f8311f = 0;
        mtVar3.f8312g = 0;
        this.f12383f.a();
        a3(this.f12383f.b(1, 0));
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 32) {
            if (nt.a()) {
                byte b3 = bArr[i2 + 2];
                byte b4 = bArr[i2 + 3];
                this.f12380c = b3 & 255;
                int i4 = 0;
                while (true) {
                    iArr = this.f12381d;
                    if (i4 >= iArr.length) {
                        break;
                    }
                    int i5 = this.f12380c;
                    if (i5 == iArr[i4][0]) {
                        if (i5 == 0) {
                            break;
                        }
                        this.f12379b = i4;
                        break;
                    }
                    i4++;
                }
                int i6 = b4 & 255;
                if (i6 == 1) {
                    if (i4 < iArr.length) {
                        l0.b0.l0(iArr[i4][1], 0);
                        return;
                    }
                    return;
                } else {
                    if (i6 == 0) {
                        int i7 = this.f12379b;
                        if (i7 < iArr.length && i7 != 255) {
                            l0.b0.l0(iArr[i7][1], 1);
                        }
                        this.f12379b = 255;
                        return;
                    }
                    return;
                }
            }
            return;
        }
        if (b2 == 41) {
            if (this.f12382e) {
                return;
            }
            qt.m(bArr[i2 + 2], bArr[i2 + 3], 7936, false, 5120);
            return;
        }
        if (b2 == 51) {
            qt.y0(Process.MEDIA_UID, bArr[i2 + 2] + 1);
            return;
        }
        if (b2 != 125) {
            if (b2 != 36) {
                if (b2 != 37) {
                    return;
                }
                qt.y0(98, bArr[i2 + 2] & 1);
                return;
            }
            byte b5 = bArr[i2 + 2];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b5 >> 7) & 1);
                qt.y0(2, (b5 >> 6) & 1);
            } else {
                qt.y0(1, (b5 >> 6) & 1);
                qt.y0(2, (b5 >> 7) & 1);
            }
            qt.y0(4, (b5 >> 5) & 1);
            qt.y0(3, (b5 >> 4) & 1);
            qt.y0(5, (b5 >> 3) & 1);
            qt.y0(0, (b5 >> 2) & 1);
            return;
        }
        int i8 = bArr[i2 + 2] & 255;
        if (i8 == 1) {
            if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                int i9 = i2 + 3;
                l0.c0.b((bArr[i9] >> 3) & 1, (bArr[i9] >> 4) & 1, 0);
                return;
            } else {
                int i10 = i2 + 3;
                l0.c0.a((bArr[i10] >> 3) & 1, (bArr[i10] >> 4) & 1, 0);
                return;
            }
        }
        if (i8 == 3) {
            int i11 = ((bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280)) / 100;
            qt.y0(1031, i11);
            o1.x.C(nt.f8643f, 1049, new int[]{1, i11}, null, null);
        } else {
            if (i8 != 8) {
                return;
            }
            qt.i(bArr[i2 + 3], bArr[i2 + 4], true, 540);
            this.f12382e = true;
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f12383f.j();
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 99) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 != 0) {
            if (i2 != 1005) {
                return;
            }
            a3(iArr[0]);
        } else {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            z.k.s(227, 130, 1, iArr[0]);
        }
    }

    public void a3(int i2) {
        if (this.f12383f.b(1, 0) != i2) {
            this.f12383f.g(1, f12378h);
        }
        z.k.s(227, 193, 2, 1, i2);
    }
}
