package l0;

import k0.lt;
import k0.nt;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class s extends a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final byte[] f13109c = new byte[1024];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f13110d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f13111e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f13112f = 0;

    @Override // l0.a
    public void b(byte[] bArr) {
        int i2;
        int i3;
        int i4;
        super.b(bArr);
        if (bArr == null || bArr.length <= 0) {
            return;
        }
        if (this.f13110d + bArr.length > 1024) {
            this.f13110d = 0;
            this.f13111e = 0;
            this.f13112f = 0;
        }
        System.arraycopy(bArr, 0, this.f13109c, this.f13110d, bArr.length);
        int length = this.f13110d + bArr.length;
        this.f13110d = length;
        int i5 = this.f13112f;
        if (i5 != 0) {
            if (i5 >= length) {
                return;
            }
            byte b2 = this.f13109c[1];
            int i6 = 2;
            while (true) {
                i4 = this.f13112f;
                if (i6 >= i4) {
                    break;
                }
                b2 = (byte) (b2 + this.f13109c[i6]);
                i6++;
            }
            if (((byte) (b2 & (-1))) == this.f13109c[i4]) {
                if (g.f.f(12)) {
                    a.f.p().t(LogType.CANBUS, o1.b0.d(this.f13109c, 0, this.f13112f + 1));
                }
                nt.f8639d.U2(this.f13109c, 1, this.f13112f - 1);
                this.f13111e = this.f13112f + 1;
            } else {
                this.f13111e = 1;
            }
            this.f13112f = 0;
        }
        int i7 = this.f13110d - 2;
        while (true) {
            i2 = this.f13111e;
            if (i2 >= i7) {
                break;
            }
            byte[] bArr2 = this.f13109c;
            if (bArr2[i2] == -3) {
                int i8 = bArr2[i2 + 1] & 255;
                this.f13112f = i8;
                if (i8 > 512) {
                    this.f13112f = 0;
                } else {
                    int i9 = i8 + i2;
                    this.f13112f = i9;
                    if (i9 >= this.f13110d) {
                        this.f13112f = i9 - i2;
                        break;
                    }
                    byte b3 = bArr2[i2 + 1];
                    int i10 = i2 + 2;
                    while (true) {
                        i3 = this.f13112f;
                        if (i10 >= i3) {
                            break;
                        }
                        b3 = (byte) (b3 + this.f13109c[i10]);
                        i10++;
                    }
                    if (((byte) (b3 & (-1))) == this.f13109c[i3]) {
                        if (g.f.f(12)) {
                            n1.b bVarP = a.f.p();
                            LogType logType = LogType.CANBUS;
                            byte[] bArr3 = this.f13109c;
                            int i11 = this.f13111e;
                            bVarP.t(logType, o1.b0.d(bArr3, i11, (this.f13112f - i11) + 1));
                        }
                        lt ltVar = nt.f8639d;
                        byte[] bArr4 = this.f13109c;
                        int i12 = this.f13111e;
                        ltVar.U2(bArr4, i12 + 1, (this.f13112f - i12) - 1);
                        this.f13111e = this.f13112f;
                    } else {
                        this.f13111e++;
                    }
                    this.f13112f = 0;
                }
            }
            this.f13111e++;
        }
        if (i2 != 0) {
            int i13 = this.f13110d - i2;
            this.f13110d = i13;
            if (i13 > 0) {
                byte[] bArr5 = this.f13109c;
                System.arraycopy(bArr5, i2, bArr5, 0, i13);
            }
            this.f13111e = 0;
        }
    }

    @Override // l0.a
    public void f(int... iArr) {
        int i2;
        int i3 = 2;
        int length = iArr.length + 2;
        int[] iArr2 = new int[length];
        iArr2[0] = 233;
        iArr2[1] = 253;
        int i4 = 1;
        while (true) {
            i2 = length - 1;
            if (i3 >= i2 || i4 >= iArr.length) {
                break;
            }
            iArr2[i3] = iArr[i4];
            i3++;
            i4++;
        }
        iArr2[i2] = 0;
        for (int i5 = 1; i5 < iArr.length; i5++) {
            iArr2[i2] = iArr2[i2] + iArr[i5];
        }
        iArr2[i2] = iArr2[i2] & (-1);
        a.d(iArr2);
        a.f.p().t(LogType.CANBUS, "WR---->: " + o1.b0.e(iArr2, 1, i2));
    }
}
