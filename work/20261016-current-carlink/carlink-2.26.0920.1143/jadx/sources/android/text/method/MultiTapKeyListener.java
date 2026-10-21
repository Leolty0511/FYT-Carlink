package android.text.method;

import android.net.wifi.WifiEnterpriseConfig;
import android.os.Handler;
import android.os.SystemClock;
import android.text.Editable;
import android.text.Selection;
import android.text.SpanWatcher;
import android.text.Spannable;
import android.util.SparseArray;
import android.view.KeyEvent;
import android.view.View;

/* JADX INFO: loaded from: classes2.dex */
public class MultiTapKeyListener extends BaseKeyListener implements SpanWatcher {
    private static MultiTapKeyListener[] sInstance = new MultiTapKeyListener[TextKeyListener.Capitalize.values().length * 2];
    private static final SparseArray<String> sRecs;
    private boolean mAutoText;
    private TextKeyListener.Capitalize mCapitalize;

    public class Timeout extends Handler implements Runnable {
        private Editable mBuffer;

        public Timeout(Editable editable) {
            this.mBuffer = editable;
            editable.setSpan(this, 0, editable.length(), 18);
            postAtTime(this, SystemClock.uptimeMillis() + 2000);
        }

        @Override // java.lang.Runnable
        public void run() {
            Editable editable = this.mBuffer;
            if (editable != null) {
                int selectionStart = Selection.getSelectionStart(editable);
                int selectionEnd = Selection.getSelectionEnd(editable);
                Object obj = TextKeyListener.ACTIVE;
                int spanStart = editable.getSpanStart(obj);
                int spanEnd = editable.getSpanEnd(obj);
                if (selectionStart == spanStart && selectionEnd == spanEnd) {
                    Selection.setSelection(editable, Selection.getSelectionEnd(editable));
                }
                editable.removeSpan(this);
            }
        }
    }

