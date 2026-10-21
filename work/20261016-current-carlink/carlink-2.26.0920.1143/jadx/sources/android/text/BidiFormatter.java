package android.text;

import com.google.common.base.Ascii;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public final class BidiFormatter {
    private static final int DEFAULT_FLAGS = 2;
    private static final int DIR_LTR = -1;
    private static final int DIR_RTL = 1;
    private static final int DIR_UNKNOWN = 0;
    private static final String EMPTY_STRING = "";
    private static final int FLAG_STEREO_RESET = 2;
    private static final char LRE = 8234;
    private static final char PDF = 8236;
    private static final char RLE = 8235;
    private final TextDirectionHeuristic mDefaultTextDirectionHeuristic;
    private final int mFlags;
    private final boolean mIsRtlContext;
    private static TextDirectionHeuristic DEFAULT_TEXT_DIRECTION_HEURISTIC = TextDirectionHeuristics.FIRSTSTRONG_LTR;
    private static final char LRM = 8206;
    private static final String LRM_STRING = Character.toString(LRM);
    private static final char RLM = 8207;
    private static final String RLM_STRING = Character.toString(RLM);
    private static final BidiFormatter DEFAULT_LTR_INSTANCE = new BidiFormatter(false, 2, DEFAULT_TEXT_DIRECTION_HEURISTIC);
    private static final BidiFormatter DEFAULT_RTL_INSTANCE = new BidiFormatter(true, 2, DEFAULT_TEXT_DIRECTION_HEURISTIC);

    public static class DirectionalityEstimator {
        private static final byte[] DIR_TYPE_CACHE = new byte[1792];
        private static final int DIR_TYPE_CACHE_SIZE = 1792;
        private int charIndex;
        private final boolean isHtml;
        private char lastChar;
        private final int length;
        private final CharSequence text;

        static {
            for (int i2 = 0; i2 < 1792; i2++) {
                DIR_TYPE_CACHE[i2] = Character.getDirectionality(i2);
            }
        }

        public DirectionalityEstimator(CharSequence charSequence, boolean z2) {
            this.text = charSequence;
            this.isHtml = z2;
            this.length = charSequence.length();
        }

        private static byte getCachedDirectionality(char c) {
            return c < 1792 ? DIR_TYPE_CACHE[c] : getDirectionality(c);
        }

        private static byte getDirectionality(int i2) {
            return Emoji.isNewEmoji(i2) ? Ascii.CR : Character.getDirectionality(i2);
        }

        private byte skipEntityBackward() {
            char cCharAt;
            int i2 = this.charIndex;
            do {
                int i3 = this.charIndex;
                if (i3 <= 0) {
                    break;
                }
                CharSequence charSequence = this.text;
                int i4 = i3 - 1;
                this.charIndex = i4;
                cCharAt = charSequence.charAt(i4);
                this.lastChar = cCharAt;
                if (cCharAt == '&') {
                    return Ascii.FF;
                }
            } while (cCharAt != ';');
            this.charIndex = i2;
            this.lastChar = ';';
            return Ascii.CR;
        }

        private byte skipEntityForward() {
            char cCharAt;
            do {
                int i2 = this.charIndex;
                if (i2 >= this.length) {
                    return Ascii.FF;
                }
                CharSequence charSequence = this.text;
                this.charIndex = i2 + 1;
                cCharAt = charSequence.charAt(i2);
                this.lastChar = cCharAt;
            } while (cCharAt != ';');
            return Ascii.FF;
        }

        private byte skipTagBackward() {
            char cCharAt;
            int i2 = this.charIndex;
            while (true) {
                int i3 = this.charIndex;
                if (i3 <= 0) {
                    break;
                }
                CharSequence charSequence = this.text;
                int i4 = i3 - 1;
                this.charIndex = i4;
                char cCharAt2 = charSequence.charAt(i4);
                this.lastChar = cCharAt2;
                if (cCharAt2 == '<') {
                    return Ascii.FF;
                }
                if (cCharAt2 == '>') {
                    break;
                }
                if (cCharAt2 == '\"' || cCharAt2 == '\'') {
                    do {
                        int i5 = this.charIndex;
                        if (i5 <= 0) {
                            break;
                        }
                        CharSequence charSequence2 = this.text;
                        int i6 = i5 - 1;
                        this.charIndex = i6;
                        cCharAt = charSequence2.charAt(i6);
                        this.lastChar = cCharAt;
                    } while (cCharAt != cCharAt2);
                }
            }
            this.charIndex = i2;
            this.lastChar = '>';
            return Ascii.CR;
        }

        private byte skipTagForward() {
            char cCharAt;
            int i2 = this.charIndex;
            while (true) {
                int i3 = this.charIndex;
                if (i3 >= this.length) {
                    this.charIndex = i2;
                    this.lastChar = '<';
                    return Ascii.CR;
                }
                CharSequence charSequence = this.text;
                this.charIndex = i3 + 1;
                char cCharAt2 = charSequence.charAt(i3);
                this.lastChar = cCharAt2;
                if (cCharAt2 == '>') {
                    return Ascii.FF;
                }
                if (cCharAt2 == '\"' || cCharAt2 == '\'') {
                    do {
                        int i4 = this.charIndex;
                        if (i4 >= this.length) {
                            break;
                        }
                        CharSequence charSequence2 = this.text;
                        this.charIndex = i4 + 1;
                        cCharAt = charSequence2.charAt(i4);
                        this.lastChar = cCharAt;
                    } while (cCharAt != cCharAt2);
                }
            }
        }

        public byte dirTypeBackward() {
            char cCharAt = this.text.charAt(this.charIndex - 1);
            this.lastChar = cCharAt;
            if (Character.isLowSurrogate(cCharAt)) {
                int iCodePointBefore = Character.codePointBefore(this.text, this.charIndex);
                this.charIndex -= Character.charCount(iCodePointBefore);
                return getDirectionality(iCodePointBefore);
            }
            this.charIndex--;
            byte cachedDirectionality = getCachedDirectionality(this.lastChar);
            if (!this.isHtml) {
                return cachedDirectionality;
            }
            char c = this.lastChar;
            if (c == '>') {
                return skipTagBackward();
            }
            return c == ';' ? skipEntityBackward() : cachedDirectionality;
        }

        public byte dirTypeForward() {
            char cCharAt = this.text.charAt(this.charIndex);
            this.lastChar = cCharAt;
            if (Character.isHighSurrogate(cCharAt)) {
                int iCodePointAt = Character.codePointAt(this.text, this.charIndex);
                this.charIndex = Character.charCount(iCodePointAt) + this.charIndex;
                return getDirectionality(iCodePointAt);
            }
            this.charIndex++;
            byte cachedDirectionality = getCachedDirectionality(this.lastChar);
            if (!this.isHtml) {
                return cachedDirectionality;
            }
            char c = this.lastChar;
            if (c == '<') {
                return skipTagForward();
            }
            return c == '&' ? skipEntityForward() : cachedDirectionality;
        }

        public int getEntryDir() {
            this.charIndex = 0;
            int i2 = 0;
            int i3 = 0;
            int i4 = 0;
            while (this.charIndex < this.length && i2 == 0) {
                byte bDirTypeForward = dirTypeForward();
                if (bDirTypeForward != 0) {
                    if (bDirTypeForward == 1 || bDirTypeForward == 2) {
                        if (i4 == 0) {
                            return 1;
                        }
                    } else if (bDirTypeForward != 9) {
                        switch (bDirTypeForward) {
                            case 14:
                            case 15:
                                i4++;
                                i3 = -1;
                                continue;
                            case 16:
                            case 17:
                                i4++;
                                i3 = 1;
                                continue;
                            case 18:
                                i4--;
                                i3 = 0;
                                continue;
                        }
                    }
                } else if (i4 == 0) {
                    return -1;
                }
                i2 = i4;
            }
            if (i2 == 0) {
                return 0;
            }
            if (i3 != 0) {
                return i3;
            }
            while (this.charIndex > 0) {
                switch (dirTypeBackward()) {
                    case 14:
                    case 15:
                        if (i2 == i4) {
                            return -1;
                        }
                        break;
                    case 16:
                    case 17:
                        if (i2 == i4) {
                            return 1;
                        }
                        break;
                    case 18:
                        i4++;
                        continue;
                    default:
                        continue;
                }
                i4--;
            }
            return 0;
        }

        public int getExitDir() {
            this.charIndex = this.length;
            int i2 = 0;
            while (true) {
                int i3 = i2;
                while (this.charIndex > 0) {
                    byte bDirTypeBackward = dirTypeBackward();
                    if (bDirTypeBackward == 0) {
                        if (i2 == 0) {
                            return -1;
                        }
                        if (i3 == 0) {
                        }
                    } else if (bDirTypeBackward == 1 || bDirTypeBackward == 2) {
                        if (i2 == 0) {
                            return 1;
                        }
                        if (i3 == 0) {
                        }
                    } else if (bDirTypeBackward != 9) {
                        switch (bDirTypeBackward) {
                            case 14:
                            case 15:
                                if (i3 == i2) {
                                    return -1;
                                }
                                i2--;
                                break;
                            case 16:
                            case 17:
                                if (i3 == i2) {
                                    return 1;
                                }
                                i2--;
                                break;
                            case 18:
                                i2++;
                                break;
                            default:
                                if (i3 != 0) {
                                }
                                break;
                        }
                    } else {
                        continue;
                    }
                }
                return 0;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static BidiFormatter getDefaultInstanceFromContext(boolean z2) {
        return z2 ? DEFAULT_RTL_INSTANCE : DEFAULT_LTR_INSTANCE;
    }

    private static int getEntryDir(CharSequence charSequence) {
        return new DirectionalityEstimator(charSequence, false).getEntryDir();
    }

    private static int getExitDir(CharSequence charSequence) {
        return new DirectionalityEstimator(charSequence, false).getExitDir();
    }

    public static BidiFormatter getInstance() {
        return getDefaultInstanceFromContext(isRtlLocale(Locale.getDefault()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isRtlLocale(Locale locale) {
        return TextUtils.getLayoutDirectionFromLocale(locale) == 1;
    }

    public boolean getStereoReset() {
        return (this.mFlags & 2) != 0;
    }

    public boolean isRtl(String str) {
        return isRtl((CharSequence) str);
    }

    public boolean isRtlContext() {
        return this.mIsRtlContext;
    }

    public String markAfter(CharSequence charSequence, TextDirectionHeuristic textDirectionHeuristic) {
        boolean zIsRtl = textDirectionHeuristic.isRtl(charSequence, 0, charSequence.length());
        if (!this.mIsRtlContext && (zIsRtl || getExitDir(charSequence) == 1)) {
            return LRM_STRING;
        }
        if (this.mIsRtlContext) {
            return (!zIsRtl || getExitDir(charSequence) == -1) ? RLM_STRING : "";
        }
        return "";
    }

    public String markBefore(CharSequence charSequence, TextDirectionHeuristic textDirectionHeuristic) {
        boolean zIsRtl = textDirectionHeuristic.isRtl(charSequence, 0, charSequence.length());
        if (!this.mIsRtlContext && (zIsRtl || getEntryDir(charSequence) == 1)) {
            return LRM_STRING;
        }
        if (this.mIsRtlContext) {
            return (!zIsRtl || getEntryDir(charSequence) == -1) ? RLM_STRING : "";
        }
        return "";
    }

    public String unicodeWrap(String str, TextDirectionHeuristic textDirectionHeuristic, boolean z2) {
        if (str == null) {
            return null;
        }
        return unicodeWrap((CharSequence) str, textDirectionHeuristic, z2).toString();
    }

    public static final class Builder {
        private int mFlags;
        private boolean mIsRtlContext;
        private TextDirectionHeuristic mTextDirectionHeuristic;

        public Builder() {
            initialize(BidiFormatter.isRtlLocale(Locale.getDefault()));
        }

        private void initialize(boolean z2) {
            this.mIsRtlContext = z2;
            this.mTextDirectionHeuristic = BidiFormatter.DEFAULT_TEXT_DIRECTION_HEURISTIC;
            this.mFlags = 2;
        }

        public BidiFormatter build() {
            return (this.mFlags == 2 && this.mTextDirectionHeuristic == BidiFormatter.DEFAULT_TEXT_DIRECTION_HEURISTIC) ? BidiFormatter.getDefaultInstanceFromContext(this.mIsRtlContext) : new BidiFormatter(this.mIsRtlContext, this.mFlags, this.mTextDirectionHeuristic);
        }

        public Builder setTextDirectionHeuristic(TextDirectionHeuristic textDirectionHeuristic) {
            this.mTextDirectionHeuristic = textDirectionHeuristic;
            return this;
        }

        public Builder stereoReset(boolean z2) {
            if (z2) {
                this.mFlags |= 2;
            } else {
                this.mFlags &= -3;
            }
            return this;
        }

        public Builder(boolean z2) {
            initialize(z2);
        }

        public Builder(Locale locale) {
            initialize(BidiFormatter.isRtlLocale(locale));
        }
    }

    private BidiFormatter(boolean z2, int i2, TextDirectionHeuristic textDirectionHeuristic) {
        this.mIsRtlContext = z2;
        this.mFlags = i2;
        this.mDefaultTextDirectionHeuristic = textDirectionHeuristic;
    }

    public static BidiFormatter getInstance(boolean z2) {
        return getDefaultInstanceFromContext(z2);
    }

    public boolean isRtl(CharSequence charSequence) {
        return this.mDefaultTextDirectionHeuristic.isRtl(charSequence, 0, charSequence.length());
    }

    public CharSequence unicodeWrap(CharSequence charSequence, TextDirectionHeuristic textDirectionHeuristic, boolean z2) {
        if (charSequence == null) {
            return null;
        }
        boolean zIsRtl = textDirectionHeuristic.isRtl(charSequence, 0, charSequence.length());
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        if (getStereoReset() && z2) {
            spannableStringBuilder.append((CharSequence) markBefore(charSequence, zIsRtl ? TextDirectionHeuristics.RTL : TextDirectionHeuristics.LTR));
        }
        if (zIsRtl != this.mIsRtlContext) {
            spannableStringBuilder.append(zIsRtl ? RLE : LRE);
            spannableStringBuilder.append(charSequence);
            spannableStringBuilder.append(PDF);
        } else {
            spannableStringBuilder.append(charSequence);
        }
        if (z2) {
            spannableStringBuilder.append((CharSequence) markAfter(charSequence, zIsRtl ? TextDirectionHeuristics.RTL : TextDirectionHeuristics.LTR));
        }
        return spannableStringBuilder;
    }

    public static BidiFormatter getInstance(Locale locale) {
        return getDefaultInstanceFromContext(isRtlLocale(locale));
    }

    public String unicodeWrap(String str, TextDirectionHeuristic textDirectionHeuristic) {
        return unicodeWrap(str, textDirectionHeuristic, true);
    }

    public CharSequence unicodeWrap(CharSequence charSequence, TextDirectionHeuristic textDirectionHeuristic) {
        return unicodeWrap(charSequence, textDirectionHeuristic, true);
    }

    public String unicodeWrap(String str, boolean z2) {
        return unicodeWrap(str, this.mDefaultTextDirectionHeuristic, z2);
    }

    public CharSequence unicodeWrap(CharSequence charSequence, boolean z2) {
        return unicodeWrap(charSequence, this.mDefaultTextDirectionHeuristic, z2);
    }

    public String unicodeWrap(String str) {
        return unicodeWrap(str, this.mDefaultTextDirectionHeuristic, true);
    }

    public CharSequence unicodeWrap(CharSequence charSequence) {
        return unicodeWrap(charSequence, this.mDefaultTextDirectionHeuristic, true);
    }
}
