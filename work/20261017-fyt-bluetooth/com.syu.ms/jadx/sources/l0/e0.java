package l0;

import android.net.wifi.BatchedScanSettings;
import k0.nt;

/* JADX INFO: loaded from: classes2.dex */
public class e0 {
    public static void a() {
        f();
    }

    public static void b() {
        g();
    }

    public static void c() {
        h();
    }

    public static void d() {
        i();
    }

    public static void e(int i2) {
        z.k.s(227, 129, 1, i2);
    }

    /* JADX WARN: Code duplicated, block: B:48:0x017d  */
    /* JADX WARN: Code duplicated, block: B:49:0x0182  */
    public static void f() {
        int[] iArr = new int[14];
        iArr[0] = 15;
        iArr[1] = 7;
        switch (u0.b.D) {
            case 1:
                int i2 = w0.d.f17798j;
                int i3 = w0.d.f17796h;
                if (i3 < 65536 || i3 > 65538) {
                    iArr[2] = 65;
                    iArr[3] = 77;
                    iArr[9] = 32;
                    int i4 = w0.d.f17797i;
                    if (i4 >= 1000) {
                        iArr[10] = ((i4 % 10000) / 1000) + 48;
                    } else {
                        iArr[10] = 32;
                    }
                    iArr[11] = ((i4 % 1000) / 100) + 48;
                    iArr[12] = ((i4 % 100) / 10) + 48;
                    iArr[13] = (i4 % 10) + 48;
                } else {
                    iArr[2] = 70;
                    iArr[3] = 77;
                    if (i2 >= 65536) {
                        i2 -= 65536;
                    }
                    int i5 = w0.d.f17797i;
                    if (i5 >= 10000) {
                        iArr[9] = (i5 / 10000) + 48;
                    } else {
                        iArr[9] = 32;
                    }
                    iArr[10] = ((i5 % 10000) / 1000) + 48;
                    iArr[11] = ((i5 % 1000) / 100) + 48;
                    iArr[12] = ((i5 % 100) / 10) + 48;
                    iArr[13] = (i5 % 10) + 48;
                }
                int i6 = w0.d.f17796h;
                if (i6 == 0) {
                    iArr[4] = 49;
                } else if (i6 != 1) {
                    switch (i6) {
                        case 65536:
                            iArr[4] = 49;
                            break;
                        case 65537:
                            iArr[4] = 50;
                            break;
                        case 65538:
                            iArr[4] = 51;
                            break;
                    }
                } else {
                    iArr[4] = 50;
                }
                iArr[5] = 99;
                iArr[6] = 104;
                int i7 = i2 + 1;
                if (i7 < 10) {
                    iArr[7] = (i7 % 10) + 48;
                    iArr[8] = 32;
                } else {
                    iArr[7] = ((i7 % 100) / 10) + 48;
                    iArr[8] = (i7 % 10) + 48;
                }
                break;
            case 2:
                iArr[2] = 80;
                iArr[3] = 72;
                iArr[4] = 79;
                iArr[5] = 78;
                iArr[6] = 69;
                break;
            case 3:
                iArr[2] = 77;
                iArr[3] = 85;
                iArr[4] = 83;
                iArr[5] = 73;
                iArr[6] = 67;
                break;
            case 4:
                int i8 = o0.e.H;
                if (i8 == 1) {
                    iArr[2] = 68;
                    iArr[3] = 86;
                    iArr[4] = 68;
                } else if (i8 == 2) {
                    iArr[2] = 83;
                    iArr[3] = 68;
                    iArr[4] = 32;
                } else if (i8 == 3) {
                    iArr[2] = 85;
                    iArr[3] = 83;
                    iArr[4] = 66;
                }
                int i9 = o0.e.B;
                if (i9 >= 100) {
                    iArr[6] = ((i9 % 1000) / 100) + 48;
                    iArr[7] = ((i9 % 100) / 10) + 48;
                } else if (i9 < 10 || i9 >= 100) {
                    iArr[6] = 32;
                    iArr[7] = 32;
                } else {
                    iArr[6] = 32;
                    iArr[7] = ((i9 % 100) / 10) + 48;
                }
                iArr[8] = (i9 % 10) + 48;
                iArr[9] = 32;
                int i10 = o0.e.f16794r;
                iArr[10] = ((((i10 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60) % 100) / 10) + 48;
                iArr[11] = (((i10 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60) % 10) + 48;
                iArr[12] = ((((i10 % BatchedScanSettings.MAX_INTERVAL_SEC) % 60) % 100) / 10) + 48;
                iArr[13] = (((i10 % BatchedScanSettings.MAX_INTERVAL_SEC) % 60) % 10) + 48;
                break;
            case 5:
                iArr[2] = 65;
                iArr[3] = 85;
                iArr[4] = 88;
                break;
            case 6:
                iArr[2] = 84;
                iArr[3] = 86;
                break;
            case 7:
                iArr[2] = 73;
                iArr[3] = 80;
                iArr[4] = 79;
                iArr[5] = 68;
                break;
        }
        int[] iArr2 = new int[15];
        int i11 = 0;
        iArr2[0] = 227;
        while (i11 < 14) {
            int i12 = i11 + 1;
            iArr2[i12] = iArr[i11];
            i11 = i12;
        }
        z.k.s(iArr2);
    }

    /* JADX WARN: Code duplicated, block: B:50:0x0192  */
    /* JADX WARN: Code duplicated, block: B:51:0x0197  */
    public static void g() {
        int[] iArr = new int[14];
        iArr[0] = 15;
        iArr[1] = 7;
        for (int i2 = 2; i2 < 14; i2++) {
            iArr[i2] = 32;
        }
        switch (u0.b.D) {
            case 1:
                int i3 = w0.d.f17796h;
                if (i3 < 65536 || i3 > 65538) {
                    iArr[2] = 65;
                    iArr[3] = 77;
                    iArr[9] = 32;
                    int i4 = w0.d.f17797i;
                    iArr[6] = (i4 % 10000) / 1000 == 0 ? ((i4 % 10000) / 1000) + 32 : ((i4 % 10000) / 1000) + 48;
                    iArr[7] = ((i4 % 1000) / 100) + 48;
                    iArr[8] = ((i4 % 100) / 10) + 48;
                    iArr[9] = (i4 % 10) + 48;
                } else {
                    iArr[2] = 70;
                    iArr[3] = 77;
                    int i5 = w0.d.f17797i;
                    iArr[6] = i5 / 10000 == 0 ? (i5 / 10000) + 32 : (i5 / 10000) + 48;
                    iArr[7] = ((i5 % 10000) / 1000) + 48;
                    iArr[8] = ((i5 % 1000) / 100) + 48;
                    iArr[9] = 46;
                    iArr[10] = ((i5 % 100) / 10) + 48;
                    iArr[11] = (i5 % 10) + 48;
                }
                int i6 = w0.d.f17796h;
                if (i6 == 0) {
                    iArr[4] = 49;
                    break;
                } else if (i6 != 1) {
                    switch (i6) {
                        case 65536:
                            iArr[4] = 49;
                            break;
                        case 65537:
                            iArr[4] = 50;
                            break;
                        case 65538:
                            iArr[4] = 51;
                            break;
                    }
                } else {
                    iArr[4] = 50;
                    break;
                }
                break;
            case 2:
                iArr[2] = 80;
                iArr[3] = 72;
                iArr[4] = 79;
                iArr[5] = 78;
                iArr[6] = 69;
                break;
            case 3:
            case 8:
            case 10:
                iArr[2] = 77;
                iArr[3] = 85;
                iArr[4] = 83;
                iArr[5] = 73;
                iArr[6] = 67;
                break;
            case 4:
                int i7 = o0.e.H;
                if (i7 == 1) {
                    iArr[2] = 68;
                    iArr[3] = 86;
                    iArr[4] = 68;
                } else if (i7 == 2) {
                    iArr[2] = 83;
                    iArr[3] = 68;
                    iArr[4] = 32;
                } else if (i7 == 3) {
                    iArr[2] = 85;
                    iArr[3] = 83;
                    iArr[4] = 66;
                }
                int i8 = o0.e.B;
                if (i8 >= 100) {
                    iArr[6] = ((i8 % 1000) / 100) + 48;
                    iArr[7] = ((i8 % 100) / 10) + 48;
                } else if (i8 < 10 || i8 >= 100) {
                    iArr[6] = 32;
                    iArr[7] = 32;
                } else {
                    iArr[6] = 32;
                    iArr[7] = ((i8 % 100) / 10) + 48;
                }
                iArr[8] = (i8 % 10) + 48;
                iArr[9] = 32;
                int i9 = o0.e.f16794r;
                iArr[10] = ((((i9 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60) % 100) / 10) + 48;
                iArr[11] = (((i9 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60) % 10) + 48;
                break;
            case 5:
                iArr[2] = 65;
                iArr[3] = 85;
                iArr[4] = 88;
                break;
            case 6:
                iArr[2] = 84;
                iArr[3] = 86;
                break;
            case 7:
                iArr[2] = 73;
                iArr[3] = 80;
                iArr[4] = 79;
                iArr[5] = 68;
                break;
            case 9:
                iArr[2] = 86;
                iArr[3] = 73;
                iArr[4] = 68;
                iArr[5] = 69;
                iArr[6] = 79;
                break;
            default:
                iArr[2] = 87;
                iArr[3] = 69;
                iArr[4] = 76;
                iArr[5] = 67;
                iArr[6] = 79;
                iArr[7] = 77;
                iArr[8] = 69;
                break;
        }
        int[] iArr2 = new int[15];
        int i10 = 0;
        iArr2[0] = 227;
        while (i10 < 14) {
            int i11 = i10 + 1;
            iArr2[i11] = iArr[i10];
            i10 = i11;
        }
        z.k.s(iArr2);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:3:0x001f. Please report as an issue. */
    public static void h() {
        boolean z2;
        boolean z3;
        int[] iArr = new int[14];
        iArr[1] = 9;
        int i2 = u0.b.D;
        int i3 = 0;
        switch (i2) {
            case 1:
                iArr[0] = 8;
                int i4 = w0.d.f17796h;
                if (i4 < 65536 || i4 > 65538) {
                    iArr[2] = 9;
                } else {
                    iArr[2] = 2;
                }
                if (i4 == 0) {
                    iArr[3] = 4;
                } else if (i4 != 1) {
                    switch (i4) {
                        case 65536:
                            iArr[3] = 0;
                            break;
                        case 65537:
                            iArr[3] = 1;
                            break;
                        case 65538:
                            iArr[3] = 2;
                            break;
                    }
                } else {
                    iArr[3] = 3;
                }
                int i5 = w0.d.f17797i;
                iArr[4] = i5 / 100;
                iArr[5] = i5 % 100;
                int[] iArr2 = new int[7];
                iArr2[0] = 227;
                int i6 = 0;
                while (i6 < 6) {
                    int i7 = i6 + 1;
                    iArr2[i7] = iArr[i6];
                    i6 = i7;
                }
                z.k.s(iArr2);
                z3 = false;
                break;
            case 2:
            case 3:
                iArr[2] = 11;
                z2 = true;
                z3 = z2;
                break;
            case 4:
                iArr[0] = 10;
                int i8 = o0.e.H;
                if (i8 == 1) {
                    iArr[2] = 1;
                } else if (i8 == 2) {
                    iArr[2] = 12;
                } else if (i8 == 3) {
                    iArr[2] = 13;
                }
                int i9 = nt.f8633a;
                if (i9 == 393 || i9 == 131209) {
                    int i10 = o0.e.B;
                    iArr[3] = (i10 >> 8) & 255;
                    iArr[4] = i10 & 255;
                } else {
                    iArr[3] = o0.e.C;
                    iArr[4] = o0.e.B;
                }
                int i11 = o0.e.f16794r;
                iArr[5] = i11 / BatchedScanSettings.MAX_INTERVAL_SEC;
                iArr[6] = (i11 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60;
                iArr[7] = (i11 % BatchedScanSettings.MAX_INTERVAL_SEC) % 60;
                int[] iArr3 = new int[9];
                iArr3[0] = 227;
                int i12 = 0;
                while (i12 < 8) {
                    int i13 = i12 + 1;
                    iArr3[i13] = iArr[i12];
                    i12 = i13;
                }
                z.k.s(iArr3);
                z3 = false;
                break;
            case 5:
                iArr[2] = 3;
                z2 = true;
                z3 = z2;
                break;
            case 6:
                iArr[2] = 5;
                z2 = true;
                z3 = z2;
                break;
            case 7:
                iArr[2] = 8;
                z2 = true;
                z3 = z2;
                break;
            case 8:
            case 9:
            case 10:
                iArr[0] = 10;
                if (i2 == 10) {
                    iArr[2] = 129;
                } else if (i2 == 9) {
                    iArr[2] = 21;
                } else {
                    iArr[2] = 22;
                }
                int i14 = nt.f8633a;
                if (i14 == 393 || i14 == 131209) {
                    int i15 = u0.b.r3;
                    iArr[3] = i15 >> 8;
                    iArr[4] = i15 & 255;
                } else {
                    iArr[3] = u0.b.s3;
                    iArr[4] = u0.b.r3;
                }
                int i16 = u0.b.t3;
                iArr[5] = i16 / BatchedScanSettings.MAX_INTERVAL_SEC;
                iArr[6] = (i16 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60;
                iArr[7] = (i16 % BatchedScanSettings.MAX_INTERVAL_SEC) % 60;
                int[] iArr4 = new int[9];
                iArr4[0] = 227;
                int i17 = 0;
                while (i17 < 8) {
                    int i18 = i17 + 1;
                    iArr4[i18] = iArr[i17];
                    i17 = i18;
                }
                z.k.s(iArr4);
                z3 = false;
                break;
            default:
                z2 = true;
                iArr[2] = 129;
                z3 = z2;
                break;
        }
        if (z3) {
            iArr[0] = 6;
            int[] iArr5 = new int[5];
            iArr5[0] = 227;
            while (i3 < 4) {
                int i19 = i3 + 1;
                iArr5[i19] = iArr[i3];
                i3 = i19;
            }
            z.k.s(iArr5);
        }
    }

    public static void i() {
        int[] iArr = new int[7];
        int i2 = 0;
        iArr[0] = 8;
        iArr[1] = 9;
        int i3 = u0.b.D;
        if (i3 == 1) {
            int i4 = w0.d.f17796h;
            if (i4 < 65536 || i4 > 65538) {
                iArr[2] = 9;
            } else {
                iArr[2] = 2;
            }
            if (i4 == 0) {
                iArr[3] = 4;
            } else if (i4 != 1) {
                switch (i4) {
                    case 65536:
                        iArr[3] = 0;
                        break;
                    case 65537:
                        iArr[3] = 1;
                        break;
                    case 65538:
                        iArr[3] = 2;
                        break;
                }
            } else {
                iArr[3] = 3;
            }
            int i5 = w0.d.f17797i;
            iArr[4] = i5 / 100;
            iArr[5] = i5 % 100;
        } else if (i3 == 4) {
            int i6 = o0.e.H;
            if (i6 == 1) {
                iArr[2] = 1;
            } else if (i6 == 2) {
                iArr[2] = 12;
            } else if (i6 == 3) {
                iArr[2] = 13;
            }
            iArr[3] = o0.e.C;
            iArr[4] = o0.e.B;
            int i7 = o0.e.f16794r;
            iArr[5] = (i7 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60;
            iArr[6] = (i7 % BatchedScanSettings.MAX_INTERVAL_SEC) % 60;
        } else if (i3 == 8 || i3 == 10) {
            iArr[2] = 13;
            iArr[3] = u0.b.s3;
            iArr[4] = u0.b.r3;
            int i8 = u0.b.t3;
            iArr[5] = (i8 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60;
            iArr[6] = (i8 % BatchedScanSettings.MAX_INTERVAL_SEC) % 60;
        } else {
            iArr[2] = 16;
        }
        if (u0.b.f17306a0 == 0) {
            iArr[2] = 128;
        }
        int[] iArr2 = new int[8];
        iArr2[0] = 227;
        while (i2 < 7) {
            int i9 = i2 + 1;
            iArr2[i9] = iArr[i2];
            i2 = i9;
        }
        z.k.s(iArr2);
    }

    public static void j() {
        int[] iArr = new int[14];
        int i2 = 0;
        iArr[0] = 15;
        iArr[1] = 7;
        iArr[2] = 32;
        iArr[3] = 86;
        iArr[4] = 79;
        iArr[5] = 76;
        iArr[6] = 85;
        iArr[7] = 77;
        iArr[8] = 69;
        iArr[9] = 32;
        if (y0.f.f18055i == 1 || y0.f.C0 == 0) {
            iArr[10] = 32;
            iArr[11] = 48;
        } else {
            int i3 = y0.f.f18037c;
            iArr[10] = ((i3 % 100) / 10) + 48;
            iArr[11] = (i3 % 10) + 48;
        }
        int[] iArr2 = new int[15];
        iArr2[0] = 227;
        while (i2 < 14) {
            int i4 = i2 + 1;
            iArr2[i4] = iArr[i2];
            i2 = i4;
        }
        z.k.s(iArr2);
    }

    public static void k() {
        int i2;
        int[] iArr = new int[3];
        int i3 = 0;
        iArr[0] = 5;
        iArr[1] = 5;
        if (y0.f.f18055i == 1 || (i2 = y0.f.C0) == 0) {
            iArr[2] = 48;
        } else {
            iArr[2] = i2;
        }
        int[] iArr2 = new int[4];
        iArr2[0] = 227;
        while (i3 < 3) {
            int i4 = i3 + 1;
            iArr2[i4] = iArr[i3];
            i3 = i4;
        }
        z.k.s(iArr2);
    }

    public static void l() {
        int i2;
        int[] iArr = new int[4];
        int i3 = 0;
        iArr[0] = 5;
        iArr[1] = 9;
        iArr[2] = 15;
        if (y0.f.f18055i == 1 || (i2 = y0.f.C0) == 0) {
            iArr[3] = 0;
        } else {
            iArr[3] = i2;
        }
        int[] iArr2 = new int[5];
        iArr2[0] = 227;
        while (i3 < 4) {
            int i4 = i3 + 1;
            iArr2[i4] = iArr[i3];
            i3 = i4;
        }
        z.k.s(iArr2);
    }

    public static int m(int i2) {
        return i2 * 2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0026, code lost:
    
        if (r8 != 4) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0034, code lost:
    
        if (r8 != 3) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:?, code lost:
    
        return 0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int n(int r8, int r9) {
        /*
            r0 = 2
            r1 = 1
            r2 = 3
            if (r9 != r1) goto L8
            if (r8 != r0) goto L8
            r8 = r2
        L8:
            int r9 = n0.j4.f16464b
            r3 = 31
            r4 = 0
            r5 = 4
            r6 = 6
            r7 = 15
            if (r9 == r3) goto L2e
            if (r9 == r6) goto L2e
            r3 = 11
            if (r9 == r3) goto L2e
            r3 = 28
            if (r9 != r3) goto L1e
            goto L2e
        L1e:
            if (r8 == 0) goto L3e
            if (r8 == r1) goto L2b
            if (r8 == r0) goto L29
            if (r8 == r2) goto L3f
            if (r8 == r5) goto L37
            goto L3e
        L29:
            r2 = r6
            goto L3f
        L2b:
            r2 = 9
            goto L3f
        L2e:
            if (r8 == 0) goto L3e
            if (r8 == r1) goto L3b
            if (r8 == r0) goto L39
            if (r8 == r2) goto L37
            goto L3e
        L37:
            r2 = r4
            goto L3f
        L39:
            r2 = r5
            goto L3f
        L3b:
            r2 = 8
            goto L3f
        L3e:
            r2 = r7
        L3f:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: l0.e0.n(int, int):int");
    }

    public static int o(int i2, int i3, int i4) {
        if (i3 == 1) {
            int i5 = i2 / 25;
            if (i5 >= 10) {
                return 15;
            }
            return i5;
        }
        if (i3 == 0) {
            if (i4 <= 10 && i4 > 0) {
                return i2 * (10 / i4);
            }
            int i6 = i4 / 10;
            if (i6 != 0) {
                return i2 / i6;
            }
        }
        return 0;
    }

    public static int p(int i2) {
        if (i2 == 0) {
            return 15;
        }
        if (i2 == 1) {
            return 9;
        }
        if (i2 == 2) {
            return 6;
        }
        if (i2 != 3) {
            return i2 != 4 ? 15 : 0;
        }
        return 3;
    }

    public static int q(int i2) {
        if (i2 == 0) {
            return 15;
        }
        if (i2 == 1) {
            return 7;
        }
        if (i2 != 2) {
            return i2 != 3 ? 15 : 1;
        }
        return 5;
    }
}
