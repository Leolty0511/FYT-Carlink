.class public interface abstract Lcom/android/internal/view/IInputContextCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/IInputContextCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract setCommitContentResult(ZI)V
.end method

.method public abstract setCursorCapsMode(II)V
.end method

.method public abstract setExtractedText(Landroid/view/inputmethod/ExtractedText;I)V
.end method

.method public abstract setRequestUpdateCursorAnchorInfoResult(ZI)V
.end method

.method public abstract setSelectedText(Ljava/lang/CharSequence;I)V
.end method

.method public abstract setTextAfterCursor(Ljava/lang/CharSequence;I)V
.end method

.method public abstract setTextBeforeCursor(Ljava/lang/CharSequence;I)V
.end method
