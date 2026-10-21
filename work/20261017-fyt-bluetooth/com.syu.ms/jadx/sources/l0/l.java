package l0;

import k0.lt;
import k0.nt;

/* JADX INFO: loaded from: classes2.dex */
public class l extends a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final byte[] f13076c = new byte[1024];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f13077d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f13078e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f13079f = 0;

    @Override // l0.a
    public void b(byte[] bArr) {
        int i2;
        int i3;
        int i4;
        super.b(bArr);
        if (bArr == null || bArr.length <= 0) {
            return;
        }
        if (this.f13077d + bArr.length > 1024) {
            this.f13077d = 0;
            this.f13078e = 0;
            this.f13079f = 0;
        }
        System.arraycopy(bArr, 0, this.f13076c, this.f13077d, bArr.length);
        int length = this.f13077d + bArr.length;
        this.f13077d = length;
        int i5 = this.f13079f;
        if (i5 != 0) {
            if (i5 >= length) {
                return;
            }
            byte b2 = this.f13076c[0];
            int i6 = 1;
            while (true) {
                i4 = this.f13079f;
                if (i6 >= i4) {
                    break;
                }
                b2 = (byte) (b2 + this.f13076c[i6]);
                i6++;
            }
            byte b3 = (byte) ((256 - b2) & 255);
            byte[] bArr2 = this.f13076c;
            if (b3 == bArr2[i4]) {
                nt.f8639d.U2(bArr2, 2, bArr2[2] + 2);
                this.f13078e = this.f13079f + 1;
            } else {
                this.f13078e = 2;
            }
            this.f13079f = 0;
        }
        int i7 = this.f13077d - 3;
        while (true) {
            i2 = this.f13078e;
            if (i2 >= i7) {
                break;
            }
            byte[] bArr3 = this.f13076c;
            if (bArr3[i2] == -1 && bArr3[i2 + 1] == 85) {
                if (this.f13079f > 512) {
                    this.f13079f = 0;
                } else {
                    int i8 = i2 + 13;
                    this.f13079f = i8;
                    if (i8 >= this.f13077d) {
                        this.f13079f = i8 - i2;
                        break;
                    }
                    if (i8 < 0) {
                        break;
                    }
                    byte b4 = bArr3[i2];
                    while (true) {
                        i2++;
                        i3 = this.f13079f;
                        if (i2 >= i3) {
                            break;
                        } else {
                            b4 = (byte) (b4 + this.f13076c[i2]);
                        }
                    }
                    byte b5 = (byte) ((256 - b4) & 255);
                    byte[] bArr4 = this.f13076c;
                    if (b5 == bArr4[i3]) {
                        lt ltVar = nt.f8639d;
                        int i9 = this.f13078e;
                        ltVar.U2(bArr4, i9 + 2, bArr4[i9 + 4] + 3);
                        this.f13078e = this.f13079f;
                    } else {
                        this.f13078e++;
                    }
                    this.f13079f = 0;
                }
            }
            this.f13078e++;
        }
        if (i2 != 0) {
            int i10 = this.f13077d - i2;
            this.f13077d = i10;
            if (i10 > 0) {
                byte[] bArr5 = this.f13076c;
                System.arraycopy(bArr5, i2, bArr5, 0, i10);
            }
            this.f13078e = 0;
        }
    }

    @Override // l0.a
    public void f(int... iArr) {
    }
}
