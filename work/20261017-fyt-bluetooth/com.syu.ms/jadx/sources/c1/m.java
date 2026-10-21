package c1;

import android.os.RemoteException;
import o1.l0;
import o1.q;
import o1.u;
import o1.x;

/* JADX INFO: loaded from: classes2.dex */
public class m extends p implements q {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f556b = new byte[1024];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f557c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f558d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f559e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int[] f560f = new int[5];

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int[] f561g = new int[5];

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int[] f562h = new int[5];

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int[] f563i = new int[5];

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int[] f564j = new int[5];

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int[] f565k = new int[5];

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int[] f566l = new int[5];

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int[] f567m = new int[5];

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final int[] f568n = new int[5];

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public l0 f569o = new l0();

    @Override // c1.p
    public void L2() {
        try {
            Z0(8, null, null, null);
            int[] iArr = a.f409d;
            iArr[18] = 1;
            b.i(18, iArr[18]);
        } catch (RemoteException e2) {
            e2.printStackTrace();
        }
    }

    @Override // c1.p, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // c1.p
    public void N2() {
        z.a.f18165p.e(null);
    }

    public final void O2(byte[] bArr, int i2, int i3) {
        this.f569o.a();
        byte b2 = bArr[i2];
        if (b2 == 98) {
            if (i3 > 2) {
                S2(i2 + 1, i3 - 1);
                return;
            } else {
                if ((this.f556b[i2 + 1] & 255) == 170) {
                    try {
                        Z0(1, null, null, null);
                        return;
                    } catch (RemoteException e2) {
                        e2.printStackTrace();
                        return;
                    }
                }
                return;
            }
        }
        if (b2 == 99) {
            Q2(i2 + 1, i3 - 1);
            return;
        }
        if (b2 != 102) {
            return;
        }
        if (i3 > 2) {
            R2(i2 + 1, i3 - 1);
        } else if ((this.f556b[i2 + 1] & 255) == 255) {
            a.f409d[15] = 0;
            b.i(15, 0);
        }
    }

    @Override // c1.p, y.c
    public void P0(y.b bVar, int i2) {
    }

    public final void P2(int i2, int... iArr) {
        int length = iArr.length + 5 + 1;
        byte[] bArr = new byte[length];
        bArr[0] = -86;
        bArr[1] = 65;
        bArr[2] = -95;
        bArr[3] = (byte) (length & 255);
        bArr[4] = (byte) (i2 & 255);
        for (int i3 = 0; i3 < iArr.length; i3++) {
            bArr[5 + i3] = (byte) iArr[i3];
        }
        int i4 = length - 1;
        bArr[i4] = 0;
        for (int i5 = 0; i5 < i4; i5++) {
            bArr[i4] = (byte) (bArr[i4] + bArr[i5]);
        }
        z.a.f18155f.i(bArr);
    }

    public void Q2(int i2, int i3) {
        byte[] bArr = this.f556b;
        int i4 = bArr[i2] & 255;
        if (i4 == 0) {
            if (i3 != 2 && i3 > 2) {
                int i5 = bArr[i2 + 1] & 255;
                int i6 = (bArr[i2 + 4] & 255) | ((bArr[i2 + 2] & 255) << 16) | ((bArr[i2 + 3] & 255) << 8);
                this.f560f[i5] = i6;
                b.i(5, i5, i6);
                byte[] bArr2 = this.f556b;
                int i7 = (bArr2[i2 + 6] & 255) | ((bArr2[i2 + 5] & 3) << 8);
                int[] iArr = this.f561g;
                iArr[i5] = i7;
                b.i(6, i5, iArr[i5]);
                int i8 = (this.f556b[i2 + 7] & 255) - 50;
                this.f562h[i5] = i8;
                b.i(7, i5, i8);
                int i9 = i2 + 8;
                int i10 = (this.f556b[i9] >> 7) & 1;
                this.f563i[i5] = i10;
                b.i(8, i5, i10);
                int i11 = (this.f556b[i9] >> 6) & 1;
                this.f568n[i5] = i11;
                b.i(13, i5, i11);
                int i12 = (this.f556b[i9] >> 4) & 1;
                this.f564j[i5] = i12;
                b.i(9, i5, i12);
                int i13 = (this.f556b[i9] >> 3) & 1;
                this.f565k[i5] = i13;
                b.i(10, i5, i13);
                int i14 = (this.f556b[i9] >> 2) & 1;
                this.f566l[i5] = i14;
                b.i(11, i5, i14);
                int i15 = this.f556b[i9] & 3;
                this.f567m[i5] = i15;
                b.i(12, i5, i15);
                byte[] bArr3 = this.f556b;
                T2((bArr3[i9] >> 7) & 1, (bArr3[i9] >> 4) & 1, (bArr3[i9] >> 3) & 1, 1 & (bArr3[i9] >> 2), bArr3[i9] & 3);
                return;
            }
            return;
        }
        if (i4 == 1 || i4 == 2 || i4 == 3 || i4 == 4) {
            int i16 = bArr[i2] & 255;
            int i17 = (bArr[i2 + 3] & 255) | ((bArr[i2 + 1] & 255) << 16) | ((bArr[i2 + 2] & 255) << 8);
            this.f560f[i16] = i17;
            b.i(5, i16, i17);
            byte[] bArr4 = this.f556b;
            int i18 = (bArr4[i2 + 5] & 255) | ((bArr4[i2 + 4] & 3) << 8);
            int[] iArr2 = this.f561g;
            iArr2[i16] = i18;
            b.i(6, i16, iArr2[i16]);
            int i19 = (this.f556b[i2 + 6] & 255) - 50;
            this.f562h[i16] = i19;
            b.i(7, i16, i19);
            int i20 = i2 + 7;
            int i21 = (this.f556b[i20] >> 7) & 1;
            this.f563i[i16] = i21;
            b.i(8, i16, i21);
            int i22 = (this.f556b[i20] >> 6) & 1;
            this.f568n[i16] = i22;
            b.i(13, i16, i22);
            int i23 = (this.f556b[i20] >> 4) & 1;
            this.f564j[i16] = i23;
            b.i(9, i16, i23);
            int i24 = (this.f556b[i20] >> 3) & 1;
            this.f565k[i16] = i24;
            b.i(10, i16, i24);
            int i25 = (this.f556b[i20] >> 2) & 1;
            this.f566l[i16] = i25;
            b.i(11, i16, i25);
            int i26 = this.f556b[i20] & 3;
            this.f567m[i16] = i26;
            b.i(12, i16, i26);
            byte[] bArr5 = this.f556b;
            T2((bArr5[i20] >> 7) & 1, (bArr5[i20] >> 4) & 1, (bArr5[i20] >> 3) & 1, 1 & (bArr5[i20] >> 2), bArr5[i20] & 3);
        }
    }

