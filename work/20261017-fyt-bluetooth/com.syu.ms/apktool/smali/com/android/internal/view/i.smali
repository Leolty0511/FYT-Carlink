.class public Lcom/android/internal/view/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/inputmethod/InputConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/i$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/android/internal/view/b;


# direct methods
.method public constructor <init>(Lcom/android/internal/view/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/internal/view/i;->a:Lcom/android/internal/view/b;

    return-void
.end method


# virtual methods
.method public beginBatchEdit()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/view/i;->a:Lcom/android/internal/view/b;

    invoke-interface {v0}, Lcom/android/internal/view/b;->beginBatchEdit()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public clearMetaKeyStates(I)Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/view/i;->a:Lcom/android/internal/view/b;

    invoke-interface {v0, p1}, Lcom/android/internal/view/b;->clearMetaKeyStates(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/view/i;->a:Lcom/android/internal/view/b;

    invoke-interface {v0, p1}, Lcom/android/internal/view/b;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/view/i;->a:Lcom/android/internal/view/b;

    invoke-interface {v0, p1}, Lcom/android/internal/view/b;->commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/view/i;->a:Lcom/android/internal/view/b;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/view/b;->commitText(Ljava/lang/CharSequence;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public deleteSurroundingText(II)Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/view/i;->a:Lcom/android/internal/view/b;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/view/b;->deleteSurroundingText(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public endBatchEdit()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/view/i;->a:Lcom/android/internal/view/b;

    invoke-interface {v0}, Lcom/android/internal/view/b;->endBatchEdit()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public finishComposingText()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/view/i;->a:Lcom/android/internal/view/b;

    invoke-interface {v0}, Lcom/android/internal/view/b;->finishComposingText()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCursorCapsMode(I)I
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/android/internal/view/i$a;->K2()Lcom/android/internal/view/i$a;

    move-result-object v1

    .line 2
    iget-object v2, p0, Lcom/android/internal/view/i;->a:Lcom/android/internal/view/b;

    iget v3, v1, Lcom/android/internal/view/i$a;->a:I

    invoke-interface {v2, p1, v3, v1}, Lcom/android/internal/view/b;->getCursorCapsMode(IILcom/android/internal/view/c;)V

    .line 3
    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :try_start_1
    invoke-virtual {v1}, Lcom/android/internal/view/i$a;->O2()V

    .line 5
    iget-boolean p1, v1, Lcom/android/internal/view/i$a;->b:Z

    if-eqz p1, :cond_0

    .line 6
    iget p1, v1, Lcom/android/internal/view/i$a;->g:I

    goto :goto_0

    :cond_0
    move p1, v0

    .line 7
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :try_start_2
    invoke-static {v1}, Lcom/android/internal/view/i$a;->L2(Lcom/android/internal/view/i$a;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    return p1

    :catchall_0
    move-exception p1

    .line 9
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    return v0
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/android/internal/view/i$a;->K2()Lcom/android/internal/view/i$a;

    move-result-object v1

    .line 2
    iget-object v2, p0, Lcom/android/internal/view/i;->a:Lcom/android/internal/view/b;

    iget v3, v1, Lcom/android/internal/view/i$a;->a:I

    invoke-interface {v2, p1, p2, v3, v1}, Lcom/android/internal/view/b;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;IILcom/android/internal/view/c;)V

    .line 3
    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :try_start_1
    invoke-virtual {v1}, Lcom/android/internal/view/i$a;->O2()V

    .line 5
    iget-boolean p1, v1, Lcom/android/internal/view/i$a;->b:Z

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, v1, Lcom/android/internal/view/i$a;->f:Landroid/view/inputmethod/ExtractedText;

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 7
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :try_start_2
    invoke-static {v1}, Lcom/android/internal/view/i$a;->L2(Lcom/android/internal/view/i$a;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 9
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    return-object v0
.end method

.method public getSelectedText(I)Ljava/lang/CharSequence;
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/android/internal/view/i$a;->K2()Lcom/android/internal/view/i$a;

    move-result-object v1

    .line 2
    iget-object v2, p0, Lcom/android/internal/view/i;->a:Lcom/android/internal/view/b;

    iget v3, v1, Lcom/android/internal/view/i$a;->a:I

    invoke-interface {v2, p1, v3, v1}, Lcom/android/internal/view/b;->getSelectedText(IILcom/android/internal/view/c;)V

    .line 3
    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :try_start_1
    invoke-virtual {v1}, Lcom/android/internal/view/i$a;->O2()V

    .line 5
    iget-boolean p1, v1, Lcom/android/internal/view/i$a;->b:Z

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, v1, Lcom/android/internal/view/i$a;->e:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 7
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :try_start_2
    invoke-static {v1}, Lcom/android/internal/view/i$a;->L2(Lcom/android/internal/view/i$a;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 9
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    return-object v0
.end method

.method public getTextAfterCursor(II)Ljava/lang/CharSequence;
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/android/internal/view/i$a;->K2()Lcom/android/internal/view/i$a;

    move-result-object v1

    .line 2
    iget-object v2, p0, Lcom/android/internal/view/i;->a:Lcom/android/internal/view/b;

    iget v3, v1, Lcom/android/internal/view/i$a;->a:I

    invoke-interface {v2, p1, p2, v3, v1}, Lcom/android/internal/view/b;->getTextAfterCursor(IIILcom/android/internal/view/c;)V

    .line 3
    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :try_start_1
    invoke-virtual {v1}, Lcom/android/internal/view/i$a;->O2()V

    .line 5
    iget-boolean p1, v1, Lcom/android/internal/view/i$a;->b:Z

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, v1, Lcom/android/internal/view/i$a;->d:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 7
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :try_start_2
    invoke-static {v1}, Lcom/android/internal/view/i$a;->L2(Lcom/android/internal/view/i$a;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 9
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    return-object v0
.end method

.method public getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/android/internal/view/i$a;->K2()Lcom/android/internal/view/i$a;

    move-result-object v1

    .line 2
    iget-object v2, p0, Lcom/android/internal/view/i;->a:Lcom/android/internal/view/b;

    iget v3, v1, Lcom/android/internal/view/i$a;->a:I

    invoke-interface {v2, p1, p2, v3, v1}, Lcom/android/internal/view/b;->getTextBeforeCursor(IIILcom/android/internal/view/c;)V

    .line 3
    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :try_start_1
    invoke-virtual {v1}, Lcom/android/internal/view/i$a;->O2()V

    .line 5
    iget-boolean p1, v1, Lcom/android/internal/view/i$a;->b:Z

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, v1, Lcom/android/internal/view/i$a;->c:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 7
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :try_start_2
    invoke-static {v1}, Lcom/android/internal/view/i$a;->L2(Lcom/android/internal/view/i$a;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 9
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    return-object v0
.end method

.method public performContextMenuAction(I)Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/view/i;->a:Lcom/android/internal/view/b;

    invoke-interface {v0, p1}, Lcom/android/internal/view/b;->performContextMenuAction(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public performEditorAction(I)Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/view/i;->a:Lcom/android/internal/view/b;

    invoke-interface {v0, p1}, Lcom/android/internal/view/b;->performEditorAction(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/view/i;->a:Lcom/android/internal/view/b;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/view/b;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public reportFullscreenMode(Z)Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/view/i;->a:Lcom/android/internal/view/b;

    invoke-interface {v0, p1}, Lcom/android/internal/view/b;->reportFullscreenMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/view/i;->a:Lcom/android/internal/view/b;

    invoke-interface {v0, p1}, Lcom/android/internal/view/b;->sendKeyEvent(Landroid/view/KeyEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public setComposingRegion(II)Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/view/i;->a:Lcom/android/internal/view/b;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/view/b;->setComposingRegion(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/view/i;->a:Lcom/android/internal/view/b;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/view/b;->setComposingText(Ljava/lang/CharSequence;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public setSelection(II)Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/view/i;->a:Lcom/android/internal/view/b;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/view/b;->setSelection(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method
