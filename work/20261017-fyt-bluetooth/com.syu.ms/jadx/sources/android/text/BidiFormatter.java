package android.text;

import android.net.dhcp.DhcpPacket;
import android.telephony.PhoneNumberUtils;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
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
        private final String text;

        static {
            for (int i2 = 0; i2 < 1792; i2++) {
                DIR_TYPE_CACHE[i2] = Character.getDirectionality(i2);
            }
        }

        public DirectionalityEstimator(String str, boolean z2) {
            this.text = str;
            this.isHtml = z2;
            this.length = str.length();
        }

        private static byte getCachedDirectionality(char c2) {
            return c2 < 1792 ? DIR_TYPE_CACHE[c2] : Character.getDirectionality(c2);
        }

        private byte skipEntityBackward() {
            char cCharAt;
            int i2 = this.charIndex;
            do {
                int i3 = this.charIndex;
                if (i3 <= 0) {
                    break;
                }
                String str = this.text;
                int i4 = i3 - 1;
                this.charIndex = i4;
                cCharAt = str.charAt(i4);
                this.lastChar = cCharAt;
                if (cCharAt == '&') {
                    return DhcpPacket.DHCP_HOST_NAME;
                }
            } while (cCharAt != ';');
            this.charIndex = i2;
            this.lastChar = PhoneNumberUtils.WAIT;
            return (byte) 13;
        }

        private byte skipEntityForward() {
            char cCharAt;
            do {
                int i2 = this.charIndex;
                if (i2 >= this.length) {
                    return DhcpPacket.DHCP_HOST_NAME;
                }
                String str = this.text;
                this.charIndex = i2 + 1;
                cCharAt = str.charAt(i2);
                this.lastChar = cCharAt;
            } while (cCharAt != ';');
            return DhcpPacket.DHCP_HOST_NAME;
        }

        private byte skipTagBackward() {
            char cCharAt;
            int i2 = this.charIndex;
            while (true) {
                int i3 = this.charIndex;
                if (i3 <= 0) {
                    break;
                }
                String str = this.text;
                int i4 = i3 - 1;
                this.charIndex = i4;
                char cCharAt2 = str.charAt(i4);
                this.lastChar = cCharAt2;
                if (cCharAt2 == '<') {
                    return DhcpPacket.DHCP_HOST_NAME;
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
                        String str2 = this.text;
                        int i6 = i5 - 1;
                        this.charIndex = i6;
                        cCharAt = str2.charAt(i6);
                        this.lastChar = cCharAt;
                    } while (cCharAt != cCharAt2);
                }
            }
            this.charIndex = i2;
            this.lastChar = '>';
            return (byte) 13;
        }

        private byte skipTagForward() {
            char cCharAt;
            int i2 = this.charIndex;
            while (true) {
                int i3 = this.charIndex;
                if (i3 >= this.length) {
                    this.charIndex = i2;
                    this.lastChar = '<';
                    return (byte) 13;
                }
                String str = this.text;
                this.charIndex = i3 + 1;
                char cCharAt2 = str.charAt(i3);
                this.lastChar = cCharAt2;
                if (cCharAt2 == '>') {
                    return DhcpPacket.DHCP_HOST_NAME;
                }
                if (cCharAt2 == '\"' || cCharAt2 == '\'') {
                    do {
                        int i4 = this.charIndex;
                        if (i4 >= this.length) {
                            break;
                        }
                        String str2 = this.text;
                        this.charIndex = i4 + 1;
                        cCharAt = str2.charAt(i4);
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
                return Character.getDirectionality(iCodePointBefore);
            }
            this.charIndex--;
            byte cachedDirectionality = getCachedDirectionality(this.lastChar);
            if (!this.isHtml) {
                return cachedDirectionality;
            }
            char c2 = this.lastChar;
            if (c2 == '>') {
                return skipTagBackward();
            }
            return c2 == ';' ? skipEntityBackward() : cachedDirectionality;
        }

        public byte dirTypeForward() {
            char cCharAt = this.text.charAt(this.charIndex);
            this.lastChar = cCharAt;
            if (Character.isHighSurrogate(cCharAt)) {
                int iCodePointAt = Character.codePointAt(this.text, this.charIndex);
                this.charIndex += Character.charCount(iCodePointAt);
                return Character.getDirectionality(iCodePointAt);
            }
            this.charIndex++;
            byte cachedDirectionality = getCachedDirectionality(this.lastChar);
            if (!this.isHtml) {
                return cachedDirectionality;
            }
            char c2 = this.lastChar;
            if (c2 == '<') {
                return skipTagForward();
            }
            return c2 == '&' ? skipEntityForward() : cachedDirectionality;
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

    private static int getEntryDir(String str) {
        return new DirectionalityEstimator(str, false).getEntryDir();
    }

    private static int getExitDir(String str) {
        return new DirectionalityEstimator(str, false).getExitDir();
    }

    public static BidiFormatter getInstance() {
        return new Builder().build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isRtlLocale(Locale locale) {
        return TextUtils.getLayoutDirectionFromLocale(locale) == 1;
    }

    public boolean getStereoReset() {
        return (this.mFlags & 2) != 0;
    }

    public boolean isRtl(String str) {
        return this.mDefaultTextDirectionHeuristic.isRtl(str, 0, str.length());
    }

    public boolean isRtlContext() {
        return this.mIsRtlContext;
    }

    public String markAfter(String str, TextDirectionHeuristic textDirectionHeuristic) {
        boolean zIsRtl = textDirectionHeuristic.isRtl(str, 0, str.length());
        if (!this.mIsRtlContext && (zIsRtl || getExitDir(str) == 1)) {
            return LRM_STRING;
        }
        if (this.mIsRtlContext) {
            return (!zIsRtl || getExitDir(str) == -1) ? RLM_STRING : "";
        }
        return "";
    }

    public String markBefore(String str, TextDirectionHeuristic textDirectionHeuristic) {
        boolean zIsRtl = textDirectionHeuristic.isRtl(str, 0, str.length());
        if (!this.mIsRtlContext && (zIsRtl || getEntryDir(str) == 1)) {
            return LRM_STRING;
        }
        if (this.mIsRtlContext) {
            return (!zIsRtl || getEntryDir(str) == -1) ? RLM_STRING : "";
        }
        return "";
    }

    public String unicodeWrap(String str, TextDirectionHeuristic textDirectionHeuristic, boolean z2) {
        boolean zIsRtl = textDirectionHeuristic.isRtl(str, 0, str.length());
        StringBuilder sb = new StringBuilder();
        if (getStereoReset() && z2) {
            sb.append(markBefore(str, zIsRtl ? TextDirectionHeuristics.RTL : TextDirectionHeuristics.LTR));
        }
        if (zIsRtl != this.mIsRtlContext) {
            sb.append(zIsRtl ? RLE : LRE);
            sb.append(str);
            sb.append(PDF);
        } else {
            sb.append(str);
        }
        if (z2) {
            sb.append(markAfter(str, zIsRtl ? TextDirectionHeuristics.RTL : TextDirectionHeuristics.LTR));
        }
        return sb.toString();
    }

    public static final class Builder {
        private int mFlags;
        private boolean mIsRtlContext;
        private TextDirectionHeuristic mTextDirectionHeuristic;

        public Builder() {
            initialize(BidiFormatter.isRtlLocale(Locale.getDefault()));
        }

        private static BidiFormatter getDefaultInstanceFromContext(boolean z2) {
            return z2 ? BidiFormatter.DEFAULT_RTL_INSTANCE : BidiFormatter.DEFAULT_LTR_INSTANCE;
        }

        private void initialize(boolean z2) {
            this.mIsRtlContext = z2;
            this.mTextDirectionHeuristic = BidiFormatter.DEFAULT_TEXT_DIRECTION_HEURISTIC;
            this.mFlags = 2;
        }

        public BidiFormatter build() {
            return (this.mFlags == 2 && this.mTextDirectionHeuristic == BidiFormatter.DEFAULT_TEXT_DIRECTION_HEURISTIC) ? getDefaultInstanceFromContext(this.mIsRtlContext) : new BidiFormatter(this.mIsRtlContext, this.mFlags, this.mTextDirectionHeuristic);
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
        return new Builder(z2).build();
    }

    public static BidiFormatter getInstance(Locale locale) {
        return new Builder(locale).build();
    }

    public String unicodeWrap(String str, TextDirectionHeuristic textDirectionHeuristic) {
        return unicodeWrap(str, textDirectionHeuristic, true);
    }

    public String unicodeWrap(String str, boolean z2) {
        return unicodeWrap(str, this.mDefaultTextDirectionHeuristic, z2);
    }

    public String unicodeWrap(String str) {
        return unicodeWrap(str, this.mDefaultTextDirectionHeuristic, true);
    }
}
