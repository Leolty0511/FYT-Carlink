package z;

import o1.q;

/* JADX INFO: loaded from: classes.dex */
public abstract class j implements q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte[] f18267a = new byte[1024];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f18268b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f18269c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f18270d = 0;

    public abstract void a(byte[] bArr, int i2, int i3);

    @Override // o1.q
    public void b(byte[] bArr) {
        int i2;
        int i3;
        int i4;
        if (bArr == null || bArr.length <= 0) {
            a.i.a0(100L);
            return;
        }
        if (this.f18268b + bArr.length > 1024) {
            this.f18268b = 0;
            this.f18269c = 0;
            this.f18270d = 0;
        }
        System.arraycopy(bArr, 0, this.f18267a, this.f18268b, bArr.length);
        int length = this.f18268b + bArr.length;
        this.f18268b = length;
        int i5 = this.f18270d;
        if (i5 != 0) {
            if (i5 >= length) {
                return;
            }
            byte b2 = this.f18267a[2];
            int i6 = 3;
            while (true) {
                i4 = this.f18270d;
                if (i6 >= i4) {
                    break;
                }
                b2 = (byte) (b2 ^ this.f18267a[i6]);
                i6++;
            }
            byte[] bArr2 = this.f18267a;
            if (b2 == bArr2[i4]) {
                a(bArr2, 4, i4 - 4);
                this.f18269c = this.f18270d + 1;
            } else {
                this.f18269c = 2;
            }
            this.f18270d = 0;
        }
        int i7 = this.f18268b - 3;
        while (true) {
            i2 = this.f18269c;
            if (i2 >= i7) {
                break;
            }
            byte[] bArr3 = this.f18267a;
            if (bArr3[i2] == -120 && bArr3[i2 + 1] == 85) {
                int i8 = ((bArr3[i2 + 2] << 8) & 65280) | (bArr3[i2 + 3] & 255);
                this.f18270d = i8;
                if (i8 > 512) {
                    this.f18270d = 0;
                } else {
                    int i9 = i8 + i2 + 4;
                    this.f18270d = i9;
                    if (i9 >= this.f18268b) {
                        this.f18270d = i9 - i2;
                        break;
                    }
                    byte b3 = bArr3[i2 + 2];
                    int i10 = i2 + 3;
                    while (true) {
                        i3 = this.f18270d;
                        if (i10 >= i3) {
                            break;
                        }
                        b3 = (byte) (b3 ^ this.f18267a[i10]);
                        i10++;
                    }
                    byte[] bArr4 = this.f18267a;
                    if (b3 == bArr4[i3]) {
                        int i11 = this.f18269c;
                        a(bArr4, i11 + 4, (i3 - i11) - 4);
                        this.f18269c = this.f18270d;
                    } else {
                        this.f18269c++;
                    }
                    this.f18270d = 0;
                }
            }
            this.f18269c++;
        }
        if (i2 != 0) {
            int i12 = this.f18268b - i2;
            this.f18268b = i12;
            if (i12 != 0) {
                byte[] bArr5 = this.f18267a;
                System.arraycopy(bArr5, i2, bArr5, 0, i12);
            }
            this.f18269c = 0;
        }
    }
}
