package android.text;

/* JADX INFO: loaded from: classes.dex */
public abstract class LoginFilter implements InputFilter {
    private boolean mAppendInvalid;

    public static class PasswordFilterGMail extends LoginFilter {
        public PasswordFilterGMail() {
            super(false);
        }

        @Override // android.text.LoginFilter
        public boolean isAllowed(char c2) {
            if (' ' > c2 || c2 > 127) {
                return 160 <= c2 && c2 <= 255;
            }
            return true;
        }

        public PasswordFilterGMail(boolean z2) {
            super(z2);
        }
    }

    public static class UsernameFilterGMail extends LoginFilter {
        public UsernameFilterGMail() {
            super(false);
        }

        @Override // android.text.LoginFilter
        public boolean isAllowed(char c2) {
            if ('0' <= c2 && c2 <= '9') {
                return true;
            }
            if ('a' > c2 || c2 > 'z') {
                return ('A' <= c2 && c2 <= 'Z') || '.' == c2;
            }
            return true;
        }

        public UsernameFilterGMail(boolean z2) {
            super(z2);
        }
    }

    public static class UsernameFilterGeneric extends LoginFilter {
        private static final String mAllowed = "@_-+.";

        public UsernameFilterGeneric() {
            super(false);
        }

        @Override // android.text.LoginFilter
        public boolean isAllowed(char c2) {
            if ('0' <= c2 && c2 <= '9') {
                return true;
            }
            if ('a' > c2 || c2 > 'z') {
                return ('A' <= c2 && c2 <= 'Z') || mAllowed.indexOf(c2) != -1;
            }
            return true;
        }

        public UsernameFilterGeneric(boolean z2) {
            super(z2);
        }
    }

    public LoginFilter(boolean z2) {
        this.mAppendInvalid = z2;
    }

    @Override // android.text.InputFilter
    public CharSequence filter(CharSequence charSequence, int i2, int i3, Spanned spanned, int i4, int i5) {
        onStart();
        int i6 = 0;
        for (int i7 = 0; i7 < i4; i7++) {
            char cCharAt = spanned.charAt(i7);
            if (!isAllowed(cCharAt)) {
                onInvalidCharacter(cCharAt);
            }
        }
        SpannableStringBuilder spannableStringBuilder = null;
        for (int i8 = i2; i8 < i3; i8++) {
            char cCharAt2 = charSequence.charAt(i8);
            if (isAllowed(cCharAt2)) {
                i6++;
            } else {
                if (this.mAppendInvalid) {
                    i6++;
                } else {
                    if (spannableStringBuilder == null) {
                        spannableStringBuilder = new SpannableStringBuilder(charSequence, i2, i3);
                        i6 = i8 - i2;
                    }
                    spannableStringBuilder.delete(i6, i6 + 1);
                }
                onInvalidCharacter(cCharAt2);
            }
        }
        while (i5 < spanned.length()) {
            char cCharAt3 = spanned.charAt(i5);
            if (!isAllowed(cCharAt3)) {
                onInvalidCharacter(cCharAt3);
            }
            i5++;
        }
        onStop();
        return spannableStringBuilder;
    }

    public abstract boolean isAllowed(char c2);

    public void onInvalidCharacter(char c2) {
    }

    public void onStart() {
    }

    public void onStop() {
    }

    public LoginFilter() {
        this.mAppendInvalid = false;
    }
}
