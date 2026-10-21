package l0;

import k0.lt;
import k0.nt;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class m extends a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final byte[] f13080c = new byte[1024];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f13081d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f13082e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f13083f = 0;

    @Override // l0.a
    public void b(byte[] bArr) {
        int i2;
        int i3;
        int i4;
        super.b(bArr);
        if (bArr == null || bArr.length <= 0) {
            return;
        }
        if (this.f13081d + bArr.length > 1024) {
            this.f13081d = 0;
            this.f13082e = 0;
            this.f13083f = 0;
        }
        System.arraycopy(bArr, 0, this.f13080c, this.f13081d, bArr.length);
        int length = this.f13081d + bArr.length;
        this.f13081d = length;
        int i5 = this.f13083f;
        if (i5 != 0) {
            if (i5 >= length) {
                return;
            }
            byte b2 = this.f13080c[1];
            int i6 = 2;
            while (true) {
                i4 = this.f13083f;
                if (i6 >= i4 - 1) {
                    break;
                }
                b2 = (byte) (b2 + this.f13080c[i6]);
                i6++;
            }
            byte b3 = (byte) (b2 & (-1));
            byte[] bArr2 = this.f13080c;
            if (b3 == bArr2[i4 - 1]) {
                g(bArr2[1], bArr2[4]);
                nt.f8639d.U2(this.f13080c, 1, this.f13083f - 1);
                this.f13082e = this.f13083f + 1;
            } else {
                this.f13082e = 1;
            }
            this.f13083f = 0;
        }
        int i7 = this.f13081d - 2;
        while (true) {
            i2 = this.f13082e;
            if (i2 >= i7) {
                break;
            }
            byte[] bArr3 = this.f13080c;
            if (bArr3[i2] == -95) {
                int i8 = bArr3[i2 + 3] & 255;
                this.f13083f = i8;
                if (i8 > 512) {
                    this.f13083f = 0;
                } else {
                    int i9 = i8 + i2 + 1;
                    this.f13083f = i9;
                    if (i9 >= this.f13081d) {
                        this.f13083f = i9 - i2;
                        break;
                    }
                    byte b4 = bArr3[i2 + 1];
                    int i10 = i2 + 2;
                    while (true) {
                        i3 = this.f13083f;
                        if (i10 >= i3 - 1) {
                            break;
                        }
                        b4 = (byte) (b4 + this.f13080c[i10]);
                        i10++;
                    }
                    byte b5 = (byte) (b4 & (-1));
                    byte[] bArr4 = this.f13080c;
                    if (b5 == bArr4[i3 - 1]) {
                        int i11 = this.f13082e;
                        g(bArr4[i11 + 1], bArr4[i11 + 4]);
                        lt ltVar = nt.f8639d;
                        byte[] bArr5 = this.f13080c;
                        int i12 = this.f13082e;
                        ltVar.U2(bArr5, i12 + 1, (this.f13083f - i12) - 1);
                        this.f13082e = this.f13083f;
                    } else {
                        this.f13082e++;
                    }
                    this.f13083f = 0;
                }
            }
            this.f13082e++;
        }
        if (i2 != 0) {
            int i13 = this.f13081d - i2;
            this.f13081d = i13;
            if (i13 > 0) {
                byte[] bArr6 = this.f13080c;
                System.arraycopy(bArr6, i2, bArr6, 0, i13);
            }
            this.f13082e = 0;
        }
    }

    @Override // l0.a
    public void f(int... iArr) {
        int i2;
        int length = iArr.length + 3;
        int[] iArr2 = new int[length];
        iArr2[0] = 233;
        iArr2[1] = 161;
        int i3 = 2;
        while (true) {
            i2 = length - 2;
            if (i3 >= i2) {
                break;
            }
            iArr2[i3] = iArr[i3 - 1];
            i3++;
        }
        iArr2[i2] = 0;
        for (int i4 = 1; i4 < iArr.length; i4++) {
            iArr2[i2] = iArr2[i2] + iArr[i4];
        }
        iArr2[i2] = iArr2[i2] & 255;
        int i5 = length - 1;
        iArr2[i5] = 175;
        a.d(iArr2);
        a.f.p().t(LogType.CANBUS, "WR---->: " + o1.b0.e(iArr2, 1, i5));
    }

    public void g(byte b2, byte b3) {
        z.k.s(227, b2, b3, 6, 1, 0);
    }
}
