.class public interface abstract Lcom/android/internal/view/IInputContext;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/IInputContext$Stub;
    }
.end annotation


# virtual methods
.method public abstract beginBatchEdit()V
.end method

.method public abstract clearMetaKeyStates(I)V
.end method

.method public abstract commitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
.end method

.method public abstract commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;ILcom/android/internal/view/IInputContextCallback;)V
.end method

.method public abstract commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V
.end method

.method public abstract commitText(Ljava/lang/CharSequence;I)V
.end method

.method public abstract deleteSurroundingText(II)V
.end method

.method public abstract deleteSurroundingTextInCodePoints(II)V
.end method

.method public abstract endBatchEdit()V
.end method

.method public abstract finishComposingText()V
.end method

.method public abstract getCursorCapsMode(IILcom/android/internal/view/IInputContextCallback;)V
.end method

.method public abstract getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;IILcom/android/internal/view/IInputContextCallback;)V
.end method

.method public abstract getSelectedText(IILcom/android/internal/view/IInputContextCallback;)V
.end method

.method public abstract getTextAfterCursor(IIILcom/android/internal/view/IInputContextCallback;)V
.end method

.method public abstract getTextBeforeCursor(IIILcom/android/internal/view/IInputContextCallback;)V
.end method

.method public abstract performContextMenuAction(I)V
.end method

.method public abstract performEditorAction(I)V
.end method

.method public abstract performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract requestUpdateCursorAnchorInfo(IILcom/android/internal/view/IInputContextCallback;)V
.end method

.method public abstract sendKeyEvent(Landroid/view/KeyEvent;)V
.end method

.method public abstract setComposingRegion(II)V
.end method

.method public abstract setComposingText(Ljava/lang/CharSequence;I)V
.end method

.method public abstract setSelection(II)V
.end method
