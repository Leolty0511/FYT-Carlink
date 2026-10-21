package l0;

import k0.lt;
import k0.nt;

/* JADX INFO: loaded from: classes2.dex */
public class i extends a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final byte[] f13064c = new byte[1024];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f13065d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f13066e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f13067f = 0;

    @Override // l0.a
    public void b(byte[] bArr) {
        int i2;
        int i3;
        int i4;
        super.b(bArr);
        if (bArr == null || bArr.length <= 0) {
            return;
        }
        if (this.f13065d + bArr.length > 1024) {
            this.f13065d = 0;
            this.f13066e = 0;
            this.f13067f = 0;
        }
        System.arraycopy(bArr, 0, this.f13064c, this.f13065d, bArr.length);
        int length = this.f13065d + bArr.length;
        this.f13065d = length;
        int i5 = this.f13067f;
        if (i5 != 0) {
            if (i5 >= length) {
                return;
            }
            byte b2 = this.f13064c[1];
            int i6 = 2;
            while (true) {
                i4 = this.f13067f;
                if (i6 >= i4) {
                    break;
                }
                b2 = (byte) (b2 + this.f13064c[i6]);
                i6++;
            }
            if (((byte) (~b2)) == this.f13064c[i4]) {
                g();
                nt.f8639d.U2(this.f13064c, 1, this.f13067f - 1);
                this.f13066e = this.f13067f + 1;
            } else {
                this.f13066e = 1;
            }
            this.f13067f = 0;
        }
        int i7 = this.f13065d - 2;
        while (true) {
            i2 = this.f13066e;
            if (i2 >= i7) {
                break;
            }
            byte[] bArr2 = this.f13064c;
            if (bArr2[i2] == -86) {
                int i8 = bArr2[i2 + 2] & 255;
                this.f13067f = i8;
                if (i8 > 512) {
                    this.f13067f = 0;
                } else {
                    int i9 = i8 + i2 + 2;
                    this.f13067f = i9;
                    if (i9 >= this.f13065d) {
                        this.f13067f = i9 - i2;
                        break;
                    }
                    byte b3 = bArr2[i2 + 1];
                    int i10 = i2 + 2;
                    while (true) {
                        i3 = this.f13067f;
                        if (i10 >= i3) {
                            break;
                        }
                        b3 = (byte) (b3 + this.f13064c[i10]);
                        i10++;
                    }
                    if (((byte) (~b3)) == this.f13064c[i3]) {
                        g();
                        lt ltVar = nt.f8639d;
                        byte[] bArr3 = this.f13064c;
                        int i11 = this.f13066e;
                        ltVar.U2(bArr3, i11 + 1, (this.f13067f - i11) - 1);
                        this.f13066e = this.f13067f;
                    } else {
                        this.f13066e++;
                    }
                    this.f13067f = 0;
                }
            }
            this.f13066e++;
        }
        if (i2 != 0) {
            int i12 = this.f13065d - i2;
            this.f13065d = i12;
            if (i12 > 0) {
                byte[] bArr4 = this.f13064c;
                System.arraycopy(bArr4, i2, bArr4, 0, i12);
            }
            this.f13066e = 0;
        }
    }

    @Override // l0.a
    public void f(int... iArr) {
        int length = iArr.length;
        int[] iArr2 = new int[length];
        iArr2[0] = 233;
        for (int i2 = 1; i2 < length; i2++) {
            iArr2[i2] = iArr[i2];
        }
        a.d(iArr2);
    }

    public void g() {
        a.d(233, 255);
    }
}
