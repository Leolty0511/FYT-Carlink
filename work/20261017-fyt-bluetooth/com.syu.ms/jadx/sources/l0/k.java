package l0;

import k0.lt;
import k0.nt;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class k extends a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final byte[] f13072c = new byte[1024];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f13073d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f13074e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f13075f = 0;

    @Override // l0.a
    public void b(byte[] bArr) {
        int i2;
        int i3;
        super.b(bArr);
        if (bArr == null || bArr.length <= 0) {
            return;
        }
        if (this.f13073d + bArr.length > 1024) {
            this.f13073d = 0;
            this.f13074e = 0;
            this.f13075f = 0;
        }
        System.arraycopy(bArr, 0, this.f13072c, this.f13073d, bArr.length);
        int length = this.f13073d + bArr.length;
        this.f13073d = length;
        int i4 = this.f13075f;
        if (i4 != 0) {
            if (i4 >= length) {
                return;
            }
            byte b2 = this.f13072c[0];
            int i5 = 1;
            while (true) {
                i3 = this.f13075f;
                if (i5 >= i3) {
                    break;
                }
                b2 = (byte) (b2 ^ this.f13072c[i5]);
                i5++;
            }
            byte b3 = (byte) (b2 & (-1));
            byte[] bArr2 = this.f13072c;
            if (b3 == bArr2[i3]) {
                nt.f8639d.U2(bArr2, 0, i3);
                this.f13074e = this.f13075f + 1;
            } else {
                this.f13074e = 1;
            }
            this.f13075f = 0;
        }
        int i6 = this.f13073d - 2;
        while (true) {
            i2 = this.f13074e;
            if (i2 >= i6) {
                break;
            }
            byte[] bArr3 = this.f13072c;
            if (bArr3[i2] == 8) {
                byte b4 = bArr3[i2 + 1];
                this.f13075f = b4;
                if (b4 > 512) {
                    this.f13075f = 0;
                } else {
                    int i7 = b4 + i2 + 2;
                    this.f13075f = i7;
                    if (i7 >= this.f13073d) {
                        this.f13075f = i7 - i2;
                        break;
                    }
                    byte b5 = bArr3[i2];
                    while (true) {
                        i2++;
                        if (i2 >= this.f13075f) {
                            break;
                        } else {
                            b5 = (byte) (b5 ^ this.f13072c[i2]);
                        }
                    }
                    byte b6 = (byte) (b5 & (-1));
                    n1.b bVarP = a.f.p();
                    LogType logType = LogType.CANBUS;
                    bVarP.t(logType, "re---->111111:mChecksumIndex ==   " + this.f13075f);
                    a.f.p().t(logType, "re---->111111:checksum ==   " + ((int) b6));
                    a.f.p().t(logType, "re---->1111111:this.DATA_MISC[mChecksumIndex] ==   " + ((int) this.f13072c[this.f13075f]));
                    byte[] bArr4 = this.f13072c;
                    int i8 = this.f13075f;
                    if (b6 == bArr4[i8]) {
                        lt ltVar = nt.f8639d;
                        int i9 = this.f13074e;
                        ltVar.U2(bArr4, i9, i8 - i9);
                        this.f13074e = this.f13075f;
                    } else {
                        this.f13074e++;
                    }
                    this.f13075f = 0;
                }
            }
            this.f13074e++;
        }
        if (i2 != 0) {
            int i10 = this.f13073d - i2;
            this.f13073d = i10;
            if (i10 != 0) {
                byte[] bArr5 = this.f13072c;
                System.arraycopy(bArr5, i2, bArr5, 0, i10);
            }
            this.f13074e = 0;
        }
    }

    @Override // l0.a
    public void f(int... iArr) {
        int length = iArr.length + 1;
        int[] iArr2 = new int[length];
        iArr2[0] = 233;
        for (int i2 = 1; i2 < length; i2++) {
            iArr2[i2] = iArr[i2 - 1];
        }
        a.d(iArr2);
        a.f.p().t(LogType.CANBUS, "WR---->: " + o1.b0.e(iArr2, 1, length - 1));
    }
}
