package c1;

import o1.b0;
import o1.q;

/* JADX INFO: loaded from: classes2.dex */
public class k extends p implements q {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f532b = new byte[1024];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f533c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f534d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f535e = 0;

    @Override // c1.p
    public void L2() {
    }

    @Override // c1.p, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // c1.p
    public void N2() {
        z.a.f18165p.e(null);
    }

    public void O2(byte[] bArr, int i2, int i3) {
        a.f.p().s("radar data = " + b0.d(bArr, i2, i3));
        byte b2 = bArr[i2];
        if (b2 == 34) {
            int i4 = bArr[i2 + 2] & 255;
            int[] iArr = a.f409d;
            if (iArr[5] != i4) {
                iArr[5] = i4;
                u0.d.I3(18, i4);
            }
            int i5 = bArr[i2 + 3] & 255;
            if (iArr[6] != i5) {
                iArr[6] = i5;
                u0.d.I3(19, i5);
            }
            int i6 = bArr[i2 + 4] & 255;
            if (iArr[7] != i6) {
                iArr[7] = i6;
                u0.d.I3(20, i6);
            }
            int i7 = bArr[i2 + 5] & 255;
            if (iArr[8] != i7) {
                iArr[8] = i7;
                u0.d.I3(21, i7);
                return;
            }
            return;
        }
        if (b2 != 35) {
            if (b2 != 38) {
                return;
            }
            b.i(9, bArr[i2 + 2] & 255, bArr[i2 + 3] & 255);
            return;
        }
        int i8 = bArr[i2 + 2] & 255;
        int[] iArr2 = a.f409d;
        if (iArr2[1] != i8) {
            iArr2[1] = i8;
            u0.d.I3(14, i8);
        }
        int i9 = bArr[i2 + 3] & 255;
        if (iArr2[2] != i9) {
            iArr2[2] = i9;
            u0.d.I3(15, i9);
        }
        int i10 = bArr[i2 + 4] & 255;
        if (iArr2[3] != i10) {
            iArr2[3] = i10;
            u0.d.I3(16, i10);
        }
        int i11 = bArr[i2 + 5] & 255;
        if (iArr2[4] != i11) {
            iArr2[4] = i11;
            u0.d.I3(17, i11);
        }
    }

    @Override // c1.p, y.c
    public void P0(y.b bVar, int i2) {
    }

    @Override // c1.p, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        switch (i2) {
            case 1:
                b.i(1, a.f409d[1]);
                break;
            case 2:
                b.i(2, a.f409d[2]);
                break;
            case 3:
                b.i(3, a.f409d[3]);
                break;
            case 4:
                b.i(4, a.f409d[4]);
                break;
            case 5:
                b.i(5, a.f409d[5]);
                break;
            case 6:
                b.i(6, a.f409d[6]);
                break;
            case 7:
                b.i(7, a.f409d[7]);
                break;
            case 8:
                b.i(8, a.f409d[8]);
                break;
        }
    }

    @Override // c1.p, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
    }

    @Override // o1.q
    public void b(byte[] bArr) {
        int i2;
        int i3;
        int i4;
        if (bArr == null || bArr.length <= 0) {
            a.i.a0(100L);
            a.f.p().s("radar data is null");
            return;
        }
        if (this.f533c + bArr.length > 1024) {
            this.f533c = 0;
            this.f534d = 0;
            this.f535e = 0;
        }
        System.arraycopy(bArr, 0, this.f532b, this.f533c, bArr.length);
        int length = this.f533c + bArr.length;
        this.f533c = length;
        int i5 = this.f535e;
        if (i5 != 0) {
            if (i5 >= length) {
                return;
            }
            byte b2 = this.f532b[1];
            int i6 = 2;
            while (true) {
                i4 = this.f535e;
                if (i6 >= i4) {
                    break;
                }
                b2 = (byte) (b2 + this.f532b[i6]);
                i6++;
            }
            byte b3 = (byte) (~b2);
            byte[] bArr2 = this.f532b;
            if (b3 == bArr2[i4]) {
                O2(bArr2, 1, i4 - 1);
                this.f534d = this.f535e + 1;
            } else {
                this.f534d = 1;
            }
            this.f535e = 0;
        }
        int i7 = this.f533c - 2;
        while (true) {
            i2 = this.f534d;
            if (i2 >= i7) {
                break;
            }
            byte[] bArr3 = this.f532b;
            if (bArr3[i2] == 46) {
                int i8 = bArr3[i2 + 2] & 255;
                this.f535e = i8;
                if (i8 > 512) {
                    this.f535e = 0;
                } else {
                    int i9 = i8 + i2 + 3;
                    this.f535e = i9;
                    if (i9 >= this.f533c) {
                        this.f535e = i9 - i2;
                        break;
                    }
                    byte b4 = bArr3[i2 + 1];
                    int i10 = i2 + 2;
                    while (true) {
                        i3 = this.f535e;
                        if (i10 >= i3) {
                            break;
                        }
                        b4 = (byte) (b4 + this.f532b[i10]);
                        i10++;
                    }
                    byte b5 = (byte) (~b4);
                    byte[] bArr4 = this.f532b;
                    if (b5 == bArr4[i3]) {
                        int i11 = this.f534d;
                        O2(bArr4, i11 + 1, (i3 - i11) - 1);
                        this.f534d = this.f535e;
                    } else {
                        this.f534d++;
                    }
                    this.f535e = 0;
                }
            }
            this.f534d++;
        }
        if (i2 != 0) {
            int i12 = this.f533c - i2;
            this.f533c = i12;
            if (i12 != 0) {
                byte[] bArr5 = this.f532b;
                System.arraycopy(bArr5, i2, bArr5, 0, i12);
            }
            this.f534d = 0;
        }
    }
}
