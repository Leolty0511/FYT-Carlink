package l0;

import k0.nt;

/* JADX INFO: loaded from: classes2.dex */
public class c extends a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final byte[] f13003c = new byte[1024];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f13004d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f13005e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f13006f = 0;

    @Override // l0.a
    public void b(byte[] bArr) {
        int i2;
        super.b(bArr);
        if (bArr == null || bArr.length <= 0) {
            return;
        }
        if (this.f13004d + bArr.length > 1024) {
            this.f13004d = 0;
            this.f13005e = 0;
            this.f13006f = 0;
        }
        System.arraycopy(bArr, 0, this.f13003c, this.f13004d, bArr.length);
        int length = this.f13004d + bArr.length;
        this.f13004d = length;
        while (true) {
            int i3 = this.f13005e;
            if (i3 >= length) {
                return;
            }
            byte[] bArr2 = this.f13003c;
            if (bArr2[i3] == 85) {
                if (this.f13006f > 512) {
                    this.f13006f = 0;
                } else {
                    int i4 = i3 + 4;
                    this.f13006f = i4;
                    if (i4 >= this.f13004d) {
                        this.f13005e = 0;
                        return;
                    }
                    byte b2 = bArr2[i3 + 1];
                    int i5 = i3 + 2;
                    while (true) {
                        i2 = this.f13006f;
                        if (i5 >= i2) {
                            break;
                        }
                        b2 = (byte) (b2 + this.f13003c[i5]);
                        i5++;
                    }
                    byte b3 = (byte) (~b2);
                    int i6 = ((b3 & 85) << 1) | ((b3 & 170) >> 1);
                    int i7 = ((i6 & 51) << 2) | ((i6 & 204) >> 2);
                    int i8 = ((i7 & 15) << 4) | ((i7 & 240) >> 4);
                    byte[] bArr3 = this.f13003c;
                    if (i8 == (bArr3[i2] & 255)) {
                        nt.f8639d.U2(bArr3, this.f13005e + 1, 3);
                        this.f13005e = 0;
                        this.f13006f = 0;
                        this.f13004d = 0;
                    }
                    this.f13005e = 0;
                    this.f13006f = 0;
                    this.f13004d = 0;
                }
            }
            this.f13005e++;
        }
    }

    @Override // l0.a
    public void f(int... iArr) {
        int i2;
        int i3 = 3;
        int length = iArr.length + 3;
        int[] iArr2 = new int[length];
        iArr2[0] = 233;
        iArr2[1] = 90;
        iArr2[2] = 165;
        while (true) {
            i2 = length - 1;
            if (i3 >= i2) {
                break;
            }
            iArr2[i3] = iArr[i3 - 2];
            i3++;
        }
        iArr2[i2] = 0;
        for (int i4 = 1; i4 < iArr.length; i4++) {
            iArr2[i2] = iArr2[i2] + iArr[i4];
        }
        iArr2[i2] = (iArr2[i2] - 1) & 255;
        a.d(iArr2);
    }
}