    static {
        SparseArray<String> sparseArray = new SparseArray<>();
        sRecs = sparseArray;
        sparseArray.put(8, ".,1!@#$%^&*:/?'=()");
        sparseArray.put(9, "abc2ABC");
        sparseArray.put(10, "def3DEF");
        sparseArray.put(11, "ghi4GHI");
        sparseArray.put(12, "jkl5JKL");
        sparseArray.put(13, "mno6MNO");
        sparseArray.put(14, "pqrs7PQRS");
        sparseArray.put(15, "tuv8TUV");
        sparseArray.put(16, "wxyz9WXYZ");
        sparseArray.put(7, "0+");
        sparseArray.put(18, WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
    }

    public MultiTapKeyListener(TextKeyListener.Capitalize capitalize, boolean z2) {
        this.mCapitalize = capitalize;
        this.mAutoText = z2;
    }

    public static MultiTapKeyListener getInstance(boolean z2, TextKeyListener.Capitalize capitalize) {
        int iOrdinal = (capitalize.ordinal() * 2) + (z2 ? 1 : 0);
        MultiTapKeyListener[] multiTapKeyListenerArr = sInstance;
        if (multiTapKeyListenerArr[iOrdinal] == null) {
            multiTapKeyListenerArr[iOrdinal] = new MultiTapKeyListener(capitalize, z2);
        }
        return sInstance[iOrdinal];
    }

    private static void removeTimeouts(Spannable spannable) {
        for (Timeout timeout : (Timeout[]) spannable.getSpans(0, spannable.length(), Timeout.class)) {
            timeout.removeCallbacks(timeout);
            timeout.mBuffer = null;
            spannable.removeSpan(timeout);
        }
    }

    @Override // android.text.method.KeyListener
    public int getInputType() {
        return BaseKeyListener.makeTextContentType(this.mCapitalize, this.mAutoText);
    }

    /* JADX WARN: Code duplicated, block: B:32:0x00c1  */
    @Override // android.text.method.BaseKeyListener, android.text.method.MetaKeyKeyListener, android.text.method.KeyListener
    public boolean onKeyDown(View view, Editable editable, int i2, KeyEvent keyEvent) {
        int iIndexOfKey;
        int i3;
        String strValueAt;
        int iIndexOf;
        int prefs = view != null ? TextKeyListener.getInstance().getPrefs(view.getContext()) : 0;
        int selectionStart = Selection.getSelectionStart(editable);
        int selectionEnd = Selection.getSelectionEnd(editable);
        int iMin = Math.min(selectionStart, selectionEnd);
        int iMax = Math.max(selectionStart, selectionEnd);
        Object obj = TextKeyListener.ACTIVE;
        int spanStart = editable.getSpanStart(obj);
        int spanEnd = editable.getSpanEnd(obj);
        int spanFlags = (editable.getSpanFlags(obj) & (-16777216)) >>> 24;
        if (spanStart == iMin && spanEnd == iMax && iMax - iMin == 1 && spanFlags >= 0) {
            SparseArray<String> sparseArray = sRecs;
            if (spanFlags < sparseArray.size()) {
                if (i2 == 17) {
                    char cCharAt = editable.charAt(iMin);
                    if (Character.isLowerCase(cCharAt)) {
                        editable.replace(iMin, iMax, String.valueOf(cCharAt).toUpperCase());
                        removeTimeouts(editable);
                        new Timeout(editable);
                        return true;
                    }
                    if (Character.isUpperCase(cCharAt)) {
                        editable.replace(iMin, iMax, String.valueOf(cCharAt).toLowerCase());
                        removeTimeouts(editable);
                        new Timeout(editable);
                        return true;
                    }
                }
                if (sparseArray.indexOfKey(i2) == spanFlags && (iIndexOf = (strValueAt = sparseArray.valueAt(spanFlags)).indexOf(editable.charAt(iMin))) >= 0) {
                    int length = (iIndexOf + 1) % strValueAt.length();
                    editable.replace(iMin, iMax, strValueAt, length, length + 1);
                    removeTimeouts(editable);
                    new Timeout(editable);
                    return true;
                }
                iIndexOfKey = sparseArray.indexOfKey(i2);
                if (iIndexOfKey >= 0) {
                    Selection.setSelection(editable, iMax, iMax);
                    iMin = iMax;
                }
            } else {
                iIndexOfKey = sRecs.indexOfKey(i2);
            }
        } else {
            iIndexOfKey = sRecs.indexOfKey(i2);
        }
        int i4 = iIndexOfKey;
        if (i4 < 0) {
            return super.onKeyDown(view, editable, i2, keyEvent);
        }
        String strValueAt2 = sRecs.valueAt(i4);
        if ((prefs & 1) == 0 || !TextKeyListener.shouldCap(this.mCapitalize, editable, iMin)) {
            i3 = 0;
            break;
        }
        int i5 = 0;
        while (true) {
            if (i5 >= strValueAt2.length()) {
                i3 = 0;
                break;
            }
            if (Character.isUpperCase(strValueAt2.charAt(i5))) {
                i3 = i5;
                break;
            }
            i5++;
        }
        if (iMin != iMax) {
            Selection.setSelection(editable, iMax);
        }
        Object obj2 = BaseKeyListener.OLD_SEL_START;
        editable.setSpan(obj2, iMin, iMin, 17);
        editable.replace(iMin, iMax, strValueAt2, i3, i3 + 1);
        int spanStart2 = editable.getSpanStart(obj2);
        int selectionEnd2 = Selection.getSelectionEnd(editable);
        if (selectionEnd2 != spanStart2) {
            Selection.setSelection(editable, spanStart2, selectionEnd2);
            editable.setSpan(TextKeyListener.LAST_TYPED, spanStart2, selectionEnd2, 33);
            editable.setSpan(TextKeyListener.ACTIVE, spanStart2, selectionEnd2, 33 | (i4 << 24));
        }
        removeTimeouts(editable);
        new Timeout(editable);
        if (editable.getSpanStart(this) < 0) {
            for (Object obj3 : (KeyListener[]) editable.getSpans(0, editable.length(), KeyListener.class)) {
                editable.removeSpan(obj3);
            }
            editable.setSpan(this, 0, editable.length(), 18);
        }
        return true;
    }

    @Override // android.text.SpanWatcher
    public void onSpanAdded(Spannable spannable, Object obj, int i2, int i3) {
    }

    @Override // android.text.SpanWatcher
    public void onSpanChanged(Spannable spannable, Object obj, int i2, int i3, int i4, int i5) {
        if (obj == Selection.SELECTION_END) {
            spannable.removeSpan(TextKeyListener.ACTIVE);
            removeTimeouts(spannable);
        }
    }

    @Override // android.text.SpanWatcher
    public void onSpanRemoved(Spannable spannable, Object obj, int i2, int i3) {
    }
}