    public void R2(int i2, int i3) {
        byte[] bArr = this.f556b;
        int i4 = bArr[i2] & 255;
        if (i4 == 0) {
            if (i3 != 2 && i3 > 2) {
                int i5 = bArr[i2 + 1] & 255;
                int i6 = (bArr[i2 + 4] & 255) | ((bArr[i2 + 2] & 255) << 16) | ((bArr[i2 + 3] & 255) << 8);
                this.f560f[i5] = i6;
                b.i(5, i5, i6);
                a.f409d[15] = 1;
                b.i(15, 1);
                return;
            }
            return;
        }
        if (i4 == 1 || i4 == 2 || i4 == 3 || i4 == 4) {
            int i7 = bArr[i2] & 255;
            int i8 = (bArr[i2 + 3] & 255) | ((bArr[i2 + 1] & 255) << 16) | ((bArr[i2 + 2] & 255) << 8);
            this.f560f[i7] = i8;
            b.i(5, i7, i8);
            a.f409d[15] = 1;
            b.i(15, 1);
        }
    }

    public void S2(int i2, int i3) {
        byte[] bArr = this.f556b;
        if (bArr[i2] != 0) {
            return;
        }
        int[] iArr = a.f409d;
        int i4 = i2 + 1;
        iArr[2] = bArr[i4] & 255;
        int i5 = i2 + 2;
        iArr[3] = bArr[i5] & 255;
        b.i(2, bArr[i4] & 255);
        b.i(3, this.f556b[i5] & 255);
        byte[] bArr2 = this.f556b;
        iArr[19] = bArr2[i2 + 3] & 255;
        iArr[20] = bArr2[i2 + 4] & 255;
        b.i(19, bArr2[i4] & 255);
        b.i(20, this.f556b[i5] & 255);
        byte[] bArr3 = this.f556b;
        int i6 = i2 + 11;
        int i7 = (bArr3[i6] & 255) - 50;
        iArr[4] = bArr3[i6] & 255;
        b.i(4, i7);
    }

    public void T2(int i2, int i3, int i4, int i5, int i6) {
        if ((i2 == 1 || i3 == 1 || i4 == 1 || i5 == 1 || i6 == 1 || i6 == 2 || i6 == 3) && !u.S("com.syu.tire")) {
            u.f("com.syu.tire");
        }
    }

