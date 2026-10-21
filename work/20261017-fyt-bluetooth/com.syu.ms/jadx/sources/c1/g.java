package c1;

import android.net.dhcp.DhcpPacket;
import o1.p0;
import o1.r;
import o1.x;

/* JADX INFO: loaded from: classes2.dex */
public class g extends p implements r {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f473f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f474g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public r f475h;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f469b = new byte[1024];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f470c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f471d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f472e = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int[] f476i = new int[4];

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int[] f477j = new int[4];

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int[] f478k = new int[4];

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int[] f479l = new int[4];

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int[] f480m = new int[4];

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final int[] f481n = new int[4];

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final int[] f482o = new int[4];

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f483p = new a();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Runnable f484q = new b();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            z.k.o(0, 205, 1);
            z.k.o(0, 205, 1);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17306a0 != 0) {
                if (g.this.f473f != 0) {
                    g.this.S2(0);
                } else {
                    g.this.f473f = 1;
                }
                g.this.U2(85, 0, 2, 7, 255, 255, 255);
            }
        }
    }

    @Override // c1.p
    public void L2() {
        this.f475h = z.a.B;
        z.a.B = this;
        c1.b.c(this.f484q);
        y0.g.f18111u.a(this.f483p, 1);
    }

    @Override // c1.p, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // c1.p
    public void N2() {
        c1.b.e(this.f484q);
        z.a.B = this.f475h;
        y0.g.f18111u.d(this.f483p);
    }

    public final void S2(int i2) {
        if (this.f474g != i2) {
            this.f474g = i2;
            c1.b.i(0, i2);
        }
    }

    public final void T2(byte[] bArr, int i2, int i3) {
        this.f473f = 0;
        S2(1);
        if (bArr[i2] == 0 && bArr[i2 + 1] == 2 && bArr[i2 + 2] == 7) {
            int i4 = i2 + 5;
            String.format("Ver %d.%d", Integer.valueOf((bArr[i4] >> 4) & 15), Integer.valueOf(bArr[i4] & DhcpPacket.DHCP_DOMAIN_NAME));
            return;
        }
        int iD = p0.d(bArr[i2 + 3], bArr[i2 + 4], bArr[i2 + 5]);
        int i5 = iD & 255;
        if (i5 < 1 || i5 > 4) {
            return;
        }
        int i6 = i5 - 1;
        int[] iArr = this.f476i;
        if (iArr[i6] != iD) {
            iArr[i6] = iD;
            c1.b.i(1, i6, iD);
        }
        int i7 = bArr[i2] & 255;
        int[] iArr2 = this.f477j;
        if (iArr2[i6] != i7) {
            iArr2[i6] = i7;
            c1.b.i(2, i6, i7);
        }
        int i8 = bArr[i2 + 1] & 255;
        int[] iArr3 = this.f478k;
        if (iArr3[i6] != i8) {
            iArr3[i6] = i8;
            c1.b.i(3, i6, i8);
        }
        int i9 = i2 + 2;
        int i10 = (bArr[i9] >> 6) & 3;
        int[] iArr4 = this.f479l;
        if (iArr4[i6] != i10) {
            iArr4[i6] = i10;
            c1.b.i(4, i6, i10);
        }
        int i11 = (bArr[i9] >> 4) & 3;
        int[] iArr5 = this.f480m;
        if (iArr5[i6] != i11) {
            iArr5[i6] = i11;
            c1.b.i(5, i6, i11);
        }
        int i12 = (bArr[i9] >> 2) & 3;
        int[] iArr6 = this.f481n;
        if (iArr6[i6] != i12) {
            iArr6[i6] = i12;
            c1.b.i(6, i6, i12);
        }
        int i13 = bArr[i9] & 3;
        int[] iArr7 = this.f482o;
        if (iArr7[i6] != i13) {
            iArr7[i6] = i13;
            c1.b.i(7, i6, i13);
        }
    }

    public final void U2(int... iArr) {
        int length = iArr.length + 3;
        int[] iArr2 = new int[length];
        int i2 = 0;
        iArr2[0] = 0;
        iArr2[1] = 204;
        int i3 = length - 1;
        for (int i4 = 2; i4 < i3; i4++) {
            iArr2[i4] = iArr[i4 - 2];
            i2 += iArr2[i4];
        }
        iArr2[i3] = -i2;
        z.k.o(iArr2);
    }

    @Override // c1.p, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        switch (i2) {
            case 0:
                x.v(bVar, i2, this.f474g);
                break;
            case 1:
                for (int i4 = 0; i4 < 4; i4++) {
                    x.v(bVar, i2, i4, this.f476i[i4]);
                }
                break;
            case 2:
                for (int i5 = 0; i5 < 4; i5++) {
                    x.v(bVar, i2, i5, this.f477j[i5]);
                }
                break;
            case 3:
                for (int i6 = 0; i6 < 4; i6++) {
                    x.v(bVar, i2, i6, this.f478k[i6]);
                }
                break;
            case 4:
                for (int i7 = 0; i7 < 4; i7++) {
                    x.v(bVar, i2, i7, this.f479l[i7]);
                }
                break;
            case 5:
                for (int i8 = 0; i8 < 4; i8++) {
                    x.v(bVar, i2, i8, this.f480m[i8]);
                }
                break;
            case 6:
                for (int i9 = 0; i9 < 4; i9++) {
                    x.v(bVar, i2, i9, this.f481n[i9]);
                }
                break;
            case 7:
                for (int i10 = 0; i10 < 4; i10++) {
                    x.v(bVar, i2, i10, this.f482o[i10]);
                }
                break;
        }
    }

    @Override // c1.p, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
    }

    @Override // o1.r
    public void z1(byte[] bArr, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        if (this.f470c + i3 > 1024) {
            this.f470c = 0;
            this.f471d = 0;
            this.f472e = 0;
        }
        System.arraycopy(bArr, i2, this.f469b, this.f470c, i3);
        int i7 = this.f470c + i3;
        this.f470c = i7;
        int i8 = this.f472e;
        if (i8 != 0) {
            if (i8 >= i7) {
                return;
            }
            byte b2 = this.f469b[0];
            int i9 = 1;
            while (true) {
                i6 = this.f472e;
                if (i9 >= i6) {
                    break;
                }
                b2 = (byte) (b2 + this.f469b[i9]);
                i9++;
            }
            byte b3 = (byte) (-b2);
            byte[] bArr2 = this.f469b;
            if (b3 == bArr2[i6]) {
                T2(bArr2, 1, i6 - 1);
                this.f471d = this.f472e + 1;
            } else {
                this.f471d = 1;
            }
            this.f472e = 0;
        }
        int i10 = this.f470c;
        while (true) {
            i4 = this.f471d;
            if (i4 >= i10) {
                break;
            }
            byte[] bArr3 = this.f469b;
            if (bArr3[i4] == 85) {
                int i11 = i4 + 7;
                this.f472e = i11;
                if (i11 >= this.f470c) {
                    this.f472e = i11 - i4;
                    break;
                }
                byte b4 = bArr3[i4];
                while (true) {
                    i4++;
                    i5 = this.f472e;
                    if (i4 >= i5) {
                        break;
                    } else {
                        b4 = (byte) (b4 + this.f469b[i4]);
                    }
                }
                byte b5 = (byte) (-b4);
                byte[] bArr4 = this.f469b;
                if (b5 == bArr4[i5]) {
                    int i12 = this.f471d;
                    T2(bArr4, i12 + 1, (i5 - i12) - 1);
                    this.f471d = this.f472e;
                } else {
                    this.f471d++;
                }
                this.f472e = 0;
            }
            this.f471d++;
        }
        if (i4 != 0) {
            int i13 = this.f470c - i4;
            this.f470c = i13;
            if (i13 != 0) {
                byte[] bArr5 = this.f469b;
                System.arraycopy(bArr5, i4, bArr5, 0, i13);
            }
            this.f471d = 0;
        }
    }
}
