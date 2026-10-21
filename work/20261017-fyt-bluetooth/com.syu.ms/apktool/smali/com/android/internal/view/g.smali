.class public interface abstract Lcom/android/internal/view/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/g$a;
    }
.end annotation


# virtual methods
.method public abstract appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
.end method

.method public abstract finishInput()V
.end method

.method public abstract finishSession()V
.end method

.method public abstract toggleSoftInput(II)V
.end method

.method public abstract updateCursor(Landroid/graphics/Rect;)V
.end method

.method public abstract updateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V
.end method

.method public abstract updateSelection(IIIIII)V
.end method

.method public abstract viewClicked(Z)V
.end method
