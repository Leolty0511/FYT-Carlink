package l0;

import k0.nt;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class p extends a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final byte[] f13096c = new byte[1024];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f13097d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f13098e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f13099f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public byte f13100g;

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
        if (this.f13097d + bArr.length > 1024) {
            this.f13097d = 0;
            this.f13098e = 0;
            this.f13099f = 0;
        }
        System.arraycopy(bArr, 0, this.f13096c, this.f13097d, bArr.length);
        int length = this.f13097d + bArr.length;
        this.f13097d = length;
        int i6 = this.f13099f;
        if (i6 != 0) {
            if (i6 >= length) {
                return;
            }
            byte b2 = this.f13096c[1];
            int i7 = 2;
            while (true) {
                i5 = this.f13099f;
                if (i7 >= i5) {
                    break;
                }
                b2 = (byte) (b2 + this.f13096c[i7]);
                i7++;
            }
            byte b3 = (byte) (b2 & (-1));
            byte[] bArr2 = this.f13096c;
            if (b3 == bArr2[i5]) {
                if (this.f13100g == 253) {
                    byte[] bArr3 = new byte[6];
                    bArr3[0] = 5;
                    System.arraycopy(bArr2, 0, bArr3, 1, 5);
                    if (g.f.f(12)) {
                        a.f.p().t(LogType.CANBUS, o1.b0.d(bArr3, 0, 6));
                    }
                    nt.f8639d.U2(bArr3, 0, 6);
                } else {
                    int i8 = this.f13098e;
                    int i9 = bArr2[i8 + 1] & 255;
                    int i10 = i9 + 1;
                    byte[] bArr4 = new byte[i10];
                    bArr4[0] = (byte) i9;
                    bArr4[1] = bArr2[i8];
                    System.arraycopy(bArr2, i8 + 2, bArr4, 2, i9 - 2);
                    if (g.f.f(12)) {
                        a.f.p().t(LogType.CANBUS, o1.b0.d(bArr4, 0, i10));
                    }
                    nt.f8639d.U2(bArr4, 0, i10);
                }
                this.f13098e = this.f13099f + 1;
            } else {
                this.f13098e = 1;
            }
            this.f13099f = 0;
        }
        int i11 = this.f13097d - 2;
        while (true) {
            i2 = this.f13098e;
            if (i2 >= i11) {
                break;
            }
            byte[] bArr5 = this.f13096c;
            if (bArr5[i2] == -3) {
                this.f13100g = bArr5[i2];
                this.f13099f = 5;
                int i12 = 5 + i2;
                this.f13099f = i12;
                if (i12 >= this.f13097d) {
                    this.f13099f = 0;
                    break;
                }
                byte b4 = bArr5[i2 + 1];
                int i13 = i2 + 2;
                while (true) {
                    i4 = this.f13099f;
                    if (i13 >= i4) {
                        break;
                    }
                    b4 = (byte) (b4 + this.f13096c[i13]);
                    i13++;
                }
                byte b5 = (byte) (b4 & (-1));
                byte[] bArr6 = this.f13096c;
                if (b5 == bArr6[i4]) {
                    byte[] bArr7 = new byte[6];
                    bArr7[0] = 5;
                    System.arraycopy(bArr6, this.f13098e, bArr7, 1, 5);
                    nt.f8639d.U2(bArr7, 0, 6);
                    this.f13098e = this.f13099f;
                } else {
                    this.f13098e++;
                }
                this.f13099f = 0;
                this.f13098e++;
            } else {
                if (bArr5[i2] == -4 || bArr5[i2] == -2) {
                    int i14 = bArr5[i2 + 1] & 255;
                    this.f13099f = i14;
                    if (i14 > 512) {
                        this.f13099f = 0;
                    } else {
                        int i15 = i14 + i2;
                        this.f13099f = i15;
                        if (i15 >= this.f13097d) {
                            this.f13099f = i15 - i2;
                            break;
                        }
                        byte b6 = bArr5[i2 + 1];
                        int i16 = i2 + 2;
                        while (true) {
                            i3 = this.f13099f;
                            if (i16 >= i3) {
                                break;
                            }
                            b6 = (byte) (b6 + this.f13096c[i16]);
                            i16++;
                        }
                        byte b7 = (byte) (b6 & (-1));
                        byte[] bArr8 = this.f13096c;
                        if (b7 == bArr8[i3]) {
                            int i17 = this.f13098e;
                            int i18 = bArr8[i17 + 1] & 255;
                            int i19 = i18 + 1;
                            byte[] bArr9 = new byte[i19];
                            bArr9[0] = (byte) i18;
                            bArr9[1] = bArr8[i17];
                            System.arraycopy(bArr8, i17 + 2, bArr9, 2, i18 - 2);
                            nt.f8639d.U2(bArr9, 0, i19);
                            this.f13098e = this.f13099f;
                        } else {
                            this.f13098e++;
                        }
                        this.f13099f = 0;
                    }
                }
                this.f13098e++;
            }
        }
        if (i2 != 0) {
            int i20 = this.f13097d - i2;
            this.f13097d = i20;
            if (i20 > 0) {
                byte[] bArr10 = this.f13096c;
                System.arraycopy(bArr10, i2, bArr10, 0, i20);
            }
            this.f13098e = 0;
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
