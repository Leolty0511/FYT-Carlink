package android.text;

import com.android.internal.util.Preconditions;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public interface InputFilter {

    public static class LengthFilter implements InputFilter {
        private final int mMax;

        public LengthFilter(int i2) {
            this.mMax = i2;
        }

        @Override // android.text.InputFilter
        public CharSequence filter(CharSequence charSequence, int i2, int i3, Spanned spanned, int i4, int i5) {
            int length = this.mMax - (spanned.length() - (i5 - i4));
            if (length <= 0) {
                return "";
            }
            if (length >= i3 - i2) {
                return null;
            }
            int i6 = length + i2;
            return (Character.isHighSurrogate(charSequence.charAt(i6 + (-1))) && (i6 = i6 + (-1)) == i2) ? "" : charSequence.subSequence(i2, i6);
        }

        public int getMax() {
            return this.mMax;
        }
    }

    CharSequence filter(CharSequence charSequence, int i2, int i3, Spanned spanned, int i4, int i5);

    public static class AllCaps implements InputFilter {
        private final Locale mLocale;

        public static class CharSequenceWrapper implements CharSequence, Spanned {
            private final int mEnd;
            private final int mLength;
            private final CharSequence mSource;
            private final int mStart;

            public CharSequenceWrapper(CharSequence charSequence, int i2, int i3) {
                this.mSource = charSequence;
                this.mStart = i2;
                this.mEnd = i3;
                this.mLength = i3 - i2;
            }

            @Override // java.lang.CharSequence
            public char charAt(int i2) {
                if (i2 < 0 || i2 >= this.mLength) {
                    throw new IndexOutOfBoundsException();
                }
                return this.mSource.charAt(this.mStart + i2);
            }

            @Override // android.text.Spanned
            public int getSpanEnd(Object obj) {
                return ((Spanned) this.mSource).getSpanEnd(obj) - this.mStart;
            }

            @Override // android.text.Spanned
            public int getSpanFlags(Object obj) {
                return ((Spanned) this.mSource).getSpanFlags(obj);
            }

            @Override // android.text.Spanned
            public int getSpanStart(Object obj) {
                return ((Spanned) this.mSource).getSpanStart(obj) - this.mStart;
            }

            @Override // android.text.Spanned
            public <T> T[] getSpans(int i2, int i3, Class<T> cls) {
                Spanned spanned = (Spanned) this.mSource;
                int i4 = this.mStart;
                return (T[]) spanned.getSpans(i2 + i4, i4 + i3, cls);
            }

            @Override // java.lang.CharSequence
            public int length() {
                return this.mLength;
            }

            @Override // android.text.Spanned
            public int nextSpanTransition(int i2, int i3, Class cls) {
                Spanned spanned = (Spanned) this.mSource;
                int i4 = this.mStart;
                return spanned.nextSpanTransition(i2 + i4, i4 + i3, cls) - this.mStart;
            }

            @Override // java.lang.CharSequence
            public CharSequence subSequence(int i2, int i3) {
                if (i2 < 0 || i3 < 0 || i3 > this.mLength || i2 > i3) {
                    throw new IndexOutOfBoundsException();
                }
                CharSequence charSequence = this.mSource;
                int i4 = this.mStart;
                return new CharSequenceWrapper(charSequence, i2 + i4, i4 + i3);
            }

            @Override // java.lang.CharSequence
            public String toString() {
                return this.mSource.subSequence(this.mStart, this.mEnd).toString();
            }
        }

        public AllCaps() {
            this.mLocale = null;
        }

        @Override // android.text.InputFilter
        public CharSequence filter(CharSequence charSequence, int i2, int i3, Spanned spanned, int i4, int i5) {
            boolean z2;
            CharSequence upperCase;
            CharSequenceWrapper charSequenceWrapper = new CharSequenceWrapper(charSequence, i2, i3);
            int i6 = i3 - i2;
            boolean z3 = false;
            int iCharCount = 0;
            while (iCharCount < i6) {
                int iCodePointAt = Character.codePointAt(charSequenceWrapper, iCharCount);
                if (Character.isLowerCase(iCodePointAt) || Character.isTitleCase(iCodePointAt)) {
                    z3 = true;
                    break;
                }
                iCharCount += Character.charCount(iCodePointAt);
            }
            if (z3 && (upperCase = TextUtils.toUpperCase(this.mLocale, charSequenceWrapper, (z2 = charSequence instanceof Spanned))) != charSequenceWrapper) {
                return z2 ? new SpannableString(upperCase) : upperCase.toString();
            }
            return null;
        }

        public AllCaps(Locale locale) {
            Preconditions.checkNotNull(locale);
            this.mLocale = locale;
        }
    }
}
