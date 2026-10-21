package android.text.method;

import android.icu.text.DecimalFormatSymbols;
import android.text.Editable;
import android.text.InputFilter;
import android.text.Selection;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.format.DateFormat;
import android.view.KeyEvent;
import android.view.View;
import java.util.Collection;
import java.util.Iterator;
import java.util.Locale;
import libcore.icu.LocaleData;

/* JADX INFO: loaded from: classes2.dex */
public abstract class NumberKeyListener extends BaseKeyListener implements InputFilter {
    private static final String DATE_TIME_FORMAT_SYMBOLS = "GyYuUrQqMLlwWdDFgEecabBhHKkjJCmsSAzZOvVXx";
    private static final char SINGLE_QUOTE = '\'';

    public static boolean addAmPmChars(Collection<Character> collection, Locale locale) {
        if (locale == null) {
            return false;
        }
        String[] strArr = LocaleData.get(locale).amPm;
        for (int i2 = 0; i2 < strArr.length; i2++) {
            for (int i3 = 0; i3 < strArr[i2].length(); i3++) {
                char cCharAt = strArr[i2].charAt(i3);
                if (!Character.isBmpCodePoint(cCharAt)) {
                    return false;
                }
                collection.add(Character.valueOf(cCharAt));
            }
        }
        return true;
    }

    public static boolean addDigits(Collection<Character> collection, Locale locale) {
        if (locale == null) {
            return false;
        }
        String[] digitStrings = DecimalFormatSymbols.getInstance(locale).getDigitStrings();
        for (int i2 = 0; i2 < 10; i2++) {
            if (digitStrings[i2].length() > 1) {
                return false;
            }
            collection.add(Character.valueOf(digitStrings[i2].charAt(0)));
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:18:0x002d A[PHI: r2
  0x002d: PHI (r2v2 boolean) = (r2v1 boolean), (r2v4 boolean) binds: [B:12:0x001e, B:16:0x002a] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:19:0x002f  */
    /* JADX WARN: Code duplicated, block: B:22:0x0037  */
    /* JADX WARN: Code duplicated, block: B:25:0x0040  */
    /* JADX WARN: Code duplicated, block: B:30:0x003f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:34:0x0047 A[SYNTHETIC] */
    public static boolean addFormatCharsFromSkeleton(Collection<Character> collection, Locale locale, String str, String str2) {
        if (locale == null) {
            return false;
        }
        String bestDateTimePattern = DateFormat.getBestDateTimePattern(locale, str);
        boolean z2 = true;
        for (int i2 = 0; i2 < bestDateTimePattern.length(); i2++) {
            char cCharAt = bestDateTimePattern.charAt(i2);
            if (Character.isSurrogate(cCharAt)) {
                return false;
            }
            if (cCharAt == '\'') {
                z2 = !z2;
                if (i2 != 0 && bestDateTimePattern.charAt(i2 - 1) == '\'') {
                    if (!z2) {
                        collection.add(Character.valueOf(cCharAt));
                    } else if (str2.indexOf(cCharAt) == -1) {
                        if (DATE_TIME_FORMAT_SYMBOLS.indexOf(cCharAt) != -1) {
                            return false;
                        }
                        collection.add(Character.valueOf(cCharAt));
                    } else {
                        continue;
                    }
                }
            } else if (!z2) {
                collection.add(Character.valueOf(cCharAt));
            } else if (str2.indexOf(cCharAt) == -1) {
                if (DATE_TIME_FORMAT_SYMBOLS.indexOf(cCharAt) != -1) {
                    return false;
                }
                collection.add(Character.valueOf(cCharAt));
            } else {
                continue;
            }
        }
        return true;
    }

    public static boolean addFormatCharsFromSkeletons(Collection<Character> collection, Locale locale, String[] strArr, String str) {
        for (String str2 : strArr) {
            if (!addFormatCharsFromSkeleton(collection, locale, str2, str)) {
                return false;
            }
        }
        return true;
    }

    public static char[] collectionToArray(Collection<Character> collection) {
        char[] cArr = new char[collection.size()];
        Iterator<Character> it = collection.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            cArr[i2] = it.next().charValue();
            i2++;
        }
        return cArr;
    }

    public static boolean ok(char[] cArr, char c) {
        for (int length = cArr.length - 1; length >= 0; length--) {
            if (cArr[length] == c) {
                return true;
            }
        }
        return false;
    }

    public CharSequence filter(CharSequence charSequence, int i2, int i3, Spanned spanned, int i4, int i5) {
        char[] acceptedChars = getAcceptedChars();
        int i6 = i2;
        while (i6 < i3 && ok(acceptedChars, charSequence.charAt(i6))) {
            i6++;
        }
        if (i6 == i3) {
            return null;
        }
        int i7 = i3 - i2;
        if (i7 == 1) {
            return "";
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(charSequence, i2, i3);
        int i8 = i6 - i2;
        for (int i9 = i7 - 1; i9 >= i8; i9--) {
            if (!ok(acceptedChars, charSequence.charAt(i9))) {
                spannableStringBuilder.delete(i9, i9 + 1);
            }
        }
        return spannableStringBuilder;
    }

    public abstract char[] getAcceptedChars();

    public int lookup(KeyEvent keyEvent, Spannable spannable) {
        return keyEvent.getMatch(getAcceptedChars(), MetaKeyKeyListener.getMetaState(spannable, keyEvent));
    }

    @Override // android.text.method.BaseKeyListener, android.text.method.MetaKeyKeyListener, android.text.method.KeyListener
    public boolean onKeyDown(View view, Editable editable, int i2, KeyEvent keyEvent) {
        int selectionStart = Selection.getSelectionStart(editable);
        int selectionEnd = Selection.getSelectionEnd(editable);
        int iMin = Math.min(selectionStart, selectionEnd);
        int iMax = Math.max(selectionStart, selectionEnd);
        if (iMin < 0 || iMax < 0) {
            Selection.setSelection(editable, 0);
            iMax = 0;
            iMin = 0;
        }
        int iLookup = keyEvent != null ? lookup(keyEvent, editable) : 0;
        int repeatCount = keyEvent != null ? keyEvent.getRepeatCount() : 0;
        if (repeatCount == 0) {
            if (iLookup != 0) {
                if (iMin != iMax) {
                    Selection.setSelection(editable, iMax);
                }
                editable.replace(iMin, iMax, String.valueOf((char) iLookup));
                MetaKeyKeyListener.adjustMetaAfterKeypress(editable);
                return true;
            }
        } else if (iLookup == 48 && repeatCount == 1 && iMin == iMax && iMax > 0) {
            int i3 = iMin - 1;
            if (editable.charAt(i3) == '0') {
                editable.replace(i3, iMax, String.valueOf('+'));
                MetaKeyKeyListener.adjustMetaAfterKeypress(editable);
                return true;
            }
        }
        MetaKeyKeyListener.adjustMetaAfterKeypress(editable);
        return super.onKeyDown(view, editable, i2, keyEvent);
    }
}
