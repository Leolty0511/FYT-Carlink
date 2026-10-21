package l0;

import k0.nt;

/* JADX INFO: loaded from: classes2.dex */
public class b extends a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final byte[] f12997c = new byte[1024];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f12998d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f12999e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f13000f = 0;

    @Override // l0.a
    public void b(byte[] bArr) {
        int i2;
        super.b(bArr);
        if (bArr == null || bArr.length <= 0) {
            return;
        }
        if (this.f12998d + bArr.length > 1024) {
            this.f12998d = 0;
            this.f12999e = 0;
            this.f13000f = 0;
        }
        System.arraycopy(bArr, 0, this.f12997c, this.f12998d, bArr.length);
        int length = this.f12998d + bArr.length;
        this.f12998d = length;
        while (true) {
            int i3 = this.f12999e;
            if (i3 >= length) {
                return;
            }
            byte[] bArr2 = this.f12997c;
            if (bArr2[i3] == -120 && bArr2[i3 + 1] == -96) {
                if (this.f13000f > 512) {
                    this.f13000f = 0;
                } else {
                    int i4 = i3 + 15;
                    this.f13000f = i4;
                    if (i4 >= this.f12998d) {
                        this.f12999e = 0;
                        return;
                    }
                    byte b2 = bArr2[i3 + 2];
                    int i5 = i3 + 3;
                    while (true) {
                        i2 = this.f13000f;
                        if (i5 >= i2) {
                            break;
                        }
                        b2 = (byte) (b2 ^ this.f12997c[i5]);
                        i5++;
                    }
                    byte[] bArr3 = this.f12997c;
                    if (b2 == bArr3[i2]) {
                        nt.f8639d.U2(bArr3, this.f12999e + 2, 13);
                        this.f12999e = 0;
                        this.f13000f = 0;
                        this.f12998d = 0;
                    }
                    this.f12999e = 0;
                    this.f13000f = 0;
                    this.f12998d = 0;
                }
            }
            this.f12999e++;
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
