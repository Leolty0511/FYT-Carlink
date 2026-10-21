package android.text;

import android.content.res.Configuration;
import java.nio.CharBuffer;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public class TextDirectionHeuristics {
    public static final TextDirectionHeuristic ANYRTL_LTR;
    public static final TextDirectionHeuristic FIRSTSTRONG_LTR;
    public static final TextDirectionHeuristic FIRSTSTRONG_RTL;
    public static final TextDirectionHeuristic LOCALE;
    public static final TextDirectionHeuristic LTR;
    public static final TextDirectionHeuristic RTL;
    private static final int STATE_FALSE = 1;
    private static final int STATE_TRUE = 0;
    private static final int STATE_UNKNOWN = 2;

    public static class AnyStrong implements TextDirectionAlgorithm {
        private final boolean mLookForRtl;
        public static final AnyStrong INSTANCE_RTL = new AnyStrong(true);
        public static final AnyStrong INSTANCE_LTR = new AnyStrong(false);

        private AnyStrong(boolean z2) {
            this.mLookForRtl = z2;
        }

        @Override // android.text.TextDirectionHeuristics.TextDirectionAlgorithm
        public int checkRtl(CharSequence charSequence, int i2, int i3) {
            int i4 = i3 + i2;
            boolean z2 = false;
            int i5 = 0;
            while (i2 < i4) {
                int iCodePointAt = Character.codePointAt(charSequence, i2);
                if (8294 <= iCodePointAt && iCodePointAt <= 8296) {
                    i5++;
                } else if (iCodePointAt == 8297) {
                    if (i5 > 0) {
                        i5--;
                    }
                } else if (i5 != 0) {
                    continue;
                } else {
                    int iIsRtlCodePoint = TextDirectionHeuristics.isRtlCodePoint(iCodePointAt);
                    if (iIsRtlCodePoint != 0) {
                        if (iIsRtlCodePoint != 1) {
                            continue;
                        } else if (!this.mLookForRtl) {
                            return 1;
                        }
                    } else if (this.mLookForRtl) {
                        return 0;
                    }
                    z2 = true;
                }
                i2 += Character.charCount(iCodePointAt);
                z2 = z2;
            }
            if (z2) {
                return this.mLookForRtl ? 1 : 0;
            }
            return 2;
        }
    }

    public static class FirstStrong implements TextDirectionAlgorithm {
        public static final FirstStrong INSTANCE = new FirstStrong();

        private FirstStrong() {
        }

        @Override // android.text.TextDirectionHeuristics.TextDirectionAlgorithm
        public int checkRtl(CharSequence charSequence, int i2, int i3) {
            int i4 = i3 + i2;
            int i5 = 0;
            int iIsRtlCodePoint = 2;
            while (i2 < i4 && iIsRtlCodePoint == 2) {
                int iCodePointAt = Character.codePointAt(charSequence, i2);
                if (8294 <= iCodePointAt && iCodePointAt <= 8296) {
                    i5++;
                } else if (iCodePointAt == 8297) {
                    if (i5 > 0) {
                        i5--;
                    }
                } else if (i5 == 0) {
                    iIsRtlCodePoint = TextDirectionHeuristics.isRtlCodePoint(iCodePointAt);
                }
                i2 += Character.charCount(iCodePointAt);
            }
            return iIsRtlCodePoint;
        }
    }

    public interface TextDirectionAlgorithm {
        int checkRtl(CharSequence charSequence, int i2, int i3);
    }

    public static abstract class TextDirectionHeuristicImpl implements TextDirectionHeuristic {
        private final TextDirectionAlgorithm mAlgorithm;

        public TextDirectionHeuristicImpl(TextDirectionAlgorithm textDirectionAlgorithm) {
            this.mAlgorithm = textDirectionAlgorithm;
        }

        private boolean doCheck(CharSequence charSequence, int i2, int i3) {
            int iCheckRtl = this.mAlgorithm.checkRtl(charSequence, i2, i3);
            if (iCheckRtl == 0) {
                return true;
            }
            if (iCheckRtl != 1) {
                return defaultIsRtl();
            }
            return false;
        }

        public abstract boolean defaultIsRtl();

        @Override // android.text.TextDirectionHeuristic
        public boolean isRtl(char[] cArr, int i2, int i3) {
            return isRtl(CharBuffer.wrap(cArr), i2, i3);
        }

        @Override // android.text.TextDirectionHeuristic
        public boolean isRtl(CharSequence charSequence, int i2, int i3) {
            if (charSequence == null || i2 < 0 || i3 < 0 || charSequence.length() - i3 < i2) {
                throw new IllegalArgumentException();
            }
            return this.mAlgorithm == null ? defaultIsRtl() : doCheck(charSequence, i2, i3);
        }
    }

    public static class TextDirectionHeuristicInternal extends TextDirectionHeuristicImpl {
        private final boolean mDefaultIsRtl;

        @Override // android.text.TextDirectionHeuristics.TextDirectionHeuristicImpl
        public boolean defaultIsRtl() {
            return this.mDefaultIsRtl;
        }

        private TextDirectionHeuristicInternal(TextDirectionAlgorithm textDirectionAlgorithm, boolean z2) {
            super(textDirectionAlgorithm);
            this.mDefaultIsRtl = z2;
        }
    }

    public static class TextDirectionHeuristicLocale extends TextDirectionHeuristicImpl {
        public static final TextDirectionHeuristicLocale INSTANCE = new TextDirectionHeuristicLocale();

        public TextDirectionHeuristicLocale() {
            super(null);
        }

        @Override // android.text.TextDirectionHeuristics.TextDirectionHeuristicImpl
        public boolean defaultIsRtl() {
            return TextUtils.getLayoutDirectionFromLocale(Locale.getDefault()) == 1;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static {
        boolean z2 = false;
        LTR = new TextDirectionHeuristicInternal(null, z2);
        boolean z3 = true;
        RTL = new TextDirectionHeuristicInternal(0 == true ? 1 : 0, z3);
        FirstStrong firstStrong = FirstStrong.INSTANCE;
        FIRSTSTRONG_LTR = new TextDirectionHeuristicInternal(firstStrong, z2);
        FIRSTSTRONG_RTL = new TextDirectionHeuristicInternal(firstStrong, z3);
        ANYRTL_LTR = new TextDirectionHeuristicInternal(AnyStrong.INSTANCE_RTL, z2);
        LOCALE = TextDirectionHeuristicLocale.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int isRtlCodePoint(int i2) {
        byte directionality = Character.getDirectionality(i2);
        if (directionality != -1) {
            if (directionality != 0) {
                return (directionality == 1 || directionality == 2) ? 0 : 2;
            }
            return 1;
        }
        if ((1424 > i2 || i2 > 2303) && ((64285 > i2 || i2 > 64975) && ((65008 > i2 || i2 > 65023) && ((65136 > i2 || i2 > 65279) && ((67584 > i2 || i2 > 69631) && (124928 > i2 || i2 > 126975)))))) {
            return ((8293 > i2 || i2 > 8297) && (65520 > i2 || i2 > 65528) && ((917504 > i2 || i2 > 921599) && ((64976 > i2 || i2 > 65007) && (i2 & Configuration.DENSITY_DPI_ANY) != 65534 && ((8352 > i2 || i2 > 8399) && (55296 > i2 || i2 > 57343))))) ? 1 : 2;
        }
        return 0;
    }
}
