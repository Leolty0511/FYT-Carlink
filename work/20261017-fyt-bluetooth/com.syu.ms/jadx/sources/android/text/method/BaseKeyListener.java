package android.text.method;

import android.app.FragmentTransaction;
import android.mtp.MtpConstants;
import android.text.Editable;
import android.text.Layout;
import android.text.NoCopySpan;
import android.text.Selection;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
public abstract class BaseKeyListener extends MetaKeyKeyListener implements KeyListener {
    public static final Object OLD_SEL_START = new NoCopySpan.Concrete();

    /* JADX INFO: renamed from: android.text.method.BaseKeyListener$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$android$text$method$TextKeyListener$Capitalize;

        static {
            int[] iArr = new int[TextKeyListener.Capitalize.values().length];
            $SwitchMap$android$text$method$TextKeyListener$Capitalize = iArr;
            try {
                iArr[TextKeyListener.Capitalize.CHARACTERS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$android$text$method$TextKeyListener$Capitalize[TextKeyListener.Capitalize.WORDS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$android$text$method$TextKeyListener$Capitalize[TextKeyListener.Capitalize.SENTENCES.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    private boolean backspaceOrForwardDelete(View view, Editable editable, int i2, KeyEvent keyEvent, boolean z2) {
        if (!KeyEvent.metaStateHasNoModifiers(keyEvent.getMetaState() & (-244))) {
            return false;
        }
        if (deleteSelection(view, editable)) {
            return true;
        }
        if (MetaKeyKeyListener.getMetaState(editable, 2, keyEvent) == 1 && deleteLine(view, editable)) {
            return true;
        }
        int selectionEnd = Selection.getSelectionEnd(editable);
        int offsetAfter = (z2 || keyEvent.isShiftPressed() || MetaKeyKeyListener.getMetaState(editable, 1) == 1) ? TextUtils.getOffsetAfter(editable, selectionEnd) : TextUtils.getOffsetBefore(editable, selectionEnd);
        if (selectionEnd == offsetAfter) {
            return false;
        }
        editable.delete(Math.min(selectionEnd, offsetAfter), Math.max(selectionEnd, offsetAfter));
        return true;
    }

    private boolean deleteLine(View view, Editable editable) {
        Layout layout;
        int lineForOffset;
        int lineStart;
        int lineEnd;
        if (!(view instanceof TextView) || (layout = ((TextView) view).getLayout()) == null || (lineEnd = layout.getLineEnd(lineForOffset)) == (lineStart = layout.getLineStart((lineForOffset = layout.getLineForOffset(Selection.getSelectionStart(editable)))))) {
            return false;
        }
        editable.delete(lineStart, lineEnd);
        return true;
    }

    private boolean deleteSelection(View view, Editable editable) {
        int selectionStart = Selection.getSelectionStart(editable);
        int selectionEnd = Selection.getSelectionEnd(editable);
        if (selectionEnd < selectionStart) {
            selectionEnd = selectionStart;
            selectionStart = selectionEnd;
        }
        if (selectionStart == selectionEnd) {
            return false;
        }
        editable.delete(selectionStart, selectionEnd);
        return true;
    }

    public static int makeTextContentType(TextKeyListener.Capitalize capitalize, boolean z2) {
        int i2 = AnonymousClass1.$SwitchMap$android$text$method$TextKeyListener$Capitalize[capitalize.ordinal()];
        int i3 = 1;
        if (i2 == 1) {
            i3 = FragmentTransaction.TRANSIT_FRAGMENT_OPEN;
        } else if (i2 == 2) {
            i3 = MtpConstants.RESPONSE_OK;
        } else if (i2 == 3) {
            i3 = 16385;
        }
        return z2 ? i3 | 32768 : i3;
    }

    public boolean backspace(View view, Editable editable, int i2, KeyEvent keyEvent) {
        return backspaceOrForwardDelete(view, editable, i2, keyEvent, false);
    }

    public boolean forwardDelete(View view, Editable editable, int i2, KeyEvent keyEvent) {
        return backspaceOrForwardDelete(view, editable, i2, keyEvent, true);
    }

    @Override // android.text.method.MetaKeyKeyListener, android.text.method.KeyListener
    public boolean onKeyDown(View view, Editable editable, int i2, KeyEvent keyEvent) {
        boolean zBackspace;
        if (i2 != 67) {
            zBackspace = i2 != 112 ? false : forwardDelete(view, editable, i2, keyEvent);
        } else {
            zBackspace = backspace(view, editable, i2, keyEvent);
        }
        if (zBackspace) {
            MetaKeyKeyListener.adjustMetaAfterKeypress(editable);
        }
        return super.onKeyDown(view, editable, i2, keyEvent);
    }

    @Override // android.text.method.KeyListener
    public boolean onKeyOther(View view, Editable editable, KeyEvent keyEvent) {
        if (keyEvent.getAction() != 2 || keyEvent.getKeyCode() != 0) {
            return false;
        }
        int selectionStart = Selection.getSelectionStart(editable);
        int selectionEnd = Selection.getSelectionEnd(editable);
        if (selectionEnd < selectionStart) {
            selectionEnd = selectionStart;
            selectionStart = selectionEnd;
        }
        String characters = keyEvent.getCharacters();
        if (characters == null) {
            return false;
        }
        editable.replace(selectionStart, selectionEnd, characters);
        return true;
    }
}
