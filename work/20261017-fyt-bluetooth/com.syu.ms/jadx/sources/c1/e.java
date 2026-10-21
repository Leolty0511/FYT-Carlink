package c1;

import android.media.videoeditor.MediaArtistNativeHelper;
import android.util.Log;
import o1.l0;
import o1.q;
import o1.x;

/* JADX INFO: loaded from: classes2.dex */
public class e extends p implements q {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f446m;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f435b = new byte[1024];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f436c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f437d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f438e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f439f = 19;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int[] f440g = new int[19];

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int[] f441h = new int[19];

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int[] f442i = new int[19];

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int[] f443j = new int[19];

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int[] f444k = new int[19];

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int[] f445l = new int[19];

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public l0 f447n = new l0();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final Runnable f448o = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = !e.this.f447n.c(MediaArtistNativeHelper.AudioSamplingFrequency.FREQ_8000) ? 1 : 0;
            if (e.this.f446m != i2) {
                e.this.f446m = i2;
                b.i(18, e.this.f446m);
            }
        }
    }

    @Override // c1.p
    public void L2() {
        b.c(this.f448o);
    }

    @Override // c1.p, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // c1.p
    public void N2() {
        z.a.f18165p.e(null);
        b.e(this.f448o);
    }

    public final void R2(byte[] bArr, int i2, int i3) {
        this.f447n.a();
        int i4 = 16;
        switch (bArr[i2]) {
            case 6:
                byte b2 = bArr[i2 + 1];
                byte b3 = bArr[i2 + 2];
                int i5 = b2 & 255;
                if (i5 == 22 && (b3 & 255) == 0) {
                    b.i(8, 22, 0);
                    b.i(8, 22, 1);
                    b.i(8, 22, 16);
                    b.i(8, 22, 17);
                } else {
                    b.i(8, i5, b3 & 255);
                }
                break;
            case 7:
                byte b4 = bArr[i2 + 1];
                byte b5 = bArr[i2 + 2];
                byte b6 = bArr[i2 + 3];
                if ((b4 & 255) == 48) {
                    b.i(6, b5 & 255, b6 & 255);
                }
                break;
            case 8:
                byte b7 = bArr[i2 + 1];
                if (b7 == 0) {
                    i4 = 0;
                } else if (b7 == 1) {
                    i4 = 1;
                } else if (b7 != 16) {
                    i4 = b7 != 17 ? 65535 : 17;
                }
                if (i4 < 19) {
                    int i6 = bArr[i2 + 2] & 255;
                    int i7 = (bArr[i2 + 3] & 255) - 50;
                    byte b8 = bArr[i2 + 4];
                    int i8 = (b8 >> 3) & 1;
                    int i9 = (b8 >> 4) & 1;
                    int i10 = (b8 >> 5) & 1;
                    Log.d("TPMS", String.format("%d PRESSURE %.2f KPA, TEMP %d C, BLOWBY %d, VOLTAGE %d, SIGNAL %d", Integer.valueOf(i4), Float.valueOf(i6 / 100.0f), Integer.valueOf(i7), Integer.valueOf(i8), Integer.valueOf(i9), Integer.valueOf(i10)));
                    int[] iArr = this.f440g;
                    if (iArr[i4] != i6) {
                        iArr[i4] = i6;
                        b.i(0, i4, i6);
                    }
                    int[] iArr2 = this.f441h;
                    if (iArr2[i4] != i7) {
                        iArr2[i4] = i7;
                        b.i(1, i4, i7);
                    }
                    int[] iArr3 = this.f442i;
                    if (iArr3[i4] != i8) {
                        iArr3[i4] = i8;
                        b.i(2, i4, i8);
                    }
                    int[] iArr4 = this.f443j;
                    if (iArr4[i4] != i9) {
                        iArr4[i4] = i9;
                        b.i(3, i4, i9);
                    }
                    int[] iArr5 = this.f444k;
                    if (iArr5[i4] != i10) {
                        iArr5[i4] = i10;
                        b.i(4, i4, i10);
                    }
                }
                break;
            case 9:
                byte b9 = bArr[i2 + 1];
                byte b10 = bArr[i2 + 2];
                byte b11 = bArr[i2 + 3];
                byte b12 = bArr[i2 + 4];
                byte b13 = bArr[i2 + 5];
                int i11 = b9 & 255;
                int[] iArr6 = this.f445l;
                iArr6[i11] = (b13 & 255) | ((b10 & 255) << 24) | ((b11 & 255) << 16) | ((b12 & 255) << 8);
                b.i(7, i11, iArr6[i11]);
                break;
        }
    }

    public final void S2(int i2, int... iArr) {
        int length = iArr.length + 4 + 1;
        byte[] bArr = new byte[length];
        bArr[0] = 85;
        bArr[1] = -86;
        bArr[2] = (byte) (length & 255);
        bArr[3] = (byte) (i2 & 255);
        for (int i3 = 0; i3 < iArr.length; i3++) {
            bArr[4 + i3] = (byte) iArr[i3];
        }
        int i4 = length - 1;
        bArr[i4] = bArr[0];
        for (int i5 = 1; i5 < i4; i5++) {
            bArr[i4] = (byte) (bArr[i4] ^ bArr[i5]);
        }
        z.a.f18155f.i(bArr);
    }

    @Override // c1.p, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 == 0) {
            for (int i4 = 0; i4 < 19; i4++) {
                x.v(bVar, i2, i4, this.f440g[i4]);
            }
            return;
        }
        if (i2 == 1) {
            for (int i5 = 0; i5 < 19; i5++) {
                x.v(bVar, i2, i5, this.f441h[i5]);
            }
            return;
        }
        if (i2 == 2) {
            for (int i6 = 0; i6 < 19; i6++) {
                x.v(bVar, i2, i6, this.f442i[i6]);
            }
            return;
        }
        if (i2 == 3) {
            for (int i7 = 0; i7 < 19; i7++) {
                x.v(bVar, i2, i7, this.f443j[i7]);
            }
            return;
        }
        if (i2 != 4) {
            if (i2 != 18) {
                return;
            }
            x.v(bVar, i2, this.f446m);
        } else {
            for (int i8 = 0; i8 < 19; i8++) {
                x.v(bVar, i2, i8, this.f444k[i8]);
            }
        }
    }

    @Override // c1.p, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        switch (i2) {
            case 0:
                if (M2(iArr, 1)) {
                    S2(1, iArr[0]);
                }
                break;
            case 1:
                if (M2(iArr, 1)) {
                    S2(2, iArr[0]);
                }
                break;
            case 2:
                S2(3, 0);
                break;
            case 3:
                S2(6, 0);
                break;
            case 4:
                if (M2(iArr, 2)) {
                    S2(iArr[0], iArr[1]);
                }
                break;
            case 5:
                S2(7, 0);
                break;
            case 6:
                if (M2(iArr, 2)) {
                    S2(3, iArr[0], iArr[1]);
                }
                break;
            case 7:
                S2(2, 1);
                break;
        }
    }

    @Override // o1.q
    public void b(byte[] bArr) {
        int i2;
        int i3;
        int i4;
        if (bArr == null || bArr.length <= 0) {
            try {
                Thread.sleep(100L);
                return;
            } catch (InterruptedException e2) {
                e2.printStackTrace();
                return;
            }
        }
        if (this.f436c + bArr.length > 1024) {
            this.f436c = 0;
            this.f437d = 0;
            this.f438e = 0;
        }
        System.arraycopy(bArr, 0, this.f435b, this.f436c, bArr.length);
        int length = this.f436c + bArr.length;
        this.f436c = length;
        int i5 = this.f438e;
        if (i5 != 0) {
            if (i5 >= length) {
                return;
            }
            byte b2 = this.f435b[0];
            int i6 = 1;
            while (true) {
                i4 = this.f438e;
                if (i6 >= i4) {
                    break;
                }
                b2 = (byte) (b2 ^ this.f435b[i6]);
                i6++;
            }
            byte[] bArr2 = this.f435b;
            if (b2 == bArr2[i4]) {
                R2(bArr2, 2, i4 - 2);
                this.f437d = this.f438e + 1;
            } else {
                this.f437d = 1;
            }
            this.f438e = 0;
        }
        int i7 = this.f436c - 2;
        while (true) {
            i2 = this.f437d;
            if (i2 >= i7) {
                break;
            }
            byte[] bArr3 = this.f435b;
            if (bArr3[i2] == 85 && bArr3[i2 + 1] == -86) {
                int i8 = bArr3[i2 + 2] & 255;
                this.f438e = i8;
                if (i8 < 4) {
                    this.f438e = 0;
                } else {
                    int i9 = i8 + (i2 - 1);
                    this.f438e = i9;
                    if (i9 >= this.f436c) {
                        this.f438e = i9 - i2;
                        break;
                    }
                    byte b3 = bArr3[i2];
                    while (true) {
                        i2++;
                        i3 = this.f438e;
                        if (i2 >= i3) {
                            break;
                        } else {
                            b3 = (byte) (b3 ^ this.f435b[i2]);
                        }
                    }
                    byte[] bArr4 = this.f435b;
                    if (b3 == bArr4[i3]) {
                        int i10 = this.f437d;
                        R2(bArr4, i10 + 2, (i3 - i10) - 2);
                        this.f437d = this.f438e;
                    } else {
                        this.f437d++;
                    }
                    this.f438e = 0;
                }
            }
            this.f437d++;
        }
        if (i2 != 0) {
            int i11 = this.f436c - i2;
            this.f436c = i11;
            if (i11 != 0) {
                byte[] bArr5 = this.f435b;
                System.arraycopy(bArr5, i2, bArr5, 0, i11);
            }
            this.f437d = 0;
        }
    }
}
