package l0;

import k0.nt;

/* JADX INFO: loaded from: classes2.dex */
public class e extends a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final byte[] f13033c = new byte[1024];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f13034d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f13035e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f13036f = 0;

    @Override // l0.a
    public void b(byte[] bArr) {
        int i2;
        int i3;
        super.b(bArr);
        if (bArr == null || bArr.length <= 0) {
            return;
        }
        if (this.f13034d + bArr.length > 1024) {
            this.f13034d = 0;
            this.f13035e = 0;
            this.f13036f = 0;
        }
        System.arraycopy(bArr, 0, this.f13033c, this.f13034d, bArr.length);
        int length = this.f13034d + bArr.length;
        this.f13034d = length;
        int i4 = this.f13036f;
        if (i4 != 0) {
            if (i4 >= length) {
                return;
            }
            byte b2 = this.f13033c[1];
            int i5 = 2;
            while (true) {
                i3 = this.f13036f;
                if (i5 >= i3) {
                    break;
                }
                b2 = (byte) (b2 + this.f13033c[i5]);
                i5++;
            }
            byte b3 = (byte) (((b2 >> 8) & 255) + (b2 & 255));
            byte[] bArr2 = this.f13033c;
            if (b3 == bArr2[i3]) {
                nt.f8639d.U2(bArr2, 1, i3 - 1);
                this.f13035e = this.f13036f + 1;
            } else {
                this.f13035e = 1;
            }
            this.f13036f = 0;
        }
        int i6 = this.f13034d - 2;
        while (true) {
            i2 = this.f13035e;
            if (i2 >= i6) {
                break;
            }
            byte[] bArr3 = this.f13033c;
            if (bArr3[i2] == -69 && bArr3[i2 + 1] == 85) {
                this.f13036f = 4;
                int i7 = 4 + i2;
                this.f13036f = i7;
                if (i7 >= this.f13034d) {
                    this.f13036f = i7 - i2;
                    break;
                }
                if ((((((bArr3[i2] ^ 0) ^ bArr3[i2 + 1]) ^ bArr3[i2 + 2]) ^ bArr3[i2 + 3]) & 255) == (bArr3[i2 + 4] & 255)) {
                    nt.f8639d.U2(bArr3, i2, i7 - i2);
                    this.f13035e = this.f13036f;
                } else {
                    this.f13035e = i2 + 1;
                }
                this.f13036f = 0;
            }
            this.f13035e++;
        }
        if (i2 != 0) {
            int i8 = this.f13034d - i2;
            this.f13034d = i8;
            if (i8 != 0) {
                byte[] bArr4 = this.f13033c;
                System.arraycopy(bArr4, i2, bArr4, 0, i8);
            }
            this.f13035e = 0;
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
