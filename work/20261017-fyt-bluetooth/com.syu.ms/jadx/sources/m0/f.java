package m0;

import o1.p0;

/* JADX INFO: loaded from: classes2.dex */
public class f extends m0.a implements o1.q {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f13194g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public byte[] f13195h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte[] f13188a = new byte[1024];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f13189b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f13190c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f13191d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f13192e = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f13193f = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f13196i = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (f.this.f13192e != 0) {
                d.i(this);
                return;
            }
            f.Q2(f.this);
            if (f.this.f13193f < 4) {
                f.this.W2(-128);
            } else {
                f.this.f13193f = 0;
                f.this.T2();
            }
        }
    }

    public static /* synthetic */ int Q2(f fVar) {
        int i2 = fVar.f13193f;
        fVar.f13193f = i2 + 1;
        return i2;
    }

    @Override // m0.a
    public void K2() {
    }

    @Override // m0.a
    public void L2() {
        if (this.f13192e == 0) {
            d.i(this.f13196i);
        }
        this.f13192e = -1;
        this.f13195h = null;
        b.f13172e = 0;
    }

    public final void T2() {
        d.f();
    }

    public void U2(byte[] bArr, int i2, int i3) {
        switch (bArr[i2]) {
            case -15:
                d.j(0, 2);
                if (this.f13192e == 1) {
                    this.f13192e = -1;
                    d.j(0, 6);
                } else {
                    X2(-31);
                }
                break;
            case -14:
                this.f13192e = 1;
                byte[] bArr2 = this.f13195h;
                if (bArr2 != null) {
                    int i4 = i2 + 3;
                    int i5 = i2 + 4;
                    int iC = p0.c(bArr[i4], bArr[i5]);
                    int i6 = iC << 8;
                    if (i6 < bArr2.length) {
                        int length = bArr2.length - i6;
                        if (length > 256) {
                            length = 256;
                        }
                        byte[] bArr3 = new byte[length + 3];
                        bArr3[0] = -30;
                        if (i6 + length == bArr2.length) {
                            bArr3[1] = -1;
                            bArr3[2] = -1;
                        } else {
                            bArr3[1] = bArr[i4];
                            bArr3[2] = bArr[i5];
                        }
                        System.arraycopy(bArr2, i6, bArr3, 3, length);
                        X2(bArr3);
                    }
                    d.k(0, new int[]{3, iC + 1, (bArr2.length + 255) >> 8}, null, null);
                    break;
                }
                break;
            case -13:
                d.j(0, 4);
                int i7 = this.f13194g;
                X2(-29, (byte) ((i7 >> 8) & 255), (byte) (i7 & 255));
                break;
            case -12:
                d.j(0, 5);
                X2(-28);
                this.f13192e = -1;
                break;
        }
    }

    public final void V2(String str) {
        if (this.f13192e != -1) {
            return;
        }
        byte[] bArrF = p0.f(str);
        this.f13195h = bArrF;
        if (bArrF == null) {
            d.j(0, 0);
            return;
        }
        int i2 = 0;
        int i3 = 0;
        while (true) {
            byte[] bArr = this.f13195h;
            if (i2 >= bArr.length) {
                this.f13194g = 65535 & i3;
                d.j(0, 1);
                b.f13172e = 1;
                T2();
                this.f13193f = 0;
                this.f13192e = 0;
                d.b(this.f13196i);
                return;
            }
            i3 += bArr[i2] & 255;
            i2++;
        }
    }

    public final void W2(byte... bArr) {
        int length = bArr.length + 4;
        byte[] bArr2 = new byte[length];
        byte b2 = 0;
        bArr2[0] = -86;
        bArr2[1] = 85;
        int i2 = 2;
        bArr2[2] = bArr[0];
        bArr2[3] = (byte) (bArr.length - 1);
        for (int i3 = 1; i3 < bArr.length; i3++) {
            bArr2[i3 + 3] = bArr[i3];
        }
        while (true) {
            int i4 = length - 1;
            if (i2 >= i4) {
                bArr2[i4] = (byte) (~b2);
                d.m(bArr2);
                return;
            } else {
                b2 = (byte) (b2 + bArr2[i2]);
                i2++;
            }
        }
    }

    public final void X2(byte... bArr) {
        int length = bArr.length + 5;
        byte[] bArr2 = new byte[length];
        byte b2 = 0;
        bArr2[0] = -86;
        bArr2[1] = 85;
        bArr2[2] = bArr[0];
        int i2 = length - 1;
        bArr2[3] = (byte) (i2 >> 8);
        bArr2[4] = (byte) i2;
        for (int i3 = 1; i3 < bArr.length; i3++) {
            bArr2[i3 + 4] = bArr[i3];
        }
        for (int i4 = 2; i4 < i2; i4++) {
            b2 = (byte) (b2 + bArr2[i4]);
        }
        bArr2[i2] = (byte) ((~b2) + 1);
        d.m(bArr2);
    }

    @Override // m0.a, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0 && p0.h(strArr, 1)) {
            V2(strArr[0]);
        }
    }

    @Override // o1.q
    public void b(byte[] bArr) {
        int i2;
        int i3;
        int i4;
        z.a.f18173x.b(bArr);
        if (bArr == null || bArr.length <= 0) {
            return;
        }
        if (this.f13189b + bArr.length > 1024) {
            this.f13189b = 0;
            this.f13190c = 0;
            this.f13191d = 0;
        }
        System.arraycopy(bArr, 0, this.f13188a, this.f13189b, bArr.length);
        int length = this.f13189b + bArr.length;
        this.f13189b = length;
        int i5 = this.f13191d;
        if (i5 != 0) {
            if (i5 >= length) {
                return;
            }
            byte b2 = this.f13188a[2];
            int i6 = 3;
            while (true) {
                i4 = this.f13191d;
                if (i6 >= i4) {
                    break;
                }
                b2 = (byte) (b2 + this.f13188a[i6]);
                i6++;
            }
            byte b3 = (byte) ((~b2) + 1);
            byte[] bArr2 = this.f13188a;
            if (b3 == bArr2[i4]) {
                U2(bArr2, 2, i4 - 2);
                this.f13190c = this.f13191d + 1;
            } else {
                this.f13190c = 2;
            }
            this.f13191d = 0;
        }
        int i7 = this.f13189b - 4;
        while (true) {
            i2 = this.f13190c;
            if (i2 >= i7) {
                break;
            }
            byte[] bArr3 = this.f13188a;
            if (bArr3[i2] == -86 && bArr3[i2 + 1] == 85) {
                int i8 = ((bArr3[i2 + 3] << 8) & 65280) | (bArr3[i2 + 4] & 255);
                this.f13191d = i8;
                if (i8 > 512) {
                    this.f13191d = 0;
                } else {
                    int i9 = i8 + i2;
                    this.f13191d = i9;
                    if (i9 >= this.f13189b) {
                        this.f13191d = i9 - i2;
                        break;
                    }
                    byte b4 = bArr3[i2 + 2];
                    int i10 = i2 + 3;
                    while (true) {
                        i3 = this.f13191d;
                        if (i10 >= i3) {
                            break;
                        }
                        b4 = (byte) (b4 + this.f13188a[i10]);
                        i10++;
                    }
                    byte b5 = (byte) ((~b4) + 1);
                    byte[] bArr4 = this.f13188a;
                    if (b5 == bArr4[i3]) {
                        int i11 = this.f13190c;
                        U2(bArr4, i11 + 2, (i3 - i11) - 2);
                        this.f13190c = this.f13191d;
                    } else {
                        this.f13190c++;
                    }
                    this.f13191d = 0;
                }
            }
            this.f13190c++;
        }
        if (i2 != 0) {
            int i12 = this.f13189b - i2;
            this.f13189b = i12;
            if (i12 != 0) {
                byte[] bArr5 = this.f13188a;
                System.arraycopy(bArr5, i2, bArr5, 0, i12);
            }
            this.f13190c = 0;
        }
    }
}
