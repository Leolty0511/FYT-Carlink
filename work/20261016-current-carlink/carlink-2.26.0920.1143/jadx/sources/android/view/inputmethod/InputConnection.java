package android.view.inputmethod;

import android.os.Bundle;
import android.os.Handler;
import android.view.KeyEvent;

/* JADX INFO: loaded from: classes2.dex */
public interface InputConnection {
    public static final int CURSOR_UPDATE_IMMEDIATE = 1;
    public static final int CURSOR_UPDATE_MONITOR = 2;
    public static final int GET_EXTRACTED_TEXT_MONITOR = 1;
    public static final int GET_TEXT_WITH_STYLES = 1;
    public static final int INPUT_CONTENT_GRANT_READ_URI_PERMISSION = 1;

    boolean beginBatchEdit();

    boolean clearMetaKeyStates(int i2);

    void closeConnection();

    boolean commitCompletion(CompletionInfo completionInfo);

    boolean commitContent(InputContentInfo inputContentInfo, int i2, Bundle bundle);

    boolean commitCorrection(CorrectionInfo correctionInfo);

    boolean commitText(CharSequence charSequence, int i2);

    boolean deleteSurroundingText(int i2, int i3);

    boolean deleteSurroundingTextInCodePoints(int i2, int i3);

    boolean endBatchEdit();

    boolean finishComposingText();

    int getCursorCapsMode(int i2);

    ExtractedText getExtractedText(ExtractedTextRequest extractedTextRequest, int i2);

    Handler getHandler();

    CharSequence getSelectedText(int i2);

    CharSequence getTextAfterCursor(int i2, int i3);

    CharSequence getTextBeforeCursor(int i2, int i3);

    boolean performContextMenuAction(int i2);

    boolean performEditorAction(int i2);

    boolean performPrivateCommand(String str, Bundle bundle);

    boolean reportFullscreenMode(boolean z2);

    boolean requestCursorUpdates(int i2);

    boolean sendKeyEvent(KeyEvent keyEvent);

    boolean setComposingRegion(int i2, int i3);

    boolean setComposingText(CharSequence charSequence, int i2);

    boolean setSelection(int i2, int i3);
}
