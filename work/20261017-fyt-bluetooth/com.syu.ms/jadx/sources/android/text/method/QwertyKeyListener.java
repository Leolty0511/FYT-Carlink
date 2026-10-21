package android.text.method;

import android.text.AutoText;
import android.text.Editable;
import android.text.NoCopySpan;
import android.text.Selection;
import android.text.Spannable;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public class QwertyKeyListener extends BaseKeyListener {
    private static SparseArray<String> PICKER_SETS;
    private static QwertyKeyListener sFullKeyboardInstance;
    private static QwertyKeyListener[] sInstance = new QwertyKeyListener[TextKeyListener.Capitalize.values().length * 2];
    private TextKeyListener.Capitalize mAutoCap;
    private boolean mAutoText;
    private boolean mFullKeyboard;

    public static class Replaced implements NoCopySpan {
        private char[] mText;

        public Replaced(char[] cArr) {
            this.mText = cArr;
        }
    }

    static {
        SparseArray<String> sparseArray = new SparseArray<>();
        PICKER_SETS = sparseArray;
        sparseArray.put(65, "ÀÁÂÄÆÃÅĄĀ");
        PICKER_SETS.put(67, "ÇĆČ");
        PICKER_SETS.put(68, "Ď");
        PICKER_SETS.put(69, "ÈÉÊËĘĚĒ");
        PICKER_SETS.put(71, "Ğ");
        PICKER_SETS.put(76, "Ł");
        PICKER_SETS.put(73, "ÌÍÎÏĪİ");
        PICKER_SETS.put(78, "ÑŃŇ");
        PICKER_SETS.put(79, "ØŒÕÒÓÔÖŌ");
        PICKER_SETS.put(82, "Ř");
        PICKER_SETS.put(83, "ŚŠŞ");
        PICKER_SETS.put(84, "Ť");
        PICKER_SETS.put(85, "ÙÚÛÜŮŪ");
        PICKER_SETS.put(89, "ÝŸ");
        PICKER_SETS.put(90, "ŹŻŽ");
        PICKER_SETS.put(97, "àáâäæãåąā");
        PICKER_SETS.put(99, "çćč");
        PICKER_SETS.put(100, "ď");
        PICKER_SETS.put(101, "èéêëęěē");
        PICKER_SETS.put(103, "ğ");
        PICKER_SETS.put(105, "ìíîïīı");
        PICKER_SETS.put(108, "ł");
        PICKER_SETS.put(110, "ñńň");
        PICKER_SETS.put(111, "øœõòóôöō");
        PICKER_SETS.put(114, "ř");
        PICKER_SETS.put(115, "§ßśšş");
        PICKER_SETS.put(116, "ť");
        PICKER_SETS.put(117, "ùúûüůū");
        PICKER_SETS.put(121, "ýÿ");
        PICKER_SETS.put(122, "źżž");
        PICKER_SETS.put(61185, "…¥•®©±[]{}\\|");
        PICKER_SETS.put(47, "\\");
        PICKER_SETS.put(49, "¹½⅓¼⅛");
        PICKER_SETS.put(50, "²⅔");
        PICKER_SETS.put(51, "³¾⅜");
        PICKER_SETS.put(52, "⁴");
        PICKER_SETS.put(53, "⅝");
        PICKER_SETS.put(55, "⅞");
        PICKER_SETS.put(48, "ⁿ∅");
        PICKER_SETS.put(36, "¢£€¥₣₤₱");
        PICKER_SETS.put(37, "‰");
        PICKER_SETS.put(42, "†‡");
        PICKER_SETS.put(45, "–—");
        PICKER_SETS.put(43, "±");
        PICKER_SETS.put(40, "[{<");
        PICKER_SETS.put(41, "]}>");
        PICKER_SETS.put(33, "¡");
        PICKER_SETS.put(34, "“”«»˝");
        PICKER_SETS.put(63, "¿");
        PICKER_SETS.put(44, "‚„");
        PICKER_SETS.put(61, "≠≈∞");
        PICKER_SETS.put(60, "≤«‹");
        PICKER_SETS.put(62, "≥»›");
    }

    private QwertyKeyListener(TextKeyListener.Capitalize capitalize, boolean z2, boolean z3) {
        this.mAutoCap = capitalize;
        this.mAutoText = z2;
        this.mFullKeyboard = z3;
    }

    public static QwertyKeyListener getInstance(boolean z2, TextKeyListener.Capitalize capitalize) {
        int iOrdinal = (capitalize.ordinal() * 2) + (z2 ? 1 : 0);
        QwertyKeyListener[] qwertyKeyListenerArr = sInstance;
        if (qwertyKeyListenerArr[iOrdinal] == null) {
            qwertyKeyListenerArr[iOrdinal] = new QwertyKeyListener(capitalize, z2);
        }
        return sInstance[iOrdinal];
    }

    public static QwertyKeyListener getInstanceForFullKeyboard() {
        if (sFullKeyboardInstance == null) {
            sFullKeyboardInstance = new QwertyKeyListener(TextKeyListener.Capitalize.NONE, false, true);
        }
        return sFullKeyboardInstance;
    }

    private String getReplacement(CharSequence charSequence, int i2, int i3, View view) {
        boolean z2;
        int i4;
        int i5 = i3 - i2;
        String upperCase = AutoText.get(charSequence, i2, i3, view);
        if (upperCase == null) {
            upperCase = AutoText.get(TextUtils.substring(charSequence, i2, i3).toLowerCase(), 0, i5, view);
            if (upperCase == null) {
                return null;
            }
            z2 = true;
        } else {
            z2 = false;
        }
        if (z2) {
            i4 = 0;
            for (int i6 = i2; i6 < i3; i6++) {
                if (Character.isUpperCase(charSequence.charAt(i6))) {
                    i4++;
                }
            }
        } else {
            i4 = 0;
        }
        if (i4 != 0) {
            upperCase = (i4 != 1 && i4 == i5) ? upperCase.toUpperCase() : toTitleCase(upperCase);
        }
        if (upperCase.length() == i5 && TextUtils.regionMatches(charSequence, i2, upperCase, 0, i5)) {
            return null;
        }
        return upperCase;
    }

    public static void markAsReplaced(Spannable spannable, int i2, int i3, String str) {
        for (Replaced replaced : (Replaced[]) spannable.getSpans(0, spannable.length(), Replaced.class)) {
            spannable.removeSpan(replaced);
        }
        int length = str.length();
        char[] cArr = new char[length];
        str.getChars(0, length, cArr, 0);
        spannable.setSpan(new Replaced(cArr), i2, i3, 33);
    }

    private boolean showCharacterPicker(View view, Editable editable, char c2, boolean z2, int i2) {
        String str = PICKER_SETS.get(c2);
        if (str == null) {
            return false;
        }
        if (i2 == 1) {
            new CharacterPickerDialog(view.getContext(), view, editable, str, z2).show();
        }
        return true;
    }

    private static String toTitleCase(String str) {
        return Character.toUpperCase(str.charAt(0)) + str.substring(1);
    }

    @Override // android.text.method.KeyListener
    public int getInputType() {
        return BaseKeyListener.makeTextContentType(this.mAutoCap, this.mAutoText);
    }

    @Override // android.text.method.BaseKeyListener, android.text.method.MetaKeyKeyListener, android.text.method.KeyListener
    public boolean onKeyDown(View view, Editable editable, int i2, KeyEvent keyEvent) {
        int i3;
        int i4;
        int upperCase;
        int i5;
        boolean z2;
        int selectionEnd;
        int selectionEnd2;
        boolean z3;
        int deadChar;
        int i6;
        int i7;
        int repeatCount;
        char cCharAt;
        int prefs = view != null ? TextKeyListener.getInstance().getPrefs(view.getContext()) : 0;
        int selectionStart = Selection.getSelectionStart(editable);
        int selectionEnd3 = Selection.getSelectionEnd(editable);
        int iMin = Math.min(selectionStart, selectionEnd3);
        int iMax = Math.max(selectionStart, selectionEnd3);
        if (iMin < 0 || iMax < 0) {
            Selection.setSelection(editable, 0, 0);
            i3 = 0;
            i4 = 0;
        } else {
            i3 = iMax;
            i4 = iMin;
        }
        Object obj = TextKeyListener.ACTIVE;
        int spanStart = editable.getSpanStart(obj);
        int spanEnd = editable.getSpanEnd(obj);
        int unicodeChar = keyEvent.getUnicodeChar(MetaKeyKeyListener.getMetaState(editable, keyEvent));
        if (!this.mFullKeyboard && (repeatCount = keyEvent.getRepeatCount()) > 0 && i4 == i3 && i4 > 0 && ((cCharAt = editable.charAt(i4 - 1)) == unicodeChar || (cCharAt == Character.toUpperCase(unicodeChar) && view != null))) {
            if (showCharacterPicker(view, editable, cCharAt, false, repeatCount)) {
                MetaKeyKeyListener.resetMetaState(editable);
                return true;
            }
        }
        if (unicodeChar == 61185) {
            if (view != null) {
                showCharacterPicker(view, editable, KeyCharacterMap.PICKER_DIALOG_INPUT, true, 1);
            }
            MetaKeyKeyListener.resetMetaState(editable);
            return true;
        }
        if (unicodeChar == 61184) {
            if (i4 == i3) {
                i6 = i3;
                while (i6 > 0 && i3 - i6 < 4 && Character.digit(editable.charAt(i6 - 1), 16) >= 0) {
                    i6--;
                }
            } else {
                i6 = i4;
            }
            try {
                i7 = Integer.parseInt(TextUtils.substring(editable, i6, i3), 16);
            } catch (NumberFormatException unused) {
                i7 = -1;
            }
            upperCase = i7;
            if (upperCase >= 0) {
                Selection.setSelection(editable, i6, i3);
                i4 = i6;
            } else {
                upperCase = 0;
            }
        } else {
            upperCase = unicodeChar;
        }
        if (upperCase == 0) {
            if (i2 == 67) {
                if (keyEvent.hasNoModifiers()) {
                    i5 = 2;
                } else {
                    i5 = 2;
                    if (keyEvent.hasModifiers(2)) {
                    }
                }
                if (i4 == i3) {
                    Replaced[] replacedArr = (Replaced[]) editable.getSpans(i4 - ((editable.getSpanEnd(TextKeyListener.LAST_TYPED) != i4 || editable.charAt(i4 + (-1)) == '\n') ? 1 : i5), i4, Replaced.class);
                    if (replacedArr.length > 0) {
                        int spanStart2 = editable.getSpanStart(replacedArr[0]);
                        int spanEnd2 = editable.getSpanEnd(replacedArr[0]);
                        CharSequence str = new String(replacedArr[0].mText);
                        editable.removeSpan(replacedArr[0]);
                        if (i4 < spanEnd2) {
                            MetaKeyKeyListener.adjustMetaAfterKeypress(editable);
                            return super.onKeyDown(view, editable, i2, keyEvent);
                        }
                        Object obj2 = TextKeyListener.INHIBIT_REPLACEMENT;
                        editable.setSpan(obj2, spanEnd2, spanEnd2, 34);
                        editable.replace(spanStart2, spanEnd2, str);
                        int spanStart3 = editable.getSpanStart(obj2);
                        int i8 = spanStart3 - 1;
                        if (i8 >= 0) {
                            editable.setSpan(obj2, i8, spanStart3, 33);
                        } else {
                            editable.removeSpan(obj2);
                        }
                        MetaKeyKeyListener.adjustMetaAfterKeypress(editable);
                        return true;
                    }
                }
            }
            return super.onKeyDown(view, editable, i2, keyEvent);
        }
        if ((upperCase & Integer.MIN_VALUE) != 0) {
            upperCase &= Integer.MAX_VALUE;
            z2 = true;
        } else {
            z2 = false;
        }
        if (spanStart == i4 && spanEnd == i3) {
            if ((i3 - i4) - 1 != 0 || (deadChar = KeyEvent.getDeadChar(editable.charAt(i4), upperCase)) == 0) {
                z3 = false;
            } else {
                upperCase = deadChar;
                z3 = true;
                z2 = false;
            }
            if (!z3) {
                Selection.setSelection(editable, i3);
                editable.removeSpan(TextKeyListener.ACTIVE);
                i4 = i3;
            }
        }
        if ((prefs & 1) != 0 && Character.isLowerCase(upperCase) && TextKeyListener.shouldCap(this.mAutoCap, editable, i4)) {
            Object obj3 = TextKeyListener.CAPPED;
            int spanEnd3 = editable.getSpanEnd(obj3);
            int spanFlags = editable.getSpanFlags(obj3);
            if (spanEnd3 == i4 && ((spanFlags >> 16) & 65535) == upperCase) {
                editable.removeSpan(obj3);
            } else {
                int i9 = upperCase << 16;
                upperCase = Character.toUpperCase(upperCase);
                if (i4 == 0) {
                    editable.setSpan(obj3, 0, 0, i9 | 17);
                } else {
                    editable.setSpan(obj3, i4 - 1, i4, i9 | 33);
                }
            }
        }
        if (i4 != i3) {
            Selection.setSelection(editable, i3);
        }
        Object obj4 = BaseKeyListener.OLD_SEL_START;
        editable.setSpan(obj4, i4, i4, 17);
        editable.replace(i4, i3, String.valueOf((char) upperCase));
        int spanStart4 = editable.getSpanStart(obj4);
        int selectionEnd4 = Selection.getSelectionEnd(editable);
        if (spanStart4 < selectionEnd4) {
            editable.setSpan(TextKeyListener.LAST_TYPED, spanStart4, selectionEnd4, 33);
            if (z2) {
                Selection.setSelection(editable, spanStart4, selectionEnd4);
                editable.setSpan(TextKeyListener.ACTIVE, spanStart4, selectionEnd4, 33);
            }
        }
        MetaKeyKeyListener.adjustMetaAfterKeypress(editable);
        if ((prefs & 2) != 0 && this.mAutoText && ((upperCase == 32 || upperCase == 9 || upperCase == 10 || upperCase == 44 || upperCase == 46 || upperCase == 33 || upperCase == 63 || upperCase == 34 || Character.getType(upperCase) == 22) && editable.getSpanEnd(TextKeyListener.INHIBIT_REPLACEMENT) != spanStart4)) {
            int i10 = spanStart4;
            while (i10 > 0) {
                char cCharAt2 = editable.charAt(i10 - 1);
                if (cCharAt2 != '\'' && !Character.isLetter(cCharAt2)) {
                    break;
                }
                i10--;
            }
            CharSequence replacement = getReplacement(editable, i10, spanStart4, view);
            if (replacement != null) {
                for (Object obj5 : (Replaced[]) editable.getSpans(0, editable.length(), Replaced.class)) {
                    editable.removeSpan(obj5);
                }
                char[] cArr = new char[spanStart4 - i10];
                TextUtils.getChars(editable, i10, spanStart4, cArr, 0);
                editable.setSpan(new Replaced(cArr), i10, spanStart4, 33);
                editable.replace(i10, spanStart4, replacement);
            }
        }
        if ((prefs & 4) != 0 && this.mAutoText && (selectionEnd2 = (selectionEnd = Selection.getSelectionEnd(editable)) - 3) >= 0) {
            int i11 = selectionEnd - 1;
            if (editable.charAt(i11) == ' ') {
                int i12 = selectionEnd - 2;
                if (editable.charAt(i12) == ' ') {
                    char cCharAt3 = editable.charAt(selectionEnd2);
                    while (selectionEnd2 > 0 && (cCharAt3 == '\"' || Character.getType(cCharAt3) == 22)) {
                        cCharAt3 = editable.charAt(selectionEnd2 - 1);
                        selectionEnd2--;
                    }
                    if (Character.isLetter(cCharAt3) || Character.isDigit(cCharAt3)) {
                        editable.replace(i12, i11, ".");
                    }
                }
            }
        }
        return true;
    }

    public QwertyKeyListener(TextKeyListener.Capitalize capitalize, boolean z2) {
        this(capitalize, z2, false);
    }
}
