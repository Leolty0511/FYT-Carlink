package android.text;

import android.net.ProxyProperties;

/* JADX INFO: loaded from: classes.dex */
public interface InputFilter {

    public static class AllCaps implements InputFilter {
        @Override // android.text.InputFilter
        public CharSequence filter(CharSequence charSequence, int i2, int i3, Spanned spanned, int i4, int i5) {
            for (int i6 = i2; i6 < i3; i6++) {
                if (Character.isLowerCase(charSequence.charAt(i6))) {
                    char[] cArr = new char[i3 - i2];
                    TextUtils.getChars(charSequence, i2, i3, cArr, 0);
                    String upperCase = new String(cArr).toUpperCase();
                    if (!(charSequence instanceof Spanned)) {
                        return upperCase;
                    }
                    SpannableString spannableString = new SpannableString(upperCase);
                    TextUtils.copySpansFrom((Spanned) charSequence, i2, i3, null, spannableString, 0);
                    return spannableString;
                }
            }
            return null;
        }
    }

    public static class LengthFilter implements InputFilter {
        private int mMax;

        public LengthFilter(int i2) {
            this.mMax = i2;
        }

        @Override // android.text.InputFilter
        public CharSequence filter(CharSequence charSequence, int i2, int i3, Spanned spanned, int i4, int i5) {
            int length = this.mMax - (spanned.length() - (i5 - i4));
            if (length <= 0) {
                return ProxyProperties.LOCAL_EXCL_LIST;
            }
            if (length >= i3 - i2) {
                return null;
            }
            int i6 = length + i2;
            return (Character.isHighSurrogate(charSequence.charAt(i6 + (-1))) && (i6 = i6 + (-1)) == i2) ? ProxyProperties.LOCAL_EXCL_LIST : charSequence.subSequence(i2, i6);
        }
    }

    CharSequence filter(CharSequence charSequence, int i2, int i3, Spanned spanned, int i4, int i5);
}
