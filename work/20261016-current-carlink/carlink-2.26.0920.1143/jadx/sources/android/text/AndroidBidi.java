package android.text;

/* JADX INFO: loaded from: classes2.dex */
public class AndroidBidi {
    public static int bidi(int i2, char[] cArr, byte[] bArr, int i3, boolean z2) {
        if (cArr == null || bArr == null) {
            throw null;
        }
        if (i3 < 0 || cArr.length < i3 || bArr.length < i3) {
            throw new IndexOutOfBoundsException();
        }
        int i4 = -2;
        if (i2 == -2) {
            i4 = -1;
        } else if (i2 == -1) {
            i4 = 1;
        } else if (i2 == 1 || i2 != 2) {
            i4 = 0;
        }
        return (runBidi(i4, cArr, bArr, i3, z2) & 1) == 0 ? 1 : -1;
    }

    public static Layout.Directions directions(int i2, byte[] bArr, int i3, char[] cArr, int i4, int i5) {
        int i6;
        if (i5 == 0) {
            return Layout.DIRS_ALL_LEFT_TO_RIGHT;
        }
        int i7 = i2 == 1 ? 0 : 1;
        int i8 = bArr[i3];
        int i9 = i3 + i5;
        int i10 = 1;
        int i11 = i8;
        for (int i12 = i3 + 1; i12 < i9; i12++) {
            int i13 = bArr[i12];
            if (i13 != i11) {
                i10++;
                i11 = i13;
            }
        }
        if ((i11 & 1) != (i7 & 1)) {
            int i14 = i5;
            while (true) {
                i14--;
                if (i14 < 0) {
                    break;
                }
                char c = cArr[i4 + i14];
                if (c == '\n') {
                    i14--;
                    break;
                }
                if (c != ' ' && c != '\t') {
                    break;
                }
            }
            i6 = i14 + 1;
            if (i6 != i5) {
                i10++;
            }
        } else {
            i6 = i5;
        }
        if (i10 == 1 && i8 == i7) {
            return (i8 & 1) != 0 ? Layout.DIRS_ALL_RIGHT_TO_LEFT : Layout.DIRS_ALL_LEFT_TO_RIGHT;
        }
        int i15 = i10 * 2;
        int[] iArr = new int[i15];
        int i16 = i3 + i6;
        int i17 = i3;
        int i18 = i17;
        int i19 = 1;
        int i20 = i8;
        int i21 = i8 << 26;
        int i22 = i20;
        while (i17 < i16) {
            int i23 = bArr[i17];
            if (i23 != i8) {
                if (i23 > i20) {
                    i20 = i23;
                } else if (i23 < i22) {
                    i22 = i23;
                }
                int i24 = i19 + 1;
                iArr[i19] = i21 | (i17 - i18);
                i19 = i24 + 1;
                iArr[i24] = i17 - i3;
                i21 = i23 << 26;
                i18 = i17;
                i8 = i23;
            }
            i17++;
        }
        iArr[i19] = (i16 - i18) | i21;
        if (i6 < i5) {
            int i25 = i19 + 1;
            iArr[i25] = i6;
            iArr[i25 + 1] = (i5 - i6) | (i7 << 26);
        }
        if ((i22 & 1) != i7 ? i10 > 1 : i20 > (i22 = i22 + 1)) {
            for (int i26 = i20 - 1; i26 >= i22; i26--) {
                int i27 = 0;
                while (i27 < i15) {
                    if (bArr[iArr[i27]] >= i26) {
                        int i28 = i27 + 2;
                        while (i28 < i15 && bArr[iArr[i28]] >= i26) {
                            i28 += 2;
                        }
                        for (int i29 = i28 - 2; i27 < i29; i29 -= 2) {
                            int i30 = iArr[i27];
                            iArr[i27] = iArr[i29];
                            iArr[i29] = i30;
                            int i31 = i27 + 1;
                            int i32 = iArr[i31];
                            int i33 = i29 + 1;
                            iArr[i31] = iArr[i33];
                            iArr[i33] = i32;
                            i27 += 2;
                        }
                        i27 = i28 + 2;
                    }
                    i27 += 2;
                }
            }
        }
        return new Layout.Directions(iArr);
    }

    private static native int runBidi(int i2, char[] cArr, byte[] bArr, int i3, boolean z2);
}
