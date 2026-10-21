package android.text.method;

import android.graphics.Rect;
import android.text.Editable;
import android.text.GetChars;
import android.text.Spannable;
import android.text.Spanned;
import android.text.SpannedString;
import android.text.TextUtils;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public abstract class ReplacementTransformationMethod implements TransformationMethod {

    public static class ReplacementCharSequence implements CharSequence, GetChars {
        private char[] mOriginal;
        private char[] mReplacement;
        private CharSequence mSource;

        public ReplacementCharSequence(CharSequence charSequence, char[] cArr, char[] cArr2) {
            this.mSource = charSequence;
            this.mOriginal = cArr;
            this.mReplacement = cArr2;
        }

        @Override // java.lang.CharSequence
        public char charAt(int i2) {
            char cCharAt = this.mSource.charAt(i2);
            int length = this.mOriginal.length;
            for (int i3 = 0; i3 < length; i3++) {
                if (cCharAt == this.mOriginal[i3]) {
                    cCharAt = this.mReplacement[i3];
                }
            }
            return cCharAt;
        }

        @Override // android.text.GetChars
        public void getChars(int i2, int i3, char[] cArr, int i4) {
            TextUtils.getChars(this.mSource, i2, i3, cArr, i4);
            int i5 = (i3 - i2) + i4;
            int length = this.mOriginal.length;
            while (i4 < i5) {
                char c2 = cArr[i4];
                for (int i6 = 0; i6 < length; i6++) {
                    if (c2 == this.mOriginal[i6]) {
                        cArr[i4] = this.mReplacement[i6];
                    }
                }
                i4++;
            }
        }

        @Override // java.lang.CharSequence
        public int length() {
            return this.mSource.length();
        }

        @Override // java.lang.CharSequence
        public CharSequence subSequence(int i2, int i3) {
            char[] cArr = new char[i3 - i2];
            getChars(i2, i3, cArr, 0);
            return new String(cArr);
        }

        @Override // java.lang.CharSequence
        public String toString() {
            char[] cArr = new char[length()];
            getChars(0, length(), cArr, 0);
            return new String(cArr);
        }
    }

    public static class SpannedReplacementCharSequence extends ReplacementCharSequence implements Spanned {
        private Spanned mSpanned;

        public SpannedReplacementCharSequence(Spanned spanned, char[] cArr, char[] cArr2) {
            super(spanned, cArr, cArr2);
            this.mSpanned = spanned;
        }

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

        @Override // android.text.method.ReplacementTransformationMethod.ReplacementCharSequence, java.lang.CharSequence
        public CharSequence subSequence(int i2, int i3) {
            return new SpannedString(this).subSequence(i2, i3);
        }
    }

    public abstract char[] getOriginal();

    public abstract char[] getReplacement();

    @Override // android.text.method.TransformationMethod
    public CharSequence getTransformation(CharSequence charSequence, View view) {
        char[] original = getOriginal();
        char[] replacement = getReplacement();
        if (!(charSequence instanceof Editable)) {
            int length = original.length;
            boolean z2 = false;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    z2 = true;
                    break;
                }
                if (TextUtils.indexOf(charSequence, original[i2]) >= 0) {
                    break;
                }
                i2++;
            }
            if (z2) {
                return charSequence;
            }
            if (!(charSequence instanceof Spannable)) {
                return charSequence instanceof Spanned ? new SpannedString(new SpannedReplacementCharSequence((Spanned) charSequence, original, replacement)) : new ReplacementCharSequence(charSequence, original, replacement).toString();
            }
        }
        return charSequence instanceof Spanned ? new SpannedReplacementCharSequence((Spanned) charSequence, original, replacement) : new ReplacementCharSequence(charSequence, original, replacement);
    }

    @Override // android.text.method.TransformationMethod
    public void onFocusChanged(View view, CharSequence charSequence, boolean z2, int i2, Rect rect) {
    }
}
