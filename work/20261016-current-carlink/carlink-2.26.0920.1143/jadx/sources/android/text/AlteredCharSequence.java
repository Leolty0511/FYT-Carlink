package android.text;

/* JADX INFO: loaded from: classes2.dex */
public class AlteredCharSequence implements CharSequence, GetChars {
    private char[] mChars;
    private int mEnd;
    private CharSequence mSource;
    private int mStart;

    public static class AlteredSpanned extends AlteredCharSequence implements Spanned {
        private Spanned mSpanned;

        @Override // android.text.Spanned
        public int getSpanEnd(Object obj) {
            return this.mSpanned.getSpanEnd(obj);
        }

        @Override // android.text.Spanned
        public int getSpanFlags(Object obj) {
            return this.mSpanned.getSpanFlags(obj);
        }

        @Override // android.text.Spanned
        public int getSpanStart(Object obj) {
            return this.mSpanned.getSpanStart(obj);
        }

        @Override // android.text.Spanned
        public <T> T[] getSpans(int i2, int i3, Class<T> cls) {
            return (T[]) this.mSpanned.getSpans(i2, i3, cls);
        }

        @Override // android.text.Spanned
        public int nextSpanTransition(int i2, int i3, Class cls) {
            return this.mSpanned.nextSpanTransition(i2, i3, cls);
        }

        private AlteredSpanned(CharSequence charSequence, char[] cArr, int i2, int i3) {
            super(charSequence, cArr, i2, i3);
            this.mSpanned = (Spanned) charSequence;
        }
    }

    public static AlteredCharSequence make(CharSequence charSequence, char[] cArr, int i2, int i3) {
        return charSequence instanceof Spanned ? new AlteredSpanned(charSequence, cArr, i2, i3) : new AlteredCharSequence(charSequence, cArr, i2, i3);
    }

    @Override // java.lang.CharSequence
    public char charAt(int i2) {
        int i3 = this.mStart;
        return (i2 < i3 || i2 >= this.mEnd) ? this.mSource.charAt(i2) : this.mChars[i2 - i3];
    }

    @Override // android.text.GetChars
    public void getChars(int i2, int i3, char[] cArr, int i4) {
        TextUtils.getChars(this.mSource, i2, i3, cArr, i4);
        int iMax = Math.max(this.mStart, i2);
        int iMin = Math.min(this.mEnd, i3);
        if (iMax > iMin) {
            System.arraycopy(this.mChars, iMax - this.mStart, cArr, i4, iMin - iMax);
        }
    }

    @Override // java.lang.CharSequence
    public int length() {
        return this.mSource.length();
    }

    @Override // java.lang.CharSequence
    public CharSequence subSequence(int i2, int i3) {
        return make(this.mSource.subSequence(i2, i3), this.mChars, this.mStart - i2, this.mEnd - i2);
    }

    @Override // java.lang.CharSequence
    public String toString() {
        int length = length();
        char[] cArr = new char[length];
        getChars(0, length, cArr, 0);
        return String.valueOf(cArr);
    }

    public void update(char[] cArr, int i2, int i3) {
        this.mChars = cArr;
        this.mStart = i2;
        this.mEnd = i3;
    }

    private AlteredCharSequence(CharSequence charSequence, char[] cArr, int i2, int i3) {
        this.mSource = charSequence;
        this.mChars = cArr;
        this.mStart = i2;
        this.mEnd = i3;
    }
}
