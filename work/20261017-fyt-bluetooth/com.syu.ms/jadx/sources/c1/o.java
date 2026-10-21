package c1;

import k0.nt;
import l0.b0;
import o1.q;
import o1.x;

/* JADX INFO: loaded from: classes2.dex */
public class o extends p implements q {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f587f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f583b = new byte[1024];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f584c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f585d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f586e = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f588g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int[][] f589h = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 81}, new int[]{4, 80}, new int[]{5, 18}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 5}, new int[]{9, 0}, new int[]{10, 21}, new int[]{11, 13}, new int[]{12, 18}, new int[]{13, -1}, new int[]{14, -1}, new int[]{15, 5}, new int[]{16, 11}, new int[]{17, 1}, new int[]{18, 79}, new int[]{19, 6}, new int[]{20, 82}, new int[]{21, 36}, new int[]{22, 25}, new int[]{23, 38}, new int[]{24, 55}, new int[]{25, -1}};

    @Override // c1.p
    public void L2() {
    }

    @Override // c1.p, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // c1.p
    public void N2() {
        z.a.f18165p.e(null);
    }

    public void O2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        if (bArr[i2] != 32) {
            return;
        }
        byte b2 = bArr[i2 + 2];
        byte b3 = bArr[i2 + 3];
        this.f588g = b2 & 255;
        int i4 = 0;
        while (true) {
            iArr = this.f589h;
            if (i4 >= iArr.length) {
                break;
            }
            int i5 = this.f588g;
            if (i5 == iArr[i4][0]) {
                if (i5 == 0) {
                    break;
                }
                this.f587f = i4;
                break;
            }
            i4++;
        }
        if ((b3 & 255) != 0) {
            if (i4 < iArr.length) {
                b0.l0(iArr[i4][1], 0);
            }
        } else if (i4 <= iArr.length) {
            b0.l0(iArr[this.f587f][1], 1);
        }
    }

    @Override // c1.p, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // c1.p, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
    }

    @Override // o1.q
    public void b(byte[] bArr) {
        int i2;
        int i3;
        int i4;
        if (bArr == null || bArr.length <= 0) {
            a.i.a0(100L);
            return;
        }
        if (this.f584c + bArr.length > 1024) {
            this.f584c = 0;
            this.f585d = 0;
            this.f586e = 0;
        }
        System.arraycopy(bArr, 0, this.f583b, this.f584c, bArr.length);
        int length = this.f584c + bArr.length;
        this.f584c = length;
        int i5 = this.f586e;
        if (i5 != 0) {
            if (i5 >= length) {
                return;
            }
            byte b2 = this.f583b[1];
            int i6 = 2;
            while (true) {
                i4 = this.f586e;
                if (i6 >= i4) {
                    break;
                }
                b2 = (byte) (b2 + this.f583b[i6]);
                i6++;
            }
            byte b3 = (byte) (b2 ^ 255);
            byte[] bArr2 = this.f583b;
            if (b3 == bArr2[i4]) {
                O2(bArr2, 1, i4 - 1);
                this.f585d = this.f586e + 1;
            } else {
                this.f585d = 1;
            }
            this.f586e = 0;
        }
        int i7 = this.f584c - 2;
        while (true) {
            i2 = this.f585d;
            if (i2 >= i7) {
                break;
            }
            byte[] bArr3 = this.f583b;
            if (bArr3[i2] == 46) {
                int i8 = bArr3[i2 + 2] & 255;
                this.f586e = i8;
                int i9 = i8 + i2 + 3;
                this.f586e = i9;
                if (i9 >= this.f584c) {
                    this.f586e = i9 - i2;
                    break;
                }
                byte b4 = bArr3[i2 + 1];
                int i10 = i2 + 2;
                while (true) {
                    i3 = this.f586e;
                    if (i10 >= i3) {
                        break;
                    }
                    b4 = (byte) (b4 + this.f583b[i10]);
                    i10++;
                }
                byte b5 = (byte) (b4 ^ 255);
                byte[] bArr4 = this.f583b;
                if (b5 == bArr4[i3]) {
                    int i11 = this.f585d;
                    O2(bArr4, i11 + 1, (i3 - i11) - 1);
                    this.f585d = this.f586e;
                } else {
                    this.f585d++;
                }
                this.f586e = 0;
            }
            this.f585d++;
        }
        if (i2 != 0) {
            int i12 = this.f584c - i2;
            this.f584c = i12;
            if (i12 != 0) {
                byte[] bArr5 = this.f583b;
                System.arraycopy(bArr5, i2, bArr5, 0, i12);
            }
            this.f585d = 0;
        }
    }
}
