package l0;

import k0.lt;
import k0.nt;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class x extends a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final byte[] f13129c = new byte[1024];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f13130d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f13131e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f13132f = 0;

    @Override // l0.a
    public void b(byte[] bArr) {
        int i2;
        int i3;
        int i4;
        super.b(bArr);
        if (bArr == null || bArr.length <= 0) {
            return;
        }
        if (this.f13130d + bArr.length > 1024) {
            this.f13130d = 0;
            this.f13131e = 0;
            this.f13132f = 0;
        }
        System.arraycopy(bArr, 0, this.f13129c, this.f13130d, bArr.length);
        int length = this.f13130d + bArr.length;
        this.f13130d = length;
        int i5 = this.f13132f;
        if (i5 != 0) {
            if (i5 >= length) {
                return;
            }
            byte b2 = this.f13129c[2];
            int i6 = 3;
            while (true) {
                i4 = this.f13132f;
                if (i6 >= i4) {
                    break;
                }
                b2 = (byte) (b2 + this.f13129c[i6]);
                i6++;
            }
            if (((byte) ((b2 - 1) & 255)) == this.f13129c[i4]) {
                if (g.f.f(12)) {
                    n1.b bVarP = a.f.p();
                    LogType logType = LogType.CANBUS;
                    byte[] bArr2 = this.f13129c;
                    bVarP.t(logType, o1.b0.d(bArr2, 0, (bArr2[2] & 31) + 4));
                }
                lt ltVar = nt.f8639d;
                byte[] bArr3 = this.f13129c;
                ltVar.U2(bArr3, 2, (bArr3[2] & 31) + 2);
                this.f13131e = this.f13132f + 1;
            } else {
                this.f13131e = 2;
            }
            this.f13132f = 0;
        }
        int i7 = this.f13130d - 3;
        while (true) {
            i2 = this.f13131e;
            if (i2 >= i7) {
                break;
            }
            byte[] bArr4 = this.f13129c;
            if (bArr4[i2] == -86 && bArr4[i2 + 1] == 85) {
                if (this.f13132f > 512) {
                    this.f13132f = 0;
                } else {
                    int i8 = (bArr4[i2 + 2] & 31) + i2 + 3;
                    this.f13132f = i8;
                    if (i8 >= this.f13130d) {
                        this.f13132f = i8 - i2;
                        break;
                    }
                    byte b3 = bArr4[i2 + 2];
                    int i9 = i2 + 3;
                    while (true) {
                        i3 = this.f13132f;
                        if (i9 >= i3) {
                            break;
                        }
                        b3 = (byte) (b3 + this.f13129c[i9]);
                        i9++;
                    }
                    if (((byte) ((b3 - 1) & 255)) == this.f13129c[i3]) {
                        if (g.f.f(12)) {
                            n1.b bVarP2 = a.f.p();
                            LogType logType2 = LogType.CANBUS;
                            byte[] bArr5 = this.f13129c;
                            int i10 = this.f13131e;
                            bVarP2.t(logType2, o1.b0.d(bArr5, i10, (bArr5[i10 + 2] & 31) + 4));
                        }
                        lt ltVar2 = nt.f8639d;
                        byte[] bArr6 = this.f13129c;
                        int i11 = this.f13131e;
                        ltVar2.U2(bArr6, i11 + 2, (bArr6[i11 + 2] & 31) + 2);
                        this.f13131e = this.f13132f;
                    } else {
                        this.f13131e++;
                    }
                    this.f13132f = 0;
                }
            }
            this.f13131e++;
        }
        if (i2 != 0) {
            int i12 = this.f13130d - i2;
            this.f13130d = i12;
            if (i12 > 0) {
                byte[] bArr7 = this.f13129c;
                System.arraycopy(bArr7, i2, bArr7, 0, i12);
            }
            this.f13131e = 0;
        }
    }

    @Override // l0.a
    public void f(int... iArr) {
        int i2;
        int i3 = 3;
        int length = iArr.length + 3;
        int[] iArr2 = new int[length];
        iArr2[0] = 233;
        iArr2[1] = 85;
        iArr2[2] = 170;
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
        a.f.p().t(LogType.CANBUS, "WR---->: " + o1.b0.e(iArr2, 1, i2));
    }
}