    @Override // c1.p, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        switch (i2) {
            case 2:
                x.v(bVar, i2, a.f409d[2]);
                break;
            case 3:
                x.v(bVar, i2, a.f409d[10]);
                break;
            case 4:
                x.v(bVar, i2, a.f409d[4]);
                break;
            case 5:
                for (int i4 = 1; i4 < 5; i4++) {
                    x.v(bVar, i2, i4, this.f560f[i4]);
                }
                break;
            case 6:
                for (int i5 = 1; i5 < 5; i5++) {
                    x.v(bVar, i2, i5, this.f561g[i5]);
                }
                break;
            case 7:
                for (int i6 = 1; i6 < 5; i6++) {
                    x.v(bVar, i2, i6, this.f562h[i6]);
                }
                break;
            case 8:
                for (int i7 = 1; i7 < 5; i7++) {
                    x.v(bVar, i2, i7, this.f563i[i7]);
                }
                break;
            case 9:
                for (int i8 = 1; i8 < 5; i8++) {
                    x.v(bVar, i2, i8, this.f564j[i8]);
                }
                break;
            case 10:
                for (int i9 = 1; i9 < 5; i9++) {
                    x.v(bVar, i2, i9, this.f565k[i9]);
                }
                break;
            case 11:
                for (int i10 = 1; i10 < 5; i10++) {
                    x.v(bVar, i2, i10, this.f566l[i10]);
                }
                break;
            case 12:
                for (int i11 = 1; i11 < 5; i11++) {
                    x.v(bVar, i2, i11, this.f567m[i11]);
                }
                break;
            case 13:
                for (int i12 = 1; i12 < 5; i12++) {
                    x.v(bVar, i2, i12, this.f568n[i12]);
                }
                break;
            case 15:
                x.v(bVar, i2, a.f409d[15]);
                break;
            case 18:
                x.v(bVar, i2, a.f409d[18]);
                break;
            case 19:
                x.v(bVar, i2, a.f409d[19]);
                break;
            case 20:
                x.v(bVar, i2, a.f409d[20]);
                break;
        }
    }

    @Override // c1.p, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        switch (i2) {
            case 0:
                P2(99, 0);
                break;
            case 1:
                P2(98, 0);
                break;
            case 2:
                P2(98, 1, iArr[0], iArr[1]);
                break;
            case 3:
                int[] iArr2 = a.f409d;
                P2(98, 0, iArr2[2], iArr2[3], iArr2[2], iArr2[3], 0, 0, 0, 0, 0, 0, iArr[0]);
                break;
            case 4:
                P2(102, 0);
                break;
            case 5:
                P2(102, iArr[0]);
                break;
            case 6:
                P2(102, new int[0]);
                break;
            case 7:
                if (M2(iArr, 1)) {
                    a.f411f = iArr[0];
                }
                break;
            case 8:
                P2(17, new int[0]);
                break;
            case 9:
                P2(98, 0, 32, 18, 32, 18, 0, 0, 0, 0, 0, 0, 120);
                break;
        }
    }

    @Override // o1.q
    public void b(byte[] bArr) {
        int i2;
        int i3;
        int i4;
        if (bArr == null || bArr.length <= 0) {
            a.i.a0(100L);
            return;
        }
        if (this.f557c + bArr.length > 1024) {
            this.f557c = 0;
            this.f558d = 0;
            this.f559e = 0;
        }
        System.arraycopy(bArr, 0, this.f556b, this.f557c, bArr.length);
        int length = this.f557c + bArr.length;
        this.f557c = length;
        int i5 = this.f559e;
        if (i5 != 0) {
            if (i5 >= length) {
                return;
            }
            byte b2 = this.f556b[0];
            int i6 = 1;
            while (true) {
                i4 = this.f559e;
                if (i6 >= i4) {
                    break;
                }
                b2 = (byte) (b2 + this.f556b[i6]);
                i6++;
            }
            byte[] bArr2 = this.f556b;
            if (b2 == bArr2[i4]) {
                O2(bArr2, 4, i4 - 4);
                this.f558d = this.f559e + 1;
            } else {
                this.f558d = 3;
            }
            this.f559e = 0;
        }
        int i7 = this.f557c - 3;
        while (true) {
            i2 = this.f558d;
            if (i2 >= i7) {
                break;
            }
            byte[] bArr3 = this.f556b;
            if (bArr3[i2] == -86 && bArr3[i2 + 1] == -95 && bArr3[i2 + 2] == 65) {
                int i8 = bArr3[i2 + 3] & 255;
                this.f559e = i8;
                int i9 = i8 + (i2 - 1);
                this.f559e = i9;
                if (i9 >= this.f557c) {
                    this.f559e = i9 - i2;
                    break;
                }
                byte b3 = bArr3[i2];
                while (true) {
                    i3 = this.f559e;
                    if (i2 >= i3) {
                        break;
                    }
                    b3 = (byte) (b3 + this.f556b[i2]);
                    i2++;
                }
                byte[] bArr4 = this.f556b;
                if (b3 == bArr4[i3]) {
                    int i10 = this.f558d;
                    O2(bArr4, i10 + 4, (i3 - i10) - 4);
                    this.f558d = this.f559e;
                } else {
                    this.f558d += 2;
                }
                this.f559e = 0;
            }
            this.f558d++;
        }
        if (i2 != 0) {
            int i11 = this.f557c - i2;
            this.f557c = i11;
            if (i11 != 0) {
                byte[] bArr5 = this.f556b;
                System.arraycopy(bArr5, i2, bArr5, 0, i11);
            }
            this.f558d = 0;
        }
    }
}
