package android.text.method;

import android.text.Selection;
import android.text.SpannableStringBuilder;
import java.text.BreakIterator;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class WordIterator implements Selection.PositionIterator {
    private static final int WINDOW_WIDTH = 50;
    private BreakIterator mIterator;
    private int mOffsetShift;
    private String mString;

    public WordIterator() {
        this(Locale.getDefault());
    }

    private void checkOffsetIsValid(int i2) {
        if (i2 < 0 || i2 > this.mString.length()) {
            throw new IllegalArgumentException("Invalid offset: " + (i2 + this.mOffsetShift) + ". Valid range is [" + this.mOffsetShift + ", " + (this.mString.length() + this.mOffsetShift) + "]");
        }
    }

    private boolean isAfterLetterOrDigit(int i2) {
        return i2 >= 1 && i2 <= this.mString.length() && Character.isLetterOrDigit(this.mString.codePointBefore(i2));
    }

    private boolean isOnLetterOrDigit(int i2) {
        return i2 >= 0 && i2 < this.mString.length() && Character.isLetterOrDigit(this.mString.codePointAt(i2));
    }

    @Override // android.text.Selection.PositionIterator
    public int following(int i2) {
        int iFollowing = i2 - this.mOffsetShift;
        do {
            iFollowing = this.mIterator.following(iFollowing);
            if (iFollowing == -1) {
                return -1;
            }
        } while (!isAfterLetterOrDigit(iFollowing));
        return iFollowing + this.mOffsetShift;
    }

    public int getBeginning(int i2) {
        int i3;
        int iPreceding = i2 - this.mOffsetShift;
        checkOffsetIsValid(iPreceding);
        if (isOnLetterOrDigit(iPreceding)) {
            if (this.mIterator.isBoundary(iPreceding)) {
                i3 = this.mOffsetShift;
            } else {
                iPreceding = this.mIterator.preceding(iPreceding);
                i3 = this.mOffsetShift;
            }
        } else {
            if (!isAfterLetterOrDigit(iPreceding)) {
                return -1;
            }
            iPreceding = this.mIterator.preceding(iPreceding);
            i3 = this.mOffsetShift;
        }
        return iPreceding + i3;
    }

    public int getEnd(int i2) {
        int i3;
        int iFollowing = i2 - this.mOffsetShift;
        checkOffsetIsValid(iFollowing);
        if (isAfterLetterOrDigit(iFollowing)) {
            if (this.mIterator.isBoundary(iFollowing)) {
                i3 = this.mOffsetShift;
            } else {
                iFollowing = this.mIterator.following(iFollowing);
                i3 = this.mOffsetShift;
            }
        } else {
            if (!isOnLetterOrDigit(iFollowing)) {
                return -1;
            }
            iFollowing = this.mIterator.following(iFollowing);
            i3 = this.mOffsetShift;
        }
        return iFollowing + i3;
    }

    @Override // android.text.Selection.PositionIterator
    public int preceding(int i2) {
        int iPreceding = i2 - this.mOffsetShift;
        do {
            iPreceding = this.mIterator.preceding(iPreceding);
            if (iPreceding == -1) {
                return -1;
            }
        } while (!isOnLetterOrDigit(iPreceding));
        return iPreceding + this.mOffsetShift;
    }

    public void setCharSequence(CharSequence charSequence, int i2, int i3) {
        this.mOffsetShift = Math.max(0, i2 - 50);
        int iMin = Math.min(charSequence.length(), i3 + 50);
        if (charSequence instanceof SpannableStringBuilder) {
            this.mString = ((SpannableStringBuilder) charSequence).substring(this.mOffsetShift, iMin);
        } else {
            this.mString = charSequence.subSequence(this.mOffsetShift, iMin).toString();
        }
        this.mIterator.setText(this.mString);
    }

    public WordIterator(Locale locale) {
        this.mIterator = BreakIterator.getWordInstance(locale);
    }
}
