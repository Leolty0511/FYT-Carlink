package l0;

import android.net.wifi.BatchedScanSettings;

/* JADX INFO: loaded from: classes2.dex */
public class d0 extends a {
    public static void g() {
        h();
        int i2 = u0.b.D;
        int i3 = 0;
        if (i2 != 1) {
            if (i2 == 4) {
                int i4 = o0.e.f16794r;
                int[] iArr = {195, 6, o0.e.C, o0.e.B, 0, 0, i4 / 60, i4 % 60};
                int[] iArr2 = new int[9];
                iArr2[0] = 227;
                while (i3 < 8) {
                    int i5 = i3 + 1;
                    iArr2[i5] = iArr[i3];
                    i3 = i5;
                }
                z.k.s(iArr2);
                return;
            }
            if (i2 != 8 && i2 != 10) {
                z.k.s(227, 194, 4, 0, 0, 0, 0);
                z.k.s(227, 195, 6, 0, 0, 0, 0, 0, 0);
                return;
            }
            int i6 = u0.b.s3;
            int i7 = u0.b.r3;
            int i8 = u0.b.t3;
            int[] iArr3 = {195, 6, i6 & 255, i6 << 8, i7 & 255, i7 << 8, (i8 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60, (i8 % BatchedScanSettings.MAX_INTERVAL_SEC) % 60};
            int[] iArr4 = new int[9];
            iArr4[0] = 227;
            while (i3 < 8) {
                int i9 = i3 + 1;
                iArr4[i9] = iArr3[i3];
                i3 = i9;
            }
            z.k.s(iArr4);
            return;
        }
        int[] iArr5 = new int[6];
        iArr5[0] = 194;
        iArr5[1] = 4;
        int i10 = w0.d.f17796h;
        if (i10 == 0) {
            iArr5[2] = 17;
        } else if (i10 != 1) {
            switch (i10) {
                case 65536:
                    iArr5[2] = 1;
                    break;
                case 65537:
                    iArr5[2] = 2;
                    break;
                case 65538:
                    iArr5[2] = 3;
                    break;
            }
        } else {
            iArr5[2] = 18;
        }
        int i11 = w0.d.f17797i;
        iArr5[3] = i11 & 255;
        iArr5[4] = (i11 >> 8) & 255;
        int i12 = w0.d.f17798j;
        if (i12 % 6 != 0 || i12 == 0) {
            iArr5[5] = i12 % 6;
        } else {
            iArr5[5] = 6;
        }
        int[] iArr6 = new int[7];
        iArr6[0] = 227;
        while (i3 < 6) {
            int i13 = i3 + 1;
            iArr6[i13] = iArr5[i3];
            i3 = i13;
        }
        z.k.s(iArr6);
    }

    public static void h() {
        int[] iArr = new int[4];
        int i2 = 0;
        iArr[0] = 192;
        iArr[1] = 2;
        switch (u0.b.D) {
            case 0:
            case 5:
                iArr[2] = 7;
                iArr[3] = 48;
                break;
            case 1:
                iArr[2] = 1;
                iArr[3] = 1;
                break;
            case 2:
            case 3:
                iArr[2] = 5;
                iArr[3] = 48;
                break;
            case 4:
                int i3 = o0.e.H;
                if (i3 == 1) {
                    iArr[2] = 2;
                    iArr[3] = 16;
                } else if (i3 == 2) {
                    iArr[2] = 9;
                    iArr[3] = 17;
                } else if (i3 == 3) {
                    iArr[2] = 8;
                    iArr[3] = 17;
                }
                break;
            case 6:
                iArr[2] = 3;
                iArr[3] = 48;
                break;
            case 7:
            case 9:
            default:
                iArr[2] = 12;
                iArr[3] = 48;
                break;
            case 8:
            case 10:
                iArr[2] = 8;
                iArr[3] = 17;
                break;
        }
        int[] iArr2 = new int[5];
        iArr2[0] = 227;
        while (i2 < 4) {
            int i4 = i2 + 1;
            iArr2[i4] = iArr[i2];
            i2 = i4;
        }
        z.k.s(iArr2);
    }

    public static void i() {
        int i2 = 0;
        int[] iArr = {196, 1, y0.f.C0};
        int[] iArr2 = new int[4];
        iArr2[0] = 227;
        while (i2 < 3) {
            int i3 = i2 + 1;
            iArr2[i3] = iArr[i2];
            i2 = i3;
        }
        z.k.s(iArr2);
    }
}
