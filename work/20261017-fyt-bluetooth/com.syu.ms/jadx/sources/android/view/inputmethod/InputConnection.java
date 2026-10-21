package android.view.inputmethod;

import android.os.Bundle;
import android.view.KeyEvent;

/* JADX INFO: loaded from: classes.dex */
public interface InputConnection {
    public static final int GET_EXTRACTED_TEXT_MONITOR = 1;
    public static final int GET_TEXT_WITH_STYLES = 1;

    boolean beginBatchEdit();

    boolean clearMetaKeyStates(int i2);

    boolean commitCompletion(CompletionInfo completionInfo);

    boolean commitCorrection(CorrectionInfo correctionInfo);

    boolean commitText(CharSequence charSequence, int i2);

    boolean deleteSurroundingText(int i2, int i3);

    boolean endBatchEdit();

    boolean finishComposingText();

    int getCursorCapsMode(int i2);

    ExtractedText getExtractedText(ExtractedTextRequest extractedTextRequest, int i2);

    CharSequence getSelectedText(int i2);

    CharSequence getTextAfterCursor(int i2, int i3);

    CharSequence getTextBeforeCursor(int i2, int i3);

    boolean performContextMenuAction(int i2);

    boolean performEditorAction(int i2);

    boolean performPrivateCommand(String str, Bundle bundle);

    boolean reportFullscreenMode(boolean z2);

    boolean sendKeyEvent(KeyEvent keyEvent);

    boolean setComposingRegion(int i2, int i3);

    boolean setComposingText(CharSequence charSequence, int i2);

    boolean setSelection(int i2, int i3);
}
