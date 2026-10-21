package android.text.method;

import android.icu.lang.UCharacter;
import android.icu.text.DecimalFormatSymbols;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import com.android.internal.annotations.GuardedBy;
import com.android.internal.util.ArrayUtils;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public class DigitsKeyListener extends NumberKeyListener {
    private static final int DECIMAL = 2;
    private static final String DEFAULT_DECIMAL_POINT_CHARS = ".";
    private static final String DEFAULT_SIGN_CHARS = "-+";
    private static final char EN_DASH = 8211;
    private static final char MINUS_SIGN = 8722;
    private static final int SIGN = 1;
    private char[] mAccepted;
    private final boolean mDecimal;
    private String mDecimalPointChars;
    private final Locale mLocale;
    private boolean mNeedsAdvancedInput;
    private final boolean mSign;
    private String mSignChars;
    private final boolean mStringMode;
    private static final char HYPHEN_MINUS = '-';
    private static final char[][] COMPATIBILITY_CHARACTERS = {new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9'}, new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', HYPHEN_MINUS, '+'}, new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '.'}, new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', HYPHEN_MINUS, '+', '.'}};
    private static final Object sLocaleCacheLock = new Object();

    @GuardedBy("sLocaleCacheLock")
    private static final HashMap<Locale, DigitsKeyListener[]> sLocaleInstanceCache = new HashMap<>();
    private static final Object sStringCacheLock = new Object();

    @GuardedBy("sStringCacheLock")
    private static final HashMap<String, DigitsKeyListener> sStringInstanceCache = new HashMap<>();

    @Deprecated
    public DigitsKeyListener() {
        this(null, false, false);
    }

    private void calculateNeedForAdvancedInput() {
        this.mNeedsAdvancedInput = !ArrayUtils.containsAll(COMPATIBILITY_CHARACTERS[(this.mSign ? 1 : 0) | (this.mDecimal ? 2 : 0)], this.mAccepted);
    }

    @Deprecated
    public static DigitsKeyListener getInstance() {
        return getInstance(false, false);
    }

    private boolean isDecimalPointChar(char c) {
        return this.mDecimalPointChars.indexOf(c) != -1;
    }

    private boolean isSignChar(char c) {
        return this.mSignChars.indexOf(c) != -1;
    }

    private void setToCompat() {
        this.mDecimalPointChars = DEFAULT_DECIMAL_POINT_CHARS;
        this.mSignChars = DEFAULT_SIGN_CHARS;
        this.mAccepted = COMPATIBILITY_CHARACTERS[(this.mSign ? 1 : 0) | (this.mDecimal ? 2 : 0)];
        this.mNeedsAdvancedInput = false;
    }

    private static String stripBidiControls(String str) {
        String strValueOf = "";
        for (int i2 = 0; i2 < str.length(); i2++) {
            char cCharAt = str.charAt(i2);
            if (!UCharacter.hasBinaryProperty(cCharAt, 2)) {
                strValueOf = strValueOf.isEmpty() ? String.valueOf(cCharAt) : strValueOf + cCharAt;
            }
        }
        return strValueOf;
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
                return "";
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
                    return "";
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
        if (this.mNeedsAdvancedInput) {
            return 1;
        }
        int i2 = this.mSign ? 4098 : 2;
        return this.mDecimal ? i2 | 8192 : i2;
    }

    @Deprecated
    public DigitsKeyListener(boolean z2, boolean z3) {
        this(null, z2, z3);
    }

    @Deprecated
    public static DigitsKeyListener getInstance(boolean z2, boolean z3) {
        return getInstance(null, z2, z3);
    }

    public DigitsKeyListener(Locale locale) {
        this(locale, false, false);
    }

    public static DigitsKeyListener getInstance(Locale locale) {
        return getInstance(locale, false, false);
    }

    public DigitsKeyListener(Locale locale, boolean z2, boolean z3) {
        this.mDecimalPointChars = DEFAULT_DECIMAL_POINT_CHARS;
        this.mSignChars = DEFAULT_SIGN_CHARS;
        this.mSign = z2;
        this.mDecimal = z3;
        this.mStringMode = false;
        this.mLocale = locale;
        if (locale == null) {
            setToCompat();
            return;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        if (!NumberKeyListener.addDigits(linkedHashSet, locale)) {
            setToCompat();
            return;
        }
        if (z2 || z3) {
            DecimalFormatSymbols decimalFormatSymbols = DecimalFormatSymbols.getInstance(locale);
            if (z2) {
                String strStripBidiControls = stripBidiControls(decimalFormatSymbols.getMinusSignString());
                String strStripBidiControls2 = stripBidiControls(decimalFormatSymbols.getPlusSignString());
                if (strStripBidiControls.length() <= 1 && strStripBidiControls2.length() <= 1) {
                    char cCharAt = strStripBidiControls.charAt(0);
                    char cCharAt2 = strStripBidiControls2.charAt(0);
                    linkedHashSet.add(Character.valueOf(cCharAt));
                    linkedHashSet.add(Character.valueOf(cCharAt2));
                    this.mSignChars = "" + cCharAt + cCharAt2;
                    if (cCharAt == 8722 || cCharAt == 8211) {
                        linkedHashSet.add(Character.valueOf(HYPHEN_MINUS));
                        this.mSignChars += HYPHEN_MINUS;
                    }
                } else {
                    setToCompat();
                    return;
                }
            }
            if (z3) {
                String decimalSeparatorString = decimalFormatSymbols.getDecimalSeparatorString();
                if (decimalSeparatorString.length() > 1) {
                    setToCompat();
                    return;
                } else {
                    Character chValueOf = Character.valueOf(decimalSeparatorString.charAt(0));
                    linkedHashSet.add(chValueOf);
                    this.mDecimalPointChars = chValueOf.toString();
                }
            }
        }
        this.mAccepted = NumberKeyListener.collectionToArray(linkedHashSet);
        calculateNeedForAdvancedInput();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static DigitsKeyListener getInstance(Locale locale, boolean z2, boolean z3) {
        DigitsKeyListener digitsKeyListener;
        boolean z4 = (z3 ? (char) 2 : (char) 0) | (z2 ? 1 : 0);
        synchronized (sLocaleCacheLock) {
            HashMap<Locale, DigitsKeyListener[]> map = sLocaleInstanceCache;
            DigitsKeyListener[] digitsKeyListenerArr = map.get(locale);
            if (digitsKeyListenerArr != null && (digitsKeyListener = digitsKeyListenerArr[z4 ? 1 : 0]) != null) {
                return digitsKeyListener;
            }
            if (digitsKeyListenerArr == null) {
                digitsKeyListenerArr = new DigitsKeyListener[4];
                map.put(locale, digitsKeyListenerArr);
            }
            DigitsKeyListener digitsKeyListener2 = new DigitsKeyListener(locale, z2, z3);
            digitsKeyListenerArr[z4 ? 1 : 0] = digitsKeyListener2;
            return digitsKeyListener2;
        }
    }

    public static DigitsKeyListener getInstance(String str) {
        DigitsKeyListener digitsKeyListener;
        synchronized (sStringCacheLock) {
            HashMap<String, DigitsKeyListener> map = sStringInstanceCache;
            digitsKeyListener = map.get(str);
            if (digitsKeyListener == null) {
                digitsKeyListener = new DigitsKeyListener(str);
                map.put(str, digitsKeyListener);
            }
        }
        return digitsKeyListener;
    }

    public static DigitsKeyListener getInstance(Locale locale, DigitsKeyListener digitsKeyListener) {
        return digitsKeyListener.mStringMode ? digitsKeyListener : getInstance(locale, digitsKeyListener.mSign, digitsKeyListener.mDecimal);
    }

    private DigitsKeyListener(String str) {
        this.mDecimalPointChars = DEFAULT_DECIMAL_POINT_CHARS;
        this.mSignChars = DEFAULT_SIGN_CHARS;
        this.mSign = false;
        this.mDecimal = false;
        this.mStringMode = true;
        this.mLocale = null;
        this.mAccepted = new char[str.length()];
        str.getChars(0, str.length(), this.mAccepted, 0);
        this.mNeedsAdvancedInput = false;
    }
}
