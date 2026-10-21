package l0;

import k0.nt;

/* JADX INFO: loaded from: classes2.dex */
public class j extends a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final byte[] f13068c = new byte[1024];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f13069d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f13070e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f13071f = 0;

    @Override // l0.a
    public void b(byte[] bArr) {
        int i2;
        super.b(bArr);
        if (bArr == null || bArr.length <= 0) {
            return;
        }
        if (this.f13069d + bArr.length > 1024) {
            this.f13069d = 0;
            this.f13070e = 0;
            this.f13071f = 0;
        }
        System.arraycopy(bArr, 0, this.f13068c, this.f13069d, bArr.length);
        int length = this.f13069d + bArr.length;
        this.f13069d = length;
        int i3 = this.f13071f;
        if (i3 != 0) {
            if (i3 >= length) {
                return;
            }
            byte[] bArr2 = this.f13068c;
            if (bArr2[i3 - 1] == -86 && bArr2[i3] == -86) {
                nt.f8639d.U2(bArr2, 0, 10);
                this.f13070e = this.f13071f + 1;
            } else {
                this.f13070e = 2;
            }
            this.f13071f = 0;
        }
        int i4 = this.f13069d - 3;
        while (true) {
            i2 = this.f13070e;
            if (i2 >= i4) {
                break;
            }
            byte[] bArr3 = this.f13068c;
            if (bArr3[i2] == 85 && bArr3[i2 + 1] == 85) {
                if (this.f13071f > 512) {
                    this.f13071f = 0;
                } else {
                    int i5 = i2 + 9;
                    this.f13071f = i5;
                    if (i5 >= this.f13069d) {
                        this.f13071f = i5 - i2;
                        break;
                    }
                    if (bArr3[i5 - 1] == -86 && bArr3[i5] == -86) {
                        nt.f8639d.U2(bArr3, i2, 10);
                        this.f13070e = this.f13071f;
                    } else {
                        this.f13070e = i2 + 1;
                    }
                    this.f13071f = 0;
                }
            }
            this.f13070e++;
        }
        if (i2 != 0) {
            int i6 = this.f13069d - i2;
            this.f13069d = i6;
            if (i6 > 0) {
                byte[] bArr4 = this.f13068c;
                System.arraycopy(bArr4, i2, bArr4, 0, i6);
            }
            this.f13070e = 0;
        }
    }

    @Override // l0.a
    public void f(int... iArr) {
    }
}
