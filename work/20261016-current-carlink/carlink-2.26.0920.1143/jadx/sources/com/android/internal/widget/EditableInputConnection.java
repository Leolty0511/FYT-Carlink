package com.android.internal.widget;

import android.os.Bundle;
import android.text.Editable;
import android.text.Spanned;
import android.text.method.KeyListener;
import android.text.style.SuggestionSpan;
import android.util.Log;
import android.view.View;
import android.view.inputmethod.BaseInputConnection;
import android.view.inputmethod.CompletionInfo;
import android.view.inputmethod.CorrectionInfo;
import android.view.inputmethod.ExtractedText;
import android.view.inputmethod.ExtractedTextRequest;
import android.view.inputmethod.InputMethodManager;
import android.widget.TextView;

/* JADX INFO: loaded from: classes3.dex */
public class EditableInputConnection extends BaseInputConnection {
    public static boolean DEBUG = false;
    private static final String TAG = "EditableInputConnection";
    private int mBatchEditNesting;
    private final TextView mTextView;

    public EditableInputConnection(TextView textView) {
        super((View) textView, true);
        this.mTextView = textView;
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public boolean beginBatchEdit() {
        synchronized (this) {
            if (this.mBatchEditNesting < 0) {
                return false;
            }
            this.mTextView.beginBatchEdit();
            this.mBatchEditNesting++;
            return true;
        }
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public boolean clearMetaKeyStates(int i2) {
        Editable editable = getEditable();
        if (editable == null) {
            return false;
        }
        KeyListener keyListener = this.mTextView.getKeyListener();
        if (keyListener == null) {
            return true;
        }
        try {
            keyListener.clearMetaKeyState(this.mTextView, editable, i2);
            return true;
        } catch (AbstractMethodError unused) {
            return true;
        }
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public void closeConnection() {
        super.closeConnection();
        synchronized (this) {
            while (this.mBatchEditNesting > 0) {
                endBatchEdit();
            }
            this.mBatchEditNesting = -1;
        }
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public boolean commitCompletion(CompletionInfo completionInfo) {
        if (DEBUG) {
            Log.v(TAG, "commitCompletion " + completionInfo);
        }
        this.mTextView.beginBatchEdit();
        this.mTextView.onCommitCompletion(completionInfo);
        this.mTextView.endBatchEdit();
        return true;
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public boolean commitCorrection(CorrectionInfo correctionInfo) {
        if (DEBUG) {
            Log.v(TAG, "commitCorrection" + correctionInfo);
        }
        this.mTextView.beginBatchEdit();
        this.mTextView.onCommitCorrection(correctionInfo);
        this.mTextView.endBatchEdit();
        return true;
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public boolean commitText(CharSequence charSequence, int i2) {
        if (this.mTextView == null) {
            return super.commitText(charSequence, i2);
        }
        if (charSequence instanceof Spanned) {
            this.mIMM.registerSuggestionSpansForNotification((SuggestionSpan[]) ((Spanned) charSequence).getSpans(0, charSequence.length(), SuggestionSpan.class));
        }
        this.mTextView.resetErrorChangedFlag();
        boolean zCommitText = super.commitText(charSequence, i2);
        this.mTextView.hideErrorIfUnchanged();
        return zCommitText;
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public boolean endBatchEdit() {
        synchronized (this) {
            if (this.mBatchEditNesting <= 0) {
                return false;
            }
            this.mTextView.endBatchEdit();
            this.mBatchEditNesting--;
            return true;
        }
    }

    @Override // android.view.inputmethod.BaseInputConnection
    public Editable getEditable() {
        TextView textView = this.mTextView;
        if (textView != null) {
            return textView.getEditableText();
        }
        return null;
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public ExtractedText getExtractedText(ExtractedTextRequest extractedTextRequest, int i2) {
        if (this.mTextView == null) {
            return null;
        }
        ExtractedText extractedText = new ExtractedText();
        if (!this.mTextView.extractText(extractedTextRequest, extractedText)) {
            return null;
        }
        if ((i2 & 1) != 0) {
            this.mTextView.setExtracting(extractedTextRequest);
        }
        return extractedText;
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public boolean performContextMenuAction(int i2) {
        if (DEBUG) {
            Log.v(TAG, "performContextMenuAction " + i2);
        }
        this.mTextView.beginBatchEdit();
        this.mTextView.onTextContextMenuItem(i2);
        this.mTextView.endBatchEdit();
        return true;
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public boolean performEditorAction(int i2) {
        if (DEBUG) {
            Log.v(TAG, "performEditorAction " + i2);
        }
        this.mTextView.onEditorAction(i2);
        return true;
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public boolean performPrivateCommand(String str, Bundle bundle) {
        this.mTextView.onPrivateIMECommand(str, bundle);
        return true;
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public boolean requestCursorUpdates(int i2) {
        TextView textView;
        if (DEBUG) {
            Log.v(TAG, "requestUpdateCursorAnchorInfo " + i2);
        }
        int i3 = i2 & (-4);
        if (i3 != 0) {
            if (DEBUG) {
                Log.d(TAG, "Rejecting requestUpdateCursorAnchorInfo due to unknown flags. cursorUpdateMode=" + i2 + " unknownFlags=" + i3);
            }
            return false;
        }
        InputMethodManager inputMethodManager = this.mIMM;
        if (inputMethodManager == null) {
            return false;
        }
        inputMethodManager.setUpdateCursorAnchorInfoMode(i2);
        if ((i2 & 1) != 0 && (textView = this.mTextView) != null && !textView.isInLayout()) {
            this.mTextView.requestLayout();
        }
        return true;
    }
}
