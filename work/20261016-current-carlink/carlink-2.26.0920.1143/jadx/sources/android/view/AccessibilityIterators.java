package android.view;

import android.content.res.Configuration;
import java.text.BreakIterator;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public final class AccessibilityIterators {

    public static abstract class AbstractTextSegmentIterator implements TextSegmentIterator {
        private final int[] mSegment = new int[2];
        protected String mText;

        public int[] getRange(int i2, int i3) {
            if (i2 < 0 || i3 < 0 || i2 == i3) {
                return null;
            }
            int[] iArr = this.mSegment;
            iArr[0] = i2;
            iArr[1] = i3;
            return iArr;
        }

        public void initialize(String str) {
            this.mText = str;
        }
    }

    public static class CharacterTextSegmentIterator extends AbstractTextSegmentIterator implements ViewRootImpl.ConfigChangedCallback {
        private static CharacterTextSegmentIterator sInstance;
        protected BreakIterator mImpl;
        private Locale mLocale;

        public static CharacterTextSegmentIterator getInstance(Locale locale) {
            if (sInstance == null) {
                sInstance = new CharacterTextSegmentIterator(locale);
            }
            return sInstance;
        }

        @Override // android.view.AccessibilityIterators.TextSegmentIterator
        public int[] following(int i2) {
            int length = this.mText.length();
            if (length <= 0 || i2 >= length) {
                return null;
            }
            if (i2 < 0) {
                i2 = 0;
            }
            while (!this.mImpl.isBoundary(i2)) {
                i2 = this.mImpl.following(i2);
                if (i2 == -1) {
                    return null;
                }
            }
            int iFollowing = this.mImpl.following(i2);
            if (iFollowing == -1) {
                return null;
            }
            return getRange(i2, iFollowing);
        }

        @Override // android.view.AccessibilityIterators.AbstractTextSegmentIterator
        public void initialize(String str) {
            super.initialize(str);
            this.mImpl.setText(str);
        }

        @Override // android.view.ViewRootImpl.ConfigChangedCallback
        public void onConfigurationChanged(Configuration configuration) {
            Locale locale = configuration.getLocales().get(0);
            if (this.mLocale.equals(locale)) {
                return;
            }
            this.mLocale = locale;
            onLocaleChanged(locale);
        }

        public void onLocaleChanged(Locale locale) {
            this.mImpl = BreakIterator.getCharacterInstance(locale);
        }

        @Override // android.view.AccessibilityIterators.TextSegmentIterator
        public int[] preceding(int i2) {
            int length = this.mText.length();
            if (length <= 0 || i2 <= 0) {
                return null;
            }
            if (i2 > length) {
                i2 = length;
            }
            while (!this.mImpl.isBoundary(i2)) {
                i2 = this.mImpl.preceding(i2);
                if (i2 == -1) {
                    return null;
                }
            }
            int iPreceding = this.mImpl.preceding(i2);
            if (iPreceding == -1) {
                return null;
            }
            return getRange(iPreceding, i2);
        }

        private CharacterTextSegmentIterator(Locale locale) {
            this.mLocale = locale;
            onLocaleChanged(locale);
            ViewRootImpl.addConfigCallback(this);
        }
    }

    public static class ParagraphTextSegmentIterator extends AbstractTextSegmentIterator {
        private static ParagraphTextSegmentIterator sInstance;

        public static ParagraphTextSegmentIterator getInstance() {
            if (sInstance == null) {
                sInstance = new ParagraphTextSegmentIterator();
            }
            return sInstance;
        }

        private boolean isEndBoundary(int i2) {
            return i2 > 0 && this.mText.charAt(i2 + (-1)) != '\n' && (i2 == this.mText.length() || this.mText.charAt(i2) == '\n');
        }

        private boolean isStartBoundary(int i2) {
            return this.mText.charAt(i2) != '\n' && (i2 == 0 || this.mText.charAt(i2 - 1) == '\n');
        }

        @Override // android.view.AccessibilityIterators.TextSegmentIterator
        public int[] following(int i2) {
            int length = this.mText.length();
            if (length <= 0 || i2 >= length) {
                return null;
            }
            if (i2 < 0) {
                i2 = 0;
            }
            while (i2 < length && this.mText.charAt(i2) == '\n' && !isStartBoundary(i2)) {
                i2++;
            }
            if (i2 >= length) {
                return null;
            }
            int i3 = i2 + 1;
            while (i3 < length && !isEndBoundary(i3)) {
                i3++;
            }
            return getRange(i2, i3);
        }

        @Override // android.view.AccessibilityIterators.TextSegmentIterator
        public int[] preceding(int i2) {
            int length = this.mText.length();
            if (length <= 0 || i2 <= 0) {
                return null;
            }
            if (i2 > length) {
                i2 = length;
            }
            while (i2 > 0 && this.mText.charAt(i2 - 1) == '\n' && !isEndBoundary(i2)) {
                i2--;
            }
            if (i2 <= 0) {
                return null;
            }
            int i3 = i2 - 1;
            while (i3 > 0 && !isStartBoundary(i3)) {
                i3--;
            }
            return getRange(i3, i2);
        }
    }

    public interface TextSegmentIterator {
        int[] following(int i2);

        int[] preceding(int i2);
    }

    public static class WordTextSegmentIterator extends CharacterTextSegmentIterator {
        private static WordTextSegmentIterator sInstance;

        private WordTextSegmentIterator(Locale locale) {
            super(locale);
        }

        public static WordTextSegmentIterator getInstance(Locale locale) {
            if (sInstance == null) {
                sInstance = new WordTextSegmentIterator(locale);
            }
            return sInstance;
        }

        private boolean isEndBoundary(int i2) {
            return i2 > 0 && isLetterOrDigit(i2 + (-1)) && (i2 == this.mText.length() || !isLetterOrDigit(i2));
        }

        private boolean isLetterOrDigit(int i2) {
            if (i2 < 0 || i2 >= this.mText.length()) {
                return false;
            }
            return Character.isLetterOrDigit(this.mText.codePointAt(i2));
        }

        private boolean isStartBoundary(int i2) {
            return isLetterOrDigit(i2) && (i2 == 0 || !isLetterOrDigit(i2 - 1));
        }

        @Override // android.view.AccessibilityIterators.CharacterTextSegmentIterator, android.view.AccessibilityIterators.TextSegmentIterator
        public int[] following(int i2) {
            if (this.mText.length() <= 0 || i2 >= this.mText.length()) {
                return null;
            }
            if (i2 < 0) {
                i2 = 0;
            }
            while (!isLetterOrDigit(i2) && !isStartBoundary(i2)) {
                i2 = this.mImpl.following(i2);
                if (i2 == -1) {
                    return null;
                }
            }
            int iFollowing = this.mImpl.following(i2);
            if (iFollowing == -1 || !isEndBoundary(iFollowing)) {
                return null;
            }
            return getRange(i2, iFollowing);
        }

        @Override // android.view.AccessibilityIterators.CharacterTextSegmentIterator
        public void onLocaleChanged(Locale locale) {
            this.mImpl = BreakIterator.getWordInstance(locale);
        }

        @Override // android.view.AccessibilityIterators.CharacterTextSegmentIterator, android.view.AccessibilityIterators.TextSegmentIterator
        public int[] preceding(int i2) {
            int length = this.mText.length();
            if (length <= 0 || i2 <= 0) {
                return null;
            }
            if (i2 > length) {
                i2 = length;
            }
            while (i2 > 0 && !isLetterOrDigit(i2 - 1) && !isEndBoundary(i2)) {
                i2 = this.mImpl.preceding(i2);
                if (i2 == -1) {
                    return null;
                }
            }
            int iPreceding = this.mImpl.preceding(i2);
            if (iPreceding == -1 || !isStartBoundary(iPreceding)) {
                return null;
            }
            return getRange(iPreceding, i2);
        }
    }
}
