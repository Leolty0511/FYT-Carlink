package android.text.method;

import android.net.ProxyProperties;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.view.InputDevice;

/* JADX INFO: loaded from: classes.dex */
public class DigitsKeyListener extends NumberKeyListener {
    private static final int DECIMAL = 2;
    private static final int SIGN = 1;
    private char[] mAccepted;
    private boolean mDecimal;
    private boolean mSign;
    private static final char[][] CHARACTERS = {new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9'}, new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '-', '+'}, new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '.'}, new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '-', '+', '.'}};
    private static DigitsKeyListener[] sInstance = new DigitsKeyListener[4];

    public DigitsKeyListener() {
        this(false, false);
    }

    public static DigitsKeyListener getInstance() {
        return getInstance(false, false);
    }

    private static boolean isDecimalPointChar(char c2) {
        return c2 == '.';
    }

    private static boolean isSignChar(char c2) {
        return c2 == '-' || c2 == '+';
    }

    @Override // android.text.method.NumberKeyListener, android.text.InputFilter
    public CharSequence filter(CharSequence charSequence, int i2, int i3, Spanned spanned, int i4, int i5) {
        CharSequence charSequenceFilter = super.filter(charSequence, i2, i3, spanned, i4, i5);
        if (!this.mSign && !this.mDecimal) {
            return charSequenceFilter;
        }
        if (charSequenceFilter != null) {
            i3 = charSequenceFilter.length();
            charSequence = charSequenceFilter;
            i2 = 0;
        }
        int length = spanned.length();
        int i6 = -1;
        int i7 = -1;
        for (int i8 = 0; i8 < i4; i8++) {
            char cCharAt = spanned.charAt(i8);
            if (isSignChar(cCharAt)) {
                i7 = i8;
            } else if (isDecimalPointChar(cCharAt)) {
                i6 = i8;
            }
        }
        while (i5 < length) {
            char cCharAt2 = spanned.charAt(i5);
            if (isSignChar(cCharAt2)) {
                return ProxyProperties.LOCAL_EXCL_LIST;
            }
            if (isDecimalPointChar(cCharAt2)) {
                i6 = i5;
            }
            i5++;
        }
        SpannableStringBuilder spannableStringBuilder = null;
        for (int i9 = i3 - 1; i9 >= i2; i9--) {
            char cCharAt3 = charSequence.charAt(i9);
            boolean z2 = true;
            if (isSignChar(cCharAt3)) {
                if (i9 == i2 && i4 == 0 && i7 < 0) {
                    i7 = i9;
                    z2 = false;
                }
            } else if (!isDecimalPointChar(cCharAt3)) {
                z2 = false;
            } else if (i6 < 0) {
                i6 = i9;
                z2 = false;
            }
            if (z2) {
                if (i3 == i2 + 1) {
                    return ProxyProperties.LOCAL_EXCL_LIST;
                }
                if (spannableStringBuilder == null) {
                    spannableStringBuilder = new SpannableStringBuilder(charSequence, i2, i3);
                }
                spannableStringBuilder.delete(i9 - i2, (i9 + 1) - i2);
            }
        }
        if (spannableStringBuilder != null) {
            return spannableStringBuilder;
        }
        if (charSequenceFilter != null) {
            return charSequenceFilter;
        }
        return null;
    }

    @Override // android.text.method.NumberKeyListener
    public char[] getAcceptedChars() {
        return this.mAccepted;
    }

    @Override // android.text.method.KeyListener
    public int getInputType() {
        int i2 = this.mSign ? InputDevice.SOURCE_TOUCHSCREEN : 2;
        return this.mDecimal ? i2 | 8192 : i2;
    }

    public DigitsKeyListener(boolean z2, boolean z3) {
        this.mSign = z2;
        this.mDecimal = z3;
        this.mAccepted = CHARACTERS[(z2 ? 1 : 0) | (z3 ? 2 : 0)];
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static DigitsKeyListener getInstance(boolean z2, boolean z3) {
        boolean z4 = (z3 ? (char) 2 : (char) 0) | (z2 ? 1 : 0);
        DigitsKeyListener[] digitsKeyListenerArr = sInstance;
        if (digitsKeyListenerArr[z4 ? 1 : 0] != null) {
            return digitsKeyListenerArr[z4 ? 1 : 0];
        }
        digitsKeyListenerArr[z4 ? 1 : 0] = new DigitsKeyListener(z2, z3);
        return sInstance[z4 ? 1 : 0];
    }

    public static DigitsKeyListener getInstance(String str) {
        DigitsKeyListener digitsKeyListener = new DigitsKeyListener();
        digitsKeyListener.mAccepted = new char[str.length()];
        str.getChars(0, str.length(), digitsKeyListener.mAccepted, 0);
        return digitsKeyListener;
    }
}
