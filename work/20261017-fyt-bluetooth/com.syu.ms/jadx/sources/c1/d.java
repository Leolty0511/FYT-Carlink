package c1;

import android.media.videoeditor.MediaArtistNativeHelper;
import android.os.RemoteException;
import o1.b0;
import o1.l0;
import o1.q;
import o1.u;
import o1.x;

/* JADX INFO: loaded from: classes2.dex */
public class d extends p implements q {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static int f415t = 5;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f430p;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f416b = new byte[1024];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f417c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f418d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f419e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int[] f420f = new int[6];

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int[] f421g = new int[6];

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int[] f422h = new int[6];

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int[] f423i = new int[6];

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int[] f424j = new int[6];

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int[] f425k = new int[6];

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int[] f426l = new int[6];

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int[] f427m = new int[6];

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final int[] f428n = new int[6];

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final int[] f429o = new int[6];

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f431q = 1;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public l0 f432r = new l0();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final Runnable f433s = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d.Q2();
            if (d.f415t == 0) {
                try {
                    d.this.Z0(6, null, null, null);
                } catch (RemoteException e2) {
                    e2.printStackTrace();
                }
                int unused = d.f415t = 5;
            }
            int i2 = !d.this.f432r.c(MediaArtistNativeHelper.AudioSamplingFrequency.FREQ_8000) ? 1 : 0;
            if (d.this.f430p != i2) {
                d.this.f430p = i2;
                b.i(18, d.this.f430p);
            }
        }
    }

    public static /* synthetic */ int Q2() {
        int i2 = f415t;
        f415t = i2 - 1;
        return i2;
    }

    @Override // c1.p
    public void L2() {
        b.c(this.f433s);
    }

    @Override // c1.p, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // c1.p
    public void N2() {
        z.a.f18165p.e(null);
        b.e(this.f433s);
    }

    @Override // c1.p, y.c
    public void P0(y.b bVar, int i2) {
    }

    public final void U2(byte[] bArr, int i2, int i3) {
        b0.g("YAT", bArr, i2, i3);
        this.f432r.a();
        byte b2 = bArr[i2];
        if (b2 != 98) {
            if (b2 == 99) {
                W2(i2, i3);
                return;
            }
            if (b2 == 102) {
                W2(i2, i3);
                return;
            }
            if (b2 != 103) {
                return;
            }
            byte b3 = bArr[i2 + 1];
            if (b3 == -86) {
                b.i(14, 1);
                return;
            } else {
                if (b3 != -1) {
                    return;
                }
                b.i(14, 0);
                return;
            }
        }
        switch (bArr[i2 + 1]) {
            case 0:
                for (int i4 = 0; i4 < (i3 - 1) / 2; i4++) {
                    int i5 = (i4 * 2) + i2;
                    int i6 = bArr[i5 + 2] & 255;
                    int i7 = bArr[i5 + 3] & 255;
                    int[] iArr = this.f420f;
                    if (iArr[i4] != i6) {
                        iArr[i4] = i6;
                        b.i(2, i4, i6);
                    }
                    int[] iArr2 = this.f421g;
                    if (iArr2[i4] != i7) {
                        iArr2[i4] = i7;
                        b.i(3, i4, i7);
                    }
                }
                int i8 = (bArr[(i2 + i3) - 1] & 255) - 50;
                c1.a.f409d[4] = i8;
                b.i(4, i8);
                break;
            case 1:
                int i9 = bArr[i2 + 2] & 255;
                int i10 = bArr[i2 + 3] & 255;
                int[] iArr3 = this.f420f;
                if (iArr3[0] != i9) {
                    iArr3[0] = i9;
                    b.i(2, 0, i9);
                }
                int[] iArr4 = this.f421g;
                if (iArr4[0] != i10) {
                    iArr4[0] = i10;
                    b.i(3, 0, i10);
                }
                break;
            case 2:
                int i11 = bArr[i2 + 2] & 255;
                int i12 = bArr[i2 + 3] & 255;
                int[] iArr5 = this.f420f;
                if (iArr5[1] != i11) {
                    iArr5[1] = i11;
                    b.i(2, 1, i11);
                }
                int[] iArr6 = this.f421g;
                if (iArr6[1] != i12) {
                    iArr6[1] = i12;
                    b.i(3, 1, i12);
                }
                break;
            case 3:
                int i13 = bArr[i2 + 2] & 255;
                int i14 = bArr[i2 + 3] & 255;
                int[] iArr7 = this.f420f;
                if (iArr7[2] != i13) {
                    iArr7[2] = i13;
                    b.i(2, 2, i13);
                }
                int[] iArr8 = this.f421g;
                if (iArr8[2] != i14) {
                    iArr8[2] = i14;
                    b.i(3, 2, i14);
                }
                break;
            case 4:
                int i15 = bArr[i2 + 2] & 255;
                int i16 = bArr[i2 + 3] & 255;
                int[] iArr9 = this.f420f;
                if (iArr9[3] != i15) {
                    iArr9[3] = i15;
                    b.i(2, 3, i15);
                }
                int[] iArr10 = this.f421g;
                if (iArr10[3] != i16) {
                    iArr10[3] = i16;
                    b.i(3, 3, i16);
                }
                break;
            case 5:
                int i17 = bArr[i2 + 2] & 255;
                int i18 = bArr[i2 + 3] & 255;
                int[] iArr11 = this.f420f;
                if (iArr11[4] != i17) {
                    iArr11[4] = i17;
                    b.i(2, 4, i17);
                }
                int[] iArr12 = this.f421g;
                if (iArr12[4] != i18) {
                    iArr12[4] = i18;
                    b.i(3, 4, i18);
                }
                break;
            case 6:
                int i19 = (bArr[i2 + 2] & 255) - 50;
                c1.a.f409d[4] = i19;
                b.i(4, i19);
                break;
        }
    }

    public final void V2(int i2, int... iArr) {
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

    public void W2(int i2, int i3) {
        int i4;
        byte[] bArr = this.f416b;
        int i5 = i2 + 1;
        byte b2 = bArr[i5];
        if (b2 != -128) {
            if (b2 == -86) {
                b.i(15, 1);
                if ((this.f416b[i2] & 255) == 102) {
                    b.i(16, 1);
                    return;
                }
                return;
            }
            if (b2 != 32 && b2 != 64 && b2 != 96) {
                if (b2 == -1) {
                    b.i(15, 0);
                    if ((this.f416b[i2] & 255) == 102) {
                        b.i(16, 0);
                        return;
                    }
                    return;
                }
                if (b2 == 0) {
                    if (i3 > 3) {
                        int i6 = bArr[i2 + 2] & 255;
                        int i7 = (bArr[i2 + 5] & 255) | ((bArr[i2 + 3] & 255) << 16) | ((bArr[i2 + 4] & 255) << 8);
                        int[] iArr = this.f422h;
                        if (iArr[i6] != i7) {
                            iArr[i6] = i7;
                            b.i(5, i6, i7);
                        }
                        byte[] bArr2 = this.f416b;
                        int i8 = (bArr2[i2 + 7] & 255) | ((bArr2[i2 + 6] & 3) << 8);
                        int[] iArr2 = this.f423i;
                        if (iArr2[i6] != i8) {
                            iArr2[i6] = i8;
                            b.i(6, i6, i8);
                        }
                        int i9 = (this.f416b[i2 + 8] & 255) - 50;
                        int[] iArr3 = this.f424j;
                        if (iArr3[i6] != i9) {
                            iArr3[i6] = i9;
                            b.i(7, i6, i9);
                        }
                        int i10 = i2 + 9;
                        int i11 = (this.f416b[i10] >> 7) & 1;
                        int[] iArr4 = this.f425k;
                        if (iArr4[i6] != i11) {
                            iArr4[i6] = i11;
                            b.i(8, i6, i11);
                        }
                        int i12 = (this.f416b[i10] >> 4) & 1;
                        int[] iArr5 = this.f426l;
                        if (iArr5[i6] != i12) {
                            iArr5[i6] = i12;
                            b.i(9, i6, i12);
                        }
                        int i13 = (this.f416b[i10] >> 3) & 1;
                        int[] iArr6 = this.f427m;
                        if (iArr6[i6] != i13) {
                            iArr6[i6] = i13;
                            b.i(10, i6, i13);
                        }
                        int i14 = (this.f416b[i10] >> 2) & 1;
                        int[] iArr7 = this.f428n;
                        if (iArr7[i6] != i14) {
                            iArr7[i6] = i14;
                            b.i(11, i6, i14);
                        }
                        int i15 = 3 & this.f416b[i10];
                        int[] iArr8 = this.f429o;
                        if (iArr8[i6] != i15) {
                            iArr8[i6] = i15;
                            b.i(13, i6, i15);
                        }
                        X2(i11, i12, i13, i14, i15);
                        return;
                    }
                    return;
                }
                if (b2 == 1 || b2 == 2 || b2 == 3 || b2 == 4) {
                    int i16 = bArr[i5] & 255;
                    int i17 = (bArr[i2 + 4] & 255) | ((bArr[i2 + 2] & 255) << 16) | ((bArr[i2 + 3] & 255) << 8);
                    int[] iArr9 = this.f422h;
                    if (iArr9[i16] != i17) {
                        iArr9[i16] = i17;
                        b.i(5, i16, i17);
                    }
                    byte[] bArr3 = this.f416b;
                    int i18 = (bArr3[i2 + 6] & 255) | ((bArr3[i2 + 5] & 3) << 8);
                    int[] iArr10 = this.f423i;
                    if (iArr10[i16] != i18) {
                        iArr10[i16] = i18;
                        b.i(6, i16, i18);
                    }
                    int i19 = (this.f416b[i2 + 7] & 255) - 50;
                    int[] iArr11 = this.f424j;
                    if (iArr11[i16] != i19) {
                        iArr11[i16] = i19;
                        b.i(7, i16, i19);
                    }
                    int i20 = i2 + 8;
                    int i21 = (this.f416b[i20] >> 7) & 1;
                    int[] iArr12 = this.f425k;
                    if (iArr12[i16] != i21) {
                        iArr12[i16] = i21;
                        b.i(8, i16, i21);
                    }
                    int i22 = (this.f416b[i20] >> 4) & 1;
                    int[] iArr13 = this.f426l;
                    if (iArr13[i16] != i22) {
                        iArr13[i16] = i22;
                        b.i(9, i16, i22);
                    }
                    int i23 = (this.f416b[i20] >> 3) & 1;
                    int[] iArr14 = this.f427m;
                    if (iArr14[i16] != i23) {
                        iArr14[i16] = i23;
                        b.i(10, i16, i23);
                    }
                    int i24 = (this.f416b[i20] >> 2) & 1;
                    int[] iArr15 = this.f428n;
                    if (iArr15[i16] != i24) {
                        iArr15[i16] = i24;
                        b.i(11, i16, i24);
                    }
                    int i25 = 3 & this.f416b[i20];
                    int[] iArr16 = this.f429o;
                    if (iArr16[i16] != i25) {
                        iArr16[i16] = i25;
                        b.i(13, i16, i25);
                    }
                    X2(i21, i22, i23, i24, i25);
                    return;
                }
                return;
            }
        }
        if (i3 > 3) {
            int i26 = bArr[i2 + 2] & 255;
            int i27 = (bArr[i2 + 5] & 255) | ((bArr[i2 + 3] & 255) << 16) | ((bArr[i2 + 4] & 255) << 8);
            int[] iArr17 = this.f422h;
            if (iArr17[i26] != i27) {
                iArr17[i26] = i27;
                b.i(5, i26, i27);
            }
            byte[] bArr4 = this.f416b;
            int i28 = (bArr4[i2 + 7] & 255) | ((bArr4[i2 + 6] & 3) << 8);
            int[] iArr18 = this.f423i;
            if (iArr18[i26] != i28) {
                iArr18[i26] = i28;
                b.i(6, i26, i28);
            }
            int i29 = (this.f416b[i2 + 8] & 255) - 50;
            int[] iArr19 = this.f424j;
            if (iArr19[i26] != i29) {
                iArr19[i26] = i29;
                b.i(7, i26, i29);
            }
            int i30 = i2 + 9;
            int i31 = (this.f416b[i30] >> 7) & 1;
            int[] iArr20 = this.f425k;
            if (iArr20[i26] != i31) {
                iArr20[i26] = i31;
                b.i(8, i26, i31);
            }
            int i32 = (this.f416b[i30] >> 4) & 1;
            int[] iArr21 = this.f426l;
            if (iArr21[i26] != i32) {
                iArr21[i26] = i32;
                b.i(9, i26, i32);
            }
            int i33 = (this.f416b[i30] >> 3) & 1;
            int[] iArr22 = this.f427m;
            if (iArr22[i26] != i33) {
                iArr22[i26] = i33;
                b.i(10, i26, i33);
            }
            int i34 = (this.f416b[i30] >> 2) & 1;
            int[] iArr23 = this.f428n;
            if (iArr23[i26] != i34) {
                iArr23[i26] = i34;
                b.i(11, i26, i34);
            }
            int i35 = this.f416b[i30] & 3;
            int[] iArr24 = this.f429o;
            if (iArr24[i26] != i35) {
                iArr24[i26] = i35;
                i4 = 13;
                b.i(13, i26, i35);
            } else {
                i4 = 13;
            }
            b.i(i4, i26, i35);
        }
    }

    public void X2(int i2, int i3, int i4, int i5, int i6) {
        if (this.f430p == 1 && c1.a.f411f == 1) {
            if ((i2 == 1 || i3 == 1 || i4 == 1 || i5 == 1 || i6 == 1 || i6 == 2) && !u.S("com.syu.tire")) {
                u.f("com.syu.tire");
            }
        }
    }

    @Override // c1.p, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 == 13) {
            for (int i4 = 0; i4 < 6; i4++) {
                x.v(bVar, i2, i4, this.f429o[i4]);
            }
            return;
        }
        if (i2 == 18) {
            x.v(bVar, i2, this.f430p);
            return;
        }
        switch (i2) {
            case 2:
                for (int i5 = 0; i5 < 6; i5++) {
                    x.v(bVar, i2, i5, this.f420f[i5]);
                }
                break;
            case 3:
                for (int i6 = 0; i6 < 6; i6++) {
                    x.v(bVar, i2, i6, this.f421g[i6]);
                }
                break;
            case 4:
                x.v(bVar, i2, c1.a.f409d[i2]);
                break;
            case 5:
                for (int i7 = 0; i7 < 6; i7++) {
                    x.v(bVar, i2, i7, this.f422h[i7]);
                }
                break;
            case 6:
                for (int i8 = 0; i8 < 6; i8++) {
                    x.v(bVar, i2, i8, this.f423i[i8]);
                }
                break;
            case 7:
                for (int i9 = 0; i9 < 6; i9++) {
                    x.v(bVar, i2, i9, this.f424j[i9]);
                }
                break;
            case 8:
                for (int i10 = 0; i10 < 6; i10++) {
                    x.v(bVar, i2, i10, this.f425k[i10]);
                }
                break;
            case 9:
                for (int i11 = 0; i11 < 6; i11++) {
                    x.v(bVar, i2, i11, this.f426l[i11]);
                }
                break;
            case 10:
                for (int i12 = 0; i12 < 6; i12++) {
                    x.v(bVar, i2, i12, this.f427m[i12]);
                }
                break;
            case 11:
                for (int i13 = 0; i13 < 6; i13++) {
                    x.v(bVar, i2, i13, this.f428n[i13]);
                }
                break;
        }
    }

    @Override // c1.p, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        switch (i2) {
            case 1:
                V2(98, 0);
                break;
            case 2:
                if (M2(iArr, 1)) {
                    V2(98, iArr[0]);
                }
                break;
            case 3:
                if (M2(iArr, 10)) {
                    iArr[11] = iArr[11] + 50;
                    V2(98, iArr);
                }
                break;
            case 4:
                if (M2(iArr, 3)) {
                    V2(98, iArr[0], iArr[1], iArr[2]);
                }
                break;
            case 5:
                if (M2(iArr, 1)) {
                    V2(98, 6, iArr[0] + 50);
                }
                break;
            case 6:
                if (this.f431q == 1) {
                    V2(99, 0);
                }
                break;
            case 7:
                if (M2(iArr, 1)) {
                    V2(99, iArr[0]);
                }
                break;
            case 8:
                if (M2(iArr, 2)) {
                    V2(99, iArr[0] + iArr[1]);
                }
                break;
            case 9:
                V2(101, 0);
                break;
            case 10:
                if (M2(iArr, 1)) {
                    V2(101, iArr[0]);
                }
                break;
            case 11:
                if (M2(iArr, 2)) {
                    V2(101, iArr[0] + iArr[1]);
                }
                break;
            case 12:
                V2(102, 0);
                break;
            case 13:
                if (M2(iArr, 1)) {
                    V2(102, iArr[0]);
                }
                break;
            case 14:
                if (M2(iArr, 2)) {
                    V2(102, (iArr[1] & 31) | ((iArr[0] << 5) & 224));
                }
                break;
            case 15:
                if (M2(iArr, 2)) {
                    V2(102, (iArr[1] & 31) | ((iArr[0] << 5) & 224));
                }
                break;
            case 16:
                V2(99, iArr);
                break;
            case 18:
                if (M2(iArr, 1) && this.f431q != iArr[0]) {
                    this.f431q = iArr[0];
                    break;
                }
                break;
            case 19:
                if (M2(iArr, 1)) {
                    c1.a.f411f = iArr[0];
                }
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
        if (this.f417c + bArr.length > 1024) {
            this.f417c = 0;
            this.f418d = 0;
            this.f419e = 0;
        }
        System.arraycopy(bArr, 0, this.f416b, this.f417c, bArr.length);
        int length = this.f417c + bArr.length;
        this.f417c = length;
        int i5 = this.f419e;
        if (i5 != 0) {
            if (i5 >= length) {
                return;
            }
            byte b2 = this.f416b[0];
            int i6 = 1;
            while (true) {
                i4 = this.f419e;
                if (i6 >= i4) {
                    break;
                }
                b2 = (byte) (b2 + this.f416b[i6]);
                i6++;
            }
            byte[] bArr2 = this.f416b;
            if (b2 == bArr2[i4]) {
                U2(bArr2, 4, i4 - 4);
                this.f418d = this.f419e + 1;
            } else {
                this.f418d = 3;
            }
            this.f419e = 0;
        }
        int i7 = this.f417c - 3;
        while (true) {
            i2 = this.f418d;
            if (i2 >= i7) {
                break;
            }
            byte[] bArr3 = this.f416b;
            if (bArr3[i2] == -86 && bArr3[i2 + 1] == -95 && bArr3[i2 + 2] == 65) {
                int i8 = bArr3[i2 + 3] & 255;
                this.f419e = i8;
                if (i8 < 6) {
                    this.f419e = 0;
                } else {
                    int i9 = i8 + (i2 - 1);
                    this.f419e = i9;
                    if (i9 >= this.f417c) {
                        this.f419e = i9 - i2;
                        break;
                    }
                    byte b3 = bArr3[i2];
                    while (true) {
                        i2++;
                        i3 = this.f419e;
                        if (i2 >= i3) {
                            break;
                        } else {
                            b3 = (byte) (b3 + this.f416b[i2]);
                        }
                    }
                    byte[] bArr4 = this.f416b;
                    if (b3 == bArr4[i3]) {
                        int i10 = this.f418d;
                        U2(bArr4, i10 + 4, (i3 - i10) - 4);
                        this.f418d = this.f419e;
                    } else {
                        this.f418d += 2;
                    }
                    this.f419e = 0;
                }
            }
            this.f418d++;
        }
        if (i2 != 0) {
            int i11 = this.f417c - i2;
            this.f417c = i11;
            if (i11 != 0) {
                byte[] bArr5 = this.f416b;
                System.arraycopy(bArr5, i2, bArr5, 0, i11);
            }
            this.f418d = 0;
        }
    }
}
