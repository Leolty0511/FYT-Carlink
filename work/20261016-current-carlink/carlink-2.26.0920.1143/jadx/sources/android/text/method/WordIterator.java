package android.text.method;

import android.accessibilityservice.c;
import android.icu.lang.UCharacter;
import android.icu.text.BreakIterator;
import android.mtp.MtpConstants;
import android.text.CharSequenceCharacterIterator;
import android.text.Selection;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public class WordIterator implements Selection.PositionIterator {
    private static final int WINDOW_WIDTH = 50;
    private CharSequence mCharSeq;
    private int mEnd;
    private final BreakIterator mIterator;
    private int mStart;

    public WordIterator() {
        this(Locale.getDefault());
    }

    private void checkOffsetIsValid(int i2) {
        if (this.mStart > i2 || i2 > this.mEnd) {
            StringBuilder sbS = c.s("Invalid offset: ", i2, ". Valid range is [");
            sbS.append(this.mStart);
            sbS.append(", ");
            throw new IllegalArgumentException(c.m(sbS, this.mEnd, "]"));
        }
    }

    private boolean isAfterLetterOrDigit(int i2) {
        return this.mStart < i2 && i2 <= this.mEnd && Character.isLetterOrDigit(Character.codePointBefore(this.mCharSeq, i2));
    }

    public static boolean isMidWordPunctuation(Locale locale, int i2) {
        int intPropertyValue = UCharacter.getIntPropertyValue(i2, MtpConstants.OPERATION_GET_DEVICE_PROP_DESC);
        return intPropertyValue == 4 || intPropertyValue == 11 || intPropertyValue == 15;
    }

    private boolean isOnLetterOrDigit(int i2) {
        return this.mStart <= i2 && i2 < this.mEnd && Character.isLetterOrDigit(Character.codePointAt(this.mCharSeq, i2));
    }

    private static boolean isPunctuation(int i2) {
        int type = Character.getType(i2);
        return type == 23 || type == 20 || type == 22 || type == 30 || type == 29 || type == 24 || type == 21;
    }

    private boolean isPunctuationEndBoundary(int i2) {
        return !isOnPunctuation(i2) && isAfterPunctuation(i2);
    }

    private boolean isPunctuationStartBoundary(int i2) {
        return isOnPunctuation(i2) && !isAfterPunctuation(i2);
    }

    @Override // android.text.Selection.PositionIterator
    public int following(int i2) {
        checkOffsetIsValid(i2);
        do {
            i2 = this.mIterator.following(i2);
            if (i2 == -1) {
                break;
            }
        } while (!isAfterLetterOrDigit(i2));
        return i2;
    }

    public int getBeginning(int i2) {
        return getBeginning(i2, false);
    }

    public int getEnd(int i2) {
        return getEnd(i2, false);
    }

    public int getNextWordEndOnTwoWordBoundary(int i2) {
        return getEnd(i2, true);
    }

    public int getPrevWordBeginningOnTwoWordsBoundary(int i2) {
        return getBeginning(i2, true);
    }

    public int getPunctuationBeginning(int i2) {
        checkOffsetIsValid(i2);
        while (i2 != -1 && !isPunctuationStartBoundary(i2)) {
            i2 = prevBoundary(i2);
        }
        return i2;
    }

    public int getPunctuationEnd(int i2) {
        checkOffsetIsValid(i2);
        while (i2 != -1 && !isPunctuationEndBoundary(i2)) {
            i2 = nextBoundary(i2);
        }
        return i2;
    }

    public boolean isAfterPunctuation(int i2) {
        if (this.mStart >= i2 || i2 > this.mEnd) {
            return false;
        }
        return isPunctuation(Character.codePointBefore(this.mCharSeq, i2));
    }

    public boolean isBoundary(int i2) {
        checkOffsetIsValid(i2);
        return this.mIterator.isBoundary(i2);
    }

    public boolean isOnPunctuation(int i2) {
        if (this.mStart > i2 || i2 >= this.mEnd) {
            return false;
        }
        return isPunctuation(Character.codePointAt(this.mCharSeq, i2));
    }

    public int nextBoundary(int i2) {
        checkOffsetIsValid(i2);
        return this.mIterator.following(i2);
    }

    @Override // android.text.Selection.PositionIterator
    public int preceding(int i2) {
        checkOffsetIsValid(i2);
        do {
            i2 = this.mIterator.preceding(i2);
            if (i2 == -1) {
                break;
            }
        } while (!isOnLetterOrDigit(i2));
        return i2;
    }

    public int prevBoundary(int i2) {
        checkOffsetIsValid(i2);
        return this.mIterator.preceding(i2);
    }

    public void setCharSequence(CharSequence charSequence, int i2, int i3) {
        if (i2 < 0 || i3 > charSequence.length()) {
            throw new IndexOutOfBoundsException("input indexes are outside the CharSequence");
        }
        this.mCharSeq = charSequence;
        this.mStart = Math.max(0, i2 - 50);
        int iMin = Math.min(charSequence.length(), i3 + 50);
        this.mEnd = iMin;
        this.mIterator.setText(new CharSequenceCharacterIterator(charSequence, this.mStart, iMin));
    }

    public WordIterator(Locale locale) {
        this.mIterator = BreakIterator.getWordInstance(locale);
    }

    private int getBeginning(int i2, boolean z2) {
        checkOffsetIsValid(i2);
        if (isOnLetterOrDigit(i2)) {
            return (!this.mIterator.isBoundary(i2) || (isAfterLetterOrDigit(i2) && z2)) ? this.mIterator.preceding(i2) : i2;
        }
        if (isAfterLetterOrDigit(i2)) {
            return this.mIterator.preceding(i2);
        }
        return -1;
    }

    private int getEnd(int i2, boolean z2) {
        checkOffsetIsValid(i2);
        if (isAfterLetterOrDigit(i2)) {
            return (!this.mIterator.isBoundary(i2) || (isOnLetterOrDigit(i2) && z2)) ? this.mIterator.following(i2) : i2;
        }
        if (isOnLetterOrDigit(i2)) {
            return this.mIterator.following(i2);
        }
        return -1;
    }
}
