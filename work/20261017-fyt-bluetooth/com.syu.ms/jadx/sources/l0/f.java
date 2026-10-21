package l0;

import k0.nt;

/* JADX INFO: loaded from: classes2.dex */
public class f extends a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final byte[] f13037c = new byte[1024];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f13038d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f13039e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f13040f = 0;

    @Override // l0.a
    public void b(byte[] bArr) {
        int i2;
        int i3;
        super.b(bArr);
        if (bArr == null || bArr.length <= 0) {
            return;
        }
        if (this.f13038d + bArr.length > 1024) {
            this.f13038d = 0;
            this.f13039e = 0;
            this.f13040f = 0;
        }
        System.arraycopy(bArr, 0, this.f13037c, this.f13038d, bArr.length);
        int length = this.f13038d + bArr.length;
        this.f13038d = length;
        if (length < 8) {
            return;
        }
        while (true) {
            i2 = this.f13039e;
            if (i2 >= length) {
                break;
            }
            byte[] bArr2 = this.f13037c;
            if (bArr2[i2] == -6 && bArr2[i2 + 1] == -16) {
                this.f13040f = 7;
                int i4 = 7 + i2;
                this.f13040f = i4;
                if (i4 >= this.f13038d) {
                    this.f13040f = i4 - i2;
                    break;
                }
                int i5 = bArr2[i2 + 2] & 255;
                int i6 = 3;
                while (true) {
                    i3 = this.f13040f;
                    if (i6 >= i3) {
                        break;
                    }
                    i5 += this.f13037c[this.f13039e + i6];
                    i6++;
                }
                int i7 = (255 - i5) & 255;
                byte[] bArr3 = this.f13037c;
                int i8 = this.f13039e;
                if (i7 == (bArr3[i8 + 7] & 255)) {
                    nt.f8639d.U2(bArr3, i8, i3 - i8);
                    this.f13039e = this.f13040f;
                } else {
                    this.f13039e = i8 + 1;
                }
                this.f13040f = 0;
            }
            this.f13039e++;
        }
        if (i2 != 0) {
            int i9 = this.f13038d - i2;
            this.f13038d = i9;
            if (i9 != 0) {
                byte[] bArr4 = this.f13037c;
                System.arraycopy(bArr4, i2, bArr4, 0, i9);
                a.f.p().s(o1.b0.d(this.f13037c, this.f13039e, 8));
            }
            this.f13039e = 0;
        }
    }

    @Override // l0.a
    public void f(int... iArr) {
        int i2;
        int i3 = 2;
        int length = iArr.length + 2;
        int[] iArr2 = new int[length];
        int i4 = 0;
        iArr2[0] = 233;
        iArr2[1] = 85;
        int i5 = 1;
        while (true) {
            i2 = length - 1;
            if (i3 >= i2 || i5 >= iArr.length) {
                break;
            }
            iArr2[i3] = iArr[i5];
            i3++;
            i5++;
        }
        for (int i6 = 1; i6 < iArr.length; i6++) {
            i4 += iArr[i6];
        }
        int i7 = ~i4;
        iArr2[i2] = (byte) (((i7 >> 8) & 255) + (i7 & 255));
        a.d(iArr2);
    }
}
