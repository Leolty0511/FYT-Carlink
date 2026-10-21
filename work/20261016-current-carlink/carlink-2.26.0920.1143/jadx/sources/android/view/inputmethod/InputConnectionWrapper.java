package android.view.inputmethod;

import android.os.Bundle;
import android.os.Handler;
import android.view.KeyEvent;

/* JADX INFO: loaded from: classes2.dex */
public class InputConnectionWrapper implements InputConnection {
    private int mMissingMethodFlags;
    final boolean mMutable;
    private InputConnection mTarget;

    public InputConnectionWrapper(InputConnection inputConnection, boolean z2) {
        this.mMutable = z2;
        this.mTarget = inputConnection;
        this.mMissingMethodFlags = InputConnectionInspector.getMissingMethodFlags(inputConnection);
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean beginBatchEdit() {
        return this.mTarget.beginBatchEdit();
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean clearMetaKeyStates(int i2) {
        return this.mTarget.clearMetaKeyStates(i2);
    }

    @Override // android.view.inputmethod.InputConnection
    public void closeConnection() {
        this.mTarget.closeConnection();
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean commitCompletion(CompletionInfo completionInfo) {
        return this.mTarget.commitCompletion(completionInfo);
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean commitContent(InputContentInfo inputContentInfo, int i2, Bundle bundle) {
        return this.mTarget.commitContent(inputContentInfo, i2, bundle);
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean commitCorrection(CorrectionInfo correctionInfo) {
        return this.mTarget.commitCorrection(correctionInfo);
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean commitText(CharSequence charSequence, int i2) {
        return this.mTarget.commitText(charSequence, i2);
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean deleteSurroundingText(int i2, int i3) {
        return this.mTarget.deleteSurroundingText(i2, i3);
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean deleteSurroundingTextInCodePoints(int i2, int i3) {
        return this.mTarget.deleteSurroundingTextInCodePoints(i2, i3);
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean endBatchEdit() {
        return this.mTarget.endBatchEdit();
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean finishComposingText() {
        return this.mTarget.finishComposingText();
    }

    @Override // android.view.inputmethod.InputConnection
    public int getCursorCapsMode(int i2) {
        return this.mTarget.getCursorCapsMode(i2);
    }

    @Override // android.view.inputmethod.InputConnection
    public ExtractedText getExtractedText(ExtractedTextRequest extractedTextRequest, int i2) {
        return this.mTarget.getExtractedText(extractedTextRequest, i2);
    }

    @Override // android.view.inputmethod.InputConnection
    public Handler getHandler() {
        return this.mTarget.getHandler();
    }

    public int getMissingMethodFlags() {
        return this.mMissingMethodFlags;
    }

    @Override // android.view.inputmethod.InputConnection
    public CharSequence getSelectedText(int i2) {
        return this.mTarget.getSelectedText(i2);
    }

    @Override // android.view.inputmethod.InputConnection
    public CharSequence getTextAfterCursor(int i2, int i3) {
        return this.mTarget.getTextAfterCursor(i2, i3);
    }

    @Override // android.view.inputmethod.InputConnection
    public CharSequence getTextBeforeCursor(int i2, int i3) {
        return this.mTarget.getTextBeforeCursor(i2, i3);
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean performContextMenuAction(int i2) {
        return this.mTarget.performContextMenuAction(i2);
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean performEditorAction(int i2) {
        return this.mTarget.performEditorAction(i2);
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean performPrivateCommand(String str, Bundle bundle) {
        return this.mTarget.performPrivateCommand(str, bundle);
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean reportFullscreenMode(boolean z2) {
        return this.mTarget.reportFullscreenMode(z2);
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean requestCursorUpdates(int i2) {
        return this.mTarget.requestCursorUpdates(i2);
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean sendKeyEvent(KeyEvent keyEvent) {
        return this.mTarget.sendKeyEvent(keyEvent);
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean setComposingRegion(int i2, int i3) {
        return this.mTarget.setComposingRegion(i2, i3);
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean setComposingText(CharSequence charSequence, int i2) {
        return this.mTarget.setComposingText(charSequence, i2);
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean setSelection(int i2, int i3) {
        return this.mTarget.setSelection(i2, i3);
    }

    public void setTarget(InputConnection inputConnection) {
        if (this.mTarget != null && !this.mMutable) {
            throw new SecurityException("not mutable");
        }
        this.mTarget = inputConnection;
        this.mMissingMethodFlags = InputConnectionInspector.getMissingMethodFlags(inputConnection);
    }
}
