package k0;

import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class y3 extends lt implements o1.q {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f12342b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f12343c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f12344d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{6, 12}, new int[]{7, 2}, new int[]{16, 9}, new int[]{17, 6}, new int[]{18, 54}, new int[]{19, 12}, new int[]{20, 27}, new int[]{21, 28}, new int[]{22, 21}, new int[]{23, 0}, new int[]{24, 1}, new int[]{25, 54}, new int[]{26, 18}, new int[]{27, 55}, new int[]{28, 38}, new int[]{29, 53}, new int[]{30, 7}, new int[]{31, 8}, new int[]{34, 27}, new int[]{35, 28}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public byte f12345e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f12346f = new a();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final byte[] f12347g = new byte[1024];

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f12348h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f12349i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f12350j = 0;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            y3 y3Var = y3.this;
            byte b2 = (byte) (y3Var.f12345e + 1);
            y3Var.f12345e = b2;
            if (b2 > 5) {
                l0.b0.o0(y3Var.f12346f);
                y3.this.f12345e = (byte) 0;
            }
        }
    }

    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        mtVar.f8306a = null;
        mtVar.f8310e = 0;
        mtVar.f8311f = 0;
        mtVar.f8312g = 0;
        mtVar.f8313h = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2;
        byte b3 = bArr[i2];
        if (b3 != 33) {
            if (b3 != 127) {
                return;
            }
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        byte b4 = bArr[i2 + 2];
        byte b5 = bArr[i2 + 3];
        this.f12343c = b4 & 255;
        int i4 = 0;
        while (true) {
            iArr = this.f12344d;
            if (i4 >= iArr.length) {
                break;
            }
            int i5 = this.f12343c;
            if (i5 == iArr[i4][0]) {
                if (i5 == 0) {
                    break;
                }
                this.f12342b = i4;
                break;
            }
            i4++;
        }
        int i6 = this.f12343c;
        if (i6 == 30) {
            for (int i7 = 0; i7 < (b5 & 255); i7++) {
                l0.b0.l0(7, 0);
            }
            l0.b0.l0(7, 1);
            return;
        }
        if (i6 == 31) {
            for (int i8 = 0; i8 < (b5 & 255); i8++) {
                l0.b0.l0(8, 0);
            }
            l0.b0.l0(8, 1);
            return;
        }
        if (i6 == 34) {
            for (int i9 = 0; i9 < (b5 & 255); i9++) {
                l0.b0.l0(27, 0);
            }
            l0.b0.l0(27, 1);
            return;
        }
        if (i6 == 35) {
            for (int i10 = 0; i10 < (b5 & 255); i10++) {
                l0.b0.l0(28, 0);
            }
            l0.b0.l0(28, 1);
            return;
        }
        if ((b5 & 255) != 0) {
            if (i4 >= iArr.length || (b2 = this.f12345e) != 0) {
                return;
            }
            this.f12345e = (byte) (b2 + 1);
            l0.b0.l0(iArr[i4][1], 0);
            l0.b0.a(this.f12346f);
            return;
        }
        int i11 = this.f12342b;
        if (i11 < iArr.length && i11 != 255) {
            l0.b0.l0(iArr[i11][1], 1);
            l0.b0.o0(this.f12346f);
            this.f12345e = (byte) 0;
        }
        this.f12342b = 255;
    }

    @Override // k0.lt
    public void W2() {
    }

    @Override // o1.q
    public void b(byte[] bArr) {
        int i2;
        int i3;
        int i4;
        if (bArr != null) {
            a.f.p().t(LogType.CANBUS, "OBD Rcv--> " + o1.b0.d(bArr, 0, bArr.length));
        }
        if (bArr == null || bArr.length <= 0) {
            return;
        }
        if (this.f12348h + bArr.length > 1024) {
            this.f12348h = 0;
            this.f12349i = 0;
            this.f12350j = 0;
        }
        System.arraycopy(bArr, 0, this.f12347g, this.f12348h, bArr.length);
        int length = this.f12348h + bArr.length;
        this.f12348h = length;
        int i5 = this.f12350j;
        if (i5 != 0) {
            if (i5 >= length) {
                return;
            }
            byte b2 = this.f12347g[1];
            int i6 = 2;
            while (true) {
                i4 = this.f12350j;
                if (i6 >= i4) {
                    break;
                }
                b2 = (byte) (b2 + this.f12347g[i6]);
                i6++;
            }
            byte b3 = (byte) (b2 ^ 255);
            byte[] bArr2 = this.f12347g;
            if (b3 == bArr2[i4]) {
                U2(bArr2, 1, bArr2[2] + 2);
                this.f12349i = this.f12350j + 1;
            } else {
                this.f12349i = 2;
            }
            this.f12350j = 0;
        }
        int i7 = this.f12348h - 2;
        while (true) {
            i2 = this.f12349i;
            if (i2 >= i7) {
                break;
            }
            byte[] bArr3 = this.f12347g;
            if (bArr3[i2] == 46) {
                if (this.f12350j > 512) {
                    this.f12350j = 0;
                } else {
                    int i8 = bArr3[i2 + 2] + i2 + 3;
                    this.f12350j = i8;
                    if (i8 >= this.f12348h) {
                        this.f12350j = i8 - i2;
                        break;
                    }
                    byte b4 = bArr3[i2 + 1];
                    int i9 = i2 + 2;
                    while (true) {
                        i3 = this.f12350j;
                        if (i9 >= i3) {
                            break;
                        }
                        b4 = (byte) (b4 + this.f12347g[i9]);
                        i9++;
                    }
                    byte b5 = (byte) (b4 ^ 255);
                    byte[] bArr4 = this.f12347g;
                    if (b5 == bArr4[i3]) {
                        int i10 = this.f12349i;
                        U2(bArr4, i10 + 1, bArr4[i10 + 2] + 2);
                        this.f12349i = this.f12350j;
                    } else {
                        this.f12349i++;
                    }
                    this.f12350j = 0;
                }
            }
            this.f12349i++;
        }
        if (i2 != 0) {
            int i11 = this.f12348h - i2;
            this.f12348h = i11;
            if (i11 != 0) {
                byte[] bArr5 = this.f12347g;
                System.arraycopy(bArr5, i2, bArr5, 0, i11);
            }
            this.f12349i = 0;
        }
    }
}
