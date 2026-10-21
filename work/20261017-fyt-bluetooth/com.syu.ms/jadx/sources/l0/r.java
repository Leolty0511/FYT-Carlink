package l0;

import k0.lt;
import k0.nt;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class r extends a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final byte[] f13105c = new byte[1024];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f13106d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f13107e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f13108f = 0;

    @Override // l0.a
    public void b(byte[] bArr) {
        int i2;
        int i3;
        int i4;
        int i5;
        super.b(bArr);
        if (bArr == null || bArr.length <= 0) {
            return;
        }
        if (this.f13106d + bArr.length > 1024) {
            this.f13106d = 0;
            this.f13107e = 0;
            this.f13108f = 0;
        }
        System.arraycopy(bArr, 0, this.f13105c, this.f13106d, bArr.length);
        int length = this.f13106d + bArr.length;
        this.f13106d = length;
        int i6 = this.f13108f;
        if (i6 != 0) {
            if (i6 >= length) {
                return;
            }
            int i7 = this.f13105c[1] & 255;
            int i8 = 2;
            while (true) {
                i5 = this.f13108f;
                if (i8 >= i5) {
                    break;
                }
                i7 += this.f13105c[i8] & 255;
                i8++;
            }
            int i9 = (i7 >> 8) & 255;
            byte[] bArr2 = this.f13105c;
            if (i9 == (bArr2[i5] & 255) && (i7 & 255) == (bArr2[i5 + 1] & 255)) {
                if (g.f.f(12)) {
                    a.f.p().t(LogType.CANBUS, o1.b0.d(this.f13105c, 0, this.f13108f + 1));
                }
                nt.f8639d.U2(this.f13105c, 1, this.f13108f - 1);
                this.f13107e = this.f13108f + 2;
            } else {
                this.f13107e = 1;
            }
            this.f13108f = 0;
        }
        int i10 = this.f13106d - 3;
        while (true) {
            i2 = this.f13107e;
            if (i2 >= i10) {
                break;
            }
            byte[] bArr3 = this.f13105c;
            if (bArr3[i2] == -3) {
                int i11 = bArr3[i2 + 1] & 255;
                this.f13108f = i11;
                if (i11 > 512) {
                    this.f13108f = 0;
                } else {
                    int i12 = i11 + (i2 - 1);
                    this.f13108f = i12;
                    if (i12 >= this.f13106d - 1) {
                        this.f13108f = i12 - i2;
                        break;
                    }
                    int i13 = bArr3[i2 + 1] & 65535;
                    int i14 = i2 + 2;
                    while (true) {
                        i4 = this.f13108f;
                        if (i14 >= i4) {
                            break;
                        }
                        i13 += this.f13105c[i14] & 255;
                        i14++;
                    }
                    int i15 = (i13 >> 8) & 255;
                    byte[] bArr4 = this.f13105c;
                    if (i15 == (bArr4[i4] & 255) && (i13 & 255) == (bArr4[i4 + 1] & 255)) {
                        if (g.f.f(12)) {
                            n1.b bVarP = a.f.p();
                            LogType logType = LogType.CANBUS;
                            byte[] bArr5 = this.f13105c;
                            int i16 = this.f13107e;
                            bVarP.t(logType, o1.b0.d(bArr5, i16, (this.f13108f - i16) + 1));
                        }
                        lt ltVar = nt.f8639d;
                        byte[] bArr6 = this.f13105c;
                        int i17 = this.f13107e;
                        ltVar.U2(bArr6, i17 + 1, (this.f13108f - i17) - 1);
                        this.f13107e = this.f13108f + 1;
                    } else {
                        this.f13107e++;
                    }
                    this.f13108f = 0;
                }
            }
            this.f13107e++;
        }
        if (i2 == 0 || i2 >= 1024 || (i3 = this.f13106d) < i2) {
            if (i2 == 0 || i2 < 1024) {
                return;
            }
            this.f13106d = 0;
            this.f13107e = 0;
            this.f13108f = 0;
            return;
        }
        int i18 = i3 - i2;
        this.f13106d = i18;
        if (i18 > 0) {
            byte[] bArr7 = this.f13105c;
            System.arraycopy(bArr7, i2, bArr7, 0, i18);
        }
        this.f13107e = 0;
    }

    @Override // l0.a
    public void f(int... iArr) {
        int i2;
        int length = iArr.length + 3;
        int[] iArr2 = new int[length];
        int i3 = 0;
        iArr2[0] = 233;
        iArr2[1] = 253;
        int i4 = 2;
        int i5 = 1;
        while (true) {
            i2 = length - 2;
            if (i4 >= i2 || i5 >= iArr.length) {
                break;
            }
            iArr2[i4] = iArr[i5];
            i4++;
            i5++;
        }
        for (int i6 = 1; i6 < iArr.length; i6++) {
            i3 += iArr[i6];
        }
        iArr2[i2] = (i3 >> 8) & 255;
        int i7 = length - 1;
        iArr2[i7] = i3 & 255;
        a.d(iArr2);
        a.f.p().t(LogType.CANBUS, "WR---->: " + o1.b0.e(iArr2, 1, i7));
    }
}
