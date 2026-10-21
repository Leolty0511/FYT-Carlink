package android.os;

import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class PatternMatcher implements Parcelable {
    private static final int MAX_PATTERN_STORAGE = 2048;
    private static final int NO_MATCH = -1;
    private static final int PARSED_MODIFIER_ONE_OR_MORE = -8;
    private static final int PARSED_MODIFIER_RANGE_START = -5;
    private static final int PARSED_MODIFIER_RANGE_STOP = -6;
    private static final int PARSED_MODIFIER_ZERO_OR_MORE = -7;
    private static final int PARSED_TOKEN_CHAR_ANY = -4;
    private static final int PARSED_TOKEN_CHAR_SET_INVERSE_START = -2;
    private static final int PARSED_TOKEN_CHAR_SET_START = -1;
    private static final int PARSED_TOKEN_CHAR_SET_STOP = -3;
    public static final int PATTERN_ADVANCED_GLOB = 3;
    public static final int PATTERN_LITERAL = 0;
    public static final int PATTERN_PREFIX = 1;
    public static final int PATTERN_SIMPLE_GLOB = 2;
    private static final String TAG = "PatternMatcher";
    private static final int TOKEN_TYPE_ANY = 1;
    private static final int TOKEN_TYPE_INVERSE_SET = 3;
    private static final int TOKEN_TYPE_LITERAL = 0;
    private static final int TOKEN_TYPE_SET = 2;
    private final int[] mParsedPattern;
    private final String mPattern;
    private final int mType;
    private static final int[] sParsedPatternScratch = new int[2048];
    public static final Parcelable.Creator<PatternMatcher> CREATOR = new Parcelable.Creator<PatternMatcher>() { // from class: android.os.PatternMatcher.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PatternMatcher createFromParcel(Parcel parcel) {
            return new PatternMatcher(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PatternMatcher[] newArray(int i2) {
            return new PatternMatcher[i2];
        }
    };

    public PatternMatcher(String str, int i2) {
        this.mPattern = str;
        this.mType = i2;
        if (i2 == 3) {
            this.mParsedPattern = parseAndVerifyAdvancedPattern(str);
        } else {
            this.mParsedPattern = null;
        }
    }

    private static boolean isParsedModifier(int i2) {
        return i2 == -8 || i2 == -7 || i2 == -6 || i2 == -5;
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0044  */
    /* JADX WARN: Code duplicated, block: B:25:0x0049  */
    /* JADX WARN: Code duplicated, block: B:27:0x0051  */
    /* JADX WARN: Code duplicated, block: B:29:0x0054  */
    /* JADX WARN: Code duplicated, block: B:32:0x0058  */
    /* JADX WARN: Code duplicated, block: B:33:0x0065  */
    /* JADX WARN: Code duplicated, block: B:34:0x006c  */
    public static boolean matchAdvancedPattern(int[] iArr, String str) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int iMatchChars;
        int length = iArr.length;
        int length2 = str.length();
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        while (i11 < length) {
            int i15 = iArr[i11];
            if (i15 != -4) {
                if (i15 == -2 || i15 == -1) {
                    int i16 = i15 == -1 ? 2 : 3;
                    int i17 = i11 + 1;
                    do {
                        i11++;
                        if (i11 >= length) {
                            break;
                        }
                    } while (iArr[i11] != -3);
                    int i18 = i11 - 1;
                    i2 = i11 + 1;
                    i3 = i17;
                    i4 = i18;
                    i5 = i16;
                } else {
                    i6 = i11 + 1;
                    i3 = i11;
                    i4 = i13;
                    i5 = 0;
                }
                if (i6 < length) {
                    i7 = iArr[i6];
                    if (i7 != -8) {
                        i8 = i6 + 1;
                        i9 = Integer.MAX_VALUE;
                        i10 = 1;
                    } else if (i7 != -7) {
                        i8 = i6 + 1;
                        i9 = Integer.MAX_VALUE;
                        i10 = 0;
                    } else if (i7 != -5) {
                        i8 = i6;
                        i10 = 1;
                        i9 = 1;
                    } else {
                        int i19 = i6 + 1;
                        int i20 = iArr[i19];
                        int i21 = i19 + 1;
                        i10 = i20;
                        i8 = i21 + 2;
                        i9 = iArr[i21];
                    }
                } else {
                    i8 = i6;
                    i10 = 1;
                    i9 = 1;
                }
                if (i10 <= i9 || (iMatchChars = matchChars(str, i14, length2, i5, i10, i9, iArr, i3, i4)) == -1) {
                    return false;
                }
                i14 += iMatchChars;
                i12 = i3;
                i13 = i4;
                i11 = i8;
            } else {
                i2 = i11 + 1;
                i3 = i12;
                i4 = i13;
                i5 = 1;
            }
            i6 = i2;
            if (i6 < length) {
                i7 = iArr[i6];
                if (i7 != -8) {
                    i8 = i6 + 1;
                    i9 = Integer.MAX_VALUE;
                    i10 = 1;
                } else if (i7 != -7) {
                    i8 = i6 + 1;
                    i9 = Integer.MAX_VALUE;
                    i10 = 0;
                } else if (i7 != -5) {
                    i8 = i6;
                    i10 = 1;
                    i9 = 1;
                } else {
                    int i110 = i6 + 1;
                    int i22 = iArr[i110];
                    int i23 = i110 + 1;
                    i10 = i22;
                    i8 = i23 + 2;
                    i9 = iArr[i23];
                }
            } else {
                i8 = i6;
                i10 = 1;
                i9 = 1;
            }
            if (i10 <= i9) {
                return false;
            }
            i14 += iMatchChars;
            i12 = i3;
            i13 = i4;
            i11 = i8;
        }
        return i11 >= length && i14 >= length2;
    }

    private static boolean matchChar(String str, int i2, int i3, int i4, int[] iArr, int i5, int i6) {
        if (i2 >= i3) {
            return false;
        }
        if (i4 == 0) {
            return str.charAt(i2) == iArr[i5];
        }
        if (i4 == 1) {
            return true;
        }
        if (i4 == 2) {
            while (i5 < i6) {
                char cCharAt = str.charAt(i2);
                if (cCharAt >= iArr[i5] && cCharAt <= iArr[i5 + 1]) {
                    return true;
                }
                i5 += 2;
            }
            return false;
        }
        if (i4 != 3) {
            return false;
        }
        while (i5 < i6) {
            char cCharAt2 = str.charAt(i2);
            if (cCharAt2 >= iArr[i5] && cCharAt2 <= iArr[i5 + 1]) {
                return false;
            }
            i5 += 2;
        }
        return true;
    }

    private static int matchChars(String str, int i2, int i3, int i4, int i5, int i6, int[] iArr, int i7, int i8) {
        int i9 = 0;
        while (i9 < i6 && matchChar(str, i2 + i9, i3, i4, iArr, i7, i8)) {
            i9++;
        }
        if (i9 < i5) {
            return -1;
        }
        return i9;
    }

    public static boolean matchGlobPattern(String str, String str2) {
        int length = str.length();
        if (length <= 0) {
            return str2.length() <= 0;
        }
        int length2 = str2.length();
        char cCharAt = str.charAt(0);
        int i2 = 0;
        int i3 = 0;
        while (i2 < length && i3 < length2) {
            i2++;
            char cCharAt2 = i2 < length ? str.charAt(i2) : (char) 0;
            boolean z2 = cCharAt == '\\';
            if (z2) {
                i2++;
                char c = cCharAt2;
                cCharAt2 = i2 < length ? str.charAt(i2) : (char) 0;
                cCharAt = c;
            }
            if (cCharAt2 == '*') {
                if (z2 || cCharAt != '.') {
                    while (str2.charAt(i3) == cCharAt && (i3 = i3 + 1) < length2) {
                    }
                    i2++;
                    cCharAt = i2 < length ? str.charAt(i2) : (char) 0;
                } else {
                    if (i2 >= length - 1) {
                        return true;
                    }
                    int i4 = i2 + 1;
                    char cCharAt3 = str.charAt(i4);
                    if (cCharAt3 == '\\') {
                        i4++;
                        cCharAt3 = i4 < length ? str.charAt(i4) : (char) 0;
                    }
                    while (str2.charAt(i3) != cCharAt3 && (i3 = i3 + 1) < length2) {
                    }
                    if (i3 == length2) {
                        return false;
                    }
                    i2 = i4 + 1;
                    cCharAt = i2 < length ? str.charAt(i2) : (char) 0;
                    i3++;
                }
            } else {
                if (cCharAt != '.' && str2.charAt(i3) != cCharAt) {
                    return false;
                }
                i3++;
                cCharAt = cCharAt2;
            }
        }
        if (i2 < length || i3 < length2) {
            return i2 == length + (-2) && str.charAt(i2) == '.' && str.charAt(i2 + 1) == '*';
        }
        return true;
    }

    public static boolean matchPattern(String str, String str2, int[] iArr, int i2) {
        if (str == null) {
            return false;
        }
        if (i2 == 0) {
            return str2.equals(str);
        }
        if (i2 == 1) {
            return str.startsWith(str2);
        }
        if (i2 == 2) {
            return matchGlobPattern(str2, str);
        }
        if (i2 == 3) {
            return matchAdvancedPattern(iArr, str);
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:113:0x014c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:127:0x013a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:128:0x00ff A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:129:0x019a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:130:0x0192 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:131:0x0181 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:66:0x00fc A[PHI: r3 r5 r6
  0x00fc: PHI (r3v2 int) = (r3v1 int), (r3v1 int), (r3v1 int), (r3v1 int), (r3v18 int), (r3v1 int) binds: [B:59:0x00de, B:52:0x00c0, B:49:0x00b4, B:42:0x0092, B:46:0x00a2, B:40:0x0084] A[DONT_GENERATE, DONT_INLINE]
  0x00fc: PHI (r5v3 int) = (r5v1 int), (r5v1 int), (r5v1 int), (r5v1 int), (r5v12 int), (r5v1 int) binds: [B:59:0x00de, B:52:0x00c0, B:49:0x00b4, B:42:0x0092, B:46:0x00a2, B:40:0x0084] A[DONT_GENERATE, DONT_INLINE]
  0x00fc: PHI (r6v2 boolean) = (r6v1 boolean), (r6v1 boolean), (r6v1 boolean), (r6v1 boolean), (r6v6 boolean), (r6v1 boolean) binds: [B:59:0x00de, B:52:0x00c0, B:49:0x00b4, B:42:0x0092, B:46:0x00a2, B:40:0x0084] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:69:0x0101 A[Catch: all -> 0x01c0, TryCatch #0 {, blocks: (B:4:0x0003, B:8:0x0013, B:18:0x002e, B:69:0x0101, B:100:0x01a3, B:70:0x010b, B:72:0x010f, B:74:0x0119, B:76:0x0121, B:77:0x012c, B:79:0x013a, B:81:0x0140, B:83:0x014c, B:90:0x0174, B:91:0x0181, B:92:0x0188, B:84:0x0152, B:88:0x0167, B:94:0x018a, B:95:0x0191, B:96:0x0192, B:97:0x0199, B:99:0x019c, B:22:0x0037, B:25:0x0041, B:26:0x004c, B:27:0x0053, B:28:0x0054, B:30:0x0058, B:31:0x005d, B:32:0x0064, B:35:0x0068, B:37:0x0072, B:39:0x0080, B:38:0x007a, B:41:0x0086, B:44:0x0096, B:46:0x00a2, B:47:0x00ac, B:48:0x00b3, B:50:0x00b6, B:54:0x00c4, B:56:0x00d0, B:57:0x00d6, B:58:0x00dd, B:61:0x00e2, B:63:0x00ee, B:64:0x00f4, B:65:0x00fb, B:101:0x01a6, B:102:0x01ad, B:104:0x01b0, B:107:0x01b8, B:108:0x01bf), top: B:112:0x0003, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:70:0x010b A[Catch: all -> 0x01c0, TryCatch #0 {, blocks: (B:4:0x0003, B:8:0x0013, B:18:0x002e, B:69:0x0101, B:100:0x01a3, B:70:0x010b, B:72:0x010f, B:74:0x0119, B:76:0x0121, B:77:0x012c, B:79:0x013a, B:81:0x0140, B:83:0x014c, B:90:0x0174, B:91:0x0181, B:92:0x0188, B:84:0x0152, B:88:0x0167, B:94:0x018a, B:95:0x0191, B:96:0x0192, B:97:0x0199, B:99:0x019c, B:22:0x0037, B:25:0x0041, B:26:0x004c, B:27:0x0053, B:28:0x0054, B:30:0x0058, B:31:0x005d, B:32:0x0064, B:35:0x0068, B:37:0x0072, B:39:0x0080, B:38:0x007a, B:41:0x0086, B:44:0x0096, B:46:0x00a2, B:47:0x00ac, B:48:0x00b3, B:50:0x00b6, B:54:0x00c4, B:56:0x00d0, B:57:0x00d6, B:58:0x00dd, B:61:0x00e2, B:63:0x00ee, B:64:0x00f4, B:65:0x00fb, B:101:0x01a6, B:102:0x01ad, B:104:0x01b0, B:107:0x01b8, B:108:0x01bf), top: B:112:0x0003, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:72:0x010f A[Catch: all -> 0x01c0, TryCatch #0 {, blocks: (B:4:0x0003, B:8:0x0013, B:18:0x002e, B:69:0x0101, B:100:0x01a3, B:70:0x010b, B:72:0x010f, B:74:0x0119, B:76:0x0121, B:77:0x012c, B:79:0x013a, B:81:0x0140, B:83:0x014c, B:90:0x0174, B:91:0x0181, B:92:0x0188, B:84:0x0152, B:88:0x0167, B:94:0x018a, B:95:0x0191, B:96:0x0192, B:97:0x0199, B:99:0x019c, B:22:0x0037, B:25:0x0041, B:26:0x004c, B:27:0x0053, B:28:0x0054, B:30:0x0058, B:31:0x005d, B:32:0x0064, B:35:0x0068, B:37:0x0072, B:39:0x0080, B:38:0x007a, B:41:0x0086, B:44:0x0096, B:46:0x00a2, B:47:0x00ac, B:48:0x00b3, B:50:0x00b6, B:54:0x00c4, B:56:0x00d0, B:57:0x00d6, B:58:0x00dd, B:61:0x00e2, B:63:0x00ee, B:64:0x00f4, B:65:0x00fb, B:101:0x01a6, B:102:0x01ad, B:104:0x01b0, B:107:0x01b8, B:108:0x01bf), top: B:112:0x0003, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:74:0x0119 A[Catch: all -> 0x01c0, TryCatch #0 {, blocks: (B:4:0x0003, B:8:0x0013, B:18:0x002e, B:69:0x0101, B:100:0x01a3, B:70:0x010b, B:72:0x010f, B:74:0x0119, B:76:0x0121, B:77:0x012c, B:79:0x013a, B:81:0x0140, B:83:0x014c, B:90:0x0174, B:91:0x0181, B:92:0x0188, B:84:0x0152, B:88:0x0167, B:94:0x018a, B:95:0x0191, B:96:0x0192, B:97:0x0199, B:99:0x019c, B:22:0x0037, B:25:0x0041, B:26:0x004c, B:27:0x0053, B:28:0x0054, B:30:0x0058, B:31:0x005d, B:32:0x0064, B:35:0x0068, B:37:0x0072, B:39:0x0080, B:38:0x007a, B:41:0x0086, B:44:0x0096, B:46:0x00a2, B:47:0x00ac, B:48:0x00b3, B:50:0x00b6, B:54:0x00c4, B:56:0x00d0, B:57:0x00d6, B:58:0x00dd, B:61:0x00e2, B:63:0x00ee, B:64:0x00f4, B:65:0x00fb, B:101:0x01a6, B:102:0x01ad, B:104:0x01b0, B:107:0x01b8, B:108:0x01bf), top: B:112:0x0003, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:77:0x012c A[Catch: all -> 0x01c0, TryCatch #0 {, blocks: (B:4:0x0003, B:8:0x0013, B:18:0x002e, B:69:0x0101, B:100:0x01a3, B:70:0x010b, B:72:0x010f, B:74:0x0119, B:76:0x0121, B:77:0x012c, B:79:0x013a, B:81:0x0140, B:83:0x014c, B:90:0x0174, B:91:0x0181, B:92:0x0188, B:84:0x0152, B:88:0x0167, B:94:0x018a, B:95:0x0191, B:96:0x0192, B:97:0x0199, B:99:0x019c, B:22:0x0037, B:25:0x0041, B:26:0x004c, B:27:0x0053, B:28:0x0054, B:30:0x0058, B:31:0x005d, B:32:0x0064, B:35:0x0068, B:37:0x0072, B:39:0x0080, B:38:0x007a, B:41:0x0086, B:44:0x0096, B:46:0x00a2, B:47:0x00ac, B:48:0x00b3, B:50:0x00b6, B:54:0x00c4, B:56:0x00d0, B:57:0x00d6, B:58:0x00dd, B:61:0x00e2, B:63:0x00ee, B:64:0x00f4, B:65:0x00fb, B:101:0x01a6, B:102:0x01ad, B:104:0x01b0, B:107:0x01b8, B:108:0x01bf), top: B:112:0x0003, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:78:0x0138 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:81:0x0140 A[Catch: all -> 0x01c0, TRY_LEAVE, TryCatch #0 {, blocks: (B:4:0x0003, B:8:0x0013, B:18:0x002e, B:69:0x0101, B:100:0x01a3, B:70:0x010b, B:72:0x010f, B:74:0x0119, B:76:0x0121, B:77:0x012c, B:79:0x013a, B:81:0x0140, B:83:0x014c, B:90:0x0174, B:91:0x0181, B:92:0x0188, B:84:0x0152, B:88:0x0167, B:94:0x018a, B:95:0x0191, B:96:0x0192, B:97:0x0199, B:99:0x019c, B:22:0x0037, B:25:0x0041, B:26:0x004c, B:27:0x0053, B:28:0x0054, B:30:0x0058, B:31:0x005d, B:32:0x0064, B:35:0x0068, B:37:0x0072, B:39:0x0080, B:38:0x007a, B:41:0x0086, B:44:0x0096, B:46:0x00a2, B:47:0x00ac, B:48:0x00b3, B:50:0x00b6, B:54:0x00c4, B:56:0x00d0, B:57:0x00d6, B:58:0x00dd, B:61:0x00e2, B:63:0x00ee, B:64:0x00f4, B:65:0x00fb, B:101:0x01a6, B:102:0x01ad, B:104:0x01b0, B:107:0x01b8, B:108:0x01bf), top: B:112:0x0003, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:84:0x0152 A[Catch: NumberFormatException -> 0x0189, all -> 0x01c0, TryCatch #1 {NumberFormatException -> 0x0189, blocks: (B:83:0x014c, B:90:0x0174, B:91:0x0181, B:92:0x0188, B:84:0x0152, B:88:0x0167), top: B:113:0x014c, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:86:0x0161  */
    /* JADX WARN: Code duplicated, block: B:88:0x0167 A[Catch: NumberFormatException -> 0x0189, all -> 0x01c0, TryCatch #1 {NumberFormatException -> 0x0189, blocks: (B:83:0x014c, B:90:0x0174, B:91:0x0181, B:92:0x0188, B:84:0x0152, B:88:0x0167), top: B:113:0x014c, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:90:0x0174 A[Catch: NumberFormatException -> 0x0189, all -> 0x01c0, TryCatch #1 {NumberFormatException -> 0x0189, blocks: (B:83:0x014c, B:90:0x0174, B:91:0x0181, B:92:0x0188, B:84:0x0152, B:88:0x0167), top: B:113:0x014c, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:99:0x019c A[Catch: all -> 0x01c0, TryCatch #0 {, blocks: (B:4:0x0003, B:8:0x0013, B:18:0x002e, B:69:0x0101, B:100:0x01a3, B:70:0x010b, B:72:0x010f, B:74:0x0119, B:76:0x0121, B:77:0x012c, B:79:0x013a, B:81:0x0140, B:83:0x014c, B:90:0x0174, B:91:0x0181, B:92:0x0188, B:84:0x0152, B:88:0x0167, B:94:0x018a, B:95:0x0191, B:96:0x0192, B:97:0x0199, B:99:0x019c, B:22:0x0037, B:25:0x0041, B:26:0x004c, B:27:0x0053, B:28:0x0054, B:30:0x0058, B:31:0x005d, B:32:0x0064, B:35:0x0068, B:37:0x0072, B:39:0x0080, B:38:0x007a, B:41:0x0086, B:44:0x0096, B:46:0x00a2, B:47:0x00ac, B:48:0x00b3, B:50:0x00b6, B:54:0x00c4, B:56:0x00d0, B:57:0x00d6, B:58:0x00dd, B:61:0x00e2, B:63:0x00ee, B:64:0x00f4, B:65:0x00fb, B:101:0x01a6, B:102:0x01ad, B:104:0x01b0, B:107:0x01b8, B:108:0x01bf), top: B:112:0x0003, inners: #1 }] */
    public static synchronized int[] parseAndVerifyAdvancedPattern(String str) {
        int i2;
        int i3;
        boolean z2;
        int i4;
        int i5;
        int iIndexOf;
        String strSubstring;
        int iIndexOf2;
        int i6;
        int i7;
        int i8;
        int i9;
        int length = str.length();
        int i10 = 0;
        boolean z3 = false;
        i2 = 0;
        boolean z4 = false;
        boolean z5 = false;
        while (i10 < length) {
            if (i2 > 2045) {
                throw new IllegalArgumentException("Pattern is too large!");
            }
            char cCharAt = str.charAt(i10);
            if (cCharAt == '*') {
                if (!z3) {
                    if (i2 != 0) {
                        int[] iArr = sParsedPatternScratch;
                        if (!isParsedModifier(iArr[i2 - 1])) {
                            i3 = i2 + 1;
                            iArr[i2] = -7;
                            z2 = false;
                            i2 = i3;
                        }
                    }
                    throw new IllegalArgumentException("Modifier must follow a token.");
                }
                z2 = false;
                if (z3) {
                    if (z5) {
                        sParsedPatternScratch[i2] = cCharAt;
                        z5 = false;
                        i2++;
                    } else {
                        i4 = i10 + 2;
                        if (i4 < length) {
                            i5 = i10 + 1;
                            if (str.charAt(i5) == '-') {
                                int[] iArr2 = sParsedPatternScratch;
                                int i11 = i2 + 1;
                                iArr2[i2] = cCharAt;
                                i2 = i11 + 1;
                                iArr2[i11] = cCharAt;
                            } else {
                                int[] iArr3 = sParsedPatternScratch;
                                int i12 = i2 + 1;
                                iArr3[i2] = cCharAt;
                                i2 = i12 + 1;
                                iArr3[i12] = cCharAt;
                            }
                        } else {
                            int[] iArr4 = sParsedPatternScratch;
                            int i13 = i2 + 1;
                            iArr4[i2] = cCharAt;
                            i2 = i13 + 1;
                            iArr4[i13] = cCharAt;
                        }
                    }
                } else if (z4) {
                    iIndexOf = str.indexOf(125, i10);
                    if (iIndexOf < 0) {
                        throw new IllegalArgumentException("Range not ended with '}'");
                    }
                    strSubstring = str.substring(i10, iIndexOf);
                    iIndexOf2 = strSubstring.indexOf(44);
                    if (iIndexOf2 < 0) {
                        i6 = Integer.parseInt(strSubstring);
                        i7 = i6;
                    } else {
                        int i14 = Integer.parseInt(strSubstring.substring(0, iIndexOf2));
                        if (iIndexOf2 == strSubstring.length() - 1) {
                            i8 = Integer.MAX_VALUE;
                        } else {
                            i8 = Integer.parseInt(strSubstring.substring(iIndexOf2 + 1));
                        }
                        i7 = i8;
                        i6 = i14;
                    }
                    if (i6 > i7) {
                        throw new IllegalArgumentException("Range quantifier minimum is greater than maximum");
                    }
                    int[] iArr5 = sParsedPatternScratch;
                    int i15 = i2 + 1;
                    iArr5[i2] = i6;
                    i2 = i15 + 1;
                    iArr5[i15] = i7;
                    i10 = iIndexOf;
                } else if (z2) {
                    sParsedPatternScratch[i2] = cCharAt;
                    i2++;
                }
                i10++;
            } else if (cCharAt != '+') {
                if (cCharAt == '.') {
                    if (!z3) {
                        i3 = i2 + 1;
                        sParsedPatternScratch[i2] = -4;
                        z2 = false;
                        i2 = i3;
                    }
                    if (z3) {
                        if (z5) {
                            sParsedPatternScratch[i2] = cCharAt;
                            z5 = false;
                            i2++;
                        } else {
                            i4 = i10 + 2;
                            if (i4 < length) {
                                i5 = i10 + 1;
                                if (str.charAt(i5) == '-') {
                                    int[] iArr6 = sParsedPatternScratch;
                                    int i16 = i2 + 1;
                                    iArr6[i2] = cCharAt;
                                    i2 = i16 + 1;
                                    iArr6[i16] = cCharAt;
                                } else {
                                    int[] iArr7 = sParsedPatternScratch;
                                    int i17 = i2 + 1;
                                    iArr7[i2] = cCharAt;
                                    i2 = i17 + 1;
                                    iArr7[i17] = cCharAt;
                                }
                            } else {
                                int[] iArr8 = sParsedPatternScratch;
                                int i18 = i2 + 1;
                                iArr8[i2] = cCharAt;
                                i2 = i18 + 1;
                                iArr8[i18] = cCharAt;
                            }
                        }
                    } else if (z4) {
                        iIndexOf = str.indexOf(125, i10);
                        if (iIndexOf < 0) {
                            throw new IllegalArgumentException("Range not ended with '}'");
                        }
                        strSubstring = str.substring(i10, iIndexOf);
                        iIndexOf2 = strSubstring.indexOf(44);
                        if (iIndexOf2 < 0) {
                            i6 = Integer.parseInt(strSubstring);
                            i7 = i6;
                        } else {
                            int i19 = Integer.parseInt(strSubstring.substring(0, iIndexOf2));
                            if (iIndexOf2 == strSubstring.length() - 1) {
                                i8 = Integer.MAX_VALUE;
                            } else {
                                i8 = Integer.parseInt(strSubstring.substring(iIndexOf2 + 1));
                            }
                            i7 = i8;
                            i6 = i19;
                        }
                        if (i6 > i7) {
                            throw new IllegalArgumentException("Range quantifier minimum is greater than maximum");
                        }
                        int[] iArr9 = sParsedPatternScratch;
                        int i110 = i2 + 1;
                        iArr9[i2] = i6;
                        i2 = i110 + 1;
                        iArr9[i110] = i7;
                        i10 = iIndexOf;
                    } else if (z2) {
                        sParsedPatternScratch[i2] = cCharAt;
                        i2++;
                    }
                    i10++;
                } else if (cCharAt != '{') {
                    if (cCharAt != '}') {
                        switch (cCharAt) {
                            case '[':
                                if (!z3) {
                                    int i20 = i10 + 1;
                                    if (str.charAt(i20) == '^') {
                                        i9 = i2 + 1;
                                        sParsedPatternScratch[i2] = -2;
                                        i10 = i20;
                                    } else {
                                        i9 = i2 + 1;
                                        sParsedPatternScratch[i2] = -1;
                                    }
                                    i2 = i9;
                                    i10++;
                                    z3 = true;
                                } else {
                                    z2 = true;
                                }
                                break;
                            case '\\':
                                i10++;
                                if (i10 >= length) {
                                    throw new IllegalArgumentException("Escape found at end of pattern!");
                                }
                                cCharAt = str.charAt(i10);
                                z2 = true;
                                break;
                                break;
                            case ']':
                                if (!z3) {
                                    z2 = true;
                                } else {
                                    int[] iArr10 = sParsedPatternScratch;
                                    int i21 = iArr10[i2 - 1];
                                    if (i21 == -1 || i21 == -2) {
                                        throw new IllegalArgumentException("You must define characters in a set.");
                                    }
                                    iArr10[i2] = -3;
                                    z3 = false;
                                    z2 = false;
                                    i2++;
                                    z5 = false;
                                }
                                break;
                            default:
                                z2 = true;
                                break;
                        }
                    } else if (z4) {
                        sParsedPatternScratch[i2] = -6;
                        z4 = false;
                        i2++;
                        z2 = false;
                    }
                    if (z3) {
                        if (z5) {
                            sParsedPatternScratch[i2] = cCharAt;
                            z5 = false;
                            i2++;
                        } else {
                            i4 = i10 + 2;
                            if (i4 < length) {
                                i5 = i10 + 1;
                                if (str.charAt(i5) == '-' || str.charAt(i4) == ']') {
                                    int[] iArr11 = sParsedPatternScratch;
                                    int i111 = i2 + 1;
                                    iArr11[i2] = cCharAt;
                                    i2 = i111 + 1;
                                    iArr11[i111] = cCharAt;
                                } else {
                                    sParsedPatternScratch[i2] = cCharAt;
                                    i2++;
                                    i10 = i5;
                                    z5 = true;
                                }
                            } else {
                                int[] iArr12 = sParsedPatternScratch;
                                int i112 = i2 + 1;
                                iArr12[i2] = cCharAt;
                                i2 = i112 + 1;
                                iArr12[i112] = cCharAt;
                            }
                        }
                    } else if (z4) {
                        iIndexOf = str.indexOf(125, i10);
                        if (iIndexOf < 0) {
                            throw new IllegalArgumentException("Range not ended with '}'");
                        }
                        strSubstring = str.substring(i10, iIndexOf);
                        iIndexOf2 = strSubstring.indexOf(44);
                        if (iIndexOf2 < 0) {
                            try {
                                i6 = Integer.parseInt(strSubstring);
                                i7 = i6;
                            } catch (NumberFormatException e2) {
                                throw new IllegalArgumentException("Range number format incorrect", e2);
                            }
                        } else {
                            int i113 = Integer.parseInt(strSubstring.substring(0, iIndexOf2));
                            if (iIndexOf2 == strSubstring.length() - 1) {
                                i8 = Integer.MAX_VALUE;
                            } else {
                                i8 = Integer.parseInt(strSubstring.substring(iIndexOf2 + 1));
                            }
                            i7 = i8;
                            i6 = i113;
                        }
                        if (i6 > i7) {
                            throw new IllegalArgumentException("Range quantifier minimum is greater than maximum");
                        }
                        int[] iArr13 = sParsedPatternScratch;
                        int i114 = i2 + 1;
                        iArr13[i2] = i6;
                        i2 = i114 + 1;
                        iArr13[i114] = i7;
                        i10 = iIndexOf;
                    } else if (z2) {
                        sParsedPatternScratch[i2] = cCharAt;
                        i2++;
                    }
                    i10++;
                } else if (!z3) {
                    if (i2 != 0) {
                        int[] iArr14 = sParsedPatternScratch;
                        if (!isParsedModifier(iArr14[i2 - 1])) {
                            iArr14[i2] = -5;
                            i10++;
                            i2++;
                            z4 = true;
                        }
                    }
                    throw new IllegalArgumentException("Modifier must follow a token.");
                }
                z2 = false;
                if (z3) {
                    if (z5) {
                        sParsedPatternScratch[i2] = cCharAt;
                        z5 = false;
                        i2++;
                    } else {
                        i4 = i10 + 2;
                        if (i4 < length) {
                            i5 = i10 + 1;
                            if (str.charAt(i5) == '-') {
                                int[] iArr15 = sParsedPatternScratch;
                                int i115 = i2 + 1;
                                iArr15[i2] = cCharAt;
                                i2 = i115 + 1;
                                iArr15[i115] = cCharAt;
                            } else {
                                int[] iArr16 = sParsedPatternScratch;
                                int i116 = i2 + 1;
                                iArr16[i2] = cCharAt;
                                i2 = i116 + 1;
                                iArr16[i116] = cCharAt;
                            }
                        } else {
                            int[] iArr17 = sParsedPatternScratch;
                            int i117 = i2 + 1;
                            iArr17[i2] = cCharAt;
                            i2 = i117 + 1;
                            iArr17[i117] = cCharAt;
                        }
                    }
                } else if (z4) {
                    iIndexOf = str.indexOf(125, i10);
                    if (iIndexOf < 0) {
                        throw new IllegalArgumentException("Range not ended with '}'");
                    }
                    strSubstring = str.substring(i10, iIndexOf);
                    iIndexOf2 = strSubstring.indexOf(44);
                    if (iIndexOf2 < 0) {
                        i6 = Integer.parseInt(strSubstring);
                        i7 = i6;
                    } else {
                        int i118 = Integer.parseInt(strSubstring.substring(0, iIndexOf2));
                        if (iIndexOf2 == strSubstring.length() - 1) {
                            i8 = Integer.MAX_VALUE;
                        } else {
                            i8 = Integer.parseInt(strSubstring.substring(iIndexOf2 + 1));
                        }
                        i7 = i8;
                        i6 = i118;
                    }
                    if (i6 > i7) {
                        throw new IllegalArgumentException("Range quantifier minimum is greater than maximum");
                    }
                    int[] iArr18 = sParsedPatternScratch;
                    int i119 = i2 + 1;
                    iArr18[i2] = i6;
                    i2 = i119 + 1;
                    iArr18[i119] = i7;
                    i10 = iIndexOf;
                } else if (z2) {
                    sParsedPatternScratch[i2] = cCharAt;
                    i2++;
                }
                i10++;
            } else {
                if (!z3) {
                    if (i2 != 0) {
                        int[] iArr19 = sParsedPatternScratch;
                        if (!isParsedModifier(iArr19[i2 - 1])) {
                            i3 = i2 + 1;
                            iArr19[i2] = -8;
                            z2 = false;
                            i2 = i3;
                        }
                    }
                    throw new IllegalArgumentException("Modifier must follow a token.");
                }
                z2 = false;
                if (z3) {
                    if (z5) {
                        sParsedPatternScratch[i2] = cCharAt;
                        z5 = false;
                        i2++;
                    } else {
                        i4 = i10 + 2;
                        if (i4 < length) {
                            i5 = i10 + 1;
                            if (str.charAt(i5) == '-') {
                                int[] iArr110 = sParsedPatternScratch;
                                int i1110 = i2 + 1;
                                iArr110[i2] = cCharAt;
                                i2 = i1110 + 1;
                                iArr110[i1110] = cCharAt;
                            } else {
                                int[] iArr111 = sParsedPatternScratch;
                                int i1111 = i2 + 1;
                                iArr111[i2] = cCharAt;
                                i2 = i1111 + 1;
                                iArr111[i1111] = cCharAt;
                            }
                        } else {
                            int[] iArr112 = sParsedPatternScratch;
                            int i1112 = i2 + 1;
                            iArr112[i2] = cCharAt;
                            i2 = i1112 + 1;
                            iArr112[i1112] = cCharAt;
                        }
                    }
                } else if (z4) {
                    iIndexOf = str.indexOf(125, i10);
                    if (iIndexOf < 0) {
                        throw new IllegalArgumentException("Range not ended with '}'");
                    }
                    strSubstring = str.substring(i10, iIndexOf);
                    iIndexOf2 = strSubstring.indexOf(44);
                    if (iIndexOf2 < 0) {
                        i6 = Integer.parseInt(strSubstring);
                        i7 = i6;
                    } else {
                        int i1113 = Integer.parseInt(strSubstring.substring(0, iIndexOf2));
                        if (iIndexOf2 == strSubstring.length() - 1) {
                            i8 = Integer.MAX_VALUE;
                        } else {
                            i8 = Integer.parseInt(strSubstring.substring(iIndexOf2 + 1));
                        }
                        i7 = i8;
                        i6 = i1113;
                    }
                    if (i6 > i7) {
                        throw new IllegalArgumentException("Range quantifier minimum is greater than maximum");
                    }
                    int[] iArr113 = sParsedPatternScratch;
                    int i1114 = i2 + 1;
                    iArr113[i2] = i6;
                    i2 = i1114 + 1;
                    iArr113[i1114] = i7;
                    i10 = iIndexOf;
                } else if (z2) {
                    sParsedPatternScratch[i2] = cCharAt;
                    i2++;
                }
                i10++;
            }
        }
        if (z3) {
            throw new IllegalArgumentException("Set was not terminated!");
        }
        return Arrays.copyOf(sParsedPatternScratch, i2);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final String getPath() {
        return this.mPattern;
    }

    public final int getType() {
        return this.mType;
    }

    public boolean match(String str) {
        return matchPattern(str, this.mPattern, this.mParsedPattern, this.mType);
    }

    public String toString() {
        String str;
        int i2 = this.mType;
        if (i2 == 0) {
            str = "LITERAL: ";
        } else if (i2 == 1) {
            str = "PREFIX: ";
        } else if (i2 != 2) {
            str = i2 != 3 ? "? " : "ADVANCED: ";
        } else {
            str = "GLOB: ";
        }
        StringBuilder sb = new StringBuilder("PatternMatcher{");
        sb.append(str);
        return android.accessibilityservice.c.n(sb, this.mPattern, "}");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.mPattern);
        parcel.writeInt(this.mType);
        parcel.writeIntArray(this.mParsedPattern);
    }

    public PatternMatcher(Parcel parcel) {
        this.mPattern = parcel.readString();
        this.mType = parcel.readInt();
        this.mParsedPattern = parcel.createIntArray();
    }
}
