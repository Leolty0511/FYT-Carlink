package android.text.method;

import android.net.ProxyProperties;
import android.text.Editable;
import android.text.InputFilter;
import android.text.Selection;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.view.KeyEvent;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public abstract class NumberKeyListener extends BaseKeyListener implements InputFilter {
    public static boolean ok(char[] cArr, char c2) {
        for (int length = cArr.length - 1; length >= 0; length--) {
            if (cArr[length] == c2) {
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
            return ProxyProperties.LOCAL_EXCL_LIST;
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
