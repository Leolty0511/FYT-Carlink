package android.view.inputmethod;

import android.accessibilityservice.c;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemClock;
import android.text.Editable;
import android.text.Selection;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.method.MetaKeyKeyListener;
import android.util.Log;
import android.util.LogPrinter;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.View;

/* JADX INFO: loaded from: classes2.dex */
public class BaseInputConnection implements InputConnection {
    static boolean DEBUG = false;
    private static final String TAG = "BaseInputConnection";
    private Object[] mDefaultComposingSpans;
    final boolean mDummyMode;
    Editable mEditable;
    protected final InputMethodManager mIMM;
    KeyCharacterMap mKeyCharacterMap;
    final View mTargetView;
    static final Object COMPOSING = new ComposingText();
    private static int INVALID_INDEX = -1;

    public BaseInputConnection(InputMethodManager inputMethodManager, boolean z2) {
        this.mIMM = inputMethodManager;
        this.mTargetView = null;
        this.mDummyMode = !z2;
    }

    private void ensureDefaultComposingSpans() {
        Context context;
        if (this.mDefaultComposingSpans == null) {
            View view = this.mTargetView;
            if (view != null) {
                context = view.getContext();
            } else {
                View view2 = this.mIMM.mServedView;
                context = view2 != null ? view2.getContext() : null;
            }
            if (context != null) {
                TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{16843312});
                CharSequence text = typedArrayObtainStyledAttributes.getText(0);
                typedArrayObtainStyledAttributes.recycle();
                if (text == null || !(text instanceof Spanned)) {
                    return;
                }
                this.mDefaultComposingSpans = ((Spanned) text).getSpans(0, text.length(), Object.class);
            }
        }
    }

    private static int findIndexBackward(CharSequence charSequence, int i2, int i3) {
        int length = charSequence.length();
        if (i2 < 0 || length < i2) {
            return INVALID_INDEX;
        }
        if (i3 < 0) {
            return INVALID_INDEX;
        }
        while (true) {
            boolean z2 = false;
            while (i3 != 0) {
                i2--;
                if (i2 < 0) {
                    if (z2) {
                        return INVALID_INDEX;
                    }
                    return 0;
                }
                char cCharAt = charSequence.charAt(i2);
                if (z2) {
                    if (!Character.isHighSurrogate(cCharAt)) {
                        return INVALID_INDEX;
                    }
                    i3--;
                } else if (!Character.isSurrogate(cCharAt)) {
                    i3--;
                } else {
                    if (Character.isHighSurrogate(cCharAt)) {
                        return INVALID_INDEX;
                    }
                    z2 = true;
                }
            }
            return i2;
        }
    }

    private static int findIndexForward(CharSequence charSequence, int i2, int i3) {
        int length = charSequence.length();
        if (i2 < 0 || length < i2) {
            return INVALID_INDEX;
        }
        if (i3 < 0) {
            return INVALID_INDEX;
        }
        while (true) {
            boolean z2 = false;
            while (i3 != 0) {
                if (i2 >= length) {
                    return z2 ? INVALID_INDEX : length;
                }
                char cCharAt = charSequence.charAt(i2);
                if (z2) {
                    if (!Character.isLowSurrogate(cCharAt)) {
                        return INVALID_INDEX;
                    }
                    i3--;
                    i2++;
                } else if (!Character.isSurrogate(cCharAt)) {
                    i3--;
                    i2++;
                } else {
                    if (Character.isLowSurrogate(cCharAt)) {
                        return INVALID_INDEX;
                    }
                    i2++;
                    z2 = true;
                }
            }
            return i2;
        }
    }

    public static int getComposingSpanEnd(Spannable spannable) {
        return spannable.getSpanEnd(COMPOSING);
    }

    public static int getComposingSpanStart(Spannable spannable) {
        return spannable.getSpanStart(COMPOSING);
    }

    public static final void removeComposingSpans(Spannable spannable) {
        spannable.removeSpan(COMPOSING);
        Object[] spans = spannable.getSpans(0, spannable.length(), Object.class);
        if (spans != null) {
            for (int length = spans.length - 1; length >= 0; length--) {
                Object obj = spans[length];
                if ((spannable.getSpanFlags(obj) & 256) != 0) {
                    spannable.removeSpan(obj);
                }
            }
        }
    }

    private void replaceText(CharSequence charSequence, int i2, boolean z2) {
        Spannable spannableStringBuilder;
        Editable editable = getEditable();
        if (editable == null) {
            return;
        }
        beginBatchEdit();
        int composingSpanStart = getComposingSpanStart(editable);
        int composingSpanEnd = getComposingSpanEnd(editable);
        if (DEBUG) {
            Log.v(TAG, "Composing span: " + composingSpanStart + " to " + composingSpanEnd);
        }
        if (composingSpanEnd < composingSpanStart) {
            composingSpanEnd = composingSpanStart;
            composingSpanStart = composingSpanEnd;
        }
        if (composingSpanStart == -1 || composingSpanEnd == -1) {
            composingSpanStart = Selection.getSelectionStart(editable);
            composingSpanEnd = Selection.getSelectionEnd(editable);
            if (composingSpanStart < 0) {
                composingSpanStart = 0;
            }
            if (composingSpanEnd < 0) {
                composingSpanEnd = 0;
            }
            if (composingSpanEnd < composingSpanStart) {
                int i3 = composingSpanEnd;
                composingSpanEnd = composingSpanStart;
                composingSpanStart = i3;
            }
        } else {
            removeComposingSpans(editable);
        }
        if (z2) {
            if (charSequence instanceof Spannable) {
                spannableStringBuilder = (Spannable) charSequence;
            } else {
                spannableStringBuilder = new SpannableStringBuilder(charSequence);
                ensureDefaultComposingSpans();
                if (this.mDefaultComposingSpans != null) {
                    int i4 = 0;
                    while (true) {
                        Object[] objArr = this.mDefaultComposingSpans;
                        if (i4 >= objArr.length) {
                            break;
                        }
                        spannableStringBuilder.setSpan(objArr[i4], 0, spannableStringBuilder.length(), 289);
                        i4++;
                    }
                }
                charSequence = spannableStringBuilder;
            }
            setComposingSpans(spannableStringBuilder);
        }
        if (DEBUG) {
            StringBuilder sbT = c.t("Replacing from ", composingSpanStart, " to ", composingSpanEnd, " with \"");
            sbT.append((Object) charSequence);
            sbT.append("\", composing=");
            sbT.append(z2);
            sbT.append(", type=");
            sbT.append(charSequence.getClass().getCanonicalName());
            Log.v(TAG, sbT.toString());
        }
        if (DEBUG) {
            LogPrinter logPrinter = new LogPrinter(2, TAG);
            logPrinter.println("Current text:");
            TextUtils.dumpSpans(editable, logPrinter, "  ");
            logPrinter.println("Composing text:");
            TextUtils.dumpSpans(charSequence, logPrinter, "  ");
        }
        int i5 = i2 > 0 ? (composingSpanEnd - 1) + i2 : i2 + composingSpanStart;
        int length = i5 >= 0 ? i5 : 0;
        if (length > editable.length()) {
            length = editable.length();
        }
        Selection.setSelection(editable, length);
        editable.replace(composingSpanStart, composingSpanEnd, charSequence);
        if (DEBUG) {
            LogPrinter logPrinter2 = new LogPrinter(2, TAG);
            logPrinter2.println("Final text:");
            TextUtils.dumpSpans(editable, logPrinter2, "  ");
        }
        endBatchEdit();
    }

    private void sendCurrentText() {
        Editable editable;
        int length;
        if (!this.mDummyMode || (editable = getEditable()) == null || (length = editable.length()) == 0) {
            return;
        }
        if (length == 1) {
            if (this.mKeyCharacterMap == null) {
                this.mKeyCharacterMap = KeyCharacterMap.load(-1);
            }
            char[] cArr = new char[1];
            editable.getChars(0, 1, cArr, 0);
            KeyEvent[] events = this.mKeyCharacterMap.getEvents(cArr);
            if (events != null) {
                for (int i2 = 0; i2 < events.length; i2++) {
                    if (DEBUG) {
                        Log.v(TAG, "Sending: " + events[i2]);
                    }
                    sendKeyEvent(events[i2]);
                }
                editable.clear();
                return;
            }
        }
        sendKeyEvent(new KeyEvent(SystemClock.uptimeMillis(), editable.toString(), -1, 0));
        editable.clear();
    }

    public static void setComposingSpans(Spannable spannable) {
        setComposingSpans(spannable, 0, spannable.length());
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean beginBatchEdit() {
        return false;
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean clearMetaKeyStates(int i2) {
        Editable editable = getEditable();
        if (editable == null) {
            return false;
        }
        MetaKeyKeyListener.clearMetaKeyState(editable, i2);
        return true;
    }

    @Override // android.view.inputmethod.InputConnection
    public void closeConnection() {
        finishComposingText();
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean commitCompletion(CompletionInfo completionInfo) {
        return false;
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean commitContent(InputContentInfo inputContentInfo, int i2, Bundle bundle) {
        return false;
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean commitCorrection(CorrectionInfo correctionInfo) {
        return false;
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean commitText(CharSequence charSequence, int i2) {
        if (DEBUG) {
            Log.v(TAG, "commitText " + ((Object) charSequence));
        }
        replaceText(charSequence, i2, false);
        sendCurrentText();
        return true;
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean deleteSurroundingText(int i2, int i3) {
        if (DEBUG) {
            Log.v(TAG, "deleteSurroundingText " + i2 + " / " + i3);
        }
        Editable editable = getEditable();
        int i4 = 0;
        if (editable == null) {
            return false;
        }
        beginBatchEdit();
        int selectionStart = Selection.getSelectionStart(editable);
        int selectionEnd = Selection.getSelectionEnd(editable);
        if (selectionStart > selectionEnd) {
            selectionEnd = selectionStart;
            selectionStart = selectionEnd;
        }
        int composingSpanStart = getComposingSpanStart(editable);
        int composingSpanEnd = getComposingSpanEnd(editable);
        if (composingSpanEnd < composingSpanStart) {
            composingSpanEnd = composingSpanStart;
            composingSpanStart = composingSpanEnd;
        }
        if (composingSpanStart != -1 && composingSpanEnd != -1) {
            if (composingSpanStart < selectionStart) {
                selectionStart = composingSpanStart;
            }
            if (composingSpanEnd > selectionEnd) {
                selectionEnd = composingSpanEnd;
            }
        }
        if (i2 > 0) {
            int i5 = selectionStart - i2;
            i4 = i5 >= 0 ? i5 : 0;
            editable.delete(i4, selectionStart);
            i4 = selectionStart - i4;
        }
        if (i3 > 0) {
            int i6 = selectionEnd - i4;
            int length = i3 + i6;
            if (length > editable.length()) {
                length = editable.length();
            }
            editable.delete(i6, length);
        }
        endBatchEdit();
        return true;
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean deleteSurroundingTextInCodePoints(int i2, int i3) {
        int iFindIndexBackward;
        int iFindIndexForward;
        if (DEBUG) {
            Log.v(TAG, "deleteSurroundingText " + i2 + " / " + i3);
        }
        Editable editable = getEditable();
        if (editable == null) {
            return false;
        }
        beginBatchEdit();
        int selectionStart = Selection.getSelectionStart(editable);
        int selectionEnd = Selection.getSelectionEnd(editable);
        if (selectionStart > selectionEnd) {
            selectionEnd = selectionStart;
            selectionStart = selectionEnd;
        }
        int composingSpanStart = getComposingSpanStart(editable);
        int composingSpanEnd = getComposingSpanEnd(editable);
        if (composingSpanEnd < composingSpanStart) {
            composingSpanEnd = composingSpanStart;
            composingSpanStart = composingSpanEnd;
        }
        if (composingSpanStart != -1 && composingSpanEnd != -1) {
            if (composingSpanStart < selectionStart) {
                selectionStart = composingSpanStart;
            }
            if (composingSpanEnd > selectionEnd) {
                selectionEnd = composingSpanEnd;
            }
        }
        if (selectionStart >= 0 && selectionEnd >= 0 && (iFindIndexBackward = findIndexBackward(editable, selectionStart, Math.max(i2, 0))) != INVALID_INDEX && (iFindIndexForward = findIndexForward(editable, selectionEnd, Math.max(i3, 0))) != INVALID_INDEX) {
            int i4 = selectionStart - iFindIndexBackward;
            if (i4 > 0) {
                editable.delete(iFindIndexBackward, selectionStart);
            }
            if (iFindIndexForward - selectionEnd > 0) {
                editable.delete(selectionEnd - i4, iFindIndexForward - i4);
            }
        }
        endBatchEdit();
        return true;
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean endBatchEdit() {
        return false;
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean finishComposingText() {
        if (DEBUG) {
            Log.v(TAG, "finishComposingText");
        }
        Editable editable = getEditable();
        if (editable == null) {
            return true;
        }
        beginBatchEdit();
        removeComposingSpans(editable);
        sendCurrentText();
        endBatchEdit();
        return true;
    }

    @Override // android.view.inputmethod.InputConnection
    public int getCursorCapsMode(int i2) {
        Editable editable;
        if (this.mDummyMode || (editable = getEditable()) == null) {
            return 0;
        }
        int selectionStart = Selection.getSelectionStart(editable);
        int selectionEnd = Selection.getSelectionEnd(editable);
        if (selectionStart > selectionEnd) {
            selectionStart = selectionEnd;
        }
        return TextUtils.getCapsMode(editable, selectionStart, i2);
    }

    public Editable getEditable() {
        if (this.mEditable == null) {
            Editable editableNewEditable = Editable.Factory.getInstance().newEditable("");
            this.mEditable = editableNewEditable;
            Selection.setSelection(editableNewEditable, 0);
        }
        return this.mEditable;
    }

    @Override // android.view.inputmethod.InputConnection
    public ExtractedText getExtractedText(ExtractedTextRequest extractedTextRequest, int i2) {
        return null;
    }

    @Override // android.view.inputmethod.InputConnection
    public Handler getHandler() {
        return null;
    }

    @Override // android.view.inputmethod.InputConnection
    public CharSequence getSelectedText(int i2) {
        Editable editable = getEditable();
        if (editable == null) {
            return null;
        }
        int selectionStart = Selection.getSelectionStart(editable);
        int selectionEnd = Selection.getSelectionEnd(editable);
        if (selectionStart > selectionEnd) {
            selectionEnd = selectionStart;
            selectionStart = selectionEnd;
        }
        if (selectionStart == selectionEnd) {
            return null;
        }
        return (i2 & 1) != 0 ? editable.subSequence(selectionStart, selectionEnd) : TextUtils.substring(editable, selectionStart, selectionEnd);
    }

    @Override // android.view.inputmethod.InputConnection
    public CharSequence getTextAfterCursor(int i2, int i3) {
        Editable editable = getEditable();
        if (editable == null) {
            return null;
        }
        int selectionStart = Selection.getSelectionStart(editable);
        int selectionEnd = Selection.getSelectionEnd(editable);
        if (selectionStart <= selectionEnd) {
            selectionStart = selectionEnd;
        }
        if (selectionStart < 0) {
            selectionStart = 0;
        }
        if (selectionStart + i2 > editable.length()) {
            i2 = editable.length() - selectionStart;
        }
        return (i3 & 1) != 0 ? editable.subSequence(selectionStart, i2 + selectionStart) : TextUtils.substring(editable, selectionStart, i2 + selectionStart);
    }

    @Override // android.view.inputmethod.InputConnection
    public CharSequence getTextBeforeCursor(int i2, int i3) {
        Editable editable = getEditable();
        if (editable == null) {
            return null;
        }
        int selectionStart = Selection.getSelectionStart(editable);
        int selectionEnd = Selection.getSelectionEnd(editable);
        if (selectionStart > selectionEnd) {
            selectionStart = selectionEnd;
        }
        if (selectionStart <= 0) {
            return "";
        }
        if (i2 > selectionStart) {
            i2 = selectionStart;
        }
        return (i3 & 1) != 0 ? editable.subSequence(selectionStart - i2, selectionStart) : TextUtils.substring(editable, selectionStart - i2, selectionStart);
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean performContextMenuAction(int i2) {
        return false;
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean performEditorAction(int i2) {
        long jUptimeMillis = SystemClock.uptimeMillis();
        sendKeyEvent(new KeyEvent(jUptimeMillis, jUptimeMillis, 0, 66, 0, 0, -1, 0, 22));
        sendKeyEvent(new KeyEvent(SystemClock.uptimeMillis(), jUptimeMillis, 1, 66, 0, 0, -1, 0, 22));
        return true;
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean performPrivateCommand(String str, Bundle bundle) {
        return false;
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean reportFullscreenMode(boolean z2) {
        return true;
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean requestCursorUpdates(int i2) {
        return false;
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean sendKeyEvent(KeyEvent keyEvent) {
        this.mIMM.dispatchKeyEventFromInputMethod(this.mTargetView, keyEvent);
        return false;
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean setComposingRegion(int i2, int i3) {
        Editable editable = getEditable();
        if (editable == null) {
            return true;
        }
        beginBatchEdit();
        removeComposingSpans(editable);
        if (i2 > i3) {
            i3 = i2;
            i2 = i3;
        }
        int length = editable.length();
        int i4 = 0;
        if (i2 < 0) {
            i2 = 0;
        }
        if (i3 < 0) {
            i3 = 0;
        }
        if (i2 > length) {
            i2 = length;
        }
        if (i3 <= length) {
            length = i3;
        }
        ensureDefaultComposingSpans();
        if (this.mDefaultComposingSpans != null) {
            while (true) {
                Object[] objArr = this.mDefaultComposingSpans;
                if (i4 >= objArr.length) {
                    break;
                }
                editable.setSpan(objArr[i4], i2, length, 289);
                i4++;
            }
        }
        editable.setSpan(COMPOSING, i2, length, 289);
        sendCurrentText();
        endBatchEdit();
        return true;
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean setComposingText(CharSequence charSequence, int i2) {
        if (DEBUG) {
            Log.v(TAG, "setComposingText " + ((Object) charSequence));
        }
        replaceText(charSequence, i2, true);
        return true;
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean setSelection(int i2, int i3) {
        if (DEBUG) {
            Log.v(TAG, "setSelection " + i2 + ", " + i3);
        }
        Editable editable = getEditable();
        if (editable == null) {
            return false;
        }
        int length = editable.length();
        if (i2 <= length && i3 <= length && i2 >= 0 && i3 >= 0) {
            if (i2 != i3 || MetaKeyKeyListener.getMetaState(editable, 2048) == 0) {
                Selection.setSelection(editable, i2, i3);
            } else {
                Selection.extendSelection(editable, i2);
            }
        }
        return true;
    }

    public static void setComposingSpans(Spannable spannable, int i2, int i3) {
        Object[] spans = spannable.getSpans(i2, i3, Object.class);
        if (spans != null) {
            for (int length = spans.length - 1; length >= 0; length--) {
                Object obj = spans[length];
                if (obj == COMPOSING) {
                    spannable.removeSpan(obj);
                } else {
                    int spanFlags = spannable.getSpanFlags(obj);
                    if ((spanFlags & 307) != 289) {
                        spannable.setSpan(obj, spannable.getSpanStart(obj), spannable.getSpanEnd(obj), (spanFlags & (-52)) | 256 | 33);
                    }
                }
            }
        }
        spannable.setSpan(COMPOSING, i2, i3, 289);
    }

    public BaseInputConnection(View view, boolean z2) {
        this.mIMM = (InputMethodManager) view.getContext().getSystemService(Context.INPUT_METHOD_SERVICE);
        this.mTargetView = view;
        this.mDummyMode = !z2;
    }
}
