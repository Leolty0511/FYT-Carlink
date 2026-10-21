package com.android.internal.widget;

import android.os.Bundle;
import android.text.Editable;
import android.text.Spanned;
import android.text.method.KeyListener;
import android.text.style.SuggestionSpan;
import android.view.View;
import android.view.inputmethod.BaseInputConnection;
import android.view.inputmethod.CompletionInfo;
import android.view.inputmethod.CorrectionInfo;
import android.view.inputmethod.ExtractedText;
import android.view.inputmethod.ExtractedTextRequest;
import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
public class b extends BaseInputConnection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TextView f1512a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f1513b;

    public b(TextView textView) {
        super((View) textView, true);
        this.f1512a = textView;
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public boolean beginBatchEdit() {
        synchronized (this) {
            if (this.f1513b < 0) {
                return false;
            }
            this.f1512a.beginBatchEdit();
            this.f1513b++;
            return true;
        }
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public boolean clearMetaKeyStates(int i2) {
        Editable editable = getEditable();
        if (editable == null) {
            return false;
        }
        KeyListener keyListener = this.f1512a.getKeyListener();
        if (keyListener == null) {
            return true;
        }
        try {
            keyListener.clearMetaKeyState(this.f1512a, editable, i2);
            return true;
        } catch (AbstractMethodError unused) {
            return true;
        }
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public boolean commitCompletion(CompletionInfo completionInfo) {
        this.f1512a.beginBatchEdit();
        this.f1512a.onCommitCompletion(completionInfo);
        this.f1512a.endBatchEdit();
        return true;
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public boolean commitCorrection(CorrectionInfo correctionInfo) {
        this.f1512a.beginBatchEdit();
        this.f1512a.onCommitCorrection(correctionInfo);
        this.f1512a.endBatchEdit();
        return true;
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public boolean commitText(CharSequence charSequence, int i2) {
        if (this.f1512a == null) {
            return super.commitText(charSequence, i2);
        }
        if (charSequence instanceof Spanned) {
            this.mIMM.registerSuggestionSpansForNotification((SuggestionSpan[]) ((Spanned) charSequence).getSpans(0, charSequence.length(), SuggestionSpan.class));
        }
        this.f1512a.resetErrorChangedFlag();
        boolean zCommitText = super.commitText(charSequence, i2);
        this.f1512a.hideErrorIfUnchanged();
        return zCommitText;
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public boolean endBatchEdit() {
        synchronized (this) {
            if (this.f1513b <= 0) {
                return false;
            }
            this.f1512a.endBatchEdit();
            this.f1513b--;
            return true;
        }
    }

    @Override // android.view.inputmethod.BaseInputConnection
    public Editable getEditable() {
        TextView textView = this.f1512a;
        if (textView != null) {
            return textView.getEditableText();
        }
        return null;
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public ExtractedText getExtractedText(ExtractedTextRequest extractedTextRequest, int i2) {
        if (this.f1512a == null) {
            return null;
        }
        ExtractedText extractedText = new ExtractedText();
        if (!this.f1512a.extractText(extractedTextRequest, extractedText)) {
            return null;
        }
        if ((i2 & 1) != 0) {
            this.f1512a.setExtracting(extractedTextRequest);
        }
        return extractedText;
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public boolean performContextMenuAction(int i2) {
        this.f1512a.beginBatchEdit();
        this.f1512a.onTextContextMenuItem(i2);
        this.f1512a.endBatchEdit();
        return true;
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public boolean performEditorAction(int i2) {
        this.f1512a.onEditorAction(i2);
        return true;
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public boolean performPrivateCommand(String str, Bundle bundle) {
        this.f1512a.onPrivateIMECommand(str, bundle);
        return true;
    }

    @Override // android.view.inputmethod.BaseInputConnection
    public void reportFinish() {
        super.reportFinish();
        synchronized (this) {
            while (this.f1513b > 0) {
                endBatchEdit();
            }
            this.f1513b = -1;
        }
    }
}
