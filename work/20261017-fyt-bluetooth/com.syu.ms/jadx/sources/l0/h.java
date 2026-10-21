package l0;

import k0.lt;
import k0.nt;

/* JADX INFO: loaded from: classes2.dex */
public class h extends a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final byte[] f13053c = new byte[1024];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f13054d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f13055e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f13056f = 0;

    @Override // l0.a
    public void b(byte[] bArr) {
        int i2;
        int i3;
        int i4;
        super.b(bArr);
        if (bArr == null || bArr.length <= 0) {
            return;
        }
        if (this.f13054d + bArr.length > 1024) {
            this.f13054d = 0;
            this.f13055e = 0;
            this.f13056f = 0;
        }
        System.arraycopy(bArr, 0, this.f13053c, this.f13054d, bArr.length);
        int length = this.f13054d + bArr.length;
        this.f13054d = length;
        int i5 = this.f13056f;
        if (i5 != 0) {
            if (i5 >= length) {
                return;
            }
            byte b2 = this.f13053c[2];
            int i6 = 3;
            while (true) {
                i4 = this.f13056f;
                if (i6 >= i4) {
                    break;
                }
                b2 = (byte) (b2 + this.f13053c[i6]);
                i6++;
            }
            byte b3 = (byte) ((b2 - 1) & 255);
            byte[] bArr2 = this.f13053c;
            if (b3 == bArr2[i4]) {
                nt.f8639d.U2(bArr2, 2, bArr2[2] + 2);
                this.f13055e = this.f13056f + 1;
            } else {
                this.f13055e = 2;
            }
            this.f13056f = 0;
        }
        int i7 = this.f13054d - 3;
        while (true) {
            i2 = this.f13055e;
            if (i2 >= i7) {
                break;
            }
            byte[] bArr3 = this.f13053c;
            if (bArr3[i2] == 16 && bArr3[i2 + 1] == 1) {
                if (this.f13056f > 512) {
                    this.f13056f = 0;
                } else {
                    int i8 = bArr3[i2 + 2] + i2 + 4;
                    this.f13056f = i8;
                    if (i8 >= this.f13054d) {
                        this.f13056f = i8 - i2;
                        break;
                    }
                    byte b4 = bArr3[i2 + 2];
                    int i9 = i2 + 3;
                    while (true) {
                        i3 = this.f13056f;
                        if (i9 >= i3) {
                            break;
                        }
                        b4 = (byte) (b4 + this.f13053c[i9]);
                        i9++;
                    }
                    byte b5 = (byte) ((b4 - 1) & 255);
                    byte[] bArr4 = this.f13053c;
                    if (b5 == bArr4[i3]) {
                        lt ltVar = nt.f8639d;
                        int i10 = this.f13055e;
                        ltVar.U2(bArr4, i10 + 2, bArr4[i10 + 2] + 2);
                        this.f13055e = this.f13056f;
                    } else {
                        this.f13055e++;
                    }
                    this.f13056f = 0;
                }
            }
            this.f13055e++;
        }
        if (i2 != 0) {
            int i11 = this.f13054d - i2;
            this.f13054d = i11;
            if (i11 > 0) {
                byte[] bArr5 = this.f13053c;
                System.arraycopy(bArr5, i2, bArr5, 0, i11);
            }
            this.f13055e = 0;
        }
    }

    @Override // l0.a
    public void f(int... iArr) {
        int[] iArr2 = new int[iArr.length + 5];
        int i2 = 0;
        iArr2[0] = 233;
        iArr2[1] = 16;
        iArr2[2] = 1;
        int i3 = 0;
        while (i3 <= 2) {
            int i4 = i3 + 3;
            i3++;
            iArr2[i4] = iArr[i3];
        }
        for (int i5 = 1; i5 < 6; i5++) {
            i2 += iArr2[i5];
        }
        iArr2[6] = i2 & 255;
        iArr2[7] = (i2 >> 8) & 255;
        iArr2[8] = 42;
        a.d(iArr2);
    }
}
